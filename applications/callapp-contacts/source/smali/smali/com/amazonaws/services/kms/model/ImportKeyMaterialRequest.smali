.class public Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private encryptedKeyMaterial:Ljava/nio/ByteBuffer;

.field private expirationModel:Ljava/lang/String;

.field private importToken:Ljava/nio/ByteBuffer;

.field private keyId:Ljava/lang/String;

.field private validTo:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
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

    .line 832
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;

    if-nez v2, :cond_2

    return v1

    .line 834
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;

    .line 836
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

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

    .line 838
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 840
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

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

    .line 842
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 843
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 845
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

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

    .line 847
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 848
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 850
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

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

    .line 852
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 854
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

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

    .line 856
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 857
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->encryptedKeyMaterial:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getExpirationModel()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->expirationModel:Ljava/lang/String;

    return-object v0
.end method

.method public getImportToken()Ljava/nio/ByteBuffer;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->importToken:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getValidTo()Ljava/util/Date;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->validTo:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 814
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 816
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 818
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 819
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 821
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setEncryptedKeyMaterial(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->encryptedKeyMaterial:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setExpirationModel(Lcom/amazonaws/services/kms/model/ExpirationModelType;)V
    .locals 0

    .line 750
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ExpirationModelType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->expirationModel:Ljava/lang/String;

    return-void
.end method

.method public setExpirationModel(Ljava/lang/String;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->expirationModel:Ljava/lang/String;

    return-void
.end method

.method public setImportToken(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->importToken:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setValidTo(Ljava/util/Date;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->validTo:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 798
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ImportToken: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getImportToken()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 800
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EncryptedKeyMaterial: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getEncryptedKeyMaterial()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "ValidTo: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getValidTo()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 804
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExpirationModel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->getExpirationModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "}"

    .line 805
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEncryptedKeyMaterial(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->encryptedKeyMaterial:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withExpirationModel(Lcom/amazonaws/services/kms/model/ExpirationModelType;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .locals 0

    .line 780
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ExpirationModelType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->expirationModel:Ljava/lang/String;

    return-object p0
.end method

.method public withExpirationModel(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->expirationModel:Ljava/lang/String;

    return-object p0
.end method

.method public withImportToken(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .locals 0

    .line 495
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->importToken:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withValidTo(Ljava/util/Date;)Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ImportKeyMaterialRequest;->validTo:Ljava/util/Date;

    return-object p0
.end method
