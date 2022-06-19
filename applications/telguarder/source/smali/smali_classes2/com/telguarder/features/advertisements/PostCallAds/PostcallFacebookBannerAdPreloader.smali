.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;
.source "PostcallFacebookBannerAdPreloader.java"


# static fields
.field public static final BANNER_HEIGHT:I = 0xfa

.field public static final BANNER_WIDTH:I = 0x12c

.field public static final FACEBOOK_BANNER:Ljava/lang/String;

.field private static final MAX_RELOAD_ATTEMPTS:I = 0x8

.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;


# instance fields
.field public adClicked:Z

.field private final adListener:Lcom/facebook/ads/AdListener;

.field public mAdView:Lcom/facebook/ads/AdView;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private mLoadAttempt:I

.field private sid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

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

    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->adClicked:Z

    .line 37
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mLoadAttempt:I

    .line 104
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->adListener:Lcom/facebook/ads/AdListener;

    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)Lcom/telguarder/features/advertisements/Advert;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    return-object p0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mLoadAttempt:I

    return p0
.end method

.method static synthetic access$102(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mLoadAttempt:I

    return p1
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)Lcom/facebook/ads/AdListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->adListener:Lcom/facebook/ads/AdListener;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    .line 55
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;
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

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;
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

.method private preloadStartError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 86
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 87
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

    .line 88
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->reset()V

    .line 89
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    return-void
.end method

.method private setListeners(Landroid/content/Context;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$F5L7AP2DzvZFdYUMP46MpRt_k3E;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$F5L7AP2DzvZFdYUMP46MpRt_k3E;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public cleanInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 203
    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    return-void
.end method

.method public synthetic lambda$preload$0$PostcallFacebookBannerAdPreloader(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Timeout, stuck loading state.."

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->preloadStartError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setListeners$1$PostcallFacebookBannerAdPreloader(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 97
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    const-string p2, "onTouch"

    invoke-static {p1, p2}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->adClicked:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->reset()V

    .line 199
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->cleanInstance()V

    return-void
.end method

.method public preload(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;)V
    .locals 3

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mLoadAttempt:I

    if-eqz p2, :cond_0

    .line 61
    iget-object v0, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_0

    .line 62
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 63
    iget-object p2, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->sid:Ljava/lang/String;

    const-string p2, "\n"

    .line 69
    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " START \n        - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->sid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->reset()V

    .line 72
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$rvpXyI2W5cO4BX4BuG26l7khMk8;

    invoke-direct {p2, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdPreloader$rvpXyI2W5cO4BX4BuG26l7khMk8;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 73
    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 75
    :try_start_0
    new-instance p2, Lcom/facebook/ads/AdView;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->sid:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-direct {p2, p1, v0, v1}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    .line 76
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->setListeners(Landroid/content/Context;)V

    .line 77
    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {p2}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->adListener:Lcom/facebook/ads/AdListener;

    invoke-virtual {v1, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 79
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->preloadStartError(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string p2, "placement id processing error"

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->preloadStartError(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->cancelPreloadTimeoutHandler()V

    .line 185
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 187
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->setInternalAdListener(Lcom/facebook/ads/AdListener;)V

    .line 188
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 191
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    .line 192
    throw v1

    .line 191
    :catch_0
    :goto_0
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    :cond_0
    return-void
.end method
