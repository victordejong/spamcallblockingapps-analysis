.class public Lcom/amazonaws/services/kms/model/VerifyResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private keyId:Ljava/lang/String;

.field private signatureValid:Ljava/lang/Boolean;

.field private signingAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
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

    .line 380
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/VerifyResult;

    if-nez v2, :cond_2

    return v1

    .line 382
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/VerifyResult;

    .line 384
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

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

    .line 386
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 388
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

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

    .line 390
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 391
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 393
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

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

    .line 395
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 396
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    :cond_e
    return v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureValid()Ljava/lang/Boolean;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signatureValid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signingAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 365
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 367
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 369
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public isSignatureValid()Ljava/lang/Boolean;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signatureValid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setSignatureValid(Ljava/lang/Boolean;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signatureValid:Ljava/lang/Boolean;

    return-void
.end method

.method public setSigningAlgorithm(Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;)V
    .locals 0

    .line 311
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signingAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setSigningAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signingAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SignatureValid: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSignatureValid()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigningAlgorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyResult;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "}"

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/VerifyResult;
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withSignatureValid(Ljava/lang/Boolean;)Lcom/amazonaws/services/kms/model/VerifyResult;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signatureValid:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withSigningAlgorithm(Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;)Lcom/amazonaws/services/kms/model/VerifyResult;
    .locals 0

    .line 335
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signingAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withSigningAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/VerifyResult;
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyResult;->signingAlgorithm:Ljava/lang/String;

    return-object p0
.end method
