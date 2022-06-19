.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
.source "PostcallFacebookAdProvider.java"


# static fields
.field public static final FACEBOOK:Ljava/lang/String;


# instance fields
.field private adListener:Lcom/facebook/ads/NativeAdListener;

.field private mAdChoiceContainer:Landroid/widget/LinearLayout;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private mFbAdOptionsView:Lcom/facebook/ads/AdOptionsView;

.field private mFbNativeAd:Lcom/facebook/ads/NativeAd;

.field private mFbNativeAdMedia:Lcom/facebook/ads/MediaView;

.field private mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private visibilityIssueReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->visibilityIssueReload:Z

    .line 70
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$E-N5MzxP308lRTlV4YAgce4v6_A;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$E-N5MzxP308lRTlV4YAgce4v6_A;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 259
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adListener:Lcom/facebook/ads/NativeAdListener;

    .line 520
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$HnsIPBlJO4D4PSwoIHu2hWQQ9W4;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$HnsIPBlJO4D4PSwoIHu2hWQQ9W4;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->onTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz p1, :cond_0

    .line 56
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_0

    .line 57
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;)Lcom/facebook/ads/NativeAd;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->addFbView(Z)V

    return-void
.end method

.method private adExpired()V
    .locals 3

    const/4 v0, 0x0

    .line 503
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adPresented:Z

    .line 504
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->holderPreparedAlready:Z

    const-wide/16 v0, 0x0

    .line 505
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD EXPIRED"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertExpiredAction(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->cleanInstance()V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private adWasNotVisible()V
    .locals 3

    .line 374
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->visibilityIssueReload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->visibilityIssueReload:Z

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD SHOW ERROR\n        - ad was not visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 377
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adPresented:Z

    .line 378
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->holderPreparedAlready:Z

    const-wide/16 v1, 0x0

    .line 379
    iput-wide v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    .line 380
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->addFbView(Z)V

    goto :goto_0

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW ERROR\n        - ad was not visible again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    :goto_0
    return-void
.end method

.method private adWasVisible()V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mVisibilityPrcnt:I

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD SHOW SUCCESS\n        - visible area: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mVisibilityPrcnt:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mVisibilityPrcnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "error"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adPresented:Z

    .line 360
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdManagerBannerPreloader;->cleanInstance()V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 368
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private addFbView(Z)V
    .locals 2

    .line 138
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$11tuKyOkCJt-HtXDIkzX3yehlio;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$11tuKyOkCJt-HtXDIkzX3yehlio;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;Z)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->setAdHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    :goto_0
    return-void
.end method

.method private addViewToTheHolder()V
    .locals 7

    .line 170
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b0051

    const/4 v2, 0x0

    .line 173
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdLayout;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    .line 174
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x2

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$NUVOfH1QQjvw6IEAD6liorzlw40;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookAdProvider$NUVOfH1QQjvw6IEAD6liorzlw40;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ERROR: \n        - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - holder or view not available"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    :goto_0
    return-void
.end method

