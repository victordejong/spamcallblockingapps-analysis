.class public Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
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

.field private identityPoolId:Ljava/lang/String;

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

    .line 30
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public addIdentityPoolTagsEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 854
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 857
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

.method public addSupportedLoginProvidersEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 453
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

.method public clearIdentityPoolTagsEntries()Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 1

    const/4 v0, 0x0

    .line 870
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    return-object p0
.end method

.method public clearSupportedLoginProvidersEntries()Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 1

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

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

    .line 954
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;

    if-nez v2, :cond_2

    return v1

    .line 956
    :cond_2
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;

    .line 958
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

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

    .line 960
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 961
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 963
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

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

    .line 965
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 966
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 968
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 969
    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

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

    .line 971
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 972
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    .line 973
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v3

    .line 972
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 975
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

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

    .line 977
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 978
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 980
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

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

    .line 982
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 983
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 985
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

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

    .line 987
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 988
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 990
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    .line 991
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

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

    .line 993
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 994
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 996
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    .line 997
    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

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

    .line 999
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1000
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 1002
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

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

    .line 1004
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1005
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 1007
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_12

    :cond_27
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_28

    const/4 v3, 0x1

    goto :goto_13

    :cond_28
    const/4 v3, 0x0

    :goto_13
    xor-int/2addr v2, v3

    if-eqz v2, :cond_29

    return v1

    .line 1009
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1010
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    :cond_2a
    return v0
.end method

.method public getAllowClassicFlow()Ljava/lang/Boolean;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

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

    .line 615
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    return-object v0
.end method

.method public getDeveloperProviderName()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityPoolName()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

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

    .line 786
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

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

    .line 537
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

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

    .line 699
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

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

    .line 395
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 916
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 918
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 921
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 922
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 924
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 927
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    .line 928
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 931
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 934
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    .line 935
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 938
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    .line 939
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 941
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 943
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public isAllowClassicFlow()Ljava/lang/Boolean;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isAllowUnauthenticatedIdentities()Ljava/lang/Boolean;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllowClassicFlow(Ljava/lang/Boolean;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

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

    .line 631
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    return-void

    .line 635
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    return-void
.end method

.method public setDeveloperProviderName(Ljava/lang/String;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    return-void
.end method

.method public setIdentityPoolId(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolId:Ljava/lang/String;

    return-void
.end method

.method public setIdentityPoolName(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

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

    .line 805
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

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

    .line 551
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    return-void

    .line 555
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

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

    .line 715
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    return-void

    .line 719
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

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

    .line 409
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityPoolId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityPoolName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AllowUnauthenticatedIdentities: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AllowClassicFlow: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 895
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SupportedLoginProviders: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DeveloperProviderName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OpenIdConnectProviderARNs: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CognitoIdentityProviders: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SamlProviderARNs: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IdentityPoolTags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "}"

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAllowClassicFlow(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowClassicFlow:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withCognitoIdentityProviders(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 683
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->setCognitoIdentityProviders(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withCognitoIdentityProviders([Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 4

    .line 656
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    .line 660
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 661
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->cognitoIdentityProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withDeveloperProviderName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->developerProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolId:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolName:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolTags(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 830
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->identityPoolTags:Ljava/util/Map;

    return-object p0
.end method

.method public withOpenIdConnectProviderARNs(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 600
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->setOpenIdConnectProviderARNs(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withOpenIdConnectProviderARNs([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 4

    .line 574
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 575
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    .line 578
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 579
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->openIdConnectProviderARNs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSamlProviderARNs(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 766
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->setSamlProviderARNs(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withSamlProviderARNs([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 4

    .line 739
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    .line 742
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 743
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->samlProviderARNs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSupportedLoginProviders(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;"
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/UpdateIdentityPoolRequest;->supportedLoginProviders:Ljava/util/Map;

    return-object p0
.end method
