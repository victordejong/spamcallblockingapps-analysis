.class public Lcom/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "SourceFile"

# interfaces
.implements Lcom/amazonaws/services/s3/AmazonS3;


# static fields
.field private static i:Lcom/amazonaws/logging/Log;

.field private static final l:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static final m:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

.field private static final p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected g:Lcom/amazonaws/services/s3/S3ClientOptions;

.field volatile h:Ljava/lang/String;

.field private final j:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private final k:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field private o:I

.field private final q:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 176
    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    .line 180
    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->a()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->addAll(Ljava/util/Collection;)Z

    .line 183
    const-class v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    const-string v1, "S3SignerType"

    invoke-static {v1, v0}, Lcom/amazonaws/auth/SignerFactory;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 184
    const-class v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    const-string v1, "AWSS3V4SignerType"

    invoke-static {v1, v0}, Lcom/amazonaws/auth/SignerFactory;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 195
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    .line 201
    new-instance v0, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    .line 224
    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client$1;

    const/16 v1, 0x12c

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/services/s3/AmazonS3Client$1;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 459
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Region;)V
    .locals 1

    .line 597
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 322
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;)V
    .locals 1

    .line 470
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 485
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p3}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 502
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 407
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 188
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->j:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 191
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->k:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 204
    new-instance p2, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p2, 0x400

    .line 220
    iput p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:I

    .line 238
    new-instance p2, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 408
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 409
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->d()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p2, v0, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 188
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->j:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 191
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->k:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 204
    new-instance p2, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p2, 0x400

    .line 220
    iput p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:I

    .line 238
    new-instance p2, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 382
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 383
    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->d()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;)V
    .locals 1

    .line 514
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 530
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p3}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 548
    invoke-direct {p0, p3, p4}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 188
    new-instance p4, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->j:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    .line 191
    new-instance p4, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->k:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    .line 204
    new-instance p4, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p4, 0x400

    .line 220
    iput p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:I

    .line 238
    new-instance p4, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 549
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/auth/AWSCredentialsProvider;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 6636
    iput-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Lcom/amazonaws/ClientConfiguration;

    const-string p1, "s3"

    .line 6637
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->f:Ljava/lang/String;

    const-string p1, "s3.amazonaws.com"

    .line 6640
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;)V

    .line 6641
    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/regions/Region;)V

    .line 6643
    new-instance p1, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {p1}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 6644
    iget-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->d:Ljava/util/List;

    .line 7045
    const-class p3, Lcom/amazonaws/handlers/RequestHandler;

    const-string p4, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {p1, p4, p3}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p3

    .line 6644
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6646
    iget-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->d:Ljava/util/List;

    .line 7058
    const-class p3, Lcom/amazonaws/handlers/RequestHandler2;

    const-string p4, "/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {p1, p4, p3}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 6646
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6649
    sget-object p1, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "initialized with endpoint = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->a:Ljava/net/URI;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-void

    .line 6633
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Region cannot be null. Region is required to sign the request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6629
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Credentials cannot be null. Credentials is required to sign the request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Ljava/io/InputStream;)J
    .locals 6

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, -0x1

    .line 2021
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->mark(I)V

    const-wide/16 v2, 0x0

    .line 2023
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_0

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 2026
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception p0

    .line 2028
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Could not calculate content length."

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            ")",
            "Lcom/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4831
    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TX;",
            "Lcom/amazonaws/http/HttpMethodName;",
            "Ljava/net/URI;",
            ")",
            "Lcom/amazonaws/Request<",
            "TX;>;"
        }
    .end annotation

    .line 4836
    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "Amazon S3"

    invoke-direct {v0, p3, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    .line 4841
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 13328
    iget-boolean p3, p3, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    if-eqz p3, :cond_1

    .line 4842
    invoke-interface {v0}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p3

    instance-of p3, p3, Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;

    if-nez p3, :cond_1

    .line 4843
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 13404
    iget-boolean p3, p3, Lcom/amazonaws/services/s3/S3ClientOptions;->d:Z

    if-eqz p3, :cond_0

    .line 4844
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Lcom/amazonaws/ClientConfiguration;

    const-string p5, "s3-accelerate.dualstack.amazonaws.com"

    invoke-static {p5, p3}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    goto :goto_0

    .line 4847
    :cond_0
    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Lcom/amazonaws/ClientConfiguration;

    const-string p5, "s3-accelerate.amazonaws.com"

    invoke-static {p5, p3}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    .line 4852
    :cond_1
    :goto_0
    invoke-interface {v0, p4}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/http/HttpMethodName;)V

    .line 4853
    invoke-direct {p0, v0, p1, p2, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazonaws/services/s3/internal/S3Signer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4284
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v2

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4287
    new-instance p2, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-interface {p0}, Lcom/amazonaws/Request;->e()Lcom/amazonaws/http/HttpMethodName;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">(",
            "Lcom/amazonaws/Request<",
            "TY;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TX;>;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TX;"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 4873
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    .line 4874
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v2

    .line 14085
    iget-object v3, v2, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 4877
    invoke-interface {p1, v3}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V

    .line 4884
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v4, 0x0

    .line 4887
    :try_start_0
    iget v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->e:I

    invoke-interface {p1, v5}, Lcom/amazonaws/Request;->a(I)V

    .line 4894
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "application/octet-stream"

    .line 4895
    invoke-interface {p1, v0, v5}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_3

    .line 4902
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    instance-of v0, v0, Lcom/amazonaws/services/s3/model/CreateBucketRequest;

    if-nez v0, :cond_3

    .line 4903
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14651
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_2

    .line 14653
    sget-object v5, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    invoke-interface {v5}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14654
    sget-object v5, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bucket region cache doesn\'t have an entry for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Trying to get bucket region from Amazon S3."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 14657
    :cond_1
    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 14659
    invoke-interface {v0, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14662
    :cond_2
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14663
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Region for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 4907
    :cond_3
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 4908
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 4909
    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    .line 15171
    :cond_4
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 15328
    iget-boolean v1, v1, Lcom/amazonaws/services/s3/S3ClientOptions;->c:Z

    if-eqz v1, :cond_5

    .line 15171
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->a:Ljava/net/URI;

    goto :goto_0

    .line 15173
    :cond_5
    invoke-interface {p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v1

    .line 15177
    :goto_0
    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v1

    .line 16242
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Lcom/amazonaws/ClientConfiguration;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Lcom/amazonaws/ClientConfiguration;

    .line 16243
    invoke-virtual {v5}, Lcom/amazonaws/ClientConfiguration;->getSignerOverride()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_c

    .line 15180
    instance-of v5, v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    if-eqz v5, :cond_9

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 15182
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->h:Ljava/lang/String;

    if-nez v5, :cond_7

    sget-object v5, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/util/Map;

    .line 15183
    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->h:Ljava/lang/String;

    :goto_2
    if-eqz v5, :cond_8

    .line 15191
    invoke-static {v5}, Lcom/amazonaws/regions/RegionUtils;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v6

    const-string v7, "s3"

    invoke-virtual {v6, v7}, Lcom/amazonaws/regions/Region;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-static {v6, v7}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object v6

    .line 15188
    invoke-direct {p0, p1, p3, p4, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    .line 15194
    move-object p4, v1

    check-cast p4, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    .line 15195
    check-cast v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {p0, v1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    move-object v1, p4

    goto :goto_4

    .line 15197
    :cond_8
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v5

    instance-of v5, v5, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    if-eqz v5, :cond_9

    .line 15198
    invoke-static {p1, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    move-result-object v1

    goto :goto_4

    .line 15203
    :cond_9
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->c()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->h:Ljava/lang/String;

    if-nez v5, :cond_a

    sget-object v5, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/util/Map;

    .line 15204
    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->h:Ljava/lang/String;

    goto :goto_3

    .line 15205
    :cond_b
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->c()Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_c

    .line 15207
    new-instance v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;-><init>()V

    .line 15208
    invoke-direct {p0, v1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    goto :goto_4

    .line 15213
    :cond_c
    instance-of v5, v1, Lcom/amazonaws/services/s3/internal/S3Signer;

    if-eqz v5, :cond_d

    .line 15218
    invoke-static {p1, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    move-result-object v1

    .line 4911
    :cond_d
    :goto_4
    invoke-virtual {v2, v1}, Lcom/amazonaws/http/ExecutionContext;->a(Lcom/amazonaws/auth/Signer;)V

    .line 17128
    iput-object v0, v2, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/auth/AWSCredentials;

    .line 4913
    iget-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->c:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->j:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-virtual {p4, p1, p2, v0, v2}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v4

    .line 18041
    iget-object p2, v4, Lcom/amazonaws/Response;->a:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4935
    invoke-virtual {p0, v3, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    .line 4925
    :try_start_1
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result p4

    const/16 v0, 0x12d

    if-ne p4, v0, :cond_e

    .line 4926
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_e

    .line 4927
    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object p4

    const-string v0, "x-amz-bucket-region"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 4928
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4929
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The bucket is in this region: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ". Please use this region to retry the request"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->setErrorMessage(Ljava/lang/String;)V

    .line 4933
    :cond_e
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4935
    :goto_5
    invoke-virtual {p0, v3, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    .line 4936
    throw p2
.end method

.method private static a(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    .line 5483
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectTagging;->getTagSet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5486
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5488
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/model/ObjectTagging;->getTagSet()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 5489
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5490
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Tag;

    .line 5491
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5492
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5493
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "&"

    .line 5494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5498
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 5772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    .line 4365
    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4366
    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 4368
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid bucket name: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "+",
            "Lcom/amazonaws/AmazonWebServiceRequest;",
            ">;",
            "Lcom/amazonaws/services/s3/model/AccessControlList;",
            ")V"
        }
    .end annotation

    .line 2038
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object p1

    .line 2039
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2040
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Grant;

    .line 2041
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2042
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    :cond_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getPermission()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->getGrantee()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2046
    :cond_1
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    .line 2047
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2048
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 2050
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2051
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const-string v9, ", "

    .line 2055
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    :goto_3
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getTypeIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "=\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2058
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2060
    :cond_3
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/Permission;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/ObjectMetadata;",
            ")V"
        }
    .end annotation

    .line 4383
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4385
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->KMS_SERVER_SIDE_ENCRYPTION:Ljava/lang/String;

    const-string v2, "x-amz-server-side-encryption"

    .line 4387
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4386
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4388
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 4393
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4394
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4398
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getHttpExpiresDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4400
    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Expires"

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4403
    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 4405
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4406
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4407
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 4409
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v0, :cond_6

    .line 4412
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v2, "x-amz-tagging"

    .line 4414
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 4415
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-meta-"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4615
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getEncryption()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption"

    .line 4614
    invoke-static {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4618
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getAwsKmsKeyId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "x-amz-server-side-encryption-aws-kms-key-id"

    .line 4616
    invoke-static {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/services/s3/model/SSECustomerKey;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 4571
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-customer-algorithm"

    .line 4570
    invoke-static {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4573
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-customer-key"

    .line 4572
    invoke-static {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4575
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-customer-key-MD5"

    .line 4574
    invoke-static {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 4578
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4579
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getMd5()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4580
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 4581
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    .line 4583
    invoke-static {p1}, Lcom/amazonaws/util/Md5Utils;->a([B)Ljava/lang/String;

    move-result-object p1

    .line 4582
    invoke-interface {p0, v1, p1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/net/URI;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 5737
    iget-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->a:Ljava/net/URI;

    .line 5738
    :cond_0
    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5739
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Using virtual style addressing. Endpoint = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 5740
    invoke-static {p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 5741
    invoke-static {p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 5743
    :cond_1
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Using path style addressing. Endpoint = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 5744
    invoke-interface {p1, p4}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    if-eqz p2, :cond_2

    .line 5746
    invoke-static {p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 5749
    :cond_2
    :goto_0
    sget-object p2, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Key: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; Request: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4702
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->b(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4718
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4719
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/amazonaws/Request;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string p1, "x-amz-request-payer"

    const-string v0, "requester"

    .line 5528
    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 4025
    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 4026
    invoke-virtual {v0, p1}, Lcom/amazonaws/event/ProgressEvent;->setEventCode(I)V

    .line 4027
    invoke-virtual {p0, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private a(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V
    .locals 1

    .line 4234
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->a(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {p1, p2}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/amazonaws/Request;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 4257
    invoke-interface {p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object p1

    .line 12277
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13269
    invoke-virtual {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->c()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 13271
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->h:Ljava/lang/String;

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static b(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 6

    const/high16 v0, 0x40000

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-lez v0, :cond_0

    .line 5070
    :try_start_0
    invoke-virtual {p0, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/2addr v3, v5

    sub-int/2addr v0, v5

    goto :goto_0

    .line 5074
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 5077
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5081
    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object p0

    .line 5075
    :cond_1
    :try_start_1
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Input stream exceeds 256k buffer."

    invoke-direct {p0, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    .line 5079
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Failed to read from inputstream"

    invoke-direct {v0, v1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 5679
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/model/HeadBucketRequest;

    invoke-direct {v3, p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    new-instance v5, Ljava/net/URI;

    const-string v0, "https://s3-us-west-1.amazonaws.com"

    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 5682
    new-instance v1, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    invoke-direct {p0, v0, v1, p1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    .line 5684
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/HeadBucketResult;->getBucketRegion()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5691
    :catch_0
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    const-string v1, "Error while creating URI"

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5686
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5687
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-bucket-region"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 5694
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5695
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not able to derive region of the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from the HEAD Bucket requests."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_1
    return-object v6
.end method

.method private static b(Lcom/amazonaws/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "Content-Length"

    const-string v1, "0"

    .line 5051
    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 4649
    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/net/URI;Ljava/lang/String;)Z
    .locals 1

    .line 5753
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 18288
    iget-boolean v0, v0, Lcom/amazonaws/services/s3/S3ClientOptions;->b:Z

    if-nez v0, :cond_0

    .line 5753
    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5754
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "/"

    .line 5765
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5766
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private d()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "s3.amazonaws.com"

    .line 606
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;)V

    const-string v0, "s3"

    .line 607
    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->f:Ljava/lang/String;

    .line 609
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 610
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->d:Ljava/util/List;

    .line 8045
    const-class v2, Lcom/amazonaws/handlers/RequestHandler;

    const-string v3, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {v0, v3, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 610
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 612
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->d:Ljava/util/List;

    .line 8058
    const-class v2, Lcom/amazonaws/handlers/RequestHandler2;

    const-string v3, "/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {v0, v3, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 612
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\\."

    .line 5779
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5780
    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return v0

    .line 5783
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 5785
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_3

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .locals 2

    .line 4866
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazonaws/services/s3/AmazonS3Client;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 4867
    :goto_1
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->d:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when completing a multipart upload"

    .line 3564
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3567
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3568
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3569
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The bucket name parameter must be specified when completing a multipart upload"

    .line 3570
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The key parameter must be specified when completing a multipart upload"

    .line 3572
    invoke-static {v1, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "The upload ID parameter must be specified when completing a multipart upload"

    .line 3574
    invoke-static {v2, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3576
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v3

    const-string v4, "The part ETags parameter must be specified when completing a multipart upload"

    invoke-static {v3, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3582
    :goto_0
    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-direct {p0, v0, v1, p1, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v5

    const-string v6, "uploadId"

    .line 3583
    invoke-interface {v5, v6, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->isRequesterPays()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3587
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->convertToXmlByteArray(Ljava/util/List;)[B

    move-result-object v6

    const-string v7, "Content-Type"

    const-string v8, "application/xml"

    .line 3588
    invoke-interface {v5, v7, v8}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    array-length v7, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Length"

    invoke-interface {v5, v8, v7}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3591
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v5, v7}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3595
    new-instance v6, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v7, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;

    invoke-direct {v7}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v9, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v9}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v9, v8, v3

    new-instance v9, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v9}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    new-instance v10, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v10}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    aput-object v10, v8, v9

    const/4 v9, 0x3

    new-instance v10, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v10}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3603
    invoke-direct {p0, v5, v6, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    .line 3604
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 3605
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getCompleteMultipartUploadResult()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1

    .line 3608
    :cond_0
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getAmazonS3Exception()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 10617
    iget-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v8}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 11103
    iget-object v9, v8, Lcom/amazonaws/retry/RetryPolicy;->a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    if-nez v9, :cond_1

    goto :goto_1

    .line 10623
    :cond_1
    sget-object v9, Lcom/amazonaws/retry/PredefinedRetryPolicies;->a:Lcom/amazonaws/retry/RetryPolicy;

    if-ne v8, v9, :cond_2

    goto :goto_1

    .line 10627
    :cond_2
    iget-object v8, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    .line 10628
    invoke-virtual {v8, v6, v4}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->a(Lcom/amazonaws/AmazonClientException;I)Z

    move-result v4

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_4

    move v4, v7

    goto/16 :goto_0

    .line 3610
    :cond_4
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->getAmazonS3Exception()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    throw p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when initiating a multipart upload"

    .line 3640
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when initiating a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3645
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when initiating a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3649
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3650
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    .line 3648
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    const-string v1, "uploads"

    const/4 v2, 0x0

    .line 3652
    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3654
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3656
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-storage-class"

    .line 3655
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3659
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3661
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-website-redirect-location"

    .line 3660
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3665
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_0

    .line 3666
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3667
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v1

    .line 3668
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-acl"

    .line 3667
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3671
    :cond_3
    :goto_0
    iget-object v1, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v1, :cond_4

    .line 3672
    iget-object v1, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 3675
    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "x-amz-tagging"

    invoke-static {v0, v2, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3677
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3680
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3684
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v1

    .line 3683
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 3688
    invoke-static {v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;)V

    .line 3693
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3697
    new-instance v1, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    new-instance v5, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    aput-object v5, v4, v2

    invoke-direct {v1, v3, v4}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    .line 3703
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 3704
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 3702
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Unable to cleanly close input stream: "

    const-string v3, "The PutObjectRequest parameter must be specified when uploading an object"

    .line 1788
    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 1792
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 1793
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v5

    .line 1794
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1801
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v7

    .line 1803
    invoke-static {v7}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v7

    if-nez v5, :cond_0

    .line 1806
    new-instance v5, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_0
    const-string v8, "The bucket name parameter must be specified when uploading an object"

    .line 1809
    invoke-static {v3, v8}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "The key parameter must be specified when uploading an object"

    .line 1811
    invoke-static {v4, v8}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1813
    iget-object v8, v1, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 1814
    invoke-static {v0, v8}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result v8

    .line 1818
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 1819
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v6

    .line 1821
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    .line 1823
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 1826
    :goto_0
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    .line 1827
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->getInstance()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/amazonaws/services/s3/util/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_2
    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    .line 1832
    :try_start_0
    invoke-static {v6}, Lcom/amazonaws/util/Md5Utils;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 1833
    invoke-virtual {v5, v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1835
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to calculate MD5 hash: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1836
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1841
    :cond_3
    :goto_1
    :try_start_1
    new-instance v9, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-direct {v9, v6}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v9

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1843
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Unable to find file to upload"

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1847
    :cond_4
    :goto_2
    sget-object v9, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-direct {v1, v3, v4, v0, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v9

    .line 1850
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1851
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_3

    .line 1852
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 1853
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "x-amz-acl"

    invoke-interface {v9, v12, v11}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 1857
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v11

    const-string v12, "x-amz-storage-class"

    invoke-interface {v9, v12, v11}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    .line 1861
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v11

    const-string v12, "x-amz-website-redirect-location"

    invoke-interface {v9, v12, v11}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_8

    .line 1863
    invoke-static {v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;)V

    .line 1864
    new-instance v6, Ljava/io/ByteArrayInputStream;

    new-array v11, v10, [B

    invoke-direct {v6, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1868
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;

    move-result-object v11

    invoke-static {v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "x-amz-tagging"

    invoke-static {v9, v12, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->isRequesterPays()Z

    move-result v11

    invoke-static {v9, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 1873
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    const-string v11, "Content-Length"

    .line 1876
    invoke-virtual {v5, v11}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    if-nez v12, :cond_a

    .line 1885
    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1886
    sget-object v10, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    const-string v12, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    invoke-interface {v10, v12}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;)V

    .line 1889
    invoke-static {v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v6

    .line 1890
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v11, v10}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    invoke-interface {v9}, Lcom/amazonaws/Request;->m()V

    goto :goto_4

    .line 1894
    :cond_9
    invoke-static {v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/io/InputStream;)J

    move-result-wide v12

    .line 1895
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v11, v10}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1898
    :cond_a
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-ltz v17, :cond_b

    .line 1907
    new-instance v15, Lcom/amazonaws/util/LengthCheckInputStream;

    invoke-direct {v15, v6, v13, v14, v10}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    .line 1912
    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v11, v6}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v15

    :cond_b
    :goto_4
    if-eqz v7, :cond_c

    .line 1917
    new-instance v10, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v10, v6, v7}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 1918
    move-object v6, v10

    check-cast v6, Lcom/amazonaws/event/ProgressReportingInputStream;

    iget v11, v1, Lcom/amazonaws/services/s3/AmazonS3Client;->o:I

    invoke-virtual {v6, v11}, Lcom/amazonaws/event/ProgressReportingInputStream;->a(I)V

    const/4 v6, 0x2

    .line 1919
    invoke-static {v7, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v6, v10

    :cond_c
    const/4 v10, 0x0

    .line 1923
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_d

    if-nez v8, :cond_d

    .line 1931
    new-instance v10, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v10, v6}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v10

    .line 1934
    :cond_d
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    const-string v11, "application/octet-stream"

    .line 1939
    invoke-virtual {v5, v11}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 1942
    :cond_e
    invoke-static {v9, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 1943
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 1945
    invoke-interface {v9, v6}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const/16 v11, 0x8

    .line 1960
    :try_start_2
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {v1, v9, v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1966
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lcom/amazonaws/AbortedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v4, v0

    .line 1969
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_3
    nop

    .line 1973
    :goto_5
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_f

    .line 10064
    iget-object v0, v10, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 1975
    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->b([B)Ljava/lang/String;

    move-result-object v0

    :cond_f
    if-eqz v3, :cond_11

    if-eqz v0, :cond_11

    if-nez v8, :cond_11

    .line 1979
    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 1980
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 1982
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6

    .line 1983
    :cond_10
    invoke-static {v7, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1985
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_6
    const/4 v2, 0x4

    .line 1994
    invoke-static {v7, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1996
    new-instance v2, Lcom/amazonaws/services/s3/model/PutObjectResult;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    .line 1997
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getVersionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setVersionId(Ljava/lang/String;)V

    .line 1998
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 1999
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTime(Ljava/util/Date;)V

    .line 2002
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setETag(Ljava/lang/String;)V

    .line 2004
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setMetadata(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 2005
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->isRequesterCharged()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setRequesterCharged(Z)V

    .line 2006
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setContentMd5(Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_7

    :catch_4
    move-exception v0

    .line 1962
    :try_start_4
    invoke-static {v7, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1963
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1966
    :goto_7
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lcom/amazonaws/AbortedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v4, v0

    .line 1969
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1971
    :catch_6
    :goto_8
    throw v3
.end method

.method public a(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The GetObjectRequest parameter must be specified when requesting an object"

    .line 1540
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1547
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 1548
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    .line 1547
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    .line 1550
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1551
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionId"

    invoke-interface {v0, v2, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1557
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1558
    aget-wide v4, v1, v2

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    .line 1564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v1, "Range"

    .line 1566
    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 1571
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 8735
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8737
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getCacheControl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response-cache-control"

    .line 8736
    invoke-interface {v0, v4, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8739
    :cond_3
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8741
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response-content-disposition"

    .line 8740
    invoke-interface {v0, v4, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8743
    :cond_4
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8745
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response-content-encoding"

    .line 8744
    invoke-interface {v0, v4, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8747
    :cond_5
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 8749
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response-content-language"

    .line 8748
    invoke-interface {v0, v4, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8751
    :cond_6
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 8753
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "response-content-type"

    .line 8752
    invoke-interface {v0, v4, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8755
    :cond_7
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 8757
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getExpires()Ljava/lang/String;

    move-result-object v1

    const-string v3, "response-expires"

    .line 8756
    invoke-interface {v0, v3, v1}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    :cond_8
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    const-string v3, "If-Modified-Since"

    .line 1573
    invoke-static {v0, v3, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 1576
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v1

    const-string v3, "If-Unmodified-Since"

    .line 1575
    invoke-static {v0, v3, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    .line 1578
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    const-string v3, "If-Match"

    .line 1577
    invoke-static {v0, v3, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 1580
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v1

    const-string v3, "If-None-Match"

    .line 1579
    invoke-static {v0, v3, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    .line 1583
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 1590
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    .line 1592
    invoke-static {v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v1

    .line 1595
    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;-><init>()V

    .line 1596
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1595
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3Object;

    .line 1603
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/S3Object;->setBucketName(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/S3Object;->setKey(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    .line 1611
    new-instance v4, Lcom/amazonaws/util/ServiceClientHolderInputStream;

    invoke-direct {v4, v3, p0}, Lcom/amazonaws/util/ServiceClientHolderInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V

    if-eqz v1, :cond_9

    .line 1618
    new-instance v3, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v3, v4, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 9095
    iput-boolean v2, v3, Lcom/amazonaws/event/ProgressReportingInputStream;->a:Z

    .line 1621
    iget v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:I

    invoke-virtual {v3, v4}, Lcom/amazonaws/event/ProgressReportingInputStream;->a(I)V

    const/4 v4, 0x2

    .line 1623
    invoke-static {v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v4, v3

    .line 1632
    :cond_9
    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1633
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1635
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1636
    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1637
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "MD5"

    .line 1642
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 1643
    new-instance v3, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;

    invoke-direct {v3, v4, v2, p1}, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1645
    :try_start_2
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->i:Lcom/amazonaws/logging/Log;

    const-string v3, "No MD5 digest algorithm available. Unable to calculate checksum and verify data integrity."

    invoke-interface {v2, v3, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1652
    :cond_a
    new-instance p1, Lcom/amazonaws/util/LengthCheckInputStream;

    .line 1653
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v5

    invoke-direct {p1, v4, v5, v6, v2}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    move-object v4, p1

    .line 1662
    :cond_b
    :goto_0
    new-instance p1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-direct {p1, v4}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_2
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 1673
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v0

    const/16 v2, 0x19c

    if-eq v0, v2, :cond_d

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getStatusCode()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_c

    goto :goto_1

    :cond_c
    const/16 v0, 0x8

    .line 1679
    invoke-static {v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 1681
    throw p1

    :cond_d
    :goto_1
    const/16 p1, 0x10

    .line 1674
    invoke-static {v1, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when uploading a part"

    .line 3802
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3805
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3806
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3807
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    .line 3808
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    .line 3809
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v8

    const-string v4, "The bucket name parameter must be specified when uploading a part"

    .line 3811
    invoke-static {v0, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The key parameter must be specified when uploading a part"

    .line 3813
    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The upload ID parameter must be specified when uploading a part"

    .line 3815
    invoke-static {v2, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3817
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The part number parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3819
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "The part size parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3822
    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-direct {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v11

    const-string v4, "uploadId"

    .line 3824
    invoke-interface {v11, v4, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3825
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "partNumber"

    invoke-interface {v11, v4, v2}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3827
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3829
    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 3831
    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-MD5"

    invoke-static {v11, v4, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->b(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    .line 3832
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Length"

    invoke-interface {v11, v4, v2}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3838
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isRequesterPays()Z

    move-result v2

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3840
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    .line 3843
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3844
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 3845
    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3847
    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    new-instance v5, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    .line 3848
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    .line 3849
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    const/4 v4, 0x0

    .line 3859
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 3860
    invoke-static {p1, v5}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3867
    new-instance v4, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v4, v2}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 3875
    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object p1

    .line 3877
    invoke-static {p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3880
    new-instance v5, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v5, v2, p1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    .line 3881
    move-object v2, v5

    check-cast v2, Lcom/amazonaws/event/ProgressReportingInputStream;

    iget v6, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:I

    invoke-virtual {v2, v6}, Lcom/amazonaws/event/ProgressReportingInputStream;->a(I)V

    const/16 v2, 0x400

    .line 3882
    invoke-static {p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v2, v5

    .line 3886
    :cond_3
    :try_start_1
    invoke-interface {v11, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    .line 3887
    new-instance v5, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v11, v5, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 3890
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->g:Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 3891
    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 12064
    iget-object v1, v4, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 3893
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 3895
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 3896
    :cond_4
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    const/16 v1, 0x800

    .line 3905
    invoke-static {p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3908
    new-instance v1, Lcom/amazonaws/services/s3/model/UploadPartResult;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;-><init>()V

    .line 3909
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setETag(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setPartNumber(I)V

    .line 3911
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSEAlgorithm(Ljava/lang/String;)V

    .line 3912
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    .line 3913
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    .line 3914
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->isRequesterCharged()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setRequesterCharged(Z)V
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    .line 3930
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_6
    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    const/16 v1, 0x1000

    .line 3917
    :try_start_3
    invoke-static {p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    .line 3926
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_7

    .line 3930
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3934
    :catch_2
    :cond_7
    throw p1

    :catch_3
    move-exception p1

    .line 3851
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified file doesn\'t exist"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3854
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A File or InputStream must be specified when uploading part"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lcom/amazonaws/regions/Region;)V
    .locals 0

    .line 685
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/regions/Region;)V

    .line 8080
    iget-object p1, p1, Lcom/amazonaws/regions/Region;->a:Ljava/lang/String;

    .line 692
    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    const-string v0, "The request parameter must be specified when aborting a multipart upload"

    .line 3534
    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3536
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3538
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3540
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The upload ID parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3543
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 3544
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 3546
    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    .line 3548
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uploadId"

    invoke-interface {v2, v4, v3}, Lcom/amazonaws/Request;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->isRequesterPays()Z

    move-result p1

    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Z)V

    .line 3551
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->k:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s3-accelerate.amazonaws.com"

    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;)V

    const-string v0, "s3.amazonaws.com"

    .line 677
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 678
    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->a:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3"

    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->h:Ljava/lang/String;

    :cond_0
    return-void

    .line 669
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
