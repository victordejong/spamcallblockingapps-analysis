.class public Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private durationSeconds:Ljava/lang/Integer;

.field private serialNumber:Ljava/lang/String;

.field private tokenCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

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

    .line 543
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    if-nez v2, :cond_2

    return v1

    .line 545
    :cond_2
    check-cast p1, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;

    .line 547
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

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

    .line 549
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 550
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 552
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

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

    .line 554
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 555
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 557
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

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

    .line 559
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 560
    invoke-virtual {p1}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getDurationSeconds()Ljava/lang/Integer;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenCode()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 529
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 531
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 532
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setDurationSeconds(Ljava/lang/Integer;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    return-void
.end method

.method public setTokenCode(Ljava/lang/String;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DurationSeconds: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SerialNumber: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TokenCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->getTokenCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "}"

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDurationSeconds(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->durationSeconds:Ljava/lang/Integer;

    return-object p0
.end method

.method public withSerialNumber(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->serialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public withTokenCode(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;->tokenCode:Ljava/lang/String;

    return-object p0
.end method
