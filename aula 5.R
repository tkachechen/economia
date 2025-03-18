#procurar dados no word bank

# install.packages('WDI')

library(WDI) # SEMPRE CHAMAR OS PACOTE

# PROCURAM AS VIGNETTES
# PÁGINAS COM INSTRUÇÕES DOS PACOTES

# GDP (current US$)(NY.GDP.MKTP.CD)
# PIB, PREÇOS CORRENTES EM DÓLAR NORTE-AMERICANO
# CÓDIGO: NY.GDP.MKTP.CD

 # vamos pesquisar o termo 'gdp' no wdi

varpib <- WDIsearch('gdp') # CRIAR objeto com res.

# BUSCAR OS DADOS COM O CODICO DO SITE

options(scipen= 999) #tira a notação cientifica

dadospib <- WDI(country = 'all', 
                indicator = 'NY.GDP.MKTP.CD')
dadospib2023 <- WDI(country = 'all', 
                    indicator = 'NY.GDP.MKTP.CD', 
                    start = 2023, end = 2023)
