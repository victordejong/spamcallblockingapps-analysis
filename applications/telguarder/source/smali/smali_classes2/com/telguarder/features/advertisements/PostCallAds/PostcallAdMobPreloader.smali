.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;
.source "PostcallAdMobPreloader.java"


# static fields
.field public static final MAX_RELOAD_ATTEMPTS:I = 0x8

.field public static final TAG:Ljava/lang/String; = "PostcallAdMobPreloader"

.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;


# instance fields
.field public ADMOB:Ljava/lang/String;

.field public mAdLoader:Lcom/google/android/gms/ads/AdLoader;

.field public mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field public mLoadAttempt:I

.field public mLocation:Landroid/location/Location;

.field public mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB:Lcom/telguarder/features/advertisements/AdvertNetworkName;

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

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->ADMOB:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLoadAttempt:I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    .line 53
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;
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

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;
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

.method private preloadStartError(Ljava/lang/String;)V
    .locals 2

    .line 88
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 89
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->ADMOB:Ljava/lang/String;

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

    .line 91
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->reset()V

    .line 92
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

    .line 128
    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    return-void
.end method

.method public synthetic lambda$preload$0$PostcallAdMobPreloader()V
    .locals 1

    const-string v0, "Timeout, stuck loading state.."

    .line 69
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->preloadStartError(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$preload$1$PostcallAdMobPreloader(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    return-void
.end method

.method public loadAdvert()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 123
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->reset()V

    .line 124
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->cleanInstance()V

    return-void
.end method

.method public preload(Landroid/content/Context;Lcom/telguarder/features/advertisements/Advert;)V
    .locals 3

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLoadAttempt:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 59
    iget-object v1, p2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v1, :cond_0

    .line 60
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    :try_start_0
    const-string p2, "\n"

    .line 66
    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->ADMOB:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " START \n        - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p2

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->ADMOB:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->reset()V

    .line 69
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobPreloader$05rXvv387Z3YHQ_IJZmEMMgLWXg;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobPreloader$05rXvv387Z3YHQ_IJZmEMMgLWXg;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 70
    sget-object p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 72
    :try_start_1
    new-instance p2, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobPreloader$5jmy_RWz2CDJHUJG58d1Ogn-wP8;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobPreloader$5jmy_RWz2CDJHUJG58d1Ogn-wP8;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 74
    new-instance v1, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    .line 76
    invoke-virtual {p2, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 77
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    move-result-object v1

    invoke-virtual {v1, p1, p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->initListener(Landroid/content/Context;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V

    .line 78
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    .line 79
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mLocation:Landroid/location/Location;

    .line 80
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->loadAdvert()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->preloadStartError(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string p1, "placement id processing error"

    .line 63
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->preloadStartError(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 5

    .line 108
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->cancelPreloadTimeoutHandler()V

    .line 109
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 113
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostcallAdMobPreloader reset error:"

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

    .line 115
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 116
    throw v0

    .line 118
    :cond_0
    :goto_2
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    return-void
.end method
