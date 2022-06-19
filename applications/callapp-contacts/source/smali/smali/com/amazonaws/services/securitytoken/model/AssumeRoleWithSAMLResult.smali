.class public Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private assumedRoleUser:Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

.field private audience:Ljava/lang/String;

.field private credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

.field private issuer:Ljava/lang/String;

.field private nameQualifier:Ljava/lang/String;

.field private packedPolicySize:Ljava/lang/Integer;

.field private subject:Ljava/lang/String;

.field private subjectType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 776
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;

    if-nez v2, :cond_2

    return v1

    .line 778
    :cond_2
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;

    .line 780
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v2, v3

    if-eqz v2, :cond_5

    return v1

    .line 782
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 783
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/securitytoken/model/Credentials;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 785
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    return v1

    .line 787
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 788
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 790
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    xor-int/2addr v2, v3

    if-eqz v2, :cond_d

    return v1

    .line 792
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 793
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 795
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_7

    :cond_10
    const/4 v3, 0x0

    :goto_7
    xor-int/2addr v2, v3

    if-eqz v2, :cond_11

    return v1

    .line 797
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 799
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_9

    :cond_14
    const/4 v3, 0x0

    :goto_9
    xor-int/2addr v2, v3

    if-eqz v2, :cond_15

    return v1

    .line 801
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 802
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 804
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    xor-int/2addr v2, v3

    if-eqz v2, :cond_19

    return v1

    .line 806
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 808
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    :goto_d
    xor-int/2addr v2, v3

    if-eqz v2, :cond_1d

    return v1

    .line 810
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 812
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_20

    const/4 v3, 0x1

    goto :goto_f

    :cond_20
    const/4 v3, 0x0

    :goto_f
    xor-int/2addr v2, v3

    if-eqz v2, :cond_21

    return v1

    .line 814
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 815
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v1

    :cond_22
    return v0
.end method

.method public getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->assumedRoleUser:Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    return-object v0
.end method

.method public getAudience()Ljava/lang/String;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->audience:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public getNameQualifier()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->nameQualifier:Ljava/lang/String;

    return-object v0
.end method

.method public getPackedPolicySize()Ljava/lang/Integer;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->packedPolicySize:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectType()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->subjectType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 754
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/services/securitytoken/model/Credentials;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 756
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 758
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 759
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 761
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 762
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 763
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 765
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public setAssumedRoleUser(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->assumedRoleUser:Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    return-void
.end method

.method public setAudience(Ljava/lang/String;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->audience:Ljava/lang/String;

    return-void
.end method

.method public setCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-void
.end method

.method public setIssuer(Ljava/lang/String;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->issuer:Ljava/lang/String;

    return-void
.end method

.method public setNameQualifier(Ljava/lang/String;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->nameQualifier:Ljava/lang/String;

    return-void
.end method

.method public setPackedPolicySize(Ljava/lang/Integer;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->packedPolicySize:Ljava/lang/Integer;

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->subject:Ljava/lang/String;

    return-void
.end method

.method public setSubjectType(Ljava/lang/String;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->subjectType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 727
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Credentials: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getCredentials()Lcom/amazonaws/services/securitytoken/model/Credentials;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AssumedRoleUser: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAssumedRoleUser()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PackedPolicySize: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getPackedPolicySize()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Subject: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SubjectType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getSubjectType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Issuer: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getIssuer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Audience: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getAudience()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameQualifier: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->getNameQualifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "}"

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAssumedRoleUser(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->assumedRoleUser:Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;

    return-object p0
.end method

.method public withAudience(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->audience:Ljava/lang/String;

    return-object p0
.end method

.method public withCredentials(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->credentials:Lcom/amazonaws/services/securitytoken/model/Credentials;

    return-object p0
.end method

.method public withIssuer(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->issuer:Ljava/lang/String;

    return-object p0
.end method

.method public withNameQualifier(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 0

    .line 713
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->nameQualifier:Ljava/lang/String;

    return-object p0
.end method

.method public withPackedPolicySize(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->packedPolicySize:Ljava/lang/Integer;

    return-object p0
.end method

.method public withSubject(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->subject:Ljava/lang/String;

    return-object p0
.end method

.method public withSubjectType(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithSAMLResult;->subjectType:Ljava/lang/String;

    return-object p0
.end method
