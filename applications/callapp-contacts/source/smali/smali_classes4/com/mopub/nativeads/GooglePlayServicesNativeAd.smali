.class public Lcom/mopub/nativeads/GooglePlayServicesNativeAd;
.super Lcom/mopub/nativeads/GooglePlayServicesNative$b;
.source "SourceFile"


# static fields
.field public static final KEY_EXTRA_AD_UNIT_ID:Ljava/lang/String; = "adunit"

.field public static final KEY_EXTRA_CALLAPP_ADAPTIVE_AD_WIDTH:Ljava/lang/String; = "callapp_adaptive_ad_width"

.field public static final KEY_EXTRA_CALLAPP_AD_SIZES:Ljava/lang/String; = "callapp_ad_sizes"

.field public static final KEY_EXTRA_CALLAPP_BID_PRICE:Ljava/lang/String; = "callapp_bid_price"

.field public static final KEY_EXTRA_CALLAPP_TIMEOUT:Ljava/lang/String; = "KEY_EXTRA_CALLAPP_TIMEOUT"

.field private static final i:Ljava/lang/String; = "GooglePlayServicesNativeAd"


# instance fields
.field private j:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private k:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

.field private l:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->h:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 113
    iput-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->k:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 114
    iput-object p3, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->l:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    return-void
.end method

.method static synthetic a(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->j:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->k:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->j:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object p0
.end method

.method static synthetic c(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->l:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic clear(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->clear(Landroid/view/View;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 377
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->destroy()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->k:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 379
    iput-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->l:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    return-void
.end method

.method public bridge synthetic getAdvertiser()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCallToAction()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIconImageUrl()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMainImageUrl()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMediaView()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getMediaView()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrice()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherAdView()Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->j:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object v0
.end method

.method public bridge synthetic getStarRating()Ljava/lang/Double;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStore()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUnifiedNativeAd()Lcom/google/android/gms/ads/formats/UnifiedNativeAd;
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->getUnifiedNativeAd()Lcom/google/android/gms/ads/formats/UnifiedNativeAd;

    move-result-object v0

    return-object v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;D)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "D)V"
        }
    .end annotation

    .line 130
    iput-object p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->d:Ljava/lang/String;

    .line 131
    iput-object p4, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->e:Ljava/lang/String;

    .line 132
    iput-wide p5, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->b:D

    .line 135
    new-instance p4, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "swap_margins"

    .line 137
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    .line 138
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 139
    instance-of p5, p2, Ljava/lang/Boolean;

    if-eqz p5, :cond_0

    .line 140
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->g:Z

    .line 144
    :cond_0
    new-instance p2, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    const/4 p5, 0x0

    .line 147
    invoke-virtual {p2, p5}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string p6, "orientation_preference"

    .line 150
    invoke-interface {p3, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    .line 152
    invoke-virtual {p2, p6}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setMediaAspectRatio(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    :cond_1
    const-string p6, "ad_choices_placement"

    .line 157
    invoke-interface {p3, p6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    .line 160
    invoke-virtual {p2, p6}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    .line 164
    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p2

    const/4 p6, 0x0

    const-string v0, "callapp_ad_sizes"

    .line 167
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/util/List;

    .line 172
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-static {p6}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 174
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/AdSize;

    .line 175
    sget-object v4, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    if-eq v3, v4, :cond_4

    .line 176
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    .line 185
    :cond_6
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p6

    if-eqz p6, :cond_7

    .line 186
    new-instance p6, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$1;

    invoke-direct {p6, p0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$1;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)V

    new-array v3, p5, [Lcom/google/android/gms/ads/AdSize;

    .line 195
    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/ads/AdSize;

    .line 186
    invoke-virtual {p4, p6, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->forPublisherAdView(Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;[Lcom/google/android/gms/ads/AdSize;)Lcom/google/android/gms/ads/AdLoader$Builder;

    :cond_7
    if-eqz v1, :cond_8

    .line 199
    new-instance p6, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$2;

    invoke-direct {p6, p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$2;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;Landroid/content/Context;)V

    invoke-virtual {p4, p6}, Lcom/google/android/gms/ads/AdLoader$Builder;->forUnifiedNativeAd(Lcom/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    .line 238
    :cond_8
    new-instance p1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd$3;-><init>(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)V

    .line 239
    invoke-virtual {p4, p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 304
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    .line 307
    new-instance p2, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    invoke-direct {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;-><init>()V

    const-string p4, "KEY_EXTRA_CALLAPP_TIMEOUT"

    .line 309
    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_9

    .line 310
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    if-eqz p4, :cond_9

    .line 312
    invoke-virtual {p4}, Ljava/lang/Long;->intValue()I

    move-result p4

    invoke-virtual {p2, p4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setHttpTimeoutMillis(I)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    :cond_9
    const-string p4, "contentUrl"

    .line 317
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 319
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_a

    .line 320
    invoke-virtual {p2, p4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    :cond_a
    const-string p4, "testDevices"

    .line 324
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 326
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_b

    .line 327
    invoke-virtual {p2, p4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 330
    :cond_b
    new-instance p4, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {p4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    const-string p6, "tagForChildDirectedTreatment"

    .line 334
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Boolean;

    const/4 v0, -0x1

    if-eqz p6, :cond_d

    .line 337
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_c

    .line 338
    invoke-virtual {p4, v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_1

    .line 340
    :cond_c
    invoke-virtual {p4, p5}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_1

    .line 343
    :cond_d
    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    :goto_1
    const-string p6, "tagForUnderAgeOfConsent"

    .line 348
    invoke-interface {p3, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Boolean;

    if-eqz p6, :cond_f

    .line 351
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_e

    .line 352
    invoke-virtual {p4, v2}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_2

    .line 354
    :cond_e
    invoke-virtual {p4, p5}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    goto :goto_2

    .line 357
    :cond_f
    invoke-virtual {p4, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(I)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 360
    :goto_2
    invoke-virtual {p4}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object p4

    .line 361
    invoke-static {p4}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    const-string p4, "callapp_bid_price"

    .line 363
    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_10

    .line 364
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    .line 365
    invoke-static {p3}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "bid_price"

    .line 366
    invoke-virtual {p2, p4, p3}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .line 369
    :cond_10
    invoke-virtual {p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p2

    .line 370
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    .line 372
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    sget-object p3, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->i:Ljava/lang/String;

    aput-object p3, p2, p5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic prepare(Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->prepare(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setAdvertiser(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setAdvertiser(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCallToAction(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setCallToAction(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setIconImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setIconImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMainImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setMainImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMediaView(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setMediaView(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPrice(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setPrice(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setStarRating(Ljava/lang/Double;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setStarRating(Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic setStore(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setStore(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTitle(Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic shouldSwapMargins()Z
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mopub/nativeads/GooglePlayServicesNative$b;->shouldSwapMargins()Z

    move-result v0

    return v0
.end method
