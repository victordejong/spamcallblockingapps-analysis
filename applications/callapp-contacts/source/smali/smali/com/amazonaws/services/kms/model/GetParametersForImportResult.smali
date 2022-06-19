.class public Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private importToken:Ljava/nio/ByteBuffer;

.field private keyId:Ljava/lang/String;

.field private parametersValidTo:Ljava/util/Date;

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

    .line 372
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;

    if-nez v2, :cond_2

    return v1

    .line 374
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;

    .line 376
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

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

    .line 378
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 380
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

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

    .line 382
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 383
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 385
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

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

    .line 387
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 388
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 390
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

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

    .line 392
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 393
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getImportToken()Ljava/nio/ByteBuffer;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->importToken:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getParametersValidTo()Ljava/util/Date;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->parametersValidTo:Ljava/util/Date;

    return-object v0
.end method

.method public getPublicKey()Ljava/nio/ByteBuffer;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->publicKey:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 356
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 358
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 359
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 361
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public setImportToken(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->importToken:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setParametersValidTo(Ljava/util/Date;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->parametersValidTo:Ljava/util/Date;

    return-void
.end method

.method public setPublicKey(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->publicKey:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ImportToken: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PublicKey: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ParametersValidTo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->getParametersValidTo()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}"

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withImportToken(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->importToken:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withParametersValidTo(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->parametersValidTo:Ljava/util/Date;

    return-object p0
.end method

.method public withPublicKey(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GetParametersForImportResult;
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetParametersForImportResult;->publicKey:Ljava/nio/ByteBuffer;

    return-object p0
.end method
