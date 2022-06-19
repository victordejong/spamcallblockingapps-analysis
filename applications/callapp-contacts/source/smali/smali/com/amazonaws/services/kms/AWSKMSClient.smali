.class public Lcom/amazonaws/services/kms/AWSKMSClient;
.super Lcom/amazonaws/AmazonWebServiceClient;
.source "SourceFile"


# instance fields
.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/transform/JsonErrorUnmarshaller;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/amazonaws/auth/AWSCredentialsProvider;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    new-instance v1, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v1}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 1

    .line 252
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 291
    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    .line 328
    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 370
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0

    .line 440
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    .line 442
    iput-object p1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 444
    invoke-direct {p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->d()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    .line 395
    iput-object p1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 397
    invoke-direct {p0}, Lcom/amazonaws/services/kms/AWSKMSClient;->d()V

    return-void
.end method

.method private a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 3
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
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TX;>;"
        }
    .end annotation

    .line 6443
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->a:Ljava/net/URI;

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 6444
    iget v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->e:I

    invoke-interface {p1, v0}, Lcom/amazonaws/Request;->a(I)V

    .line 11085
    iget-object v0, p3, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 6448
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    .line 6450
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->h:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v1}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6452
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6455
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6456
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6457
    invoke-virtual {v0}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v1

    .line 11128
    :cond_0
    iput-object v1, p3, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/auth/AWSCredentials;

    .line 6461
    new-instance v0, Lcom/amazonaws/http/JsonErrorResponseHandler;

    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/amazonaws/http/JsonErrorResponseHandler;-><init>(Ljava/util/List;)V

    .line 6463
    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->c:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v1, p1, p2, v0, p3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 6452
    sget-object p2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0, p2}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 6453
    throw p1
.end method

