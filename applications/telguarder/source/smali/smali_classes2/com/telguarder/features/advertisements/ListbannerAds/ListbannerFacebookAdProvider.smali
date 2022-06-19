.class public Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;
.super Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;
.source "ListbannerFacebookAdProvider.java"


# static fields
.field public static final FACEBOOK:Ljava/lang/String;


# instance fields
.field private adListener:Lcom/facebook/ads/NativeAdListener;

.field private mAdChoiceContainer:Landroid/widget/FrameLayout;

.field private mFbNativeAdChoicesView:Lcom/facebook/ads/AdOptionsView;

.field private mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

.field private mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

.field private onTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/telguarder/features/advertisements/AdvertNetworkName;->FACEBOOK:Lcom/telguarder/features/advertisements/AdvertNetworkName;

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

    sput-object v0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;-><init>(Lcom/telguarder/features/advertisements/Advert;Landroidx/appcompat/app/AppCompatActivity;)V

    .line 206
    new-instance p2, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerFacebookAdProvider$02sfsh4LkuPmp0QaPRwps4xQFz0;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerFacebookAdProvider$02sfsh4LkuPmp0QaPRwps4xQFz0;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 212
    new-instance p2, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;

    invoke-direct {p2, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider$1;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adListener:Lcom/facebook/ads/NativeAdListener;

    .line 51
    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->onHideViews()V

    :cond_0
    if-eqz p1, :cond_2

    .line 54
    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p2, p2, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 55
    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    if-eqz p2, :cond_1

    .line 56
    invoke-static {}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->setInternalAdListener(Lcom/facebook/ads/NativeAdListener;)V

    .line 57
    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    .line 58
    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeBannerAd;->destroy()V

    .line 59
    iput-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    .line 61
    :cond_1
    new-instance p2, Lcom/facebook/ads/NativeBannerAd;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/Advert;->network:Lcom/telguarder/features/advertisements/AdvertNetwork;

    iget-object p1, p1, Lcom/telguarder/features/advertisements/AdvertNetwork;->placementId:Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Lcom/facebook/ads/NativeBannerAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    .line 62
    invoke-static {}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;

    move-result-object p1

    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adListener:Lcom/facebook/ads/NativeAdListener;

    invoke-virtual {p1, p2}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->setInternalAdListener(Lcom/facebook/ads/NativeAdListener;)V

    .line 63
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    iget-object p2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/NativeBannerAd;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->error()V

    return-void
.end method

.method static synthetic access$100(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)Lcom/facebook/ads/NativeBannerAd;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    return-object p0
.end method

.method static synthetic access$200(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->success()V

    return-void
.end method

.method private error()V
    .locals 2

    const/4 v0, 0x0

    .line 268
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adLoaded:Z

    const-wide/16 v0, 0x0

    .line 269
    iput-wide v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adShowBeginTimestamp:J

    .line 270
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertErrorAction(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mOnError:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mOnError:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private loadAd()V
    .locals 2

    .line 140
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertRequestedAction(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerFacebookAdProvider$bM_cHPMBASS3ImrDXHOt3oyS5Qs;

    invoke-direct {v1, p0}, Lcom/telguarder/features/advertisements/ListbannerAds/-$$Lambda$ListbannerFacebookAdProvider$bM_cHPMBASS3ImrDXHOt3oyS5Qs;-><init>(Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private logVisibility()V
    .locals 8

    .line 102
    iget-wide v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adShowBeginTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 103
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adShowBeginTimestamp:J

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mVisibilityPrcnt:I

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertVisibilityTimeAction(Ljava/lang/String;JI)V

    .line 104
    iput-wide v2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adShowBeginTimestamp:J

    :cond_0
    return-void
.end method

.method private success()V
    .locals 2

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adLoaded:Z

    .line 280
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 281
    :cond_0
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertLoadedAction(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/telguarder/helpers/ui/UiHelper;->getVisibilityPrcnt(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mVisibilityPrcnt:I

    .line 286
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mOnSuccess:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mOnSuccess:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindAd(Landroid/view/ViewGroup;)V
    .locals 7

    if-eqz p1, :cond_7

    .line 153
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    if-ne v0, p1, :cond_0

    goto/16 :goto_1

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    .line 155
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 156
    :cond_1
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 157
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 160
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 162
    :cond_3
    iget-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adLoaded:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 164
    :cond_4
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f0b0050

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/NativeAdLayout;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    .line 166
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v1, 0x7f080050

    invoke-virtual {p1, v1}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdChoiceContainer:Landroid/widget/FrameLayout;

    .line 169
    :try_start_0
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    .line 170
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdChoicesView:Lcom/facebook/ads/AdOptionsView;

    if-nez p1, :cond_5

    .line 171
    new-instance p1, Lcom/facebook/ads/AdOptionsView;

    iget-object v2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mHostActivity:Landroidx/appcompat/app/AppCompatActivity;

    iget-object v3, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    iget-object v4, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    sget-object v5, Lcom/facebook/ads/AdOptionsView$Orientation;->HORIZONTAL:Lcom/facebook/ads/AdOptionsView$Orientation;

    const/16 v6, 0x14

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;I)V

    iput-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdChoicesView:Lcom/facebook/ads/AdOptionsView;

    .line 172
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdChoiceContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 173
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mAdChoiceContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdChoicesView:Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v1, 0x7f0801c1

    invoke-virtual {p1, v1}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 178
    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v2, 0x7f0801bf

    invoke-virtual {v1, v2}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 179
    iget-object v2, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v3, 0x7f0801c0

    invoke-virtual {v2, v3}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 180
    iget-object v3, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v4, 0x7f0801c3

    invoke-virtual {v3, v4}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/MediaView;

    .line 181
    iget-object v4, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    const v5, 0x7f0801bc

    invoke-virtual {v4, v5}, Lcom/facebook/ads/NativeAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 184
    iget-object v5, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v5}, Lcom/facebook/ads/NativeBannerAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v5, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v5}, Lcom/facebook/ads/NativeBannerAd;->hasCallToAction()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0, v1, v3, p1}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    const p1, 0x7f100187

    .line 197
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adShowBeginTimestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->error()V

    :cond_7
    :goto_1
    return-void
.end method

.method public synthetic lambda$loadAd$0$ListbannerFacebookAdProvider()V
    .locals 4

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-static {}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;

    move-result-object v2

    iget-object v3, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adListener:Lcom/facebook/ads/NativeAdListener;

    invoke-virtual {v2, v3}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->getAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdListener;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeBannerAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->error()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$1$ListbannerFacebookAdProvider(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adClicked:Z

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 111
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adLoadStarted:Z

    if-eqz v0, :cond_1

    .line 112
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adLoaded:Z

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->getInstance()Lcom/telguarder/helpers/analytics/AnalyticsManager;

    move-result-object v0

    sget-object v1, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->FACEBOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/telguarder/helpers/analytics/AnalyticsManager;->sendAdvertMissedAction(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->logVisibility()V

    .line 118
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onDestroy()V

    return-void
.end method

.method public onHideViews()V
    .locals 2

    .line 124
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->logVisibility()V

    .line 125
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeAdView:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 129
    :cond_0
    invoke-static {}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->getInstance()Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdListener;->setInternalAdListener(Lcom/facebook/ads/NativeAdListener;)V

    .line 130
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    .line 131
    iget-object v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->destroy()V

    .line 132
    iput-object v1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->mFbNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    :cond_1
    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adLoaded:Z

    .line 135
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onHideViews()V

    return-void
.end method

.method public onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onLoadAd(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const-wide/16 p1, 0x0

    .line 71
    iput-wide p1, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->adShowBeginTimestamp:J

    .line 72
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->loadAd()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onResume()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->resumed:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->resumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->resumed:Z

    .line 96
    invoke-direct {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerFacebookAdProvider;->logVisibility()V

    .line 97
    invoke-super {p0}, Lcom/telguarder/features/advertisements/ListbannerAds/ListbannerAdvertProvider;->onStop()V

    :cond_0
    return-void
.end method