.method private createAndLoadAd()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->onHideViews()V

    .line 124
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CREATE AND LOAD \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :catch_0
    :try_start_2
    new-instance v0, Lcom/facebook/ads/NativeAd;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v2, v2, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    .line 127
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAd;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x1

    .line 128
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->addFbView(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 130
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v1

    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    :goto_0
    return-void
.end method

.method private destroyAdView()V
    .locals 5

    .line 203
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 205
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->setInternalAdListener(Lcom/facebook/ads/NativeAdListener;)V

    .line 206
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/facebook/ads/NativeAdLayout;->setVisibility(I)V

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 208
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    .line 213
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdChoiceContainer:Landroid/widget/LinearLayout;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 210
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHideViews error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/telguarder/helpers/log/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :goto_1
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    .line 213
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdChoiceContainer:Landroid/widget/LinearLayout;

    .line 214
    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adPresented:Z

    .line 344
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->holderPreparedAlready:Z

    const-wide/16 v0, 0x0

    .line 345
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    .line 346
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->onDestroy()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private static getMediaViewListener()Lcom/facebook/ads/MediaViewListener;
    .locals 1

    .line 466
    new-instance v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider$2;

    invoke-direct {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider$2;-><init>()V

    return-object v0
.end method

.method private handleErrorState(Ljava/lang/String;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, p1, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 86
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    return-void
.end method

.method private handleLoadinState()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 79
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    .line 80
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adListener:Lcom/facebook/ads/NativeAdListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->setInternalAdListener(Lcom/facebook/ads/NativeAdListener;)V

    return-void
.end method

.method private logVisibility()V
    .locals 8

    .line 220
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 221
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 222
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private requestFacebookBanner()V
    .locals 3

    const-string v0, "\n"

    .line 91
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 93
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider$3;->$SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState:[I

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

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

    .line 108
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ERROR"

    .line 105
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADED"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 100
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->mNativeAd:Lcom/facebook/ads/NativeAd;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    .line 101
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adListener:Lcom/facebook/ads/NativeAdListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->setInternalAdListener(Lcom/facebook/ads/NativeAdListener;)V

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->addFbView(Z)V

    goto :goto_0

    .line 95
    :cond_3
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADING"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 96
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->handleLoadinState()V

    goto :goto_0

    .line 113
    :cond_4
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 114
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->createAndLoadAd()V

    :goto_0
    return-void
.end method

.method private showAd()V
    .locals 9

    .line 405
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->isAdInvalidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adExpired()V

    return-void

    .line 413
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 415
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdChoiceContainer:Landroid/widget/LinearLayout;

    .line 416
    new-instance v0, Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object v3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbAdOptionsView:Lcom/facebook/ads/AdOptionsView;

    .line 417
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdChoiceContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 418
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mAdChoiceContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbAdOptionsView:Lcom/facebook/ads/AdOptionsView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 421
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v1, 0x7f0801bd

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/MediaView;

    .line 422
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v3, 0x7f0801c1

    invoke-virtual {v1, v3}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 423
    iget-object v3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v4, 0x7f0801bb

    invoke-virtual {v3, v4}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 424
    iget-object v4, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v5, 0x7f0801c0

    invoke-virtual {v4, v5}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 425
    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v6, 0x7f0801bf

    invoke-virtual {v5, v6}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 426
    iget-object v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v7, 0x7f0801bc

    invoke-virtual {v6, v7}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 428
    iget-object v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v8, 0x7f0801be

    invoke-virtual {v7, v8}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/MediaView;

    iput-object v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdMedia:Lcom/facebook/ads/MediaView;

    .line 429
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->getMediaViewListener()Lcom/facebook/ads/MediaViewListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    .line 432
    iget-object v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v7}, Lcom/facebook/ads/NativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v7}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v7}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v7}, Lcom/facebook/ads/NativeAd;->hasCallToAction()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 436
    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f100187

    .line 437
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v4, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object v7, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    iget-object v8, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAdMedia:Lcom/facebook/ads/MediaView;

    invoke-virtual {v4, v7, v8, v0, v2}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 449
    sget-object v2, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_ICON:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-static {v0, v2}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->tagView(Landroid/view/View;Lcom/facebook/ads/NativeAdBase$NativeComponentTag;)V

    .line 450
    sget-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_TITLE:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-static {v1, v0}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->tagView(Landroid/view/View;Lcom/facebook/ads/NativeAdBase$NativeComponentTag;)V

    .line 451
    sget-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_BODY:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-static {v3, v0}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->tagView(Landroid/view/View;Lcom/facebook/ads/NativeAdBase$NativeComponentTag;)V

    .line 452
    sget-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_SOCIAL_CONTEXT:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-static {v5, v0}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->tagView(Landroid/view/View;Lcom/facebook/ads/NativeAdBase$NativeComponentTag;)V

    .line 453
    sget-object v0, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->AD_CALL_TO_ACTION:Lcom/facebook/ads/NativeAdBase$NativeComponentTag;

    invoke-static {v6, v0}, Lcom/facebook/ads/NativeAdBase$NativeComponentTag;->tagView(Landroid/view/View;Lcom/facebook/ads/NativeAdBase$NativeComponentTag;)V

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    .line 456
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    :cond_3
    :goto_1
    return-void
.end method

.method private success()V
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adPresented:Z

    if-nez v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;->containerAndChildVisible:Z

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adWasVisible()V

    goto :goto_0

    .line 394
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adWasNotVisible()V

    goto :goto_0

    .line 397
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adWasNotVisible()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$addFbView$1$PostcallFacebookAdProvider(ZLandroid/view/ViewGroup;)V
    .locals 2

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->holderPreparedAlready:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adPresented:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    if-eq p2, v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->newLoadStartedAlready:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    .line 144
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 149
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->newLoadStartedAlready:Z

    .line 150
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mFbNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz p1, :cond_6

    .line 151
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adListener:Lcom/facebook/ads/NativeAdListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdListener;->getAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto :goto_2

    .line 154
    :cond_3
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->holderPreparedAlready:Z

    .line 155
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    .line 156
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->addViewToTheHolder()V

    goto :goto_2

    .line 145
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$2$PostcallFacebookAdProvider()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->showAd()V

    return-void
.end method

.method public synthetic lambda$new$0$PostcallFacebookAdProvider()V
    .locals 2

    .line 71
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - Timeout, stuck loading state.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->error()V

    return-void
.end method

.method public synthetic lambda$new$3$PostcallFacebookAdProvider(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 522
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    const-string p2, "onTouch"

    invoke-static {p1, p2}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 523
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adClicked:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 248
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adPresented:Z

    if-nez v0, :cond_0

    .line 249
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->onDestroy()V

    .line 254
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->destroyAdView()V

    .line 255
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertContainer;->clearVisibilityHandlers()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->logVisibility()V

    .line 192
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->destroyAdView()V

    .line 193
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdPreloader;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adPresented:Z

    .line 197
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->holderPreparedAlready:Z

    .line 198
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    .line 65
    iput-wide p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->adShowBeginTimestamp:J

    .line 66
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->requestFacebookBanner()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 229
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 235
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 241
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookAdProvider;->logVisibility()V

    .line 242
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onStop()V

    return-void
.end method