.method private d()V
    .locals 4

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    .line 449
    new-instance v1, Lcom/amazonaws/services/kms/model/transform/AlreadyExistsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/AlreadyExistsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterInUseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterInvalidConfigurationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterInvalidConfigurationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotActiveExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotActiveExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotRelatedExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CloudHsmClusterNotRelatedExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreHasCMKsExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreHasCMKsExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreInvalidStateExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreInvalidStateExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreNameInUseExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreNameInUseExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreNotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/CustomKeyStoreNotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/DependencyTimeoutExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/DependencyTimeoutExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/DisabledExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/DisabledExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/ExpiredImportTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/ExpiredImportTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/IncorrectKeyExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/IncorrectKeyExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/IncorrectKeyMaterialExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/IncorrectKeyMaterialExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/IncorrectTrustAnchorExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/IncorrectTrustAnchorExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidAliasNameExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidAliasNameExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidArnExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidArnExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidCiphertextExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidCiphertextExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidGrantIdExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidGrantIdExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidGrantTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidGrantTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidImportTokenExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidImportTokenExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidKeyUsageExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidKeyUsageExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/InvalidMarkerExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/InvalidMarkerExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/KMSInternalExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/KMSInternalExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/KMSInvalidSignatureExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/KMSInvalidSignatureExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/KMSInvalidStateExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/KMSInvalidStateExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/KeyUnavailableExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/KeyUnavailableExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/LimitExceededExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/LimitExceededExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/MalformedPolicyDocumentExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/NotFoundExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/NotFoundExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/TagExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/TagExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/services/kms/model/transform/UnsupportedOperationExceptionUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/services/kms/model/transform/UnsupportedOperationExceptionUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    iget-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->g:Ljava/util/List;

    new-instance v1, Lcom/amazonaws/transform/JsonErrorUnmarshaller;

    invoke-direct {v1}, Lcom/amazonaws/transform/JsonErrorUnmarshaller;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "kms.us-east-1.amazonaws.com"

    .line 485
    invoke-virtual {p0, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Ljava/lang/String;)V

    const-string v0, "kms"

    .line 486
    iput-object v0, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->f:Ljava/lang/String;

    .line 488
    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    .line 489
    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->d:Ljava/util/List;

    .line 8045
    const-class v2, Lcom/amazonaws/handlers/RequestHandler;

    const-string v3, "/com/amazonaws/services/kms/request.handlers"

    invoke-virtual {v0, v3, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 489
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 491
    iget-object v1, p0, Lcom/amazonaws/services/kms/AWSKMSClient;->d:Ljava/util/List;

    .line 8058
    const-class v2, Lcom/amazonaws/handlers/RequestHandler2;

    const-string v3, "/com/amazonaws/services/kms/request.handler2s"

    invoke-virtual {v0, v3, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 491
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazonaws/services/kms/model/DecryptRequest;)Lcom/amazonaws/services/kms/model/DecryptResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 1485
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 8085
    iget-object v1, v0, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 1487
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1491
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1493
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/DecryptRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/DecryptRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/DecryptRequestMarshaller;->marshall(Lcom/amazonaws/services/kms/model/DecryptRequest;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 1495
    invoke-interface {v3, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1497
    :try_start_2
    sget-object p1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, p1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1499
    new-instance p1, Lcom/amazonaws/services/kms/model/transform/DecryptResultJsonUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/transform/DecryptResultJsonUnmarshaller;-><init>()V

    .line 1500
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, p1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 1503
    invoke-direct {p0, v3, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 9041
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 1505
    check-cast p1, Lcom/amazonaws/services/kms/model/DecryptResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1507
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1508
    invoke-virtual {p0, v1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 1497
    :try_start_3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1498
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1507
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 1508
    invoke-virtual {p0, v1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 1509
    throw p1
.end method

.method public final a(Lcom/amazonaws/services/kms/model/EncryptRequest;)Lcom/amazonaws/services/kms/model/EncryptResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2751
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 9085
    iget-object v1, v0, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 2753
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2757
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2759
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/EncryptRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/EncryptRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/EncryptRequestMarshaller;->marshall(Lcom/amazonaws/services/kms/model/EncryptRequest;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 2761
    invoke-interface {v3, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2763
    :try_start_2
    sget-object p1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, p1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2765
    new-instance p1, Lcom/amazonaws/services/kms/model/transform/EncryptResultJsonUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/transform/EncryptResultJsonUnmarshaller;-><init>()V

    .line 2766
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, p1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2769
    invoke-direct {p0, v3, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 10041
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 2771
    check-cast p1, Lcom/amazonaws/services/kms/model/EncryptResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2773
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2774
    invoke-virtual {p0, v1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2763
    :try_start_3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2764
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 2773
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2774
    invoke-virtual {p0, v1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 2775
    throw p1
.end method

.method public final a(Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;)Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonServiceException;,
            Lcom/amazonaws/AmazonClientException;
        }
    .end annotation

    .line 2941
    invoke-virtual {p0, p1}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v0

    .line 10085
    iget-object v1, v0, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 2943
    sget-object v2, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2947
    :try_start_0
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2949
    :try_start_1
    new-instance v4, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyRequestMarshaller;

    invoke-direct {v4}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyRequestMarshaller;-><init>()V

    invoke-virtual {v4, p1}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyRequestMarshaller;->marshall(Lcom/amazonaws/services/kms/model/GenerateDataKeyRequest;)Lcom/amazonaws/Request;

    move-result-object v3

    .line 2951
    invoke-interface {v3, v1}, Lcom/amazonaws/Request;->a(Lcom/amazonaws/util/AWSRequestMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2953
    :try_start_2
    sget-object p1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, p1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2955
    new-instance p1, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyResultJsonUnmarshaller;

    invoke-direct {p1}, Lcom/amazonaws/services/kms/model/transform/GenerateDataKeyResultJsonUnmarshaller;-><init>()V

    .line 2956
    new-instance v4, Lcom/amazonaws/http/JsonResponseHandler;

    invoke-direct {v4, p1}, Lcom/amazonaws/http/JsonResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    .line 2959
    invoke-direct {p0, v3, v4, v0}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p1

    .line 11041
    iget-object p1, p1, Lcom/amazonaws/Response;->a:Ljava/lang/Object;

    .line 2961
    check-cast p1, Lcom/amazonaws/services/kms/model/GenerateDataKeyResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2963
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2964
    invoke-virtual {p0, v1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2953
    :try_start_3
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2954
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 2963
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 2964
    invoke-virtual {p0, v1, v3, v2}, Lcom/amazonaws/services/kms/AWSKMSClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    .line 2965
    throw p1
.end method
