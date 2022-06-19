.class public Lcom/amazonaws/services/kms/model/transform/CreateKeyRequestMarshaller;
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
.method public marshall(Lcom/amazonaws/services/kms/model/CreateKeyRequest;)Lcom/amazonaws/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/kms/model/CreateKeyRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/kms/model/CreateKeyRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 51
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AWSKMS"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "X-Amz-Target"

    const-string v2, "TrentService.CreateKey"

    .line 54
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/http/HttpMethodName;)V

    const-string v1, "/"

    .line 58
    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 60
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 61
    invoke-static {v1}, Lcom/amazonaws/util/json/JsonUtils;->getJsonWriter(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    move-result-object v2

    .line 62
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 64
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getPolicy()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Policy"

    .line 66
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Description"

    .line 71
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 72
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 74
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getKeyUsage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyUsage"

    .line 76
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 77
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 80
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomerMasterKeySpec()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CustomerMasterKeySpec"

    .line 81
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 82
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getOrigin()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Origin"

    .line 86
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 87
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getCustomKeyStoreId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CustomKeyStoreId"

    .line 91
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 94
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 96
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getBypassPolicyLockoutSafetyCheck()Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "BypassPolicyLockoutSafetyCheck"

    .line 97
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 98
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Z)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 100
    :cond_6
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 101
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/CreateKeyRequest;->getTags()Ljava/util/List;

    move-result-object p1

    const-string v3, "Tags"

    .line 102
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 103
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazonaws/services/kms/model/Tag;

    if-eqz v3, :cond_7

    .line 106
    invoke-static {}, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;->getInstance()Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lcom/amazonaws/services/kms/model/transform/TagJsonMarshaller;->marshall(Lcom/amazonaws/services/kms/model/Tag;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    goto :goto_0

    .line 109
    :cond_8
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 112
    :cond_9
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 113
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 114
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 116
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 117
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-interface {v0}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "application/x-amz-json-1.1"

    .line 123
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-object v0

    :catchall_0
    move-exception p1

    .line 119
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to marshall request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 48
    :cond_b
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(CreateKeyRequest)"

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
    check-cast p1, Lcom/amazonaws/services/kms/model/CreateKeyRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/CreateKeyRequestMarshaller;->marshall(Lcom/amazonaws/services/kms/model/CreateKeyRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
