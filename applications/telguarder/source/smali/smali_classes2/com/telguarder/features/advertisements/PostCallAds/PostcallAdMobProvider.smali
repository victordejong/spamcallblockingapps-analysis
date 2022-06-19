.class public Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;
.super Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;
.source "PostcallAdMobProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PostcallAdMobProvider"


# instance fields
.field public ADMOB:Ljava/lang/String;

.field private isAdviewPopulated:Z

.field private mAdLoader:Lcom/google/android/gms/ads/AdLoader;

.field private mAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

.field private mAdvert:Lcom/telguarder/features/advertisements/Advert;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 44
    sget-object p2, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {p2}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    const/4 p2, 0x0

    .line 47
    iput-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->isAdviewPopulated:Z

    .line 68
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$ielTeL_vHYN6_RTEEP6h5WNkdf8;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$ielTeL_vHYN6_RTEEP6h5WNkdf8;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 54
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_0

    .line 55
    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    :cond_0
    return-void
.end method

.method private createAndLoadAd(Landroid/content/Context;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->onHideViews()V

    .line 126
    :cond_0
    :try_start_0
    sget-object v0, Lcom/telguarder/features/advertisements/AdvertNetworkName;->ADMOB:Lcom/telguarder/features/advertisements/AdvertNetworkName;

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/AdvertNetworkName;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " CREATE AND LOAD \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->addAdMobView(Landroid/content/Context;)V

    .line 130
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object v1, v1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$whr4oAxPUrboTF8Z1FUzvynzwtM;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$whr4oAxPUrboTF8Z1FUzvynzwtM;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 137
    new-instance v1, Lcom/google/android/gms/ads/VideoOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/VideoOptions$Builder;->setStartMuted(Z)Lcom/google/android/gms/ads/VideoOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoOptions$Builder;->build()Lcom/google/android/gms/ads/VideoOptions;

    move-result-object v1

    .line 138
    new-instance v2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 140
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->initListener(Landroid/content/Context;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V

    .line 141
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    .line 142
    invoke-static {}, Lcom/telguarder/helpers/location/LocationHelper;->getInstance()Lcom/telguarder/helpers/location/LocationHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/telguarder/helpers/location/LocationHelper;->getCurrentCoarseLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 144
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 151
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->error()V

    :cond_2
    :goto_0
    return-void
.end method

.method private destroyAdView()V
    .locals 5

    .line 209
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 211
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :goto_0
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 213
    :try_start_1
    sget-object v2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->TAG:Ljava/lang/String;

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

    .line 215
    :goto_1
    iput-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 216
    throw v0

    :cond_0
    :goto_2
    return-void
.end method

.method private handleErrorState(Ljava/lang/String;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, p1, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 85
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->error()V

    return-void
.end method

.method private handleLoadinState(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 77
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    .line 78
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 79
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->initListener(Landroid/content/Context;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V

    return-void
.end method

.method private logVisibility()V
    .locals 8

    .line 222
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 223
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 224
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private populateAdView(Landroid/content/Context;)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mHolder:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "layout_inflater"

    .line 281
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 282
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const v0, 0x7f0b002b

    const/4 v1, 0x0

    .line 283
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    .line 284
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    invoke-direct {p0, v0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->populateAppInstallAdView(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V

    .line 285
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mHolder:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 286
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mHolder:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 287
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->isAdviewPopulated:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 289
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->isAdviewPopulated:Z

    :goto_0
    return-void
.end method

.method private populateAppInstallAdView(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;)V
    .locals 4

    const v0, 0x7f080053

    .line 295
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/MediaView;

    .line 296
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V

    .line 299
    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$1;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$1;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/MediaView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    const v0, 0x7f080051

    .line 311
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setHeadlineView(Landroid/view/View;)V

    const v0, 0x7f08004d

    .line 312
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setBodyView(Landroid/view/View;)V

    const v0, 0x7f08004e

    .line 313
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setCallToActionView(Landroid/view/View;)V

    const v0, 0x7f08004c

    .line 314
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setIconView(Landroid/view/View;)V

    const v0, 0x7f080054

    .line 315
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setPriceView(Landroid/view/View;)V

    const v0, 0x7f080055

    .line 316
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setStarRatingView(Landroid/view/View;)V

    const v0, 0x7f080056

    .line 317
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setStoreView(Landroid/view/View;)V

    const v0, 0x7f08004b

    .line 318
    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 320
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getBodyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getBodyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getBodyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 330
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 332
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 333
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 336
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v0

    if-nez v0, :cond_2

    .line 337
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getIconView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 339
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getIconView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getIconView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 344
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getPriceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 346
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getPriceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getPriceView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStore()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 351
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStoreView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 353
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStoreView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 354
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStoreView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStore()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :goto_4
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_5

    .line 358
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStarRatingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 360
    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStarRatingView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getStarRating()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 361
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getStarRatingView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    :goto_5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 365
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getAdvertiserView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 367
    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getAdvertiserView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->getAdvertiserView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :goto_6
    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V

    .line 373
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object p1

    .line 374
    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController;->hasVideoContent()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 375
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController;->getAspectRatio()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Video status: Ad contains a %.2f:1 video asset."

    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    .line 376
    new-instance p2, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$2;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$2;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/VideoController;->setVideoLifecycleCallbacks(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V

    goto :goto_7

    :cond_7
    const-string p1, "Video status: Ad does not contain a video asset."

    .line 384
    invoke-static {p1}, Lcom/telguarder/helpers/log/Logger;->debug(Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private requestAdMobBanner(Landroid/content/Context;)V
    .locals 4

    const-string v0, "\n"

    .line 90
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->isAdviewPopulated:Z

    .line 92
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 93
    sget-object v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider$3;->$SwitchMap$com$telguarder$features$advertisements$PostCallAds$PostcallAdvertPreloader$AdvertPreloadState:[I

    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getState()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertPreloader$AdvertPreloadState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "NO_AD"

    .line 109
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "ERROR"

    .line 106
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->handleErrorState(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v3, "LOADED"

    invoke-static {v0, v3, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 100
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    .line 101
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 102
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdmobListener;->initListener(Landroid/content/Context;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->addAdMobView(Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    const-string v2, "LOADING"

    invoke-static {v0, v2, v1}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->handleLoadinState(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdvert:Lcom/telguarder/features/advertisements/Advert;

    invoke-static {v0, v1, v2}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfoPostCallStart(Ljava/lang/String;Ljava/lang/String;Lcom/telguarder/features/advertisements/Advert;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->createAndLoadAd(Landroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addAdMobView(Landroid/content/Context;)V
    .locals 2

    .line 159
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->isInstantiated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->getInstance()Lcom/telguarder/features/postCallStatistics/CSViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$c7cWWuW148ffZUkGdzS4vQtKQGg;

    invoke-direct {v1, p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/-$$Lambda$PostcallAdMobProvider$c7cWWuW148ffZUkGdzS4vQtKQGg;-><init>(Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/telguarder/features/postCallStatistics/CSViewAdapter;->setAdHolderCallbackInterface(Lcom/telguarder/features/postCallStatistics/CSAdRowViewHolder$AdHolderCallbackInterface;)V

    :cond_0
    return-void
.end method

.method public error()V
    .locals 2

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adPresented:Z

    .line 251
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->holderPreparedAlready:Z

    const-wide/16 v0, 0x0

    .line 252
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adShowBeginTimestamp:J

    .line 253
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->onDestroy()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$addAdMobView$2$PostcallAdMobProvider(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 162
    :try_start_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;

    move-result-object v0

    iget-boolean v0, v0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProxy;->mLoadStarted:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adPresented:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mHolder:Landroid/view/ViewGroup;

    if-ne p2, v0, :cond_1

    return-void

    .line 169
    :cond_1
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mHolder:Landroid/view/ViewGroup;

    .line 170
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->populateAdView(Landroid/content/Context;)V

    .line 171
    iget-object p1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mHolder:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 172
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->success()V

    goto :goto_1

    .line 163
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->error()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 174
    :catch_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->error()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$createAndLoadAd$1$PostcallAdMobProvider(Landroid/content/Context;Lcom/google/android/gms/ads/formats/UnifiedNativeAd;)V
    .locals 0

    .line 132
    iput-object p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 133
    iget-boolean p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->isAdviewPopulated:Z

    if-nez p2, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->populateAdView(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$PostcallAdMobProvider()V
    .locals 2

    .line 69
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ERROR: \n        - Timeout, stuck loading state.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->error()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adPresented:Z

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->onDestroy()V

    .line 244
    :cond_1
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->destroyAdView()V

    .line 245
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->logVisibility()V

    .line 197
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->destroyAdView()V

    .line 198
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->reset()V

    :cond_0
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdLoader:Lcom/google/android/gms/ads/AdLoader;

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adPresented:Z

    .line 203
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->holderPreparedAlready:Z

    .line 204
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p2, 0x0

    .line 63
    iput-wide p2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adShowBeginTimestamp:J

    .line 64
    invoke-direct {p0, p1}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->requestAdMobBanner(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 184
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 190
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 231
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->logVisibility()V

    .line 232
    invoke-super {p0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdvertProvider;->onStop()V

    return-void
.end method

.method public success()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mHolder:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mAdView:Lcom/google/android/gms/ads/formats/UnifiedNativeAdView;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mVisibilityPrcnt:I

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AD SHOW SUCCESS\n        - visible area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mVisibilityPrcnt:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mVisibilityPrcnt:I

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

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n        - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mUnifiedNativeAd:Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    .line 266
    invoke-virtual {v2}, Lcom/google/android/gms/ads/formats/UnifiedNativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/telguarder/features/advertisements/AdvertManager;->addAdNetworkFlowDebugInfo(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adShowBeginTimestamp:J

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->adPresented:Z

    .line 269
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->ADMOB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->isInstanciated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    invoke-static {}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->getInstance()Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobPreloader;->cleanInstance()V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/telguarder/features/advertisements/PostCallAds/PostcallAdMobProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
