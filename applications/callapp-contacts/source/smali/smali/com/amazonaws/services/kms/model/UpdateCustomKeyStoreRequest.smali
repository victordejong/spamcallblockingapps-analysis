.class public Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private cloudHsmClusterId:Ljava/lang/String;

.field private customKeyStoreId:Ljava/lang/String;

.field private keyStorePassword:Ljava/lang/String;

.field private newCustomKeyStoreName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 122
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

    .line 588
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;

    if-nez v2, :cond_2

    return v1

    .line 590
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;

    .line 592
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

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

    .line 594
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 595
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 597
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

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

    .line 599
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 600
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 602
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

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

    .line 604
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 605
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 607
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

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

    .line 609
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 610
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getCloudHsmClusterId()Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->cloudHsmClusterId:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomKeyStoreId()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->customKeyStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyStorePassword()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->keyStorePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getNewCustomKeyStoreName()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->newCustomKeyStoreName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 570
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 573
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 575
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 577
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setCloudHsmClusterId(Ljava/lang/String;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->cloudHsmClusterId:Ljava/lang/String;

    return-void
.end method

.method public setCustomKeyStoreId(Ljava/lang/String;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->customKeyStoreId:Ljava/lang/String;

    return-void
.end method

.method public setKeyStorePassword(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->keyStorePassword:Ljava/lang/String;

    return-void
.end method

.method public setNewCustomKeyStoreName(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->newCustomKeyStoreName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 551
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CustomKeyStoreId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "NewCustomKeyStoreName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getNewCustomKeyStoreName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyStorePassword: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getKeyStorePassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CloudHsmClusterId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->getCloudHsmClusterId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v1, "}"

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCloudHsmClusterId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->cloudHsmClusterId:Ljava/lang/String;

    return-object p0
.end method

.method public withCustomKeyStoreId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->customKeyStoreId:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyStorePassword(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->keyStorePassword:Ljava/lang/String;

    return-object p0
.end method

.method public withNewCustomKeyStoreName(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/UpdateCustomKeyStoreRequest;->newCustomKeyStoreName:Ljava/lang/String;

    return-object p0
.end method
