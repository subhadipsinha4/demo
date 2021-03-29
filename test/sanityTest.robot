*** Settings ***
Library    SeleniumLibrary    
Library    Selenium2Library    
        

*** Variables ***
${ROOT}     https://ry85d.csb.app/
${BROWSER}  chrome
${Search Query}    Top
${search Box}    class=UNX-searchbox__input
${search icon}    class=UNX-searchbox__button
${wait time}    5

*** Keywords ***
    
*** Test Cases ***
Search Operation
    Open Browser    ${ROOT}    ${BROWSER}
    Set Browser Implicit Wait    ${wait time}
    Input Text    ${search Box}          ${Search Query}
    Click Button    ${search icon}
    Close Browser
    
