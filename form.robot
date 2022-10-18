*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***
#settings
${Url}    https://demoqa.com/automation-practice-form
${Browser}    chrome

#Elements
${First_Name}    firstName
${Last_Name}    lastName
${Email}    userEmail
${MobileNumber}    userNumber
${Address}    currentAddress

*** Keywords ***
Dado que acesso o formulario
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window


Entao o formulario deve ser preenchido
    Wait Until Element Is Visible    ${First_name}    10s
    ${Nome}    FakerLibrary.FirstName
    Input Text    ${First_name}    ${Nome}
    ${Sobrenome}    FakerLibrary.LastName
    Input Text    ${Last_name}    ${Sobrenome}
    ${EmailData}    FakerLibrary.FreeEmail
    Input Text    ${Email}    ${EmailData}
    ${Telefone}    FakerLibrary.PhoneNumber
    Input Text    ${MobileNumber}    ${Telefone}
    ${Endereco}    FakerLibrary.Address
    Input Text    ${Address}    ${Endereco}

*** Test Cases ***
TC01 - Acessar e preecher formulario
    [Tags]    TC01
    Dado que acesso o formulario
    Entao o formulario deve ser preenchido
