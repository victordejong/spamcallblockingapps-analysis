.class public Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/bidder/PostBidder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;
    }
.end annotation


# instance fields
.field private adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

.field private adWidth:F

.field private bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

.field private context:Landroid/content/Context;

.field private isDestroyed:Z

.field private jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

.field private jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

.field private moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field private moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field private moPubView:Lcom/mopub/mobileads/MoPubView;

.field private nativeAd:Lcom/mopub/nativeads/NativeAd;

.field private priceToBeat:D

.field private publisherAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AppBidder$BidListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->publisherAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic access$102(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->publisherAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Ljava/util/Map;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->getServerExtras()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->isDestroyed:Z

    return p0
.end method

.method static synthetic access$300(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method static synthetic access$600(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    return-object p0
.end method

.method static synthetic access$700(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)D
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    return-wide v0
.end method

.method static synthetic access$800(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p0
.end method

.method static synthetic access$802(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    return-object p1
.end method

.method static synthetic access$900(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    return-object p0
.end method

.method private getAdSizes(Ljava/util/List;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/AdSize;",
            ">;"
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-lez p2, :cond_1

    .line 312
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v1

    const-string v2, "GoogleAdaptiveBannerEnabled"

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 313
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 329
    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->context:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationInlineAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_3
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 321
    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->context:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/google/android/gms/ads/AdSize;->getCurrentOrientationAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/gms/ads/AdSize;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    :cond_5
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    iput-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    goto :goto_1

    .line 317
    :cond_6
    sget-object v3, Lcom/google/android/gms/ads/AdSize;->INVALID:Lcom/google/android/gms/ads/AdSize;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v2
.end method

.method private getServerExtras()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 261
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adunit"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "adUnitID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-wide v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callapp_floor_price"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->requestId:Ljava/lang/String;

    const-string v2, "app_bidder_request_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private hideWebViewScrollbars(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 296
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 297
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 298
    instance-of v3, v2, Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {v2, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 300
    invoke-virtual {v2, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 302
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 303
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->hideWebViewScrollbars(Landroid/view/ViewGroup;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private loadInterstitial(Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 2

    .line 220
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$3;-><init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadNativeOrBanner(Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V
    .locals 8

    .line 162
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 163
    iget-wide v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "callapp_bid_price"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getMultiAdType()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->adWidth:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->getAdSizes(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "callapp_ad_sizes"

    .line 166
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getAdUnitTimeout()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getAdUnitTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "KEY_EXTRA_CALLAPP_TIMEOUT"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;-><init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)V

    .line 174
    new-instance v1, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;

    new-instance v2, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    new-instance p2, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$2;

    invoke-direct {p2, p0, p1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    invoke-direct {v1, v2, v0, p2}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;-><init>(Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;)V

    .line 215
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener;->setNativeAd(Lcom/mopub/nativeads/GooglePlayServicesNativeAd;)V

    .line 216
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->context:Landroid/content/Context;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    add-double v5, v4, v6

    const-string v4, "google"

    move-object v0, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mopub/nativeads/GooglePlayServicesNativeAd;->loadAd(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->isDestroyed:Z

    .line 348
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;-><init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdHeight()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->publisherAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;DLjava/lang/String;F)V
    .locals 4

    .line 77
    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;-><init>()V

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 82
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_1
    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    .line 88
    iput-object p7, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->requestId:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->context:Landroid/content/Context;

    .line 90
    iput p8, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->adWidth:F

    .line 91
    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    .line 93
    iget-wide p7, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    mul-double v0, p7, p5

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    mul-double p7, p7, p5

    .line 94
    iput-wide p7, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    .line 97
    :cond_2
    iget-wide p5, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    cmpl-double p1, p5, v2

    if-ltz p1, :cond_3

    .line 98
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->CANCELLED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const-wide/high16 p7, 0x4024000000000000L    # 10.0

    cmpl-double p1, p5, p7

    if-lez p1, :cond_4

    mul-double p5, p5, p7

    .line 101
    invoke-static {p5, p6}, Ljava/lang/Math;->round(D)J

    move-result-wide p5

    long-to-double p5, p5

    div-double/2addr p5, p7

    const-wide p7, 0x3fb999999999999aL    # 0.1

    add-double/2addr p5, p7

    iput-wide p5, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    .line 104
    :cond_4
    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->getAdUnits()Ljava/util/List;

    move-result-object p1

    .line 105
    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 p5, 0x1

    if-ne p2, p5, :cond_6

    const/4 p2, 0x0

    .line 106
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    .line 107
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getMultiAdType()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 108
    invoke-direct {p0, p3}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->loadInterstitial(Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V

    return-void

    .line 110
    :cond_5
    invoke-direct {p0, p3, p4}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->loadNativeOrBanner(Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V

    return-void

    .line 113
    :cond_6
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 2

    .line 271
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isCallappDisableRefresh()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->publisherAdView:Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->hideWebViewScrollbars(Landroid/view/ViewGroup;)V

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->jsonPostBidder:Lcom/callapp/contacts/util/ads/JSONPostBidder;

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONPostBidder;->isCallappDisableRefresh()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_2

    .line 279
    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V

    return-void

    .line 282
    :cond_2
    sget-object v0, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {p1, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public synthetic notifyLoss()V
    .locals 0

    invoke-static {p0}, Lcom/callapp/contacts/util/ads/bidder/Bidder$-CC;->$default$notifyLoss(Lcom/callapp/contacts/util/ads/bidder/Bidder;)V

    return-void
.end method

.method public setPriceToBeat(D)V
    .locals 0

    .line 72
    iput-wide p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->priceToBeat:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GooglePostBidder{nativeAd="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->nativeAd:Lcom/mopub/nativeads/NativeAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moPubInterstitial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->moPubInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v1, :cond_2

    .line 377
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubInterstitial;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
