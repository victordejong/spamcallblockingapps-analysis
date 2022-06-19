.class public Lcom/amazonaws/services/kms/model/GrantConstraints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private encryptionContextEquals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encryptionContextSubset:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addEncryptionContextEqualsEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 318
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

.method public addEncryptionContextSubsetEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 198
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

.method public clearEncryptionContextEqualsEntries()Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 1

    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    return-object p0
.end method

.method public clearEncryptionContextSubsetEntries()Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 1

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

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

    .line 377
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/kms/model/GrantConstraints;

    if-nez v2, :cond_2

    return v1

    .line 379
    :cond_2
    check-cast p1, Lcom/amazonaws/services/kms/model/GrantConstraints;

    .line 381
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

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

    .line 383
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 384
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 386
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

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

    .line 388
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 389
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getEncryptionContextEquals()Ljava/util/Map;
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

    .line 235
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    return-object v0
.end method

.method public getEncryptionContextSubset()Ljava/util/Map;
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

    .line 110
    iget-object v0, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 361
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

    move-result-object v0

    .line 362
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 365
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

    move-result-object v1

    .line 366
    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setEncryptionContextEquals(Ljava/util/Map;)V
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

    .line 259
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    return-void
.end method

.method public setEncryptionContextSubset(Ljava/util/Map;)V
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

    .line 136
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EncryptionContextSubset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextSubset()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EncryptionContextEquals: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/kms/model/GrantConstraints;->getEncryptionContextEquals()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withEncryptionContextEquals(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GrantConstraints;"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextEquals:Ljava/util/Map;

    return-object p0
.end method

.method public withEncryptionContextSubset(Ljava/util/Map;)Lcom/amazonaws/services/kms/model/GrantConstraints;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/kms/model/GrantConstraints;"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/amazonaws/services/kms/model/GrantConstraints;->encryptionContextSubset:Ljava/util/Map;

    return-object p0
.end method
