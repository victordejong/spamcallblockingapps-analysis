.class public Lcom/amazonaws/services/kms/model/ReEncryptResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ciphertextBlob:Ljava/nio/ByteBuffer;

.field private destinationEncryptionAlgorithm:Ljava/lang/String;

.field private keyId:Ljava/lang/String;

.field private sourceEncryptionAlgorithm:Ljava/lang/String;

.field private sourceKeyId:Ljava/lang/String;


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

    .line 531
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ReEncryptResult;

    if-nez v2, :cond_2

    return v1

    .line 533
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/ReEncryptResult;

    .line 535
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

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

    .line 537
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 538
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 540
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

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

    .line 542
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 543
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 545
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

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

    .line 547
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 549
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    .line 550
    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

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

    .line 552
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 553
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 555
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    .line 556
    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

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

    .line 558
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 559
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object p1

    .line 560
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getCiphertextBlob()Ljava/nio/ByteBuffer;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDestinationEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceKeyId()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->sourceKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 509
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 511
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 512
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 515
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 519
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setCiphertextBlob(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setDestinationEncryptionAlgorithm(Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;)V
    .locals 0

    .line 450
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setDestinationEncryptionAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setSourceEncryptionAlgorithm(Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;)V
    .locals 0

    .line 344
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setSourceEncryptionAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setSourceKeyId(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->sourceKeyId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CiphertextBlob: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SourceKeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SourceEncryptionAlgorithm: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DestinationEncryptionAlgorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptResult;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "}"

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCiphertextBlob(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withDestinationEncryptionAlgorithm(Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
    .locals 0

    .line 474
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withDestinationEncryptionAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withSourceEncryptionAlgorithm(Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
    .locals 0

    .line 370
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withSourceEncryptionAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withSourceKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptResult;
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptResult;->sourceKeyId:Ljava/lang/String;

    return-object p0
.end method
