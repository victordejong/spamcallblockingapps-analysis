.class public Lcom/amazonaws/ClientConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x3a98

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String;


# instance fields
.field private connectionTimeout:I

.field private curlLogging:Z

.field private enableGzip:Z

.field private localAddress:Ljava/net/InetAddress;

.field private maxConnections:I

.field private maxErrorRetry:I

.field private preemptiveBasicProxyAuth:Z

.field private protocol:Lcom/amazonaws/Protocol;

.field private proxyDomain:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private proxyHost:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field private proxyPort:I

.field private proxyUsername:Ljava/lang/String;

.field private proxyWorkstation:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

.field private signerOverride:Ljava/lang/String;

.field private socketReceiveBufferSizeHint:I

.field private socketSendBufferSizeHint:I

.field private socketTimeout:I

.field private trustManager:Ljavax/net/ssl/TrustManager;

.field private userAgent:Ljava/lang/String;

.field private userAgentOverride:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/amazonaws/util/VersionInfoUtils;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/amazonaws/retry/PredefinedRetryPolicies;->b:Lcom/amazonaws/retry/RetryPolicy;

    sput-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 77
    sget-object v1, Lcom/amazonaws/ClientConfiguration;->DEFAULT_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    .line 88
    sget-object v1, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 94
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 100
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    const/16 v0, 0xa

    .line 122
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    const/16 v0, 0x3a98

    .line 129
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 136
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 150
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 164
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 169
    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->curlLogging:Z

    .line 174
    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->enableGzip:Z

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/ClientConfiguration;)V
    .locals 2

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/amazonaws/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 77
    sget-object v1, Lcom/amazonaws/ClientConfiguration;->DEFAULT_RETRY_POLICY:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    .line 88
    sget-object v1, Lcom/amazonaws/Protocol;->HTTPS:Lcom/amazonaws/Protocol;

    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    const/4 v1, 0x0

    .line 91
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 94
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 100
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    const/16 v0, 0xa

    .line 122
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    const/16 v0, 0x3a98

    .line 129
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 136
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 150
    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 164
    iput-object v1, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 169
    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->curlLogging:Z

    .line 174
    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->enableGzip:Z

    .line 187
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    .line 188
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    .line 189
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    .line 190
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    .line 191
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->localAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->localAddress:Ljava/net/InetAddress;

    .line 192
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    .line 193
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 194
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 195
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 196
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    .line 197
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 198
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 199
    iget-boolean v0, p1, Lcom/amazonaws/ClientConfiguration;->preemptiveBasicProxyAuth:Z

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->preemptiveBasicProxyAuth:Z

    .line 200
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    .line 201
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    .line 202
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->userAgentOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgentOverride:Ljava/lang/String;

    .line 203
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    .line 204
    iget v0, p1, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    iput v0, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 205
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    .line 206
    iget-object v0, p1, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    .line 207
    iget-boolean v0, p1, Lcom/amazonaws/ClientConfiguration;->curlLogging:Z

    iput-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->curlLogging:Z

    .line 208
    iget-boolean p1, p1, Lcom/amazonaws/ClientConfiguration;->enableGzip:Z

    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->enableGzip:Z

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .line 744
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getMaxConnections()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    return v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    .line 658
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    return v0
.end method

.method public getProtocol()Lcom/amazonaws/Protocol;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    return-object v0
.end method

.method public getProxyDomain()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 437
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    return v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyWorkstation()Ljava/lang/String;
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/amazonaws/retry/RetryPolicy;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    return-object v0
.end method

.method public getSignerOverride()Ljava/lang/String;
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketBufferSizeHints()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 811
    iget v1, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 701
    iget v0, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    return v0
.end method

.method public getTrustManager()Ljavax/net/ssl/TrustManager;
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgentOverride()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/amazonaws/ClientConfiguration;->userAgentOverride:Ljava/lang/String;

    return-object v0
.end method

.method public isCurlLogging()Z
    .locals 1

    .line 1067
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->curlLogging:Z

    return v0
.end method

.method public isEnableGzip()Z
    .locals 1

    .line 1099
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->enableGzip:Z

    return v0
.end method

.method public isPreemptiveBasicProxyAuth()Z
    .locals 1

    .line 994
    iget-boolean v0, p0, Lcom/amazonaws/ClientConfiguration;->preemptiveBasicProxyAuth:Z

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    .line 757
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->connectionTimeout:I

    return-void
.end method

.method public setCurlLogging(Z)V
    .locals 0

    .line 1077
    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->curlLogging:Z

    return-void
.end method

.method public setEnableGzip(Z)V
    .locals 0

    .line 1109
    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->enableGzip:Z

    return-void
