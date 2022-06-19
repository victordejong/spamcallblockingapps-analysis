.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;
.source "PostcallAdManagerBannerPreloader.java"


# static fields
.field private static final MAX_RELOAD_ATTEMPTS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PostcallAdManagerBannerPreloader"

.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;


# instance fields
.field public AD_MANAGER_BANNER:Ljava/lang/String;

.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field public mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field public mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

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

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->AD_MANAGER_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

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

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mLoadAttempt:I

    .line 139
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->adListener:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)Lcom/telguarder/features/advertisements/Advert;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mLoadAttempt:I

    return p0
.end method

.method static synthetic access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mLoadAttempt:I

    return p1
.end method

.method static synthetic access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->loadAdvert()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    .line 56
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;
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

    .line 135
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public static declared-synchronized isInstanciated()Z
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;
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

    .line 108
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private preloadStartError(Ljava/lang/String;)V
    .locals 2

    .line 99
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 100
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

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

    .line 102
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->reset()V

    .line 103
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

    .line 254
    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    return-void
.end method

.method public synthetic lambda$preload$0$PostcallAdManagerBannerPreloader()V
    .locals 1

    const-string v0, "Timeout, stuck loading state.."

    .line 73
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 249
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->reset()V

    .line 250
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->cleanInstance()V

    return-void
.end method

.method public preload(Lcom/telguarder/features/advertisements/Advert;)V
    .locals 8

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mLoadAttempt:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 62
    iget-object v2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_0

    .line 63
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 64
    iget-object v2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    iput-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->sid:Ljava/lang/String;

    :try_start_0
    const-string v2, "\n"

    .line 70
    invoke-static {v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " START \n        - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n        - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->sid:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->reset()V

    .line 73
    new-instance p1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerPreloader$Kuyi49LLz3jT0iBQbVW4nWwSeW0;

    invoke-direct {p1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerPreloader$Kuyi49LLz3jT0iBQbVW4nWwSeW0;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 74
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 76
    :try_start_1
    new-instance p1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/16 v2, 0xa

    new-array v2, v2, [Lcom/google/android/gms/ads/AdSize;

    .line 77
    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0x32

    const/16 v5, 0x140

    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/4 v0, 0x1

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0x64

    const/16 v6, 0x12c

    invoke-direct {v3, v6, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/4 v0, 0x2

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0xfa

    invoke-direct {v3, v6, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/4 v0, 0x3

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/4 v0, 0x4

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0x150

    const/16 v7, 0x118

    invoke-direct {v3, v4, v7}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/4 v0, 0x5

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v6, v6}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/4 v0, 0x6

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v3, v5, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/4 v0, 0x7

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0x190

    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/16 v0, 0x8

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0x1e0

    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    const/16 v0, 0x9

    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0x258

    invoke-direct {v3, v6, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 88
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 89
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->sid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->initEvents()V

    .line 91
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mLocation:Landroid/location/Location;

    .line 92
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->loadAdvert()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 66
    :cond_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string p1, "placement id processing error"

    .line 67
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 5

    .line 119
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->cancelPreloadTimeoutHandler()V

    .line 120
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 122
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 123
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 126
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostcallAdManagerPreloader reset error:"

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

    .line 128
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 129
    throw v0

    :cond_0
    :goto_2
    return-void
.end method
