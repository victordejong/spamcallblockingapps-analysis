.class public Lcom/telguarder/helpers/web/WebViewPreloadHelper;
.super Ljava/lang/Object;
.source "WebViewPreloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;,
        Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;,
        Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/telguarder/helpers/web/WebViewPreloadHelper;


# instance fields
.field private loadAlreadyHandled:Z

.field public loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

.field private mHandler:Landroid/os/Handler;

.field public mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

.field private mRequestStartTime:J

.field private mUrl:Ljava/lang/String;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;

.field public state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadAlreadyHandled:Z

    .line 38
    sget-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->FINISHED:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    iput-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mRequestStartTime:J

    .line 64
    new-instance v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;

    invoke-direct {v0, p0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$1;-><init>(Lcom/telguarder/helpers/web/WebViewPreloadHelper;)V

    iput-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Landroid/content/Context;)Ljava/util/Map;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getCustomHeaders(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->handleDownloadFinished(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/helpers/web/WebViewPreloadHelper;)Landroid/webkit/WebViewClient;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/helpers/web/WebViewPreloadHelper;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method private getCustomHeaders(Landroid/content/Context;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    invoke-static {p1}, Lcom/telguarder/helpers/idGenerators/UID;->uid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "X-DeviceId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/helpers/web/WebViewPreloadHelper;
    .locals 2

    const-class v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mInstance:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    invoke-direct {v1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;-><init>()V

    sput-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mInstance:Lcom/telguarder/helpers/web/WebViewPreloadHelper;

    .line 60
    :cond_0
    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mInstance:Lcom/telguarder/helpers/web/WebViewPreloadHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getUriBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1

    .line 177
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 178
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/telguarder/helpers/country/CountryManager;->getMCC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mcc"

    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 179
    invoke-static {}, Lcom/telguarder/helpers/country/CountryManager;->getInstance()Lcom/telguarder/helpers/country/CountryManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/country/CountryManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p2
.end method

.method private handleDownloadFinished(Z)V
    .locals 2

    .line 124
    iget-boolean v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadAlreadyHandled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->trackError()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->trackSuccess()V

    :goto_0
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadAlreadyHandled:Z

    .line 131
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    iget-object v1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    invoke-interface {v0, v1, p1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;->onDownloadFinished(Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;Z)V

    .line 133
    :cond_1
    sget-object p1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->FINISHED:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    iput-object p1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    return-void
.end method

.method private trackError()V
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    const-string v2, "https://api.advista.no/tgp/spaminfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAnalysePagePreloadError(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    const-string v2, "https://api.advista.no/tgp/hourlyactivity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTrendingPagePreloadError(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private trackSuccess()V
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mRequestStartTime:J

    sub-long/2addr v0, v2

    .line 217
    iget-object v2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    const-string v3, "https://api.advista.no/tgp/spaminfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAnalysePagePreloadSuccess(J)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    const-string v3, "https://api.advista.no/tgp/hourlyactivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendTrendingPagePreloadSuccess(J)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAnalyzeUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 185
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "https://api.advista.no/tgp/spaminfo"

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getUriBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 187
    invoke-static {p1, p2, v1}, Lcom/telguarder/helpers/contact/ContactUtils;->getE164NUmberIfPossible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "number"

    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 188
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAnalyzeUrl: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    return-object p1
.end method

.method public getTrendingUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "https://api.advista.no/tgp/hourlyactivity"

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->getUriBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTrendingUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    return-object p1
.end method

.method public preloadWebView(Landroid/content/Context;Ljava/lang/String;Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;)V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    sget-object v1, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;->LOADING:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    iput-object v0, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->state:Lcom/telguarder/helpers/web/WebViewPreloadHelper$WebclientState;

    .line 143
    iput-object p2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mUrl:Ljava/lang/String;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mRequestStartTime:J

    .line 145
    iput-object v1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadError:Lcom/telguarder/helpers/web/WebViewPreloadHelper$LoadErrorType;

    const/4 p2, 0x0

    .line 146
    iput-boolean p2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->loadAlreadyHandled:Z

    .line 147
    iput-object p3, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mPreloadWebViewCallback:Lcom/telguarder/helpers/web/WebViewPreloadHelper$PreloadWebViewCallback;

    .line 148
    iget-object p2, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;

    invoke-direct {p3, p0, p1}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$2;-><init>(Lcom/telguarder/helpers/web/WebViewPreloadHelper;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    iget-object p1, p0, Lcom/telguarder/helpers/web/WebViewPreloadHelper;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/telguarder/helpers/web/WebViewPreloadHelper$3;

    invoke-direct {p2, p0}, Lcom/telguarder/helpers/web/WebViewPreloadHelper$3;-><init>(Lcom/telguarder/helpers/web/WebViewPreloadHelper;)V

    const-wide/16 v0, 0xfa0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