.end method

.method public setLocalAddress(Ljava/net/InetAddress;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->localAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->maxConnections:I

    return-void
.end method

.method public setMaxErrorRetry(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 672
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->maxErrorRetry:I

    return-void

    .line 670
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxErrorRetry shoud be non-negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPreemptiveBasicProxyAuth(Ljava/lang/Boolean;)V
    .locals 0

    .line 1005
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->preemptiveBasicProxyAuth:Z

    return-void
.end method

.method public setProtocol(Lcom/amazonaws/Protocol;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->protocol:Lcom/amazonaws/Protocol;

    return-void
.end method

.method public setProxyDomain(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 550
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyPort:I

    return-void
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    return-void
.end method

.method public setProxyWorkstation(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    return-void
.end method

.method public setRetryPolicy(Lcom/amazonaws/retry/RetryPolicy;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->retryPolicy:Lcom/amazonaws/retry/RetryPolicy;

    return-void
.end method

.method public setSignerOverride(Ljava/lang/String;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->signerOverride:Ljava/lang/String;

    return-void
.end method

.method public setSocketBufferSizeHints(II)V
    .locals 0

    .line 854
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->socketSendBufferSizeHint:I

    .line 855
    iput p2, p0, Lcom/amazonaws/ClientConfiguration;->socketReceiveBufferSizeHint:I

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    .line 715
    iput p1, p0, Lcom/amazonaws/ClientConfiguration;->socketTimeout:I

    return-void
.end method

.method public setTrustManager(Ljavax/net/ssl/TrustManager;)V
    .locals 0

    .line 1042
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->trustManager:Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->userAgent:Ljava/lang/String;

    return-void
.end method

.method public setUserAgentOverride(Ljava/lang/String;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/amazonaws/ClientConfiguration;->userAgentOverride:Ljava/lang/String;

    return-void
.end method

.method public withConnectionTimeout(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 773
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setConnectionTimeout(I)V

    return-object p0
.end method

.method public withCurlLogging(Z)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 1091
    iput-boolean p1, p0, Lcom/amazonaws/ClientConfiguration;->curlLogging:Z

    return-object p0
.end method

.method public withEnableGzip(Z)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 1120
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setEnableGzip(Z)V

    return-object p0
.end method

.method public withLocalAddress(Ljava/net/InetAddress;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 396
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setLocalAddress(Ljava/net/InetAddress;)V

    return-object p0
.end method

.method public withMaxConnections(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setMaxConnections(I)V

    return-object p0
.end method

.method public withMaxErrorRetry(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 686
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setMaxErrorRetry(I)V

    return-object p0
.end method

.method public withPreemptiveBasicProxyAuth(Z)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 1020
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setPreemptiveBasicProxyAuth(Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public withProtocol(Lcom/amazonaws/Protocol;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 266
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProtocol(Lcom/amazonaws/Protocol;)V

    return-object p0
.end method

.method public withProxyDomain(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 566
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyDomain(Ljava/lang/String;)V

    return-object p0
.end method

.method public withProxyHost(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 427
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyHost(Ljava/lang/String;)V

    return-object p0
.end method

.method public withProxyPassword(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 525
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyPassword(Ljava/lang/String;)V

    return-object p0
.end method

.method public withProxyPort(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 458
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyPort(I)V

    return-object p0
.end method

.method public withProxyUsername(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 493
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyUsername(Ljava/lang/String;)V

    return-object p0
.end method

.method public withProxyWorkstation(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 608
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setProxyWorkstation(Ljava/lang/String;)V

    return-object p0
.end method

.method public withRetryPolicy(Lcom/amazonaws/retry/RetryPolicy;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 642
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setRetryPolicy(Lcom/amazonaws/retry/RetryPolicy;)V

    return-object p0
.end method

.method public withSignerOverride(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 983
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setSignerOverride(Ljava/lang/String;)V

    return-object p0
.end method

.method public withSocketBufferSizeHints(II)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 900
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/ClientConfiguration;->setSocketBufferSizeHints(II)V

    return-object p0
.end method

.method public withSocketTimeout(I)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 731
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setSocketTimeout(I)V

    return-object p0
.end method

.method public withTrustManager(Ljavax/net/ssl/TrustManager;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 1056
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setTrustManager(Ljavax/net/ssl/TrustManager;)V

    return-object p0
.end method

.method public withUserAgent(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setUserAgent(Ljava/lang/String;)V

    return-object p0
.end method

.method public withUserAgentOverride(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Lcom/amazonaws/ClientConfiguration;->setUserAgentOverride(Ljava/lang/String;)V

    return-object p0
.end method
