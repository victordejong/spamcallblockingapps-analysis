.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
.source "PostcallPmOpenWrapDfpBannerProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostcallPmOpenWrapDfpBannerProvider"


# instance fields
.field private PM_OPENWRAP_DFP:Ljava/lang/String;

.field private adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

.field public mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

.field private mAdUnitId:Ljava/lang/String;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field public mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

.field private mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

.field private mLocation:Landroid/location/Location;

.field public mPOBImpression:Lcom/pubmatic/sdk/openwrap/core/POBImpression;

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

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 44
    sget-object p2, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->visibilityIssueReload:Z

    .line 73
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerProvider$G35NHR27H-l9S9QkgBYLfwdu08g;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerProvider$G35NHR27H-l9S9QkgBYLfwdu08g;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 347
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    if-eqz p1, :cond_0

    .line 59
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_0

    .line 60
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;Ljava/lang/Boolean;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->addPmOpenWrapBannerView(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    return-void
.end method

.method private adWasNotVisible()V
    .locals 3

    .line 477
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->visibilityIssueReload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 478
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->visibilityIssueReload:Z

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD SHOW ERROR\n        - ad was not visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 480
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adPresented:Z

    .line 481
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->holderPreparedAlready:Z

    const-wide/16 v1, 0x0

    .line 482
    iput-wide v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adShowBeginTimestamp:J

    .line 483
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->addPmOpenWrapBannerView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW ERROR\n        - ad was not visible again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private adWasVisible()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->AD_SERVER:Ljava/lang/String;

    .line 459
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 462
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mVisibilityPrcnt:I

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW SUCCESS\n        - visible area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mVisibilityPrcnt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mVisibilityPrcnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "error"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adShowBeginTimestamp:J

    const/4 v0, 0x1

    .line 465
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adPresented:Z

    .line 466
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->cleanInstance()V

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private addPmOpenWrapBannerView(Ljava/lang/Boolean;)V
    .locals 2

    .line 207
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerProvider$idfz9wzeTlm61efrf9VBEwFhCqQ;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerProvider$idfz9wzeTlm61efrf9VBEwFhCqQ;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->setAdHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private addViewToTheHolder()V
    .locals 7

    .line 237
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdWidth()I

    move-result v3

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/common/POBAdSize;->getAdHeight()I

    move-result v4

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerProvider$5NcPxBd8Edt6gba9UQZFMO4ja84;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerProvider$5NcPxBd8Edt6gba9UQZFMO4ja84;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerProvider$aVzpG-Ux99aYZRObrUmObFrGkcc;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallPmOpenWrapDfpBannerProvider$aVzpG-Ux99aYZRObrUmObFrGkcc;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - holder or view not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private createAndLoadAd()V
    .locals 15

    .line 146
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->onHideViews()V

    .line 150
    :cond_0
    :try_start_0
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->PM_OPENWRAP_DFP:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CREATE AND LOAD \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->initId(Lcom/telguarder/features/advertisements/AdvertNetwork;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "placement id processing error"

    .line 154
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->createAndLoadAdError(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 158
    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setUseInternalBrowser(Z)V

    .line 159
    invoke-static {v0}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->allowLocationAccess(Z)V

    .line 160
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object v1

    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mLocation:Landroid/location/Location;

    if-eqz v1, :cond_2

    .line 162
    new-instance v1, Lcom/pubmatic/sdk/common/models/POBLocation;

    sget-object v3, Lcom/pubmatic/sdk/common/models/POBLocation$Source;->GPS:Lcom/pubmatic/sdk/common/models/POBLocation$Source;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/pubmatic/sdk/common/models/POBLocation;-><init>(Lcom/pubmatic/sdk/common/models/POBLocation$Source;DD)V

    .line 163
    invoke-static {v1}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setLocation(Lcom/pubmatic/sdk/common/models/POBLocation;)V

    .line 165
    :cond_2
    new-instance v1, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;

    invoke-direct {v1}, Lcom/pubmatic/sdk/common/models/POBApplicationInfo;-><init>()V

    .line 166
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

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

    .line 167
    invoke-static {v1}, Lcom/pubmatic/sdk/common/OpenWrapSDK;->setApplicationInfo(Lcom/pubmatic/sdk/common/models/POBApplicationInfo;)V

    .line 168
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdUnitId:Ljava/lang/String;

    const/16 v4, 0xa

    new-array v4, v4, [Lcom/google/android/gms/ads/AdSize;

    new-instance v5, Lcom/google/android/gms/ads/AdSize;

    const/16 v6, 0x32

    const/16 v7, 0x140

    invoke-direct {v5, v7, v6}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v5, v4, v0

    new-instance v0, Lcom/google/android/gms/ads/AdSize;

    const/16 v5, 0x64

    const/16 v6, 0x12c

    invoke-direct {v0, v6, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v0, 0x2

    new-instance v8, Lcom/google/android/gms/ads/AdSize;

    const/16 v9, 0xfa

    invoke-direct {v8, v6, v9}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v8, v4, v0

    const/4 v0, 0x3

    new-instance v8, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v8, v7, v9}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v8, v4, v0

    const/4 v0, 0x4

    new-instance v8, Lcom/google/android/gms/ads/AdSize;

    const/16 v9, 0x150

    const/16 v10, 0x118

    invoke-direct {v8, v9, v10}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v8, v4, v0

    const/4 v0, 0x5

    new-instance v8, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v8, v6, v6}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v8, v4, v0

    const/4 v0, 0x6

    new-instance v8, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v8, v7, v7}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v8, v4, v0

    const/4 v0, 0x7

    new-instance v8, Lcom/google/android/gms/ads/AdSize;

    const/16 v9, 0x190

    invoke-direct {v8, v7, v9}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v8, v4, v0

    const/16 v0, 0x8

    new-instance v8, Lcom/google/android/gms/ads/AdSize;

    const/16 v9, 0x1e0

    invoke-direct {v8, v7, v9}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v8, v4, v0

    const/16 v0, 0x9

    new-instance v7, Lcom/google/android/gms/ads/AdSize;

    const/16 v8, 0x258

    invoke-direct {v7, v6, v8}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v7, v4, v0

    invoke-direct {v1, v2, v3, v4}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/google/android/gms/ads/AdSize;)V

    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    .line 179
    new-instance v0, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v10

    iget-object v11, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mPublisherId:Ljava/lang/String;

    iget v12, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mProfileId:I

    iget-object v13, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdUnitId:Ljava/lang/String;

    iget-object v14, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/pubmatic/sdk/openwrap/banner/POBBannerEvent;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/4 v1, 0x0

    .line 180
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 182
    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getAdRequest()Lcom/pubmatic/sdk/openwrap/core/POBRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {v0, v5}, Lcom/pubmatic/sdk/openwrap/core/POBRequest;->enableBidSummary(Z)V

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->getImpression()Lcom/pubmatic/sdk/openwrap/core/POBImpression;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 188
    sget-object v1, Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;->ABOVE_THE_FOLD:Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/core/POBImpression;->setAdPosition(Lcom/pubmatic/sdk/openwrap/core/POBRequest$AdPosition;)V

    .line 190
    :cond_4
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->initEvents()V

    .line 193
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->addPmOpenWrapBannerView(Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->createAndLoadAdError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private createAndLoadAdError(Ljava/lang/String;)V
    .locals 2

    .line 200
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

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

    .line 202
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    return-void
.end method

.method private destroyAdView()V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V

    .line 275
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    invoke-virtual {v0}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 278
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->TAG:Ljava/lang/String;

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

    .line 280
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 281
    throw v0

    .line 283
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    if-eqz v0, :cond_1

    .line 285
    :try_start_2
    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 289
    :goto_3
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 287
    :try_start_3
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHideViews mEventHandler error:"

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

    .line 289
    :goto_4
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    .line 290
    throw v0

    :cond_1
    :goto_5
    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    .line 445
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adPresented:Z

    .line 446
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->holderPreparedAlready:Z

    const-wide/16 v0, 0x0

    .line 447
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adShowBeginTimestamp:J

    .line 448
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->onDestroy()V

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private handleErrorState(Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, p1, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 92
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    return-void
.end method

.method private handleLoadinState()V
    .locals 2

    .line 81
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 82
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 83
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    .line 84
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 85
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mLocation:Landroid/location/Location;

    .line 86
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->initEvents()V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adListener:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;

    invoke-virtual {v0, v1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->setListener(Lcom/pubmatic/sdk/openwrap/banner/POBBannerView$POBBannerViewListener;)V

    return-void
.end method

.method private initId(Lcom/telguarder/features/advertisements/AdvertNetwork;)Z
    .locals 4

    .line 129
    iget-object v0, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 131
    :try_start_0
    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    const-string v0, "\\s*,\\s*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mPublisherId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mProfileId:I

    const/4 v2, 0x2

    .line 135
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdUnitId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    .line 139
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->TAG:Ljava/lang/String;

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

    .line 296
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 297
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 298
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private requestPmOpenWrapBanner()V
    .locals 3

    const-string v0, "\n"

    .line 97
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 99
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider$2;->$SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState:[I

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

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

    .line 117
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ERROR"

    .line 114
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADED"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 106
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    .line 107
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    .line 108
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mCurrentAdSize:Lcom/pubmatic/sdk/common/POBAdSize;

    .line 109
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mLocation:Landroid/location/Location;

    .line 110
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->initEvents()V

    const/4 v0, 0x0

    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->addPmOpenWrapBannerView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADING"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 102
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->handleLoadinState()V

    goto :goto_0

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 123
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->createAndLoadAd()V

    :goto_0
    return-void
.end method

.method private success()V
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adPresented:Z

    if-nez v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;->containerAndChildVisible:Z

    if-eqz v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adWasVisible()V

    goto :goto_0

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adWasNotVisible()V

    goto :goto_0

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adWasNotVisible()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$addPmOpenWrapBannerView$1$PostcallPmOpenWrapDfpBannerProvider(Ljava/lang/Boolean;Landroid/view/ViewGroup;)V
    .locals 1

    .line 210
    :try_start_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->holderPreparedAlready:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adPresented:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eq p2, v0, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->newLoadStartedAlready:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    .line 213
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 218
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->newLoadStartedAlready:Z

    .line 219
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mABanneriew:Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/pubmatic/sdk/openwrap/banner/POBBannerView;->loadAd()V

    goto :goto_2

    .line 221
    :cond_3
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->holderPreparedAlready:Z

    .line 222
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    .line 223
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->addViewToTheHolder()V

    goto :goto_2

    .line 214
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 226
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ERROR: \n        - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$2$PostcallPmOpenWrapDfpBannerProvider()V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->success()V

    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$3$PostcallPmOpenWrapDfpBannerProvider()V
    .locals 0

    .line 242
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->success()V

    return-void
.end method

.method public synthetic lambda$new$0$PostcallPmOpenWrapDfpBannerProvider()V
    .locals 2

    .line 74
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - Timeout, stuck loading state.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->error()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 332
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adPresented:Z

    if-nez v0, :cond_0

    .line 333
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->PM_OPENWRAP_DFP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->onDestroy()V

    .line 338
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->destroyAdView()V

    .line 339
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertContainer;->clearVisibilityHandlers()V

    .line 260
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->logVisibility()V

    .line 261
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->destroyAdView()V

    .line 262
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerPreloader;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adPresented:Z

    .line 266
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->holderPreparedAlready:Z

    .line 267
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    .line 68
    iput-wide p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->adShowBeginTimestamp:J

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->requestPmOpenWrapBanner()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 305
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onPause()V

    .line 306
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->AD_SERVER:Ljava/lang/String;

    .line 307
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 315
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onResume()V

    .line 316
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->AD_SERVER:Ljava/lang/String;

    .line 317
    invoke-static {}, Lcom/telguarder/features/advertisements/AdvertManager;->getInstance()Lcom/telguarder/features/advertisements/AdvertManager;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertManager;->mLastOwDfpNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->mEventHandler:Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerEventHandler;->dfpAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallPmOpenWrapDfpBannerProvider;->logVisibility()V

    .line 326
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onStop()V

    return-void
.end method
