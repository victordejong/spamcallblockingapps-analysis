.class public Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private identityPoolId:Ljava/lang/String;

.field private identityProviderName:Ljava/lang/String;

.field private principalTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useDefaults:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPrincipalTagsEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->principalTags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->principalTags:Ljava/util/Map;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->principalTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->principalTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 314
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

.method public clearPrincipalTagsEntries()Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;
    .locals 1

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->principalTags:Ljava/util/Map;

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
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;

    if-nez v2, :cond_2

    return v1

    .line 379
    :cond_2
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;

    .line 381
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 384
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 386
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 389
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 391
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

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

    .line 393
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 394
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 396
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

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

    .line 398
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 399
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    return v1

    :cond_12
    return v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->identityPoolId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityProviderName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->identityProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrincipalTags()Ljava/util/Map;
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

    .line 248
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->principalTags:Ljava/util/Map;

    return-object v0
.end method

.method public getUseDefaults()Ljava/lang/Boolean;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->useDefaults:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 360
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 362
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 364
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 366
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public isUseDefaults()Ljava/lang/Boolean;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->useDefaults:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIdentityPoolId(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->identityPoolId:Ljava/lang/String;

    return-void
.end method

.method public setIdentityProviderName(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->identityProviderName:Ljava/lang/String;

    return-void
.end method

.method public setPrincipalTags(Ljava/util/Map;)V
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

    .line 265
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->principalTags:Ljava/util/Map;

    return-void
.end method

.method public setUseDefaults(Ljava/lang/Boolean;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->useDefaults:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityPoolId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityProviderName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "UseDefaults: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrincipalTags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "}"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withIdentityPoolId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->identityPoolId:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityProviderName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->identityProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public withPrincipalTags(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->principalTags:Ljava/util/Map;

    return-object p0
.end method

.method public withUseDefaults(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetPrincipalTagAttributeMapResult;->useDefaults:Ljava/lang/Boolean;

    return-object p0
.end method
