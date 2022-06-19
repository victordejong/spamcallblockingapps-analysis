.class public final Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;
.super Lcom/google/firebase/perf/internal/PerfMetricValidator;
.source ""


# static fields
.field private static final EMPTY_PORT:I = -0x1

.field private static final HTTPS:Ljava/lang/String; = "https"

.field private static final HTTP_SCHEMA:Ljava/lang/String; = "http"

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/internal/PerfMetricValidator;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    return-void
.end method

.method private getResultUrl(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    sget-object v1, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "getResultUrl throws exception %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private isBlank(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    return p1
.end method

.method private isEmptyUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isBlank(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isValidHost(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidHttpResponseCode(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidPayload(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidPort(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isValidScheme(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "http"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isValidTime(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidUserInfo(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWhitelisted(Ljava/net/URI;Landroid/content/Context;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/perf/util/URLWhitelist;->isURLWhitelisted(Ljava/net/URI;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public isValidHttpMethod(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isValidPerfMetric()Z
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isEmptyUrl(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL is missing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->getResultUrl(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "URL cannot be parsed"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isWhitelisted(Ljava/net/URI;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URL fails whitelist rule: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidHost(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "URL host is null or invalid"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_3
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidScheme(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "URL scheme is null or invalid"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_4
    invoke-virtual {v0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidUserInfo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "URL user info is null"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidPort(I)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "URL port is less than or equal to 0"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_6
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpMethod()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidHttpMethod(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP Method is null or invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_8
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpResponseCode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpResponseCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidHttpResponseCode(I)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP ResponseCode is a negative value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_9
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasRequestPayloadBytes()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getRequestPayloadBytes()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidPayload(J)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request Payload is a negative value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getRequestPayloadBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_a
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasResponsePayloadBytes()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponsePayloadBytes()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidPayload(J)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response Payload is a negative value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponsePayloadBytes()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_b
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasClientStartTimeUs()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getClientStartTimeUs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_c

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToRequestCompletedUs()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToRequestCompletedUs()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidTime(J)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time to complete the request is a negative value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToRequestCompletedUs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_d
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseInitiatedUs()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseInitiatedUs()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->isValidTime(J)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time from the start of the request to the start of the response is null or a negative value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseInitiatedUs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_e
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseCompletedUs()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseCompletedUs()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_f

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpResponseCode()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Did not receive a HTTP Response Code"

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_11
    :goto_1
    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time from the start of the request to the end of the response is null, negative or zero:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseCompletedUs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_12
    :goto_2
    sget-object v0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start time of the request is null, or zero, or a negative value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/firebase/perf/internal/FirebasePerfNetworkValidator;->mNetworkMetric:Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v3}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getClientStartTimeUs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
