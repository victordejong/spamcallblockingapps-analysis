.class public Lcom/amazonaws/services/kms/model/CreateAliasRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aliasName:Ljava/lang/String;

.field private targetKeyId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
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

    .line 603
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/CreateAliasRequest;

    if-nez v2, :cond_2

    return v1

    .line 605
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/CreateAliasRequest;

    .line 607
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

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

    .line 609
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 610
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 612
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

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

    .line 614
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 615
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getAliasName()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->aliasName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetKeyId()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->targetKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 590
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 592
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setAliasName(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->aliasName:Ljava/lang/String;

    return-void
.end method

.method public setTargetKeyId(Ljava/lang/String;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->targetKeyId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AliasName: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TargetKeyId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->getTargetKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAliasName(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateAliasRequest;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->aliasName:Ljava/lang/String;

    return-object p0
.end method

.method public withTargetKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/CreateAliasRequest;
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/CreateAliasRequest;->targetKeyId:Ljava/lang/String;

    return-object p0
.end method
