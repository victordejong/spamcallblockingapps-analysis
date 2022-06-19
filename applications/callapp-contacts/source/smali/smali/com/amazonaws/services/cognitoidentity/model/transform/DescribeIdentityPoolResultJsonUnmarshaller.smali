.class public Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/transform/Unmarshaller<",
        "Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;",
        "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;
    .locals 1

    .line 93
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;

    .line 95
    :cond_0
    sget-object v0, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;->instance:Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;

    invoke-direct {v0}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;->getReader()Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->beginObject()V

    .line 34
    :goto_0
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 35
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IdentityPoolId"

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setIdentityPoolId(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "IdentityPoolName"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 41
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setIdentityPoolName(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "AllowUnauthenticatedIdentities"

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 45
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setAllowUnauthenticatedIdentities(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_2
    const-string v3, "AllowClassicFlow"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setAllowClassicFlow(Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_3
    const-string v3, "SupportedLoginProviders"

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 51
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 52
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 54
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setSupportedLoginProviders(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    const-string v3, "DeveloperProviderName"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 57
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v2

    .line 58
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setDeveloperProviderName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v3, "OpenIdConnectProviderARNs"

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 60
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 62
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 64
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setOpenIdConnectProviderARNs(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_6
    const-string v3, "CognitoIdentityProviders"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 66
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 68
    invoke-static {}, Lcom/amazonaws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;->getInstance()Lcom/amazonaws/services/cognitoidentity/model/transform/CognitoIdentityProviderJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 70
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setCognitoIdentityProviders(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "SamlProviderARNs"

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 72
    new-instance v2, Lcom/amazonaws/transform/ListUnmarshaller;

    .line 73
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/ListUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 75
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/ListUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setSamlProviderARNs(Ljava/util/Collection;)V

    goto/16 :goto_0

    :cond_8
    const-string v3, "IdentityPoolTags"

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 77
    new-instance v2, Lcom/amazonaws/transform/MapUnmarshaller;

    .line 78
    invoke-static {}, Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;->getInstance()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/amazonaws/transform/MapUnmarshaller;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 80
    invoke-virtual {v2, p1}, Lcom/amazonaws/transform/MapUnmarshaller;->a(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;

    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;->setIdentityPoolTags(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 82
    :cond_9
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->skipValue()V

    goto/16 :goto_0

    .line 85
    :cond_a
    invoke-interface {v1}, Lcom/amazonaws/util/json/AwsJsonReader;->endObject()V

    return-object v0
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/DescribeIdentityPoolResultJsonUnmarshaller;->unmarshall(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/DescribeIdentityPoolResult;

    move-result-object p1

    return-object p1
.end method
