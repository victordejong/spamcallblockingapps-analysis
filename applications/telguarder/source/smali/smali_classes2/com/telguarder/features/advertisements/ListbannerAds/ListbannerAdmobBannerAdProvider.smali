.class public Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;
.super Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
.source "ListbannerAdmobBannerAdProvider.java"


# static fields
.field public static final ADMOB_BANNER:Ljava/lang/String;


# instance fields
.field private adListener:Lcom/google/android/gms/ads/AdListener;

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB_BANNER:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v1}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_listbanner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 161
    new-instance v0, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerAdmobBannerAdProvider$oSCMmLkgG6UhwhzI9QS8myNJ3ds;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerAdmobBannerAdProvider$oSCMmLkgG6UhwhzI9QS8myNJ3ds;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 167
    new-instance v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider$1;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adListener:Lcom/google/android/gms/ads/AdListener;

    .line 37
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->onHideViews()V

    :cond_0
    if-eqz p1, :cond_1

    .line 40
    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v0, v0, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    invoke-direct {v0, p2}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 43
    sget-object p2, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 44
    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 45
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adListener:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 46
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object p2, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->error()V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->success()V

    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adLoaded:Z

    const-wide/16 v0, 0x0

    .line 230
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adShowBeginTimestamp:J

    .line 231
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 232
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private loadAd(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    sget-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 126
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerAdmobBannerAdProvider$O50FeusC1g4r7IypiSUXEo-nXl0;

    invoke-direct {v0, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerAdmobBannerAdProvider$O50FeusC1g4r7IypiSUXEo-nXl0;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private logVisibility()V
    .locals 8

    .line 88
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 89
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 90
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private success()V
    .locals 2

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adLoaded:Z

    .line 241
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 242
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mVisibilityPrcnt:I

    .line 244
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindAd(Landroid/view/ViewGroup;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 145
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    .line 147
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 149
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 152
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 154
    :cond_3
    iget-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adLoaded:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adShowBeginTimestamp:J

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic lambda$loadAd$0$ListbannerAdmobBannerAdProvider()V
    .locals 3

    .line 128
    :try_start_0
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->error()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$1$ListbannerAdmobBannerAdProvider(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adClicked:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adLoadStarted:Z

    if-eqz v0, :cond_1

    .line 98
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adLoaded:Z

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->ADMOB_BANNER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->logVisibility()V

    .line 104
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->logVisibility()V

    .line 111
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 116
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 117
    iput-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->mAdView:Lcom/google/android/gms/ads/AdView;

    :cond_1
    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adLoaded:Z

    .line 120
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p2, 0x0

    .line 57
    iput-wide p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->adShowBeginTimestamp:J

    .line 58
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->loadAd(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onResume()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->resumed:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->resumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->resumed:Z

    .line 82
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdmobBannerAdProvider;->logVisibility()V

    .line 83
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onStop()V

    :cond_0
    return-void
.end method
