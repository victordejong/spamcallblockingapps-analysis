.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;
.source "PostcallFacebookAdPreloader.java"


# static fields
.field public static final FACEBOOK:Ljava/lang/String;

.field private static final MAX_RELOAD_ATTEMPTS:I = 0x8

.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;


# instance fields
.field public adClicked:Z

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private mLoadAttempt:I

.field public mNativeAd:Lcom/facebook/ads/NativeAd;

.field private sid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->adClicked:Z

    .line 30
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mLoadAttempt:I

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;)Lcom/telguarder/features/advertisements/Advert;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mLoadAttempt:I

    return p0
.end method

.method static synthetic access$102(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mLoadAttempt:I

    return p1
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->loadAdvert(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    .line 48
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isInstanciated()Z
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private loadAdvert(Landroid/content/Context;)V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->reset()V

    .line 86
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->sid:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 87
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$5bIOXvHA5AjXIS5ZlichWZlaF1A;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$5bIOXvHA5AjXIS5ZlichWZlaF1A;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;

    invoke-direct {v0, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;Landroid/content/Context;)V

    .line 173
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->getAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    return-void
.end method

.method private preloadStartError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 76
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 77
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "unknown error"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->reset()V

    .line 80
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cleanInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    return-void
.end method

.method public synthetic lambda$loadAdvert$1$PostcallFacebookAdPreloader(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 88
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    const-string p2, "onTouch"

    invoke-static {p1, p2}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 89
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->adClicked:Z

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$preload$0$PostcallFacebookAdPreloader(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Timeout, stuck loading state.."

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->preloadStartError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 193
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->reset()V

    .line 194
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->cleanInstance()V

    return-void
.end method

.method public preload(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mLoadAttempt:I

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_0

    .line 55
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 56
    iget-object p2, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->sid:Ljava/lang/String;

    .line 63
    :try_start_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p2, "\n"

    .line 64
    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " START \n        - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n        - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->sid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->reset()V

    .line 66
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$a06hLqNvdS3f-wiSB_iwWebWk2o;

    invoke-direct {p2, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdPreloader$a06hLqNvdS3f-wiSB_iwWebWk2o;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 67
    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->loadAdvert(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->preloadStartError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 p2, 0x0

    .line 58
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string p2, "placement id processing error"

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->preloadStartError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 5

    .line 178
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->cancelPreloadTimeoutHandler()V

    .line 179
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 181
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->setInternalAdListener(Lcom/facebook/ads/NativeAdListener;)V

    .line 182
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 184
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->FACEBOOK:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostcallFacebookAdPreloader reset error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :goto_1
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 187
    throw v1

    :cond_0
    :goto_2
    return-void
.end method
