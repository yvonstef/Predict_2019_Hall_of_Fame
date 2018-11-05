install.packages("MASS")
library(MASS)
attach(baseballHOF)
lda.baseballHOF <- lda(baseballHOF$HoF~Yrs+WAR+WAR7+JAWS+Jpos+G+AB+R+H+HR+RBI+SB+BB+BA+OBP+SLG+OPS+OPSadj)
lda.baseballHOF
zbar.no <- sum(lda.baseballHOF$scaling*lda.baseballHOF$means[1,])
zbar.yes <- sum(lda.baseballHOF$scaling*lda.baseballHOF$means[2,])
cutoof <- (zbar.no+zbar.yes)/2
attach(baseballHOF2019)
Todd_Helton<- baseballHOF2019[1,]
Todd_Helton$Name<- NULL
sum(lda.baseballHOF$scaling*Todd_Helton)
Helton <-sum(lda.baseballHOF$scaling*Todd_Helton)
Berkman <-sum(lda.baseballHOF$scaling*Lance_Berkman)
baseballHOF2019$Name<- NULL
Tejada <-sum(lda.baseballHOF$scaling*baseballHOF2019[3,])
Youkilis <-sum(lda.baseballHOF$scaling*baseballHOF2019[4,])
Wells <-sum(lda.baseballHOF$scaling*baseballHOF2019[5,])
Hafner <-sum(lda.baseballHOF$scaling*baseballHOF2019[6,])
Bay <-sum(lda.baseballHOF$scaling*baseballHOF2019[7,])
Young <-sum(lda.baseballHOF$scaling*baseballHOF2019[8,])
View(baseballHOF2019)
results<- c(Helton,Berkman,Tejada,Youkilis,Wells,Hafner,Bay,Young)
names(results)<- ("Helton","Berkman","Tejada","Youkilis","Wells","Hafner","Bay","Young")