.class public Lcom/amazonaws/http/AmazonHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/amazonaws/logging/Log;

.field private static final e:Lcom/amazonaws/logging/Log;


# instance fields
.field final b:Lcom/amazonaws/http/HttpClient;

.field final c:Lcom/amazonaws/ClientConfiguration;

.field public final d:Lcom/amazonaws/metrics/RequestMetricCollector;

.field private final f:Lcom/amazonaws/http/HttpRequestFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.amazonaws.request"

    .line 82
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/String;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    .line 88
    const-class v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/http/HttpRequestFactory;

    .line 145
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 146
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/http/HttpClient;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/amazonaws/http/HttpRequestFactory;

    invoke-direct {v0}, Lcom/amazonaws/http/HttpRequestFactory;-><init>()V

    iput-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->f:Lcom/amazonaws/http/HttpRequestFactory;

    .line 165
    iput-object p1, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 166
    iput-object p2, p0, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/http/HttpClient;

    .line 167
    iput-object p3, p0, Lcom/amazonaws/http/AmazonHttpClient;->d:Lcom/amazonaws/metrics/RequestMetricCollector;

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p1}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    return-void
.end method

.method private static a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I
    .locals 4

    const-string v0, " + 15"

    .line 807
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 29053
    iget-object p0, p0, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    const-string v2, "Date"

    .line 810
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 814
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->b(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    .line 816
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "("

    .line 29795
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 29797
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29798
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_2
    const-string v0, " - 15"

    .line 29800
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 29802
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 817
    :try_start_3
    invoke-static {p0}, Lcom/amazonaws/util/DateUtils;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 829
    :goto_2
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    .line 830
    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0

    :catch_1
    move-exception p1

    move-object p0, v2

    .line 823
    :goto_3
    sget-object v0, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to parse clock skew offset from response: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static a(ILcom/amazonaws/retry/RetryPolicy;)J
    .locals 4

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, -0x1

    .line 28112
    iget-object p1, p1, Lcom/amazonaws/retry/RetryPolicy;->b:Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    .line 766
    invoke-interface {p1, p0}, Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;->a(I)J

    move-result-wide v0

    .line 769
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retriable error detected, will retry in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms, attempt number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 775
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 778
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 779
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")",
            "Lcom/amazonaws/AmazonServiceException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25103
    iget v0, p2, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 711
    :try_start_0
    invoke-interface {p1, p2}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/AmazonServiceException;

    .line 712
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received error response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/16 v1, 0x19d

    if-ne v0, v1, :cond_0

    .line 717
    new-instance p1, Lcom/amazonaws/AmazonServiceException;

    const-string p2, "Request entity too large"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-interface {p0}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p1, v1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 720
    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Client:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 721
    invoke-virtual {p1, p2}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_1

    .line 26093
    iget-object v2, p2, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    const-string v3, "Service Unavailable"

    .line 723
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    new-instance p1, Lcom/amazonaws/AmazonServiceException;

    const-string p2, "Service unavailable"

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-interface {p0}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p1, v1}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 727
    sget-object v1, Lcom/amazonaws/AmazonServiceException$ErrorType;->Service:Lcom/amazonaws/AmazonServiceException$ErrorType;

    invoke-virtual {p1, v1}, Lcom/amazonaws/AmazonServiceException;->setErrorType(Lcom/amazonaws/AmazonServiceException$ErrorType;)V

    .line 728
    invoke-virtual {p1, p2}, Lcom/amazonaws/AmazonServiceException;->setErrorCode(Ljava/lang/String;)V

    .line 740
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazonaws/AmazonServiceException;->setStatusCode(I)V

    .line 741
    invoke-interface {p0}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amazonaws/AmazonServiceException;->setServiceName(Ljava/lang/String;)V

    .line 742
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->fillInStackTrace()Ljava/lang/Throwable;

    return-object p1

    .line 729
    :cond_1
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_2

    .line 730
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 732
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to unmarshall error response ("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Response Code: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Response Text: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27093
    iget-object v0, p2, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 734
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Response Headers: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28053
    iget-object p2, p2, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    .line 735
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 736
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p2, p0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static a(Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponse;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", Response Text: "

    .line 22085
    :try_start_0
    iget-object p2, p2, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 659
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    :try_start_1
    invoke-interface {p0, p1}, Lcom/amazonaws/http/HttpResponseHandler;->handle(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazonaws/AmazonWebServiceResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    :try_start_2
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    if-eqz p0, :cond_1

    .line 673
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received successful response: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23103
    iget v3, p1, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 674
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", AWS Request ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceResponse;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 677
    :cond_0
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceResponse;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 24040
    iget-object p0, p0, Lcom/amazonaws/AmazonWebServiceResponse;->a:Ljava/lang/Object;

    return-object p0

    .line 667
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unable to unmarshall response metadata. Response Code: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22103
    iget v1, p1, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 669
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23093
    iget-object v1, p1, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 670
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 663
    sget-object v1, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p2, v1}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 664
    throw p0
    :try_end_2
    .catch Lcom/amazonaws/internal/CRC32MismatchException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 685
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unable to unmarshall response ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Response Code: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24103
    iget v1, p1, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 687
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25093
    iget-object p1, p1, Lcom/amazonaws/http/HttpResponse;->a:Ljava/lang/String;

    .line 687
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 688
    new-instance p2, Lcom/amazonaws/AmazonClientException;

    invoke-direct {p2, p1, p0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p0

    .line 683
    throw p0

    :catch_2
    move-exception p0

    .line 681
    throw p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 560
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 563
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Lcom/amazonaws/util/AWSRequestMetrics;",
            ")TT;"
        }
    .end annotation

    .line 497
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    .line 498
    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0, p0}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    return-object p0
.end method

.method private static a(Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;"
        }
    .end annotation

    .line 3080
    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 261
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 265
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazonaws/handlers/RequestHandler2;

    .line 268
    instance-of v3, v2, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    if-eqz v3, :cond_1

    .line 269
    check-cast v2, Lcom/amazonaws/handlers/CredentialsRequestHandler;

    .line 3115
    iget-object v3, p0, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/auth/AWSCredentials;

    .line 270
    invoke-virtual {v2, v3}, Lcom/amazonaws/handlers/CredentialsRequestHandler;->a(Lcom/amazonaws/auth/AWSCredentials;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 514
    invoke-interface {p0}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-interface {p0}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :try_start_0
    invoke-interface {p0}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 526
    :catch_0
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and couldn\'t reset the stream to retry"

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 518
    :cond_1
    new-instance p0, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Encountered an exception and stream is not resettable"

    invoke-direct {p0, v0, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static a(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;",
            "Lcom/amazonaws/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/handlers/RequestHandler2;

    .line 252
    invoke-virtual {v0, p0, p2}, Lcom/amazonaws/handlers/RequestHandler2;->a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazonaws/handlers/RequestHandler2;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z
    .locals 2

    add-int/lit8 p3, p3, -0x1

    .line 594
    iget-object v0, p0, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->getMaxErrorRetry()I

    move-result v0

    if-ltz v0, :cond_0

    .line 19133
    iget-boolean v1, p4, Lcom/amazonaws/retry/RetryPolicy;->d:Z

    if-nez v1, :cond_1

    .line 20121
    :cond_0
    iget v0, p4, Lcom/amazonaws/retry/RetryPolicy;->c:I

    :cond_1
    const/4 v1, 0x0

    if-lt p3, v0, :cond_2

    return v1

    :cond_2
    if-eqz p1, :cond_4

    .line 610
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-nez p1, :cond_4

    .line 611
    sget-object p1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {p1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Content not repeatable"

    .line 612
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    :cond_3
    return v1

    .line 21103
    :cond_4
    iget-object p1, p4, Lcom/amazonaws/retry/RetryPolicy;->a:Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    .line 619
    invoke-interface {p1, p2, p3}, Lcom/amazonaws/retry/RetryPolicy$RetryCondition;->a(Lcom/amazonaws/AmazonClientException;I)Z

    move-result p1

    return p1
.end method

.method private b(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    const-string v4, "Location"

    .line 4085
    iget-object v5, v3, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 301
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 302
    sget-object v6, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 4536
    sget-object v6, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 4538
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 4540
    invoke-virtual {v7}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestClientOptions()Lcom/amazonaws/RequestClientOptions;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 4542
    sget-object v8, Lcom/amazonaws/RequestClientOptions$Marker;->USER_AGENT:Lcom/amazonaws/RequestClientOptions$Marker;

    .line 5066
    iget-object v7, v7, Lcom/amazonaws/RequestClientOptions;->a:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 4544
    invoke-static {v6, v7}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4549
    :cond_0
    sget-object v7, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iget-object v8, v1, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v8}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 4550
    iget-object v7, v1, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v7}, Lcom/amazonaws/ClientConfiguration;->getUserAgent()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4552
    :cond_1
    iget-object v7, v1, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 4553
    invoke-virtual {v7}, Lcom/amazonaws/ClientConfiguration;->getUserAgentOverride()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v6, v1, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v6}, Lcom/amazonaws/ClientConfiguration;->getUserAgentOverride()Ljava/lang/String;

    move-result-object v6

    :cond_2
    const-string v7, "User-Agent"

    .line 4552
    invoke-interface {v2, v7, v6}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "aws-sdk-invocation-id"

    invoke-interface {v2, v7, v6}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    .line 315
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 316
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->d()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 317
    new-instance v9, Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->b()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 319
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 320
    invoke-virtual {v10}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, -0x1

    .line 321
    invoke-virtual {v10, v11}, Ljava/io/InputStream;->mark(I)V

    .line 5115
    :cond_3
    iget-object v11, v3, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/auth/AWSCredentials;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    const/4 v12, 0x1

    add-int/2addr v14, v12

    .line 331
    sget-object v13, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    move-wide/from16 v20, v6

    int-to-long v6, v14

    invoke-virtual {v5, v13, v6, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;J)V

    if-le v14, v12, :cond_4

    .line 333
    invoke-interface {v2, v8}, Lcom/amazonaws/Request;->b(Ljava/util/Map;)V

    .line 334
    invoke-interface {v2, v9}, Lcom/amazonaws/Request;->a(Ljava/util/Map;)V

    .line 335
    invoke-interface {v2, v10}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    :cond_4
    if-eqz v15, :cond_5

    .line 337
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v6

    if-nez v6, :cond_5

    .line 338
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->c()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 341
    invoke-virtual {v15}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    :cond_5
    const-string v6, "Cannot close the response content."

    if-le v14, v12, :cond_6

    .line 346
    :try_start_0
    sget-object v7, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_14
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 348
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    iget-object v7, v1, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 351
    invoke-virtual {v7}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v7

    .line 348
    invoke-static {v14, v7}, Lcom/amazonaws/http/AmazonHttpClient;->a(ILcom/amazonaws/retry/RetryPolicy;)J

    move-result-wide v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    :try_start_2
    sget-object v7, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v7}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 355
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 356
    invoke-virtual {v7}, Ljava/io/InputStream;->markSupported()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 357
    invoke-virtual {v7}, Ljava/io/InputStream;->reset()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v7, v0

    .line 353
    sget-object v12, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v12}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 354
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_14
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :catch_0
    move-exception v0

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-object/from16 v7, v19

    move-wide/from16 v26, v20

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v0

    move-object/from16 v21, v8

    :goto_1
    move-object/from16 v8, v18

    goto/16 :goto_20

    :cond_6
    :goto_2
    move-wide/from16 v12, v20

    :try_start_3
    const-string v7, "aws-sdk-retry"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_14
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v21, v8

    .line 360
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_14
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v22, v9

    add-int/lit8 v9, v14, -0x1

    :try_start_5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v7, v8}, Lcom/amazonaws/Request;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_15
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_14
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v16, :cond_7

    .line 365
    :try_start_6
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/amazonaws/http/ExecutionContext;->a(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v16
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_3
    move-object/from16 v9, p2

    :goto_4
    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-wide/from16 v26, v12

    move-object/from16 v8, v18

    move-object/from16 v7, v19

    :goto_5
    move-object/from16 v10, p3

    :goto_6
    move-object v11, v0

    goto/16 :goto_20

    :cond_7
    :goto_7
    move-object/from16 v7, v16

    if-eqz v7, :cond_8

    if-eqz v11, :cond_8

    .line 368
    :try_start_7
    sget-object v8, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v8}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_15
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_14
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 370
    :try_start_8
    invoke-interface {v7, v2, v11}, Lcom/amazonaws/auth/Signer;->a(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 372
    :try_start_9
    sget-object v8, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v8}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v0

    sget-object v9, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v9}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 373
    throw v8
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_14
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_2
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v16, v7

    goto :goto_4

    .line 376
    :cond_8
    :goto_8
    :try_start_a
    sget-object v8, Lcom/amazonaws/http/AmazonHttpClient;->e:Lcom/amazonaws/logging/Log;

    invoke-interface {v8}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/Error; {:try_start_a .. :try_end_a} :catch_14
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v9, :cond_9

    .line 377
    :try_start_b
    new-instance v9, Ljava/lang/StringBuilder;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_15
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_14
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v16, v7

    :try_start_c
    const-string v7, "Sending Request: "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_14
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v16, v7

    goto :goto_3

    :cond_9
    move-object/from16 v16, v7

    .line 380
    :goto_9
    :try_start_d
    iget-object v7, v1, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 6050
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v8

    .line 6057
    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->c()Ljava/lang/String;

    move-result-object v9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_15
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_14
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v23, v10

    const/4 v10, 0x1

    :try_start_e
    invoke-static {v8, v9, v10}, Lcom/amazonaws/util/HttpUtils;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 6058
    invoke-static/range {p1 .. p1}, Lcom/amazonaws/util/HttpUtils;->b(Lcom/amazonaws/Request;)Ljava/lang/String;

    move-result-object v9

    .line 6059
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->e()Lcom/amazonaws/http/HttpMethodName;

    move-result-object v10

    .line 6066
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v24
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_15
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_14
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v25, v11

    if-eqz v24, :cond_a

    const/16 v24, 0x1

    goto :goto_a

    :cond_a
    const/16 v24, 0x0

    .line 6067
    :goto_a
    :try_start_f
    sget-object v11, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_14
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-ne v10, v11, :cond_b

    const/4 v11, 0x1

    goto :goto_b

    :cond_b
    const/4 v11, 0x0

    :goto_b
    if-eqz v11, :cond_d

    if-eqz v24, :cond_c

    goto :goto_c

    :cond_c
    const/4 v11, 0x0

    goto :goto_d

    :cond_d
    :goto_c
    const/4 v11, 0x1

    :goto_d
    if-eqz v9, :cond_e

    if-eqz v11, :cond_e

    .line 6070
    :try_start_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?"

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_14
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_e

    :catch_4
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v0

    move-wide/from16 v26, v12

    goto/16 :goto_1f

    .line 6075
    :cond_e
    :goto_e
    :try_start_11
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 6076
    invoke-static {v11, v2, v3, v7}, Lcom/amazonaws/http/HttpRequestFactory;->a(Ljava/util/Map;Lcom/amazonaws/Request;Lcom/amazonaws/http/ExecutionContext;Lcom/amazonaws/ClientConfiguration;)V

    .line 6078
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v24
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/Error; {:try_start_11 .. :try_end_11} :catch_14
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-wide/from16 v26, v12

    .line 6083
    :try_start_12
    sget-object v12, Lcom/amazonaws/http/HttpMethodName;->PATCH:Lcom/amazonaws/http/HttpMethodName;

    if-ne v10, v12, :cond_f

    .line 6084
    sget-object v10, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    const-string v12, "X-HTTP-Method-Override"

    .line 6085
    sget-object v13, Lcom/amazonaws/http/HttpMethodName;->PATCH:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {v13}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6087
    :cond_f
    sget-object v12, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    if-ne v10, v12, :cond_10

    .line 6095
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->h()Ljava/io/InputStream;

    move-result-object v12

    if-nez v12, :cond_10

    if-eqz v9, :cond_10

    .line 6096
    sget-object v12, Lcom/amazonaws/util/StringUtils;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    .line 6097
    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v13, "Content-Length"

    .line 6098
    array-length v9, v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_10
    move-object/from16 v12, v24

    .line 6104
    :goto_f
    invoke-virtual {v7}, Lcom/amazonaws/ClientConfiguration;->isEnableGzip()Z

    move-result v7
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_14
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    const-string v9, "Accept-Encoding"

    if-eqz v7, :cond_11

    .line 6105
    :try_start_13
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_11

    const-string v7, "gzip"

    .line 6106
    invoke-interface {v11, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_11
    const-string v7, "identity"

    .line 6108
    invoke-interface {v11, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6111
    :goto_10
    new-instance v7, Lcom/amazonaws/http/HttpRequest;

    invoke-virtual {v10}, Lcom/amazonaws/http/HttpMethodName;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-direct {v7, v9, v8, v11, v12}, Lcom/amazonaws/http/HttpRequest;-><init>(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 6113
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->l()Z

    move-result v8

    .line 6135
    iput-boolean v8, v7, Lcom/amazonaws/http/HttpRequest;->e:Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Ljava/lang/Error; {:try_start_13 .. :try_end_13} :catch_14
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 384
    :try_start_14
    sget-object v8, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v8}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 386
    :try_start_15
    iget-object v8, v1, Lcom/amazonaws/http/AmazonHttpClient;->b:Lcom/amazonaws/http/HttpClient;

    invoke-interface {v8, v7}, Lcom/amazonaws/http/HttpClient;->a(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;

    move-result-object v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 388
    :try_start_16
    sget-object v9, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v9}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 7103
    iget v9, v8, Lcom/amazonaws/http/HttpResponse;->b:I

    const/16 v10, 0xc8

    if-lt v9, v10, :cond_12

    const/16 v10, 0x12c

    if-ge v9, v10, :cond_12

    const/4 v9, 0x1

    goto :goto_11

    :cond_12
    const/4 v9, 0x0

    :goto_11
    if-eqz v9, :cond_14

    .line 392
    sget-object v9, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 8103
    iget v10, v8, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 392
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 397
    invoke-interface/range {p2 .. p2}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v17
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Ljava/lang/Error; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    move-object/from16 v9, p2

    .line 398
    :try_start_17
    invoke-static {v9, v8, v3}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/http/ExecutionContext;)Ljava/lang/Object;

    move-result-object v10

    .line 401
    new-instance v11, Lcom/amazonaws/Response;

    invoke-direct {v11, v10, v8}, Lcom/amazonaws/Response;-><init>(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_a
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    if-nez v17, :cond_13

    if-eqz v8, :cond_13

    .line 9084
    :try_start_18
    iget-object v2, v8, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v2, :cond_13

    .line 10084
    iget-object v2, v8, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    .line 483
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    move-object v2, v0

    .line 486
    sget-object v3, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v3, v6, v2}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_13
    :goto_12
    return-object v11

    :cond_14
    move-object/from16 v9, p2

    .line 11103
    :try_start_19
    iget v10, v8, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 12053
    iget-object v11, v8, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    .line 10626
    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v12, 0x133

    if-ne v10, v12, :cond_15

    if-eqz v11, :cond_15

    .line 10628
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15

    const/4 v12, 0x1

    goto :goto_13

    :cond_15
    const/4 v12, 0x0

    :goto_13
    if-eqz v12, :cond_16

    .line 13053
    iget-object v10, v8, Lcom/amazonaws/http/HttpResponse;->d:Ljava/util/Map;

    .line 409
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 410
    sget-object v11, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    const-string v12, "Redirecting to: "

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;)V

    .line 412
    invoke-static {v10}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    const/4 v11, 0x0

    .line 413
    invoke-interface {v2, v11}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V

    .line 414
    invoke-interface {v2, v11}, Lcom/amazonaws/Request;->a(Ljava/lang/String;)V

    .line 415
    sget-object v11, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    .line 13103
    iget v12, v8, Lcom/amazonaws/http/HttpResponse;->b:I

    .line 415
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 416
    sget-object v11, Lcom/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v11, v10}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 417
    sget-object v10, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    move-object/from16 v10, p3

    goto :goto_14

    .line 419
    :cond_16
    invoke-interface/range {p3 .. p3}, Lcom/amazonaws/http/HttpResponseHandler;->needsConnectionLeftOpen()Z

    move-result v17
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    move-object/from16 v10, p3

    .line 420
    :try_start_1a
    invoke-static {v2, v10, v8}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;

    move-result-object v11

    .line 422
    sget-object v12, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v11}, Lcom/amazonaws/AmazonServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 423
    sget-object v12, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v11}, Lcom/amazonaws/AmazonServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 424
    sget-object v12, Lcom/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v11}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 426
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 13109
    iget-object v12, v7, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    .line 427
    iget-object v13, v1, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 430
    invoke-virtual {v13}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v13

    .line 426
    invoke-direct {v1, v12, v11, v14, v13}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 441
    invoke-static {v11}, Lcom/amazonaws/retry/RetryUtils;->b(Lcom/amazonaws/AmazonServiceException;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 442
    invoke-static {v8, v11}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/http/HttpResponse;Lcom/amazonaws/AmazonServiceException;)I

    move-result v12

    .line 443
    invoke-static {v12}, Lcom/amazonaws/SDKGlobalConfiguration;->setGlobalTimeOffset(I)V

    .line 445
    :cond_17
    invoke-static {v2, v11}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_9
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :goto_14
    if-nez v17, :cond_19

    if-eqz v8, :cond_19

    .line 14084
    :try_start_1b
    iget-object v11, v8, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v11, :cond_18

    .line 15084
    iget-object v11, v8, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    .line 483
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_6

    goto :goto_15

    :catch_6
    move-exception v0

    move-object v11, v0

    .line 486
    sget-object v12, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v12, v6, v11}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_18
    :goto_15
    move-object/from16 v19, v7

    move-object/from16 v18, v8

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v25

    move-wide/from16 v6, v26

    goto/16 :goto_0

    :cond_19
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-wide/from16 v6, v26

    const/4 v12, 0x0

    goto/16 :goto_23

    .line 431
    :cond_1a
    :try_start_1c
    throw v11
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/lang/Error; {:try_start_1c .. :try_end_1c} :catch_9
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :catch_7
    move-exception v0

    goto/16 :goto_6

    :catch_8
    move-exception v0

    goto/16 :goto_5

    :catch_9
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v8

    goto :goto_19

    :catch_a
    move-exception v0

    move-object v2, v0

    move-object/from16 v18, v8

    goto/16 :goto_1a

    :catch_b
    move-exception v0

    move-object/from16 v9, p2

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v8, v0

    .line 388
    :try_start_1d
    sget-object v11, Lcom/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v11}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    .line 389
    throw v8
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_15
    .catch Ljava/lang/Error; {:try_start_1d .. :try_end_1d} :catch_14
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    :catch_c
    move-exception v0

    goto :goto_16

    :catch_d
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    :goto_16
    move-object v11, v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    goto :goto_1c

    :catch_f
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    goto :goto_17

    :catch_10
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v25, v11

    :goto_17
    move-wide/from16 v26, v12

    goto :goto_1e

    :catch_11
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v16, v7

    goto :goto_18

    :catch_12
    move-exception v0

    move-object/from16 v9, p2

    :goto_18
    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-wide/from16 v26, v12

    goto :goto_1d

    :catch_13
    move-exception v0

    goto :goto_1b

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object/from16 v8, v18

    goto/16 :goto_25

    :catch_14
    move-exception v0

    move-object v2, v0

    .line 471
    :goto_19
    :try_start_1e
    invoke-static {v2, v5}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Error;

    throw v2

    :catch_15
    move-exception v0

    move-object v2, v0

    .line 469
    :goto_1a
    invoke-static {v2, v5}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/lang/Throwable;Lcom/amazonaws/util/AWSRequestMetrics;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    :catch_16
    move-exception v0

    move-object/from16 v21, v8

    :goto_1b
    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v25, v11

    move-wide/from16 v26, v12

    :goto_1c
    move-object/from16 v9, p2

    :goto_1d
    move-object/from16 v10, p3

    :goto_1e
    move-object v11, v0

    :goto_1f
    move-object/from16 v8, v18

    move-object/from16 v7, v19

    .line 448
    :goto_20
    :try_start_1f
    sget-object v12, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v12}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v13
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    const-string v3, "Unable to execute HTTP request: "

    if-eqz v13, :cond_1b

    .line 449
    :try_start_20
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v4

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v4, v11}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_1b
    move-object/from16 v18, v4

    .line 451
    :goto_21
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->c(Lcom/amazonaws/metrics/MetricType;)V

    .line 452
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v5, v4, v11}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 453
    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v12, 0x0

    invoke-virtual {v5, v4, v12}, Lcom/amazonaws/util/AWSRequestMetrics;->a(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V

    .line 455
    new-instance v4, Lcom/amazonaws/AmazonClientException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v11}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    invoke-interface/range {p1 .. p1}, Lcom/amazonaws/Request;->a()Lcom/amazonaws/AmazonWebServiceRequest;

    .line 15109
    iget-object v3, v7, Lcom/amazonaws/http/HttpRequest;->d:Ljava/io/InputStream;

    .line 458
    iget-object v13, v1, Lcom/amazonaws/http/AmazonHttpClient;->c:Lcom/amazonaws/ClientConfiguration;

    .line 461
    invoke-virtual {v13}, Lcom/amazonaws/ClientConfiguration;->getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v13

    .line 457
    invoke-direct {v1, v3, v4, v14, v13}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/io/InputStream;Lcom/amazonaws/AmazonClientException;ILcom/amazonaws/retry/RetryPolicy;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 467
    invoke-static {v2, v11}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Ljava/lang/Exception;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    if-nez v17, :cond_1d

    if-eqz v8, :cond_1d

    .line 16084
    :try_start_21
    iget-object v3, v8, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v3, :cond_1c

    .line 17084
    iget-object v3, v8, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    .line 483
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_17

    goto :goto_22

    :catch_17
    move-exception v0

    move-object v3, v0

    .line 486
    sget-object v4, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v4, v6, v3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_22
    move-object/from16 v3, p4

    move-object/from16 v19, v7

    move-object/from16 v4, v18

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v25

    move-wide/from16 v6, v26

    goto :goto_24

    :cond_1d
    move-object/from16 v19, v7

    move-wide/from16 v6, v26

    :goto_23
    move-object/from16 v3, p4

    move-object/from16 v4, v18

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v25

    :goto_24
    move-object/from16 v18, v8

    move-object/from16 v8, v21

    goto/16 :goto_0

    .line 462
    :cond_1e
    :try_start_22
    throw v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    :goto_25
    if-nez v17, :cond_1f

    if-eqz v8, :cond_1f

    .line 18084
    :try_start_23
    iget-object v3, v8, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    if-eqz v3, :cond_1f

    .line 19084
    iget-object v3, v8, Lcom/amazonaws/http/HttpResponse;->c:Ljava/io/InputStream;

    .line 483
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_18

    goto :goto_26

    :catch_18
    move-exception v0

    move-object v3, v0

    .line 486
    sget-object v4, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v4, v6, v3}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 489
    :cond_1f
    :goto_26
    throw v2
