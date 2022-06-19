.class public Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
.super Lcom/amazonaws/AmazonWebServiceRequest;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allowClassicFlow:Ljava/lang/Boolean;

.field private allowUnauthenticatedIdentities:Ljava/lang/Boolean;

.field private cognitoIdentityProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;"
        }
    .end annotation
.end field

.field private developerProviderName:Ljava/lang/String;

.field private identityPoolName:Ljava/lang/String;

.field private identityPoolTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private openIdConnectProviderARNs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private samlProviderARNs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supportedLoginProviders:Ljava/util/Map;
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
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public addIdentityPoolTagsEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 868
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 871
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

.method public addSupportedLoginProvidersEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 421
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

.method public clearIdentityPoolTagsEntries()Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 1

    const/4 v0, 0x0

    .line 884
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    return-object p0
.end method

.method public clearSupportedLoginProvidersEntries()Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 1

    const/4 v0, 0x0

    .line 434
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

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

    .line 964
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;

    if-nez v2, :cond_2

    return v1

    .line 966
    :cond_2
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;

    .line 968
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

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

    .line 970
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 971
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 973
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 974
    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

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

    .line 976
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 977
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    .line 978
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v3

    .line 977
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 980
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

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

    .line 982
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 983
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 985
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

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

    .line 987
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 988
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 990
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

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

    .line 992
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 993
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 995
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    .line 996
    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

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

    .line 998
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 999
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 1001
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    .line 1002
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

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

    .line 1004
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1005
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 1007
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

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

    .line 1009
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1010
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 1012
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_24

    const/4 v3, 0x1

    goto :goto_11

    :cond_24
    const/4 v3, 0x0

    :goto_11
    xor-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    .line 1014
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1015
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    return v1

    :cond_26
    return v0
.end method

.method public getAllowClassicFlow()Ljava/lang/Boolean;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCognitoIdentityProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    return-object v0
.end method

.method public getDeveloperProviderName()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityPoolName()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityPoolTags()Ljava/util/Map;
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

    .line 803
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    return-object v0
.end method

.method public getOpenIdConnectProviderARNs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    return-object v0
.end method

.method public getSamlProviderARNs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedLoginProviders()Ljava/util/Map;
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

    .line 363
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 928
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 931
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 932
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 934
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 937
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    .line 938
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 941
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 944
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    .line 945
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 948
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    .line 949
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 951
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 953
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public isAllowClassicFlow()Ljava/lang/Boolean;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isAllowUnauthenticatedIdentities()Ljava/lang/Boolean;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllowClassicFlow(Ljava/lang/Boolean;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    return-void
.end method

.method public setCognitoIdentityProviders(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 651
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    return-void

    .line 655
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    return-void
.end method

.method public setDeveloperProviderName(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    return-void
.end method

.method public setIdentityPoolName(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

    return-void
.end method

.method public setIdentityPoolTags(Ljava/util/Map;)V
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

    .line 821
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    return-void
.end method

.method public setOpenIdConnectProviderARNs(Ljava/util/Collection;)V
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

    .line 571
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    return-void

    .line 575
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    return-void
.end method

.method public setSamlProviderARNs(Ljava/util/Collection;)V
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

    .line 733
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    return-void

    .line 737
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    return-void
.end method

.method public setSupportedLoginProviders(Ljava/util/Map;)V
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

    .line 377
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 898
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityPoolName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AllowUnauthenticatedIdentities: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AllowClassicFlow: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SupportedLoginProviders: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DeveloperProviderName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OpenIdConnectProviderARNs: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CognitoIdentityProviders: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SamlProviderARNs: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IdentityPoolTags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "}"

    .line 918
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAllowClassicFlow(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withCognitoIdentityProviders(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 701
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->setCognitoIdentityProviders(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withCognitoIdentityProviders([Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 4

    .line 675
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    .line 679
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 680
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withDeveloperProviderName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolTags(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 845
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    return-object p0
.end method

.method public withOpenIdConnectProviderARNs(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 622
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->setOpenIdConnectProviderARNs(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withOpenIdConnectProviderARNs([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 4

    .line 595
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    .line 599
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 600
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSamlProviderARNs(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 784
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->setSamlProviderARNs(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withSamlProviderARNs([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 4

    .line 757
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    .line 760
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 761
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSupportedLoginProviders(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/CreateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    return-object p0
.end method
