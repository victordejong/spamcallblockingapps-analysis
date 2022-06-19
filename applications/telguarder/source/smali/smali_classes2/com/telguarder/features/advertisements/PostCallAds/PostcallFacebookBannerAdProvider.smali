.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
.source "PostcallFacebookBannerAdProvider.java"


# static fields
.field public static final FACEBOOK_BANNER:Ljava/lang/String;


# instance fields
.field private adListener:Lcom/facebook/ads/AdListener;

.field public mAdView:Lcom/facebook/ads/AdView;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private visibilityIssueReload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    const/4 p2, 0x0

    .line 30
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->visibilityIssueReload:Z

    .line 105
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdProvider$5QOkIUlllq4j_W7wiUNdKzjtXFU;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdProvider$5QOkIUlllq4j_W7wiUNdKzjtXFU;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 223
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdProvider$kftSPA3Hr83viT1NcB4vLBU5ccM;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdProvider$kftSPA3Hr83viT1NcB4vLBU5ccM;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 231
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adListener:Lcom/facebook/ads/AdListener;

    if-eqz p1, :cond_0

    .line 35
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_0

    .line 36
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;Ljava/lang/Boolean;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->addFbView(Ljava/lang/Boolean;)V

    return-void
.end method

.method private adWasNotVisible()V
    .locals 3

    .line 335
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->visibilityIssueReload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 336
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->visibilityIssueReload:Z

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD SHOW ERROR\n        - ad was not visible"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 338
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adPresented:Z

    .line 339
    iput-boolean v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->holderPreparedAlready:Z

    const-wide/16 v1, 0x0

    .line 340
    iput-wide v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adShowBeginTimestamp:J

    .line 341
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->addFbView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW ERROR\n        - ad was not visible again"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    :goto_0
    return-void
.end method

.method private adWasVisible()V
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mVisibilityPrcnt:I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AD SHOW SUCCESS\n        - visible area: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mVisibilityPrcnt:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mVisibilityPrcnt:I

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

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adShowBeginTimestamp:J

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adPresented:Z

    .line 321
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->cleanInstance()V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private addFbView(Ljava/lang/Boolean;)V
    .locals 2

    .line 177
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdProvider$ZqNd92GrZM1Tmqk0HrflR2QxOwA;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdProvider$ZqNd92GrZM1Tmqk0HrflR2QxOwA;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->setAdHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    :goto_0
    return-void
.end method

.method private addViewToTheHolder()V
    .locals 7

    .line 207
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    move-object v1, v0

    check-cast v1, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->getHostActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    const/16 v3, 0x12c

    const/16 v4, 0xfa

    iget-object v5, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    new-instance v6, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdProvider$YjQ_gXhH25wI8z879MQiQmTWFjY;

    invoke-direct {v6, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallFacebookBannerAdProvider$YjQ_gXhH25wI8z879MQiQmTWFjY;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;)V

    invoke-virtual/range {v1 .. v6}, Lcom/telguarder/features/advertisements/AdvertContainer;->addViewToHolder(Landroid/content/Context;IILandroid/view/View;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ERROR: \n        - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 213
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ERROR: \n        - holder or view not available"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    :goto_0
    return-void
.end method

.method private createAndLoadAd(Landroid/content/Context;)V
    .locals 3

    .line 156
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 158
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CREATE AND LOAD \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->setInternalAdListener(Lcom/facebook/ads/AdListener;)V

    .line 161
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 162
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    .line 164
    :cond_0
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/AdSize;->RECTANGLE_HEIGHT_250:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, p1, v1, v2}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    .line 165
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adListener:Lcom/facebook/ads/AdListener;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->setInternalAdListener(Lcom/facebook/ads/AdListener;)V

    .line 166
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->addFbView(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    return-void
.end method

.method private destroyAdView()V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->setInternalAdListener(Lcom/facebook/ads/AdListener;)V

    .line 60
    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v1}, Lcom/facebook/ads/AdView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 62
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

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

    .line 64
    :goto_1
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    .line 65
    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adPresented:Z

    .line 304
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->holderPreparedAlready:Z

    const-wide/16 v0, 0x0

    .line 305
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adShowBeginTimestamp:J

    .line 306
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->onDestroy()V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private handleErrorState(Ljava/lang/String;)V
    .locals 2

    .line 120
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, p1, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 121
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    return-void
.end method

