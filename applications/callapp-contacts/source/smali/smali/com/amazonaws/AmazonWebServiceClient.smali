.class public abstract Lcom/amazonaws/AmazonWebServiceClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;


# instance fields
.field protected volatile a:Ljava/net/URI;

.field protected b:Lcom/amazonaws/ClientConfiguration;

.field protected c:Lcom/amazonaws/http/AmazonHttpClient;

.field protected final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation
.end field

.field protected e:I

.field protected volatile f:Ljava/lang/String;

.field private volatile h:Ljava/lang/String;

.field private volatile i:Lcom/amazonaws/auth/Signer;

.field private volatile j:Ljava/lang/String;

.field private volatile k:Lcom/amazonaws/regions/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    .line 66
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/AmazonWebServiceClient;->g:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 150
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/http/AmazonHttpClient;

    .line 151
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Lcom/amazonaws/ClientConfiguration;

    .line 169
    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/http/AmazonHttpClient;

    .line 173
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    new-instance p2, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {p2, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getSignerOverride()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    invoke-static {p1, p2}, Lcom/amazonaws/auth/SignerFactory;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    goto :goto_0

    .line 403
    :cond_0
    invoke-static {v0, p1}, Lcom/amazonaws/auth/SignerFactory;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    .line 404
    :goto_0
    instance-of v0, p1, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz v0, :cond_2

    .line 406
    move-object v0, p1

    check-cast v0, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz p3, :cond_1

    .line 411
    invoke-interface {v0, p3}, Lcom/amazonaws/auth/RegionAwareSigner;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    .line 413
    invoke-interface {v0, p2}, Lcom/amazonaws/auth/RegionAwareSigner;->b(Ljava/lang/String;)V

    .line 417
    :cond_2
    :goto_1
    monitor-enter p0

    .line 418
    :try_start_0
    invoke-static {p2}, Lcom/amazonaws/regions/Region;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->k:Lcom/amazonaws/regions/Region;

    .line 419
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 1

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->b()Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint is not set. Use setEndpoint to set an endpoint before performing any request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;)",
            "Lcom/amazonaws/metrics/RequestMetricCollector;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-interface {p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 4675
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/http/AmazonHttpClient;

    .line 4844
    iget-object p1, p1, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/metrics/RequestMetricCollector;

    if-nez p1, :cond_1

    .line 704
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected static a()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    .line 594
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    const-string v0, "://"

    .line 256
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/ClientConfiguration;->getProtocol()Lcom/amazonaws/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private d()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->e()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Lcom/amazonaws/metrics/RequestMetricCollector;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/http/AmazonHttpClient;

    .line 3844
    iget-object v0, v0, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/metrics/RequestMetricCollector;

    if-nez v0, :cond_0

    .line 687
    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .locals 2

    .line 567
    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 568
    :goto_1
    new-instance v0, Lcom/amazonaws/http/ExecutionContext;

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method public a(Lcom/amazonaws/regions/Region;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->b()Ljava/lang/String;

    move-result-object v0

    .line 1128
    iget-object v1, p1, Lcom/amazonaws/regions/Region;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {p1, v0}, Lcom/amazonaws/regions/Region;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "://"

    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v4, v3

    .line 461
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "%s.%s.%s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 1242
    iget-object v4, p0, Lcom/amazonaws/AmazonWebServiceClient;->f:Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v4, 0x1

    .line 2080
    iget-object v5, p1, Lcom/amazonaws/regions/Region;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 2089
    iget-object v5, p1, Lcom/amazonaws/regions/Region;->b:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 464
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 471
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 3080
    iget-object p1, p1, Lcom/amazonaws/regions/Region;->a:Ljava/lang/String;

    .line 473
    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    .line 472
    invoke-direct {p0, v0, p1, v3, v2}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    .line 474
    monitor-enter p0

    .line 475
    :try_start_0
    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 476
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Lcom/amazonaws/auth/Signer;

    .line 477
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 450
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No region provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p3, 0x0

    .line 718
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V

    return-void
.end method

.method protected final a(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            "Lcom/amazonaws/Request<",
            "*>;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_0

    .line 737
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 738
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->a()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->d()Lcom/amazonaws/util/TimingInfo;

    .line 739
    invoke-direct {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;->a(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;

    :cond_0
    if-eqz p3, :cond_1

    .line 743
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->b()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 215
    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 218
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->a(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    .line 221
    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Lcom/amazonaws/auth/Signer;

    .line 222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected final b()Ljava/lang/String;
    .locals 4

    .line 771
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->j:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 772
    monitor-enter p0

    .line 773
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 5802
    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-static {v0, p0}, Lcom/amazonaws/util/Classes;->childClassOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 5804
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 5805
    invoke-static {v0}, Lcom/amazonaws/ServiceNameFactory;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "JavaClient"

    .line 5810
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v1, "Client"

    .line 5812
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5814
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unrecognized suffix for the AWS http client class name "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const-string v3, "Amazon"

    .line 5819
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_4

    const-string v3, "AWS"

    .line 5822
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    .line 5824
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unrecognized prefix for the AWS http client class name "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v2, 0x6

    :goto_1
    if-ge v3, v1, :cond_5

    add-int/2addr v3, v2

    .line 5836
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5837
    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 774
    :goto_2
    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->j:Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->j:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 5833
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unrecognized AWS http client class name "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 777
    :cond_6
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 779
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 605
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p1}, Lcom/amazonaws/metrics/RequestMetricCollector;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->d()Z

    move-result p1

    return p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    return-object v0
.end method
