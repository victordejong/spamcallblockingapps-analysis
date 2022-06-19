.class public Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
.super Ljava/lang/Object;
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addIdentityPoolTagsEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolTags:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 849
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolTags:Ljava/util/Map;

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolTags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolTags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 852
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

.method public addSupportedLoginProvidersEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 2

    .line 444
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->supportedLoginProviders:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->supportedLoginProviders:Ljava/util/Map;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->supportedLoginProviders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->supportedLoginProviders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 448
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

.method public clearIdentityPoolTagsEntries()Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 1

    const/4 v0, 0x0

    .line 865
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolTags:Ljava/util/Map;

    return-object p0
.end method

.method public clearSupportedLoginProvidersEntries()Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 1

    const/4 v0, 0x0

    .line 461
    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->supportedLoginProviders:Ljava/util/Map;

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

    .line 949
    :cond_1
    instance-of v2, p1, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;

    if-nez v2, :cond_2

    return v1

    .line 951
    :cond_2
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;

    .line 953
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

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

    .line 955
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 956
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 958
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

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

    .line 960
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 961
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 963
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_4

    :cond_b
    const/4 v2, 0x0

    .line 964
    :goto_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

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

    .line 966
    :cond_d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 967
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    .line 968
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v3

    .line 967
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 970
    :cond_e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

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

    .line 972
    :cond_11
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 973
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 975
    :cond_12
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_8

    :cond_13
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

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

    .line 977
    :cond_15
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 978
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 980
    :cond_16
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

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

    .line 982
    :cond_19
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 983
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    return v1

    .line 985
    :cond_1a
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    .line 986
    :goto_c
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

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

    .line 988
    :cond_1d
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 989
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 991
    :cond_1e
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_e

    :cond_1f
    const/4 v2, 0x0

    .line 992
    :goto_e
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

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

    .line 994
    :cond_21
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 995
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    return v1

    .line 997
    :cond_22
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    :goto_10
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

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

    .line 999
    :cond_25
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 1000
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    return v1

    .line 1002
    :cond_26
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_12

    :cond_27
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

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

    .line 1004
    :cond_29
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 1005
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

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

    .line 328
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->allowClassicFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

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

    .line 610
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->cognitoIdentityProviders:Ljava/util/List;

    return-object v0
.end method

.method public getDeveloperProviderName()Ljava/lang/String;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->developerProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityPoolId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolId:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentityPoolName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolName:Ljava/lang/String;

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

    .line 781
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolTags:Ljava/util/Map;

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

    .line 532
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->openIdConnectProviderARNs:Ljava/util/List;

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

    .line 694
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->samlProviderARNs:Ljava/util/List;

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

    .line 390
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->supportedLoginProviders:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 911
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 913
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 916
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    .line 917
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 919
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 922
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v2

    .line 923
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 926
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 929
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v2

    .line 930
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 933
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v2

    .line 934
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 936
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 938
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    return v0
.end method

.method public isAllowClassicFlow()Ljava/lang/Boolean;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->allowClassicFlow:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isAllowUnauthenticatedIdentities()Ljava/lang/Boolean;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAllowClassicFlow(Ljava/lang/Boolean;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->allowClassicFlow:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

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

    .line 626
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->cognitoIdentityProviders:Ljava/util/List;

    return-void

    .line 630
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->cognitoIdentityProviders:Ljava/util/List;

    return-void
.end method

.method public setDeveloperProviderName(Ljava/lang/String;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->developerProviderName:Ljava/lang/String;

    return-void
.end method

.method public setIdentityPoolId(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolId:Ljava/lang/String;

    return-void
.end method

.method public setIdentityPoolName(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolName:Ljava/lang/String;

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

    .line 800
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolTags:Ljava/util/Map;

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

    .line 546
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->openIdConnectProviderARNs:Ljava/util/List;

    return-void

    .line 550
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->openIdConnectProviderARNs:Ljava/util/List;

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

    .line 710
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->samlProviderARNs:Ljava/util/List;

    return-void

    .line 714
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->samlProviderARNs:Ljava/util/List;

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

    .line 404
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->supportedLoginProviders:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 879
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    if-eqz v1, :cond_0

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityPoolId: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "IdentityPoolName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    :cond_1
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 885
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AllowUnauthenticatedIdentities: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowUnauthenticatedIdentities()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    :cond_2
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 888
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AllowClassicFlow: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getAllowClassicFlow()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 890
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SupportedLoginProviders: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSupportedLoginProviders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :cond_4
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 892
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "DeveloperProviderName: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getDeveloperProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "OpenIdConnectProviderARNs: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    :cond_6
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CognitoIdentityProviders: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    :cond_7
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 898
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SamlProviderARNs: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    :cond_8
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IdentityPoolTags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getIdentityPoolTags()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "}"

    .line 901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withAllowClassicFlow(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->allowClassicFlow:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->allowUnauthenticatedIdentities:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withCognitoIdentityProviders(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;"
        }
    .end annotation

    .line 678
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setCognitoIdentityProviders(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withCognitoIdentityProviders([Lcom/amazonaws/services/cognitoidentity/model/CognitoIdentityProvider;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 4

    .line 651
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getCognitoIdentityProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->cognitoIdentityProviders:Ljava/util/List;

    .line 655
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 656
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->cognitoIdentityProviders:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withDeveloperProviderName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->developerProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolId(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolId:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolName(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolName:Ljava/lang/String;

    return-object p0
.end method

.method public withIdentityPoolTags(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;"
        }
    .end annotation

    .line 825
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->identityPoolTags:Ljava/util/Map;

    return-object p0
.end method

.method public withOpenIdConnectProviderARNs(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;"
        }
    .end annotation

    .line 595
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setOpenIdConnectProviderARNs(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withOpenIdConnectProviderARNs([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 4

    .line 569
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getOpenIdConnectProviderARNs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->openIdConnectProviderARNs:Ljava/util/List;

    .line 573
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 574
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->openIdConnectProviderARNs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSamlProviderARNs(Ljava/util/Collection;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;"
        }
    .end annotation

    .line 761
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setSamlProviderARNs(Ljava/util/Collection;)V

    return-object p0
.end method

.method public varargs withSamlProviderARNs([Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 4

    .line 734
    invoke-virtual {p0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->getSamlProviderARNs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 735
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->samlProviderARNs:Ljava/util/List;

    .line 737
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 738
    iget-object v3, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->samlProviderARNs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public withSupportedLoginProviders(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;"
        }
    .end annotation

    .line 424
    iput-object p1, p0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->supportedLoginProviders:Ljava/util/Map;

    return-object p0
.end method
