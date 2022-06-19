.class public Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/http/HttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazonaws/http/HttpResponseHandler<",
        "Lcom/amazonaws/AmazonServiceException;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/amazonaws/AmazonServiceException$ErrorType;
    .locals 1

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    .line 126
    sget-object p0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    return-object p0
.end method

.method private a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lcom/amazonaws/http/HttpResponse;->a()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1093
    iget-object v0, p1, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 60
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/amazonaws/util/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    invoke-static {v0}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "Error/Message"

    .line 74
    invoke-static {v2, v1}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error/Code"

    .line 75
    invoke-static {v3, v1}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error/RequestId"

    .line 76
    invoke-static {v4, v1}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error/HostId"

    .line 77
    invoke-static {v5, v1}, Lcom/amazonaws/util/XpathUtils;->a(Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v5, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v5, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 2103
    iget v2, p1, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 80
    invoke-virtual {v5, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 81
    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(I)Lcom/amazonaws/AmazonServiceException$ErrorType;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 82
    invoke-virtual {v5, v3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v5, v4}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    .line 3053
    iget-object v1, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v2, "X-Amz-Cf-Id"

    .line 85
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setCloudFrontId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    .line 88
    sget-object v2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v2}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed in parsing the response as XML: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 91
    :cond_1
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v0

    .line 67
    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    sget-object v1, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a:Lcom/amazonaws/logging/Log;

    const-string v2, "Failed in reading the error response"

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2093
    :cond_2
    iget-object v0, p1, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 70
    invoke-static {v0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    return-object p1
.end method

.method private static a(Ljava/lang/String;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/services/s3/model/AmazonS3Exception;
    .locals 3

    .line 100
    new-instance v0, Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    invoke-direct {v0, p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;-><init>(Ljava/lang/String;)V

    .line 3103
    iget p0, p1, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4093
    iget-object v2, p1, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorCode(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setStatusCode(I)V

    .line 104
    invoke-static {p0}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(I)Lcom/amazonaws/AmazonServiceException$ErrorType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 5053
    iget-object p0, p1, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string p1, "x-amz-request-id"

    .line 106
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setRequestId(Ljava/lang/String;)V

    const-string p1, "x-amz-id-2"

    .line 107
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setExtendedRequestId(Ljava/lang/String;)V

    const-string p1, "X-Amz-Cf-Id"

    .line 108
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setCloudFrontId(Ljava/lang/String;)V

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-amz-bucket-region"

    .line 111
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 110
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setAdditionalDetails(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public synthetic handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;->a(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object p1

    return-object p1
.end method

.method public needsConnectionLeftOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
