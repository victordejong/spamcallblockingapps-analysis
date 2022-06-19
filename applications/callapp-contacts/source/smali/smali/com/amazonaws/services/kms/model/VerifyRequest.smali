.class public Lcom/amazonaws/services/kms/model/VerifyRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private grantTokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keyId:Ljava/lang/String;

.field private message:Ljava/nio/ByteBuffer;

.field private messageType:Ljava/lang/String;

.field private signature:Ljava/nio/ByteBuffer;

.field private signingAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->grantTokens:Ljava/util/List;

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

    .line 1153
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/VerifyRequest;

    if-nez v2, :cond_2

    return v1

    .line 1155
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/VerifyRequest;

    .line 1157
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

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

    .line 1159
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 1161
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

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

    .line 1163
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 1165
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

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

    .line 1167
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1168
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 1170
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

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

    .line 1172
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 1173
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 1175
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

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

    .line 1177
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1178
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 1180
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

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

    .line 1182
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 1183
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v1

    :cond_1a
    return v0
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

    .line 1002
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->grantTokens:Ljava/util/List;

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/nio/ByteBuffer;
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->message:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()Ljava/nio/ByteBuffer;
    .locals 1

    .line 818
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->signature:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 877
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->signingAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1134
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 1135
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1137
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1138
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1140
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1142
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
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

    .line 1028
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->grantTokens:Ljava/util/List;

    return-void

    .line 1032
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->grantTokens:Ljava/util/List;

    return-void
.end method

.method public setKeyId(Ljava/lang/String;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->keyId:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->message:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setMessageType(Lcom/amazonaws/services/kms/model/MessageType;)V
    .locals 0

    .line 758
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/MessageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->messageType:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->messageType:Ljava/lang/String;

    return-void
.end method

.method public setSignature(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->signature:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setSigningAlgorithm(Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;)V
    .locals 0

    .line 949
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->signingAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setSigningAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->signingAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 1112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "KeyId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getKeyId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Message: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessage()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MessageType: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getMessageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Signature: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSignature()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SigningAlgorithm: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GrantTokens: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "}"

    .line 1125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withGrantTokens(Ljava/util/Collection;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/VerifyRequest;"
        }
    .end annotation

    .line 1098
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/VerifyRequest;->setGrantTokens(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withGrantTokens([Ljava/lang/String;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 4

    .line 1062
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/VerifyRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->grantTokens:Ljava/util/List;

    .line 1065
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1066
    iget-object v3, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->grantTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withKeyId(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 0

    .line 497
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->keyId:Ljava/lang/String;

    return-object p0
.end method

.method public withMessage(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->message:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withMessageType(Lcom/amazonaws/services/kms/model/MessageType;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 0

    .line 801
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/MessageType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->messageType:Ljava/lang/String;

    return-object p0
.end method

.method public withMessageType(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 0

    .line 719
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->messageType:Ljava/lang/String;

    return-object p0
.end method

.method public withSignature(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 0

    .line 855
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->signature:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public withSigningAlgorithm(Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 0

    .line 976
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/SigningAlgorithmSpec;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->signingAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public withSigningAlgorithm(Ljava/lang/String;)Lcom/amazonaws/services/kms/model/VerifyRequest;
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/VerifyRequest;->signingAlgorithm:Ljava/lang/String;

    return-object p0
.end method
