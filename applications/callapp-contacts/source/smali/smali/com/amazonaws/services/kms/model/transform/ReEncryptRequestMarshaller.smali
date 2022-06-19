.class public Lcom/amazonaws/services/kms/model/transform/ReEncryptRequestMarshaller;
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
.method public marshall(Lcom/amazonaws/services/kms/model/ReEncryptRequest;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;",
            ")",
            "Lcom/amazonaws/Request<",
            "Lcom/amazonaws/services/kms/model/ReEncryptRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 51
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "AWSKMS"

    invoke-direct {v0, p1, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    const-string v1, "X-Amz-Target"

    const-string v2, "TrentService.ReEncrypt"

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
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getCiphertextBlob()Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "CiphertextBlob"

    .line 66
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 67
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionContext()Ljava/util/Map;

    move-result-object v3

    const-string v4, "SourceEncryptionContext"

    .line 72
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 73
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 75
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 74
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 78
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 79
    invoke-interface {v2, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_0

    .line 82
    :cond_2
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 84
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 85
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceKeyId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SourceKeyId"

    .line 86
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 87
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 89
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 90
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationKeyId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DestinationKeyId"

    .line 91
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 92
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 94
    :cond_5
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 96
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionContext()Ljava/util/Map;

    move-result-object v3

    const-string v4, "DestinationEncryptionContext"

    .line 97
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 98
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 100
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 99
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 104
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 105
    invoke-interface {v2, v5}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_1

    .line 108
    :cond_7
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 110
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 111
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getSourceEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SourceEncryptionAlgorithm"

    .line 112
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 113
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 115
    :cond_9
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 117
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getDestinationEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DestinationEncryptionAlgorithm"

    .line 118
    invoke-interface {v2, v4}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 119
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 121
    :cond_a
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 122
    invoke-virtual {p1}, Lcom/amazonaws/services/kms/model/ReEncryptRequest;->getGrantTokens()Ljava/util/List;

    move-result-object p1

    const-string v3, "GrantTokens"

    .line 123
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->name(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 124
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->beginArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 127
    invoke-interface {v2, v3}, Lcom/amazonaws/util/json/AwsJsonWriter;->value(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;

    goto :goto_2

    .line 130
    :cond_c
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endArray()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 133
    :cond_d
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->endObject()Lcom/amazonaws/util/json/AwsJsonWriter;

    .line 134
    invoke-interface {v2}, Lcom/amazonaws/util/json/AwsJsonWriter;->close()V

    .line 135
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    sget-object v1, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 137
    new-instance v2, Lcom/amazonaws/util/StringInputStream;

    invoke-direct {v2, p1}, Lcom/amazonaws/util/StringInputStream;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const-string p1, "Content-Length"

    .line 138
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-interface {v0}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "application/x-amz-json-1.1"

    .line 144
    invoke-interface {v0, v1, p1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-object v0

    :catchall_0
    move-exception p1

    .line 140
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to marshall request to JSON: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 48
    :cond_f
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Invalid argument passed to marshall(ReEncryptRequest)"

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
    check-cast p1, Lcom/amazonaws/services/kms/model/ReEncryptRequest;

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/model/transform/ReEncryptRequestMarshaller;->marshall(Lcom/amazonaws/services/kms/model/ReEncryptRequest;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method
