.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;
.source "PostcallAdMobBannerPreloader.java"


# static fields
.field public static final BANNER_HEIGHT:I = 0xfa

.field public static final BANNER_WIDTH:I = 0x12c

.field private static final MAX_RELOAD_ATTEMPTS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PostcallAdMobBannerPreloader"

.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;


# instance fields
.field public ADMOB_BANNER:Ljava/lang/String;

.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field public mAdView:Lcom/google/android/gms/ads/AdView;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private mLoadAttempt:I

.field private mLocation:Landroid/location/Location;

.field public mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

.field private sid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

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

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mLoadAttempt:I

    .line 129
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->adListener:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 26
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)Lcom/telguarder/features/advertisements/Advert;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mLoadAttempt:I

    return p0
.end method

.method static synthetic access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mLoadAttempt:I

    return p1
.end method

.method static synthetic access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->loadAdvert()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    .line 56
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initEvents()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public static declared-synchronized isInstanciated()Z
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;
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

.method private loadAdvert()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private preloadStartError(Ljava/lang/String;)V
    .locals 2

    .line 89
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 90
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "unknown error"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->reset()V

    .line 93
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object p1

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->preloadBackup(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cleanInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    return-void
.end method

.method public synthetic lambda$preload$0$PostcallAdMobBannerPreloader()V
    .locals 1

    const-string v0, "Timeout, stuck loading state.."

    .line 73
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->reset()V

    .line 238
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->cleanInstance()V

    return-void
.end method

.method public preload(Lcom/telguarder/features/advertisements/Advert;)V
    .locals 2

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mLoadAttempt:I

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_0

    .line 63
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 64
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->sid:Ljava/lang/String;

    :try_start_0
    const-string v0, "\n"

    .line 70
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " START \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n        - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->sid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->reset()V

    .line 73
    new-instance p1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerPreloader$qw-F61pTSpcHA0-ZchhQ4fHanw0;

    invoke-direct {p1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerPreloader$qw-F61pTSpcHA0-ZchhQ4fHanw0;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 74
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 76
    :try_start_1
    new-instance p1, Lcom/google/android/gms/ads/AdView;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 77
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 78
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->sid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->initEvents()V

    .line 80
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mLocation:Landroid/location/Location;

    .line 81
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->loadAdvert()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string p1, "placement id processing error"

    .line 67
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 5

    .line 109
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->cancelPreloadTimeoutHandler()V

    .line 110
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 112
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 113
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 116
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostcallAdMobBannerPreloader reset error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 119
    throw v0

    :cond_0
    :goto_2
    return-void
.end method
