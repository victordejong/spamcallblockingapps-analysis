.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
.source "PostcallPmOpenWrapNoasBannerProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostcallPmOpenWrapNoasBannerProvider"


# instance fields
.field private PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

.field private adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

.field public mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

.field private mAdUnitId:Ljava/lang/String;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field public mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

.field private mLocation:Landroid/location/Location;

.field private mProfileId:I

.field private mPublisherId:Ljava/lang/String;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private visibilityIssueReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 42
    sget-object p2, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_NOADSERVER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    const/4 p2, 0x0

    .line 44
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->visibilityIssueReload:Z

    .line 69
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerProvider$8p4H_cuTq-fwKWsNb2ivZW0H5kk;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerProvider$8p4H_cuTq-fwKWsNb2ivZW0H5kk;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 305
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    if-eqz p1, :cond_0

    .line 55
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_0

    .line 56
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;Ljava/lang/Boolean;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->addPmOpenWrapBannerView(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    return-void
.end method

.method private adWasNotVisible()V
    .locals 3

    .line 428
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->visibilityIssueReload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->visibilityIssueReload:Z

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD SHOW ERROR\n        - ad was not visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 431
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adPresented:Z

    .line 432
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->holderPreparedAlready:Z

    const-wide/16 v1, 0x0

    .line 433
    iput-wide v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adShowBeginTimestamp:J

    .line 434
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->addPmOpenWrapBannerView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW ERROR\n        - ad was not visible again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private adWasVisible()V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mVisibilityPrcnt:I

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW SUCCESS\n        - visible area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mVisibilityPrcnt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mVisibilityPrcnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "error"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adShowBeginTimestamp:J

    const/4 v0, 0x1

    .line 416
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adPresented:Z

    .line 417
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->cleanInstance()V

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private addPmOpenWrapBannerView(Ljava/lang/Boolean;)V
    .locals 2

    .line 194
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerProvider$i6A0KRuY1tjW7Y_XOsFwhBX-M5I;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerProvider$i6A0KRuY1tjW7Y_XOsFwhBX-M5I;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->setAdHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private addViewToTheHolder()V
    .locals 7

    .line 224
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdWidth()I

    move-result v3

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdHeight()I

    move-result v4

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerProvider$Dg-KzU9xuaLHpWmo6QLDQ1riKFI;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerProvider$Dg-KzU9xuaLHpWmo6QLDQ1riKFI;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerProvider$uS9Ikn_pqQ1G7I9IlKGOqGevpjM;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapNoasBannerProvider$uS9Ikn_pqQ1G7I9IlKGOqGevpjM;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 234
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    goto :goto_0

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - holder or view not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private createAndLoadAd()V
    .locals 13

    .line 140
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->onHideViews()V

    .line 144
    :cond_0
    :try_start_0
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_NOADSERVER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CREATE AND LOAD \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->initId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "placement id processing error"

    .line 148
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->createAndLoadAdError(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 152
    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setUseInternalBrowser(Z)V

    .line 153
    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->allowLocationAccess(Z)V

    .line 154
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 156
    new-instance v1, Lcom/pubmatic/sdk/common/models/POBLocation;

    sget-object v3, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->GPS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/pubmatic/sdk/common/models/POBLocation;-><init>(Lcom/pubmatic/sdk/common/models/POBLocation$Source;DD)V

    .line 157
    invoke-static {v1}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setLocation(Lcom/pubmatic/sdk/common/models/POBLocation;)V

    .line 159
    :cond_2
    new-instance v1, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

    invoke-direct {v1}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;-><init>()V

    .line 160
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&hl=en"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;->setStoreURL(Ljava/net/URL;)V

    .line 161
    invoke-static {v1}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setApplicationInfo(Lcom/pubmatic/sdk/common/models/POBApplicationInfo;)V

    .line 162
    new-instance v1, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mPublisherId:Ljava/lang/String;

    iget v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mProfileId:I

    iget-object v8, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdUnitId:Ljava/lang/String;

    const/16 v2, 0xa

    new-array v9, v2, [Lcom/pubmatic/sdk/common/POBAdSize;

    new-instance v2, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v3, 0x32

    const/16 v4, 0x140

    invoke-direct {v2, v4, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v2, v9, v0

    new-instance v0, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v2, 0x64

    const/16 v3, 0x12c

    invoke-direct {v0, v3, v2}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    const/4 v2, 0x1

    aput-object v0, v9, v2

    const/4 v0, 0x2

    new-instance v10, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v11, 0xfa

    invoke-direct {v10, v3, v11}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v10, v9, v0

    const/4 v0, 0x3

    new-instance v10, Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-direct {v10, v4, v11}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v10, v9, v0

    const/4 v0, 0x4

    new-instance v10, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v11, 0x150

    const/16 v12, 0x118

    invoke-direct {v10, v11, v12}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v10, v9, v0

    const/4 v0, 0x5

    new-instance v10, Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-direct {v10, v3, v3}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v10, v9, v0

    const/4 v0, 0x6

    new-instance v10, Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-direct {v10, v4, v4}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v10, v9, v0

    const/4 v0, 0x7

    new-instance v10, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v11, 0x190

    invoke-direct {v10, v4, v11}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v10, v9, v0

    const/16 v0, 0x8

    new-instance v10, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v11, 0x1e0

    invoke-direct {v10, v4, v11}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v10, v9, v0

    const/16 v0, 0x9

    new-instance v4, Lcom/pubmatic/sdk/common/POBAdSize;

    const/16 v10, 0x258

    invoke-direct {v4, v3, v10}, Lcom/pubmatic/sdk/common/POBAdSize;-><init>(II)V

    aput-object v4, v9, v0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;[Lcom/pubmatic/sdk/common/POBAdSize;)V

    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 175
    invoke-virtual {v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 176
    sget-object v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->ABOVE_THE_FOLD:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    .line 178
    :cond_3
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->initEvents()V

    .line 180
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->addPmOpenWrapBannerView(Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->createAndLoadAdError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private createAndLoadAdError(Ljava/lang/String;)V
    .locals 2

    .line 187
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "unknown error"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    return-void
.end method

.method private destroyAdView()V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 261
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V

    .line 262
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 265
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHideViews error:"

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

    .line 267
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 268
    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    .line 400
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adPresented:Z

    .line 401
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->holderPreparedAlready:Z

    const-wide/16 v0, 0x0

    .line 402
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adShowBeginTimestamp:J

    .line 403
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->onDestroy()V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private handleErrorState(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, p1, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 87
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    return-void
.end method

.method private handleLoadinState()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 78
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 79
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 80
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mLocation:Landroid/location/Location;

    .line 81
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->initEvents()V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V

    return-void
.end method

.method private initId(Ljava/lang/String;)Z
    .locals 4

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "\\s*,\\s*"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 127
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mPublisherId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 128
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mProfileId:I

    const/4 v2, 0x2

    .line 129
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdUnitId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 133
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->TAG:Ljava/lang/String;

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

.method private logVisibility()V
    .locals 8

    .line 274
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 275
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 276
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private requestPmOpenWrapBanner()V
    .locals 3

    const-string v0, "\n"

    .line 92
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 94
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider$2;->$SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState:[I

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO_AD"

    .line 111
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ERROR"

    .line 108
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADED"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 101
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 102
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 103
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mLocation:Landroid/location/Location;

    .line 104
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->initEvents()V

    const/4 v0, 0x0

    .line 105
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->addPmOpenWrapBannerView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADING"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 97
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->handleLoadinState()V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 117
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->createAndLoadAd()V

    :goto_0
    return-void
.end method

.method private success()V
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adPresented:Z

    if-nez v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;->containerAndChildVisible:Z

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adWasVisible()V

    goto :goto_0

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adWasNotVisible()V

    goto :goto_0

    .line 451
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adWasNotVisible()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$addPmOpenWrapBannerView$1$PostcallPmOpenWrapNoasBannerProvider(Ljava/lang/Boolean;Landroid/view/ViewGroup;)V
    .locals 1

    .line 197
    :try_start_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->holderPreparedAlready:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adPresented:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eq p2, v0, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->newLoadStartedAlready:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    .line 200
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 205
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->newLoadStartedAlready:Z

    .line 206
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->loadAd()V

    goto :goto_2

    .line 208
    :cond_3
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->holderPreparedAlready:Z

    .line 209
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    .line 210
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->addViewToTheHolder()V

    goto :goto_2

    .line 201
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ERROR: \n        - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$2$PostcallPmOpenWrapNoasBannerProvider()V
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->success()V

    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$3$PostcallPmOpenWrapNoasBannerProvider()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->success()V

    return-void
.end method

.method public synthetic lambda$new$0$PostcallPmOpenWrapNoasBannerProvider()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - Timeout, stuck loading state.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->error()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adPresented:Z

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->PM_OPENWRAP_NOADSERVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    .line 293
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->onDestroy()V

    .line 296
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->destroyAdView()V

    .line 297
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertContainer;->clearVisibilityHandlers()V

    .line 247
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->logVisibility()V

    .line 248
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->destroyAdView()V

    .line 249
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerPreloader;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adPresented:Z

    .line 253
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->holderPreparedAlready:Z

    .line 254
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    .line 64
    iput-wide p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->adShowBeginTimestamp:J

    .line 65
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->requestPmOpenWrapBanner()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapNoasBannerProvider;->logVisibility()V

    .line 284
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onStop()V

    return-void
.end method
