.class public Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private identityId:Ljava/lang/String;

.field private identityPoolId:Ljava/lang/String;

.field private logins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

.field private tokenDuration:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public addLoginsEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->logins:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->logins:Ljava/util/Map;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->logins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->logins:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 360
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

.method public addPrincipalTagsEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->principalTags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->principalTags:Ljava/util/Map;

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->principalTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->principalTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 446
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

.method public clearLoginsEntries()Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 1

    const/4 v0, 0x0

    .line 373
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->logins:Ljava/util/Map;

    return-object p0
.end method

.method public clearPrincipalTagsEntries()Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 1

    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->principalTags:Ljava/util/Map;

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

    .line 651
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;

    if-nez v2, :cond_2

    return v1

    .line 653
    :cond_2
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;

    .line 655
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

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

    .line 657
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 658
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 660
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

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

    .line 662
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 663
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 665
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

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

    .line 667
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 669
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

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

    .line 671
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 672
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 674
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

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

    .line 676
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 677
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v1

    :cond_16
    return v0
.end method

.method public getIdentityId()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->identityPoolId:Ljava/lang/String;

    return-object v0
.end method

.method public getLogins()Ljava/util/Map;
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

    .line 259
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->logins:Ljava/util/Map;

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

    .line 388
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->principalTags:Ljava/util/Map;

    return-object v0
.end method

.method public getTokenDuration()Ljava/lang/Long;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->tokenDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 634
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 635
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 636
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 638
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 640
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public setIdentityId(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->identityId:Ljava/lang/String;

    return-void
.end method

.method public setIdentityPoolId(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->identityPoolId:Ljava/lang/String;

    return-void
.end method

.method public setLogins(Ljava/util/Map;)V
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

    .line 291
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->logins:Ljava/util/Map;

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

    .line 402
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->principalTags:Ljava/util/Map;

    return-void
.end method

.method public setTokenDuration(Ljava/lang/Long;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->tokenDuration:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityPoolId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getIdentityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Logins: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getLogins()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PrincipalTags: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TokenDuration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->getTokenDuration()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "}"

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withIdentityId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->identityId:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->identityPoolId:Ljava/lang/String;

    return-object p0
.end method

.method public withLogins(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->logins:Ljava/util/Map;

    return-object p0
.end method

.method public withPrincipalTags(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;"
        }
    .end annotation

    .line 422
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->principalTags:Ljava/util/Map;

    return-object p0
.end method

.method public withTokenDuration(Ljava/lang/Long;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenForDeveloperIdentityRequest;->tokenDuration:Ljava/lang/Long;

    return-object p0
.end method
