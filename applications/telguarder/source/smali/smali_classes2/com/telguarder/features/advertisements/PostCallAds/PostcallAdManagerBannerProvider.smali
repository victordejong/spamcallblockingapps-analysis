.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
.source "PostcallAdManagerBannerProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostcallAdManagerBannerProvider"


# instance fields
.field private AD_MANAGER_BANNER:Ljava/lang/String;

.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field private mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

.field private mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private visibilityIssueReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 34
    sget-object p2, Lcom/telguarder/features/advertisements/AdvertNetworkName;->AD_MANAGER_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    const/4 p2, 0x0

    .line 36
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->visibilityIssueReload:Z

    .line 58
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerProvider$WP2IgPkLRgAoy6UN-GbKHONhUeE;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerProvider$WP2IgPkLRgAoy6UN-GbKHONhUeE;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 275
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adListener:Lcom/google/android/gms/ads/AdListener;

    if-eqz p1, :cond_0

    .line 44
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_0

    .line 45
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/AdSize;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    return-object p0
.end method

.method static synthetic access$402(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdSize;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    return-object p1
.end method

.method static synthetic access$500(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)Lcom/google/android/gms/ads/ResponseInfo;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    return-object p0
.end method

.method static synthetic access$502(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Lcom/google/android/gms/ads/ResponseInfo;)Lcom/google/android/gms/ads/ResponseInfo;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Ljava/lang/Boolean;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->addAdManagerBannerView(Ljava/lang/Boolean;)V

    return-void
.end method

.method private adWasNotVisible()V
    .locals 3

    .line 400
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->visibilityIssueReload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 401
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->visibilityIssueReload:Z

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD SHOW ERROR\n        - ad was not visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 403
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adPresented:Z

    .line 404
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->holderPreparedAlready:Z

    const-wide/16 v1, 0x0

    .line 405
    iput-wide v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adShowBeginTimestamp:J

    .line 406
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->addAdManagerBannerView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW ERROR\n        - ad was not visible again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private adWasVisible()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 385
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mVisibilityPrcnt:I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW SUCCESS\n        - visible area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mVisibilityPrcnt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mVisibilityPrcnt:I

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

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adShowBeginTimestamp:J

    const/4 v0, 0x1

    .line 388
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adPresented:Z

    .line 389
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->cleanInstance()V

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private addAdManagerBannerView(Ljava/lang/Boolean;)V
    .locals 2

    .line 142
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerProvider$_O2kkGOS_nvv8SbgNY9EFohBASY;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerProvider$_O2kkGOS_nvv8SbgNY9EFohBASY;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->setAdHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private addViewToTheHolder()V
    .locals 7

    .line 179
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerProvider$ysMW_xWSPIgv4O2uFNsR59qRFsU;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerProvider$ysMW_xWSPIgv4O2uFNsR59qRFsU;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerProvider$JDEjWxPvRKTc5BgbcvhoeIELye0;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdManagerBannerProvider$JDEjWxPvRKTc5BgbcvhoeIELye0;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    goto :goto_0

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - holder or view not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private createAndLoadAd()V
    .locals 9

    .line 110
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->onHideViews()V

    .line 114
    :cond_0
    :try_start_0
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->AD_MANAGER_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CREATE AND LOAD \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/google/android/gms/ads/AdSize;

    const/4 v2, 0x0

    .line 118
    new-instance v3, Lcom/google/android/gms/ads/AdSize;

    const/16 v4, 0x32

    const/16 v5, 0x140

    invoke-direct {v3, v5, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/google/android/gms/ads/AdSize;

    const/16 v3, 0x64

    const/16 v4, 0x12c

    invoke-direct {v2, v4, v3}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    const/16 v7, 0xfa

    invoke-direct {v6, v4, v7}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v1, v2

    const/4 v2, 0x3

    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v6, v5, v7}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v1, v2

    const/4 v2, 0x4

    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    const/16 v7, 0x150

    const/16 v8, 0x118

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v1, v2

    const/4 v2, 0x5

    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v6, v4, v4}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v1, v2

    const/4 v2, 0x6

    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {v6, v5, v5}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v1, v2

    const/4 v2, 0x7

    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    const/16 v7, 0x190

    invoke-direct {v6, v5, v7}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v1, v2

    const/16 v2, 0x8

    new-instance v6, Lcom/google/android/gms/ads/AdSize;

    const/16 v7, 0x1e0

    invoke-direct {v6, v5, v7}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v6, v1, v2

    const/16 v2, 0x9

    new-instance v5, Lcom/google/android/gms/ads/AdSize;

    const/16 v6, 0x258

    invoke-direct {v5, v4, v6}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    aput-object v5, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 130
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->initEvents()V

    .line 132
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->addAdManagerBannerView(Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 134
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private destroyAdView()V
    .locals 5

    .line 214
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 216
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 217
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 220
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->TAG:Ljava/lang/String;

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

    .line 222
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 223
    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adPresented:Z

    .line 372
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->holderPreparedAlready:Z

    const-wide/16 v0, 0x0

    .line 373
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adShowBeginTimestamp:J

    .line 374
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->onDestroy()V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private handleErrorState(Ljava/lang/String;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, p1, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 75
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    return-void
.end method

.method private handleLoadinState()V
    .locals 2

    .line 66
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 67
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 68
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 69
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->initEvents()V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method private logVisibility()V
    .locals 8

    .line 229
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 230
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 231
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private requestAdManagerBanner()V
    .locals 3

    const-string v0, "\n"

    .line 80
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 82
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider$2;->$SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState:[I

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

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

    .line 98
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ERROR"

    .line 95
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADED"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 89
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 90
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mCurrentAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 91
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->initEvents()V

    const/4 v0, 0x0

    .line 92
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->addAdManagerBannerView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADING"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 85
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->handleLoadinState()V

    goto :goto_0

    .line 103
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 104
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->createAndLoadAd()V

    :goto_0
    return-void
.end method

.method private success()V
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adPresented:Z

    if-nez v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;->containerAndChildVisible:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adWasVisible()V

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adWasNotVisible()V

    goto :goto_0

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adWasNotVisible()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$addAdManagerBannerView$1$PostcallAdManagerBannerProvider(Ljava/lang/Boolean;Landroid/view/ViewGroup;)V
    .locals 1

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->holderPreparedAlready:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adPresented:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eq p2, v0, :cond_6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->newLoadStartedAlready:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 148
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 153
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->newLoadStartedAlready:Z

    .line 154
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz p1, :cond_7

    .line 155
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 157
    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz p2, :cond_7

    new-instance v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_2

    .line 159
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    goto :goto_2

    .line 163
    :cond_4
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->holderPreparedAlready:Z

    .line 164
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    .line 165
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->addViewToTheHolder()V

    goto :goto_2

    .line 149
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ERROR: \n        - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    :cond_7
    :goto_2
    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$2$PostcallAdManagerBannerProvider()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->success()V

    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$3$PostcallAdManagerBannerProvider()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->success()V

    return-void
.end method

.method public synthetic lambda$new$0$PostcallAdManagerBannerProvider()V
    .locals 2

    .line 59
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - Timeout, stuck loading state.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->error()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 259
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adPresented:Z

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->AD_MANAGER_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    .line 262
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->onDestroy()V

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->destroyAdView()V

    .line 266
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertContainer;->clearVisibilityHandlers()V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->logVisibility()V

    .line 203
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->destroyAdView()V

    .line 204
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adPresented:Z

    .line 208
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->holderPreparedAlready:Z

    .line 209
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    .line 53
    iput-wide p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->adShowBeginTimestamp:J

    .line 54
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->requestAdManagerBanner()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 238
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 245
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onResume()V

    .line 246
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->mAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerProvider;->logVisibility()V

    .line 253
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onStop()V

    return-void
.end method