.end method


# virtual methods
.method public final a(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazonaws/Request<",
            "*>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonWebServiceResponse<",
            "TT;>;>;",
            "Lcom/amazonaws/http/HttpResponseHandler<",
            "Lcom/amazonaws/AmazonServiceException;",
            ">;",
            "Lcom/amazonaws/http/ExecutionContext;",
            ")",
            "Lcom/amazonaws/Response<",
            "TT;>;"
        }
    .end annotation

    .line 208
    invoke-interface {p1}, Lcom/amazonaws/Request;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->f()Ljava/net/URI;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazonaws/Request;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-static {v0}, Lcom/amazonaws/util/URIBuilder;->a(Ljava/net/URI;)Lcom/amazonaws/util/URIBuilder;

    move-result-object v0

    .line 1107
    iput-object v1, v0, Lcom/amazonaws/util/URIBuilder;->c:Ljava/lang/String;

    .line 1168
    new-instance v1, Ljava/net/URI;

    iget-object v3, v0, Lcom/amazonaws/util/URIBuilder;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/amazonaws/util/URIBuilder;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazonaws/util/URIBuilder;->c:Ljava/lang/String;

    iget v6, v0, Lcom/amazonaws/util/URIBuilder;->d:I

    iget-object v7, v0, Lcom/amazonaws/util/URIBuilder;->e:Ljava/lang/String;

    iget-object v8, v0, Lcom/amazonaws/util/URIBuilder;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/amazonaws/util/URIBuilder;->g:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-interface {p1, v1}, Lcom/amazonaws/Request;->a(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 216
    sget-object v1, Lcom/amazonaws/http/AmazonHttpClient;->a:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to prepend host prefix: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    if-eqz p4, :cond_1

    .line 225
    invoke-static {p4}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/http/ExecutionContext;)Ljava/util/List;

    move-result-object v0

    .line 2085
    iget-object v1, p4, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    .line 229
    :try_start_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/http/AmazonHttpClient;->b(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object p2

    .line 231
    invoke-virtual {v1}, Lcom/amazonaws/util/AWSRequestMetrics;->a()Lcom/amazonaws/util/TimingInfo;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazonaws/util/TimingInfo;->d()Lcom/amazonaws/util/TimingInfo;

    .line 232
    invoke-static {p1, v0, p2}, Lcom/amazonaws/http/AmazonHttpClient;->a(Lcom/amazonaws/Request;Ljava/util/List;Lcom/amazonaws/Response;)V
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p2

    :catch_1
    move-exception p1

    .line 235
    invoke-static {v0}, Lcom/amazonaws/http/AmazonHttpClient;->a(Ljava/util/List;)V

    .line 236
    throw p1

    .line 222
    :cond_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string p2, "Internal SDK Error: No execution context parameter specified."

    invoke-direct {p1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 836
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
