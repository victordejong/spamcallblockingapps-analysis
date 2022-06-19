.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;
.source "PostcallPmOpenWrapNoasBannerPreloader.java"


# static fields
.field private static final MAX_RELOAD_ATTEMPTS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PostcallPmOpenWrapNoasBannerPreloader"

.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;


# instance fields
.field public PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

.field private adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

.field public mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

.field private mAdUnitId:Ljava/lang/String;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field public mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

.field private mLoadAttempt:I

.field public mLocation:Landroid/location/Location;

.field private mProfileId:I

.field private mPublisherId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_NOADSERVER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

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

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLoadAttempt:I

    .line 170
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;)Lcom/telguarder/features/advertisements/Advert;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLoadAttempt:I

    return p0
.end method

.method static synthetic access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLoadAttempt:I

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    .line 64
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;
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

    .line 166
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V

    return-void
.end method

.method private initId(Ljava/lang/String;)Z
    .locals 4

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "\\s*,\\s*"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 73
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mPublisherId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mProfileId:I

    const/4 v2, 0x2

    .line 75
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mAdUnitId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 79
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initId error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method public static declared-synchronized isInstanciated()Z
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;
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

    .line 141
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 142
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

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

    .line 144
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->reset()V

    .line 145
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

    .line 289
    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    return-void
.end method

.method public synthetic lambda$preload$0$PostcallPmOpenWrapNoasBannerPreloader()V
    .locals 1

    const-string v0, "Timeout, stuck loading state.."

    .line 98
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 284
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->reset()V

    .line 285
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->cleanInstance()V

    return-void
.end method

.method public preload(Lcom/telguarder/features/advertisements/Advert;)V
    .locals 12

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLoadAttempt:I

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    iget-object v2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->initId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-nez p1, :cond_1

    const-string p1, "placement id processing error"

    .line 92
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->preloadStartError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :cond_1
    :try_start_1
    const-string p1, "\n"

    .line 95
    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " START \n        - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n        - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->reset()V

    .line 98
    new-instance p1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerPreloader$RiNuIPJaQEt9rUw4Xwa3WFbe6g4;

    invoke-direct {p1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerPreloader$RiNuIPJaQEt9rUw4Xwa3WFbe6g4;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 99
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    :try_start_3
    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setUseInternalBrowser(Z)V

    .line 103
    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->allowLocationAccess(Z)V

    .line 104
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLocation:Landroid/location/Location;

    if-eqz p1, :cond_2

    .line 106
    new-instance p1, Lcom/pubmatic/sdk/common/models/POBLocation;

    sget-object v3, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->GPS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/pubmatic/sdk/common/models/POBLocation;-><init>(Lcom/pubmatic/sdk/common/models/POBLocation$Source;DD)V

    .line 107
    invoke-static {p1}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setLocation(Lcom/pubmatic/sdk/common/models/POBLocation;)V

    .line 109
    :cond_2
    new-instance p1, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

    invoke-direct {p1}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;-><init>()V

    .line 110
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&hl=en"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->setStoreURL(Ljava/net/URL;)V

    .line 111
    invoke-static {p1}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setApplicationInfo(Lcom/pubmatic/sdk/common/models/POBApplicationInfo;)V

    .line 112
    new-instance p1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mPublisherId:Ljava/lang/String;

    iget v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mProfileId:I

    iget-object v8, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mAdUnitId:Ljava/lang/String;

    const/16 v2, 0xa

    new-array v9, v2, [Lcom/pubmatic/sdk/common/POBAdSize;

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v3, 0x32

    const/16 v4, 0x140

    invoke-direct {v2, v4, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/4 v0, 0x1

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v3, 0x64

    const/16 v10, 0x12c

    invoke-direct {v2, v10, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/4 v0, 0x2

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v3, 0xfa

    invoke-direct {v2, v10, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/4 v0, 0x3

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-direct {v2, v4, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/4 v0, 0x4

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v3, 0x150

    const/16 v11, 0x118

    invoke-direct {v2, v3, v11}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/4 v0, 0x5

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-direct {v2, v10, v10}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/4 v0, 0x6

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-direct {v2, v4, v4}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/4 v0, 0x7

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v3, 0x190

    invoke-direct {v2, v4, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/16 v0, 0x8

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v3, 0x1e0

    invoke-direct {v2, v4, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    const/16 v0, 0x9

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v3, 0x258

    invoke-direct {v2, v10, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 123
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 125
    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 126
    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->ABOVE_THE_FOLD:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {p1, v0}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    .line 128
    :cond_3
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->initEvents()V

    .line 130
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->loadAd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 132
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->preloadStartError(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 5

    .line 150
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->cancelPreloadTimeoutHandler()V

    .line 151
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 153
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V

    .line 154
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 157
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostcallPmOpenWrapPreloader reset error:"

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

    .line 159
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 160
    throw v0

    :cond_0
    :goto_2
    return-void
.end method
