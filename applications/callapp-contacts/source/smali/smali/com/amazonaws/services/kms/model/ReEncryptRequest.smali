.class public Lcom/amazonaws/services/kms/model/ReEncryptRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ciphertextBlob:Ljava/nio/ByteBuffer;

.field private destinationEncryptionAlgorithm:Ljava/lang/String;

.field private destinationEncryptionContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private destinationKeyId:Ljava/lang/String;

.field private grantTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sourceEncryptionAlgorithm:Ljava/lang/String;

.field private sourceEncryptionContext:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sourceKeyId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDestinationEncryptionContextEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 2

    .line 1481
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1482
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    .line 1484
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1487
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 1485
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicated keys ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") are provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public addSourceEncryptionContextEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 2

    .line 613
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 617
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicated keys ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") are provided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public clearDestinationEncryptionContextEntries()Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 1

    const/4 v0, 0x0

    .line 1498
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public clearSourceEncryptionContextEntries()Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 1

    const/4 v0, 0x0

    .line 630
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 2087
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/ReEncryptRequest;

    if-nez v2, :cond_2

    return v1

    .line 2089
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/ReEncryptRequest;

    .line 2091
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

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

    .line 2093
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2094
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 2096
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

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

    .line 2098
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2099
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 2101
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

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

    .line 2103
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 2104
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 2106
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

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

    .line 2108
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 2109
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 2111
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    .line 2112
    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

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

    .line 2114
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 2115
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    .line 2116
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v3

    .line 2115
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 2118
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    .line 2119
    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

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

    .line 2121
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2122
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 2124
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    .line 2125
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

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

    .line 2127
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 2128
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 2129
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    .line 2128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 2131
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

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

    .line 2133
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 2134
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v1

    :cond_22
    return v0
.end method

.method public getCiphertextBlob()Ljava/nio/ByteBuffer;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getDestinationEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1749
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationEncryptionContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1326
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    return-object v0
.end method

.method public getDestinationKeyId()Ljava/lang/String;
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantTokens()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1916
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    return-object v0
.end method

.method public getSourceEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceEncryptionContext()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    return-object v0
.end method

.method public getSourceKeyId()Ljava/lang/String;
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 2054
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2057
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v2

    .line 2058
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2060
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2062
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2065
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    .line 2066
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2069
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 2070
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2073
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    .line 2074
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 2076
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    return v0
.end method

.method public setCiphertextBlob(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setDestinationEncryptionAlgorithm(Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;)V
    .locals 0

    .line 1852
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setDestinationEncryptionAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 1781
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setDestinationEncryptionContext(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1381
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    return-void
.end method

.method public setDestinationKeyId(Ljava/lang/String;)V
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationKeyId:Ljava/lang/String;

    return-void
.end method

.method public setGrantTokens(Ljava/util/Collection;)V
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

    .line 1942
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    return-void

    .line 1946
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    return-void
.end method

.method public setSourceEncryptionAlgorithm(Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;)V
    .locals 0

    .line 1669
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setSourceEncryptionAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 1581
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setSourceEncryptionContext(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 527
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    return-void
.end method

.method public setSourceKeyId(Ljava/lang/String;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceKeyId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 2026
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2027
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 2028
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CiphertextBlob: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2029
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2030
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SourceEncryptionContext: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2032
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SourceKeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2033
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2034
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DestinationKeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2036
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DestinationEncryptionContext: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2037
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2038
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SourceEncryptionAlgorithm: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2039
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DestinationEncryptionAlgorithm: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2042
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2043
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GrantTokens: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v1, "}"

    .line 2044
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCiphertextBlob(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->ciphertextBlob:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withDestinationEncryptionAlgorithm(Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 1890
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withDestinationEncryptionAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 1818
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withDestinationEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 1441
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationEncryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public withDestinationKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 1272
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->destinationKeyId:Ljava/lang/String;

    return-object p0
.end method

.method public withGrantTokens(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 2012
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->setGrantTokens(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGrantTokens([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 4

    .line 1976
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1977
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    .line 1979
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1980
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->grantTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSourceEncryptionAlgorithm(Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 1716
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/EncryptionAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withSourceEncryptionAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 1627
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withSourceEncryptionContext(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;"
        }
    .end annotation

    .line 578
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceEncryptionContext:Ljava/util/Map;

    return-object p0
.end method

.method public withSourceKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/ReEncryptRequest;
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->sourceKeyId:Ljava/lang/String;

    return-object p0
.end method
