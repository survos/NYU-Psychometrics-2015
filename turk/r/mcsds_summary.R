install.packages('Hmisc')

library(Hmisc)

setwd("~/Downloads")
mcsds<- read.csv("turk_job_mcsds_assignments.csv", stringsAsFactors=F)
mcsds<- subset(mcsds, AssignmentStatusCode=="Submitted", select=c(MemberCode, Id, AcceptTime, SubmitTime,Score,
                                                                  q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, 
                                                                  q11, q12, q13, q14, q15, q16, q17, q18, 
                                                                  q19, q20, q21, q22, q23, q24, q25, q26, 
                                                                  q27, q28, q29, q30, q31, q32, q33))
describe(mcsds[,5:37])

score <- density(mcsds$Score)
plot(score, main="Density Plot of MCSDS Survey Score")

