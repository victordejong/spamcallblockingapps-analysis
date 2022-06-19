.class public Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private keyId:Ljava/lang/String;

.field private keyPairSpec:Ljava/lang/String;

.field private privateKeyCiphertextBlob:Ljava/nio/ByteBuffer;

.field private publicKey:Ljava/nio/ByteBuffer;


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

    .line 401
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;

    if-nez v2, :cond_2

    return v1

    .line 403
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;

    .line 405
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 406
    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

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

    .line 408
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 409
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 411
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

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

    .line 413
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 414
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 416
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

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

    .line 418
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 420
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

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

    .line 422
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 423
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyPairSpec()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->keyPairSpec:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->privateKeyCiphertextBlob:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPublicKey()Ljava/nio/ByteBuffer;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->publicKey:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 385
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 387
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 388
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 390
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setKeyPairSpec(Lcom/amazonaws/services/kms/model/DataKeyPairSpec;)V
    .locals 0

    .line 328
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->keyPairSpec:Ljava/lang/String;

    return-void
.end method

.method public setKeyPairSpec(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->keyPairSpec:Ljava/lang/String;

    return-void
.end method

.method public setPrivateKeyCiphertextBlob(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->privateKeyCiphertextBlob:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setPublicKey(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->publicKey:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PrivateKeyCiphertextBlob: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPrivateKeyCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PublicKey: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyPairSpec: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->getKeyPairSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyPairSpec(Lcom/amazonaws/services/kms/model/DataKeyPairSpec;)Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;
    .locals 0

    .line 351
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/DataKeyPairSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->keyPairSpec:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyPairSpec(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->keyPairSpec:Ljava/lang/String;

    return-object p0
.end method

.method public withPrivateKeyCiphertextBlob(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->privateKeyCiphertextBlob:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withPublicKey(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GenerateDataKeyPairWithoutPlaintextResult;->publicKey:Ljava/nio/ByteBuffer;

    return-object p0
.end method
