.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
.source "PostcallAdMobBannerProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostcallAdMobBannerProvider"


# instance fields
.field private ADMOB_BANNER:Ljava/lang/String;

.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field public mResponseInfo:Lcom/google/android/gms/ads/ResponseInfo;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private visibilityIssueReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 34
    sget-object p2, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    const/4 p2, 0x0

    .line 37
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->visibilityIssueReload:Z

    .line 57
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerProvider$75QsfSvzQT32uwXTJpps4FNia8k;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerProvider$75QsfSvzQT32uwXTJpps4FNia8k;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 257
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adListener:Lcom/google/android/gms/ads/AdListener;

    if-eqz p1, :cond_0

    .line 43
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_0

    .line 44
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    return-void
.end method

.method static synthetic access$300(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)Lcom/google/android/gms/ads/AdView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;Ljava/lang/Boolean;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->addAdMobBannerView(Ljava/lang/Boolean;)V

    return-void
.end method

.method private adWasNotVisible()V
    .locals 3

    .line 381
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->visibilityIssueReload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->visibilityIssueReload:Z

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD SHOW ERROR\n        - ad was not visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 384
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adPresented:Z

    .line 385
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->holderPreparedAlready:Z

    const-wide/16 v1, 0x0

    .line 386
    iput-wide v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adShowBeginTimestamp:J

    .line 387
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->addAdMobBannerView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW ERROR\n        - ad was not visible again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private adWasVisible()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 366
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mVisibilityPrcnt:I

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW SUCCESS\n        - visible area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mVisibilityPrcnt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mVisibilityPrcnt:I

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

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adShowBeginTimestamp:J

    const/4 v0, 0x1

    .line 369
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adPresented:Z

    .line 370
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->cleanInstance()V

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 375
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private addAdMobBannerView(Ljava/lang/Boolean;)V
    .locals 2

    .line 128
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerProvider$tdHiGHabqEyoOAsB-iJ6R-bAHk0;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerProvider$tdHiGHabqEyoOAsB-iJ6R-bAHk0;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->setAdHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private addViewToTheHolder()V
    .locals 7

    .line 165
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const/16 v3, 0x12c

    const/16 v4, 0xfa

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerProvider$vPh8jECiQLFkChP3IL90TbQIM3M;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobBannerProvider$vPh8jECiQLFkChP3IL90TbQIM3M;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - holder or view not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private createAndLoadAd()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->onHideViews()V

    .line 111
    :cond_0
    :try_start_0
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CREATE AND LOAD \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 115
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 116
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->initEvents()V

    const/4 v0, 0x1

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->addAdMobBannerView(Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 120
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    :goto_0
    return-void
.end method

.method private destroyAdView()V
    .locals 5

    .line 196
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 198
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 199
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 202
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->TAG:Ljava/lang/String;

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

    .line 204
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 205
    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adPresented:Z

    .line 353
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->holderPreparedAlready:Z

    const-wide/16 v0, 0x0

    .line 354
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adShowBeginTimestamp:J

    .line 355
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->onDestroy()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private handleErrorState(Ljava/lang/String;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, p1, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 73
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    return-void
.end method

.method private handleLoadinState()V
    .locals 2

    .line 65
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 66
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 67
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->initEvents()V

    return-void
.end method

.method private initEvents()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method private logVisibility()V
    .locals 8

    .line 211
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 212
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 213
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private requestAdMobBanner()V
    .locals 3

    const-string v0, "\n"

    .line 78
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 80
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider$2;->$SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState:[I

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

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

    .line 95
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ERROR"

    .line 92
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADED"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 87
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->mAdView:Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 88
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->initEvents()V

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->addAdMobBannerView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADING"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 83
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->handleLoadinState()V

    goto :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 101
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->createAndLoadAd()V

    :goto_0
    return-void
.end method

.method private success()V
    .locals 1

    .line 396
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adPresented:Z

    if-nez v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;->containerAndChildVisible:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adWasVisible()V

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adWasNotVisible()V

    goto :goto_0

    .line 404
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adWasNotVisible()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$addAdMobBannerView$1$PostcallAdMobBannerProvider(Ljava/lang/Boolean;Landroid/view/ViewGroup;)V
    .locals 1

    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->holderPreparedAlready:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adPresented:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eq p2, v0, :cond_6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->newLoadStartedAlready:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_5

    .line 134
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 139
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->newLoadStartedAlready:Z

    .line 140
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_7

    .line 141
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 143
    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz p2, :cond_7

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_2

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz p1, :cond_7

    new-instance p2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_2

    .line 149
    :cond_4
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->holderPreparedAlready:Z

    .line 150
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    .line 151
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->addViewToTheHolder()V

    goto :goto_2

    .line 135
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ERROR: \n        - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    :cond_7
    :goto_2
    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$2$PostcallAdMobBannerProvider()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->success()V

    return-void
.end method

.method public synthetic lambda$new$0$PostcallAdMobBannerProvider()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - Timeout, stuck loading state.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->error()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 241
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adPresented:Z

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    .line 244
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->onDestroy()V

    .line 247
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->destroyAdView()V

    .line 248
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertContainer;->clearVisibilityHandlers()V

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->logVisibility()V

    .line 185
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->destroyAdView()V

    .line 186
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerPreloader;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adPresented:Z

    .line 190
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->holderPreparedAlready:Z

    .line 191
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    .line 52
    iput-wide p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->adShowBeginTimestamp:J

    .line 53
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->requestAdMobBanner()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 220
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onPause()V

    .line 221
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onResume()V

    .line 228
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 234
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobBannerProvider;->logVisibility()V

    .line 235
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onStop()V

    return-void
.end method
