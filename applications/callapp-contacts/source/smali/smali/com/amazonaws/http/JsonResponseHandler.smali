.class public Lcom/amazonaws/http/JsonResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonWebServiceResponse<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final log:Lcom/amazonaws/logging/Log;


# instance fields
.field public needsConnectionLeftOpen:Z

.field private responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    .line 53
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/JsonResponseHandler;->log:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/transform/Unmarshaller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/transform/Unmarshaller<",
            "TT;",
            "Lcom/amazonaws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    .line 68
    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    if-nez p1, :cond_0

    .line 77
    new-instance p1, Lcom/amazonaws/transform/VoidJsonUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/transform/VoidJsonUnmarshaller;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    :cond_0
    return-void
.end method


# virtual methods
.method public handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Error closing json parser"

    .line 86
    sget-object v1, Lcom/amazonaws/http/JsonResponseHandler;->log:Lcom/amazonaws/logging/Log;

    const-string v2, "Parsing service response JSON"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    .line 1053
    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string/jumbo v3, "x-amz-crc32"

    .line 88
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1084
    iget-object v3, p1, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/io/ByteArrayInputStream;

    sget-object v4, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    const-string/jumbo v5, "{}"

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 98
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "CRC32Checksum = "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content encoding = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2053
    iget-object v5, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v6, "Content-Encoding"

    .line 99
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 3053
    iget-object v4, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    .line 101
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 110
    new-instance v5, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;

    invoke-direct {v5, v3}, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v5

    :cond_1
    if-eqz v4, :cond_2

    .line 115
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 118
    :cond_2
    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v6, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v4}, Lcom/amazonaws/util/json/JsonUtils;->getJsonReader(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;

    move-result-object v3

    .line 122
    :try_start_0
    new-instance v4, Lcom/amazonaws/AmazonWebServiceResponse;

    invoke-direct {v4}, Lcom/amazonaws/AmazonWebServiceResponse;-><init>()V

    .line 123
    new-instance v6, Lcom/amazonaws/transform/JsonUnmarshallerContext;

    invoke-direct {v6, v3, p1}, Lcom/amazonaws/transform/JsonUnmarshallerContext;-><init>(Lcom/amazonaws/util/json/AwsJsonReader;Lcom/amazonaws/http/HttpResponse;)V

    .line 126
    iget-object v7, p0, Lcom/amazonaws/http/JsonResponseHandler;->responseUnmarshaller:Lcom/amazonaws/transform/Unmarshaller;

    invoke-interface {v7, v6}, Lcom/amazonaws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v5, :cond_4

    .line 129
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 4043
    iget-object v2, v5, Lcom/amazonaws/util/CRC32ChecksumCalculatingInputStream;->a:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-nez v2, :cond_3

    goto :goto_0

    .line 132
    :cond_3
    new-instance p1, Lcom/amazonaws/internal/CRC32MismatchException;

    const-string v1, "Client calculated crc32 checksum didn\'t match that calculated by server side"

    invoke-direct {p1, v1}, Lcom/amazonaws/internal/CRC32MismatchException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4049
    :cond_4
    :goto_0
    iput-object v6, v4, Lcom/amazonaws/AmazonWebServiceResponse;->a:Ljava/lang/Object;

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v5, "AWS_REQUEST_ID"

    .line 4053
    iget-object p1, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string/jumbo v6, "x-amzn-RequestId"

    .line 141
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 140
    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance p1, Lcom/amazonaws/ResponseMetadata;

    invoke-direct {p1, v2}, Lcom/amazonaws/ResponseMetadata;-><init>(Ljava/util/Map;)V

    .line 4058
    iput-object p1, v4, Lcom/amazonaws/AmazonWebServiceResponse;->b:Lcom/amazonaws/ResponseMetadata;

    const-string p1, "Done parsing service response"

    .line 144
    invoke-interface {v1, p1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-boolean p1, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez p1, :cond_5

    .line 149
    :try_start_1
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 151
    sget-object v1, Lcom/amazonaws/http/JsonResponseHandler;->log:Lcom/amazonaws/logging/Log;

    invoke-interface {v1, v0, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-object v4

    :catchall_0
    move-exception p1

    .line 147
    iget-boolean v1, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    if-nez v1, :cond_6

    .line 149
    :try_start_2
    invoke-interface {v3}, Lcom/amazonaws/util/json/AwsJsonReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 151
    sget-object v2, Lcom/amazonaws/http/JsonResponseHandler;->log:Lcom/amazonaws/logging/Log;

    invoke-interface {v2, v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 154
    :cond_6
    :goto_2
    throw p1
.end method

.method public bridge synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/amazonaws/http/JsonResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/amazonaws/http/JsonResponseHandler;->needsConnectionLeftOpen:Z

    return v0
.end method

.method protected registerAdditionalMetadataExpressions(Lcom/amazonaws/transform/JsonUnmarshallerContext;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
