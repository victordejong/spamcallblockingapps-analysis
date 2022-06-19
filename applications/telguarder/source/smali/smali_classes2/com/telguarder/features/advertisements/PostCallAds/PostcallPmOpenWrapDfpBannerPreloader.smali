.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;
.source "PostcallPmOpenWrapDfpBannerPreloader.java"


# static fields
.field private static final MAX_RELOAD_ATTEMPTS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PostcallPmOpenWrapDfpBannerPreloader"

.field private static mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;


# instance fields
.field public PM_OPENWRAP_DFP:Ljava/lang/String;

.field private adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

.field public mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

.field public mAdUnitId:Ljava/lang/String;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field public mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

.field public mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

.field private mLoadAttempt:I

.field public mLocation:Landroid/location/Location;

.field public mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

.field private mProfileId:I

.field private mPublisherId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

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

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLoadAttempt:I

    .line 190
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;)Lcom/telguarder/features/advertisements/Advert;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLoadAttempt:I

    return p0
.end method

.method static synthetic access$202(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLoadAttempt:I

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;
    .locals 2

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    invoke-direct {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;-><init>()V

    sput-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    .line 68
    :cond_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;
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

    .line 186
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V

    return-void
.end method

.method private initId(Lcom/telguarder/features/advertisements/AdvertNetwork;)Z
    .locals 4

    .line 73
    iget-object v0, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    :try_start_0
    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    const-string v0, "\\s*,\\s*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mPublisherId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mProfileId:I

    const/4 v2, 0x2

    .line 79
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdUnitId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 83
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->TAG:Ljava/lang/String;

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

    const-class v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;
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

    .line 152
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ERROR:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V

    .line 153
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

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

    .line 155
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->reset()V

    .line 156
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

    .line 316
    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mInstance:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    return-void
.end method

.method public synthetic lambda$preload$0$PostcallPmOpenWrapDfpBannerPreloader()V
    .locals 1

    const-string v0, "Timeout, stuck loading state.."

    .line 102
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 311
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->reset()V

    .line 312
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->cleanInstance()V

    return-void
.end method

.method public preload(Lcom/telguarder/features/advertisements/Advert;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 91
    iput v2, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLoadAttempt:I

    const/4 v3, 0x0

    .line 92
    iput-object v3, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v4, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    invoke-direct {v1, v4}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->initId(Lcom/telguarder/features/advertisements/AdvertNetwork;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v0, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    .line 95
    :cond_0
    iget-object v0, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    if-nez v0, :cond_1

    const-string v0, "placement id processing error"

    .line 96
    invoke-direct {v1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->preloadStartError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :cond_1
    :try_start_1
    const-string v0, "\n"

    .line 99
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " START \n        - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v4, v4, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v4, v4, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n        - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v4, v4, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v4, v4, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v4, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->reset()V

    .line 102
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerPreloader$VBhGV1OqSerjuCoOkhseGaGYSoU;

    invoke-direct {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerPreloader$VBhGV1OqSerjuCoOkhseGaGYSoU;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;)V

    iput-object v0, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 103
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->LOADING:Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    invoke-virtual {v1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->setState(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :try_start_3
    invoke-static {v2}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setUseInternalBrowser(Z)V

    .line 107
    invoke-static {v2}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->allowLocationAccess(Z)V

    .line 108
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    .line 110
    new-instance v0, Lcom/pubmatic/sdk/common/models/POBLocation;

    sget-object v5, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->GPS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    iget-object v4, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v4, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/pubmatic/sdk/common/models/POBLocation;-><init>(Lcom/pubmatic/sdk/common/models/POBLocation$Source;DD)V

    .line 111
    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setLocation(Lcom/pubmatic/sdk/common/models/POBLocation;)V

    .line 113
    :cond_2
    new-instance v0, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

    invoke-direct {v0}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;-><init>()V

    .line 114
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "&hl=en"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->setStoreURL(Ljava/net/URL;)V

    .line 115
    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setApplicationInfo(Lcom/pubmatic/sdk/common/models/POBApplicationInfo;)V

    .line 116
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdUnitId:Ljava/lang/String;

    const/16 v6, 0xa

    new-array v7, v6, [Lcom/google/android/gms/ads/AdSize;

    new-instance v8, Lcom/google/android/gms/ads/AdSize;

    const/16 v9, 0x32

    const/16 v10, 0x140

    invoke-direct {v8, v10, v9}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v8, v7, v2

    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    const/16 v8, 0x64

    const/16 v9, 0x12c

    invoke-direct {v2, v9, v8}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x2

    new-instance v11, Lcom/google/android/gms/ads/AdSize;

    const/16 v12, 0xfa

    invoke-direct {v11, v9, v12}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v11, v7, v2

    const/4 v2, 0x3

    new-instance v11, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v11, v10, v12}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v11, v7, v2

    const/4 v2, 0x4

    new-instance v11, Lcom/google/android/gms/ads/AdSize;

    const/16 v12, 0x150

    const/16 v13, 0x118

    invoke-direct {v11, v12, v13}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v11, v7, v2

    const/4 v2, 0x5

    new-instance v11, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v11, v9, v9}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v11, v7, v2

    const/4 v2, 0x6

    new-instance v11, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v11, v10, v10}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v11, v7, v2

    const/4 v2, 0x7

    new-instance v11, Lcom/google/android/gms/ads/AdSize;

    const/16 v12, 0x190

    invoke-direct {v11, v10, v12}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v11, v7, v2

    const/16 v2, 0x8

    new-instance v11, Lcom/google/android/gms/ads/AdSize;

    const/16 v12, 0x1e0

    invoke-direct {v11, v10, v12}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v11, v7, v2

    const/16 v2, 0x9

    new-instance v10, Lcom/google/android/gms/ads/AdSize;

    const/16 v11, 0x258

    invoke-direct {v10, v9, v11}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v10, v7, v2

    invoke-direct {v0, v4, v5, v7}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/google/android/gms/ads/AdSize;)V

    iput-object v0, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    .line 127
    new-instance v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {}, Lcom/telguarder/ApplicationObject;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v14, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mPublisherId:Ljava/lang/String;

    iget v15, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mProfileId:I

    iget-object v2, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mAdUnitId:Ljava/lang/String;

    iget-object v4, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    move-object v12, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V

    iput-object v0, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 128
    iput-object v3, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 130
    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getAdRequest()Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {v0, v8}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->enableBidSummary(Z)V

    .line 133
    invoke-virtual {v0, v6}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->setNetworkTimeout(I)V

    .line 136
    :cond_3
    iget-object v0, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 137
    sget-object v2, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->ABOVE_THE_FOLD:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    .line 139
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->initEvents()V

    .line 141
    iget-object v0, v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->loadAd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 143
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->preloadStartError(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->preloadStartError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 5

    .line 161
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->cancelPreloadTimeoutHandler()V

    .line 162
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V

    .line 165
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 168
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->TAG:Ljava/lang/String;

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

    .line 170
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 171
    throw v0

    .line 173
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    if-eqz v0, :cond_1

    .line 175
    :try_start_2
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    :goto_3
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 177
    :try_start_3
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PostcallPmOpenWrapPreloader mEventHandler reset error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 179
    :goto_4
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    .line 180
    throw v0

    :cond_1
    :goto_5
    return-void
.end method
