.class public Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private customerMasterKeySpec:Ljava/lang/String;

.field private encryptionAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyId:Ljava/lang/String;

.field private keyUsage:Ljava/lang/String;

.field private publicKey:Ljava/nio/ByteBuffer;

.field private signingAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->encryptionAlgorithms:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->signingAlgorithms:Ljava/util/List;

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

    .line 852
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;

    if-nez v2, :cond_2

    return v1

    .line 854
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;

    .line 856
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

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

    .line 858
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 860
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

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

    .line 862
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 863
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 865
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

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

    .line 867
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 868
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 870
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

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

    .line 872
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 874
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

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

    .line 876
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 877
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 879
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

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

    .line 881
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 882
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    return v0
.end method

.method public getCustomerMasterKeySpec()Ljava/lang/String;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->customerMasterKeySpec:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->encryptionAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyUsage()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->keyUsage:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicKey()Ljava/nio/ByteBuffer;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->publicKey:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getSigningAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->signingAlgorithms:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 832
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 833
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 836
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 837
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 839
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 841
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public setCustomerMasterKeySpec(Lcom/amazonaws/services/kms/model/CustomerMasterKeySpec;)V
    .locals 0

    .line 355
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomerMasterKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->customerMasterKeySpec:Ljava/lang/String;

    return-void
.end method

.method public setCustomerMasterKeySpec(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->customerMasterKeySpec:Ljava/lang/String;

    return-void
.end method

.method public setEncryptionAlgorithms(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 601
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->encryptionAlgorithms:Ljava/util/List;

    return-void

    .line 605
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->encryptionAlgorithms:Ljava/util/List;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setKeyUsage(Lcom/amazonaws/services/kms/model/KeyUsageType;)V
    .locals 0

    .line 501
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->keyUsage:Ljava/lang/String;

    return-void
.end method

.method public setKeyUsage(Ljava/lang/String;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->keyUsage:Ljava/lang/String;

    return-void
.end method

.method public setPublicKey(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->publicKey:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setSigningAlgorithms(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 732
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->signingAlgorithms:Ljava/util/List;

    return-void

    .line 736
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->signingAlgorithms:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 814
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PublicKey: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getPublicKey()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 816
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CustomerMasterKeySpec: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyUsage: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "EncryptionAlgorithms: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SigningAlgorithms: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "}"

    .line 823
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCustomerMasterKeySpec(Lcom/amazonaws/services/kms/model/CustomerMasterKeySpec;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 0

    .line 378
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CustomerMasterKeySpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->customerMasterKeySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withCustomerMasterKeySpec(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->customerMasterKeySpec:Ljava/lang/String;

    return-object p0
.end method

.method public withEncryptionAlgorithms(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GetPublicKeyResult;"
        }
    .end annotation

    .line 686
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->setEncryptionAlgorithms(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withEncryptionAlgorithms([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 4

    .line 642
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->encryptionAlgorithms:Ljava/util/List;

    .line 645
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 646
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->encryptionAlgorithms:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyUsage(Lcom/amazonaws/services/kms/model/KeyUsageType;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 0

    .line 535
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/KeyUsageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->keyUsage:Ljava/lang/String;

    return-object p0
.end method

.method public withKeyUsage(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->keyUsage:Ljava/lang/String;

    return-object p0
.end method

.method public withPublicKey(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->publicKey:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withSigningAlgorithms(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GetPublicKeyResult;"
        }
    .end annotation

    .line 796
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->setSigningAlgorithms(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withSigningAlgorithms([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GetPublicKeyResult;
    .locals 4

    .line 763
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->getSigningAlgorithms()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->signingAlgorithms:Ljava/util/List;

    .line 766
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 767
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/GetPublicKeyResult;->signingAlgorithms:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
