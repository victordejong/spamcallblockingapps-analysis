.class public Lcom/amazonaws/services/cognitoidentity/model/transform/SetPrincipalTagAttributeMapRequestMarshaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;)Lcom/amazonaws/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 53
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AmazonCognitoIdentity"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "X-Amz-Target"

    const-string v2, "AWSCognitoIdentityService.SetPrincipalTagAttributeMap"

    .line 56
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 60
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 62
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 63
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 64
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 66
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 67
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;->getIdentityPoolId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IdentityPoolId"

    .line 68
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;->getIdentityProviderName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IdentityProviderName"

    .line 74
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 75
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 78
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;->getUseDefaults()Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "UseDefaults"

    .line 79
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 80
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 84
    invoke-virtual {p1}, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;->getPrincipalTags()Ljava/util/Map;

    move-result-object p1

    const-string v3, "PrincipalTags"

    .line 85
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 86
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 88
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 87
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 91
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 95
    :cond_4
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 98
    :cond_5
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 99
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 100
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 102
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 103
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-interface {v0}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "application/x-amz-json-1.1"

    .line 109
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object v0

    :catchall_0
    move-exception p1

    .line 105
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to marshall request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 49
    :cond_7
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(SetPrincipalTagAttributeMapRequest)"

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    check-cast p1, Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/cognitoidentity/model/transform/SetPrincipalTagAttributeMapRequestMarshaller;->marshall(Lcom/amazonaws/services/cognitoidentity/model/SetPrincipalTagAttributeMapRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