.method private handleLoadinState()V
    .locals 2

    .line 113
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 114
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    .line 115
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adListener:Lcom/facebook/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->setInternalAdListener(Lcom/facebook/ads/AdListener;)V

    return-void
.end method

.method private logVisibility()V
    .locals 8

    .line 71
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 72
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 73
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private requestFacebookBanner(Landroid/content/Context;)V
    .locals 3

    const-string v0, "\n"

    .line 126
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 128
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider$2;->$SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState:[I

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "NO_AD"

    .line 143
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ERROR"

    .line 140
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v1, "LOADED"

    invoke-static {p1, v1, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 135
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object p1

    iget-object p1, p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->mAdView:Lcom/facebook/ads/AdView;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    .line 136
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object p1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adListener:Lcom/facebook/ads/AdListener;

    invoke-virtual {p1, v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->setInternalAdListener(Lcom/facebook/ads/AdListener;)V

    const/4 p1, 0x0

    .line 137
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->addFbView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 130
    :cond_3
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v1, "LOADING"

    invoke-static {p1, v1, v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 131
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->handleLoadinState()V

    goto :goto_0

    .line 149
    :cond_4
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 150
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->createAndLoadAd(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private success()V
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adPresented:Z

    if-nez v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;->containerAndChildVisible:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adWasVisible()V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adWasNotVisible()V

    goto :goto_0

    .line 358
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adWasNotVisible()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$addFbView$1$PostcallFacebookBannerAdProvider(Ljava/lang/Boolean;Landroid/view/ViewGroup;)V
    .locals 2

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->holderPreparedAlready:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adPresented:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    if-eq p2, v0, :cond_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->newLoadStartedAlready:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_4

    .line 183
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 188
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->newLoadStartedAlready:Z

    .line 189
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mAdView:Lcom/facebook/ads/AdView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p2

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adListener:Lcom/facebook/ads/AdListener;

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdListener;->getAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdListener;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object p2

    invoke-interface {p2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    goto :goto_2

    .line 191
    :cond_3
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->holderPreparedAlready:Z

    .line 192
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    .line 193
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->addViewToTheHolder()V

    goto :goto_2

    .line 184
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    :cond_6
    :goto_2
    return-void
.end method

.method public synthetic lambda$addViewToTheHolder$2$PostcallFacebookBannerAdProvider()V
    .locals 0

    .line 209
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->success()V

    return-void
.end method

.method public synthetic lambda$new$0$PostcallFacebookBannerAdProvider()V
    .locals 2

    .line 106
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - Timeout, stuck loading state.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->error()V

    return-void
.end method

.method public synthetic lambda$new$3$PostcallFacebookBannerAdProvider(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 224
    sget-object p1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    const-string p2, "onTouch"

    invoke-static {p1, p2}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 225
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adClicked:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 80
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adPresented:Z

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->FACEBOOK_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->onDestroy()V

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->destroyAdView()V

    .line 87
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->mHolder:Landroid/view/ViewGroup;

    check-cast v0, Lcom/telguarder/features/advertisements/AdvertContainer;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertContainer;->clearVisibilityHandlers()V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->logVisibility()V

    .line 95
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->destroyAdView()V

    .line 96
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdPreloader;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adPresented:Z

    .line 100
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->holderPreparedAlready:Z

    .line 101
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p2, 0x0

    .line 44
    iput-wide p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->adShowBeginTimestamp:J

    .line 45
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->requestFacebookBanner(Landroid/content/Context;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallFacebookBannerAdProvider;->logVisibility()V

    .line 52
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onStop()V

    return-void
.end method
