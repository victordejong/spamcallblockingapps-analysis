.class public Lcom/mopub/mobileads/AmazonA9DTBInterstitial;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"


# static fields
.field public static final DFP_AD_UNIT_FORHTML_KEY:Ljava/lang/String; = "dfp_ad_unit_for_html"

.field public static final MOPUB_AD_UNIT_FORHTML_KEY:Ljava/lang/String; = "mopub_ad_unit_for_html"

.field public static final SLOT_UUID_KEY:Ljava/lang/String; = "slot_uuid"


# instance fields
.field private final d:Lcom/mopub/mobileads/AmazonAdapterConfiguration;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lcom/amazon/device/ads/DTBAdResponse;

.field private g:Lcom/mopub/mobileads/MoPubInterstitial;

.field private h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

.field private i:D

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    invoke-direct {v0}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->d:Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;D)D
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->i:D

    return-wide p1
.end method

.method static synthetic a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;Lcom/amazon/device/ads/DTBAdResponse;)Lcom/amazon/device/ads/DTBAdResponse;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->f:Lcom/amazon/device/ads/DTBAdResponse;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    return-object p1
.end method

.method static synthetic a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/mopub/mobileads/AmazonAdapterConfiguration;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->d:Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    return-object p0
.end method

.method static synthetic a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->g:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p1
.end method

.method static synthetic b(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)D
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->i:D

    return-wide v0
.end method

.method static synthetic c(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    return-object p0
.end method

.method static synthetic d(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->g:Lcom/mopub/mobileads/MoPubInterstitial;

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->g:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->g:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->show()V

    :cond_1
    return-void
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getProviderTag()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->f:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getNetworkName(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 7

    .line 58
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object v2

    .line 60
    iget-object p2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->d:Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    invoke-virtual {p2, p1, v2}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V

    .line 63
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_3

    .line 64
    move-object v5, p1

    check-cast v5, Landroid/app/Activity;

    const-string p2, "slot_uuid"

    .line 70
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->k:Ljava/lang/String;

    const-string p2, "app_bidder_request_id"

    .line 71
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->j:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object p2

    const-string v0, "amazonFromDfpEnabled"

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "dfp_ad_unit_for_html"

    goto :goto_0

    :cond_0
    const-string p2, "mopub_ad_unit_for_html"

    :goto_0
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 74
    iget-object p2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->k:Ljava/lang/String;

    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 79
    :cond_1
    iget-object p2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->d:Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    invoke-virtual {p2, p1, v2}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->setCachedInitializationParameters(Landroid/content/Context;Ljava/util/Map;)V

    .line 82
    new-instance p2, Lcom/amazon/device/ads/DTBAdRequest;

    invoke-direct {p2}, Lcom/amazon/device/ads/DTBAdRequest;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/device/ads/DTBAdSize;

    const/4 v1, 0x0

    .line 83
    new-instance v3, Lcom/amazon/device/ads/DTBAdSize$DTBInterstitialAdSize;

    iget-object v6, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->k:Ljava/lang/String;

    invoke-direct {v3, v6}, Lcom/amazon/device/ads/DTBAdSize$DTBInterstitialAdSize;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    invoke-virtual {p2, v0}, Lcom/amazon/device/ads/DTBAdRequest;->a([Lcom/amazon/device/ads/DTBAdSize;)V

    .line 84
    new-instance v6, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;-><init>(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p2, v6}, Lcom/amazon/device/ads/DTBAdRequest;->a(Lcom/amazon/device/ads/DTBAdCallback;)V

    return-void

    .line 75
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 76
    const-class p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Empty slotUUid: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", or adUnitForHTMLAd: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method protected onInvalidate()V
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->g:Lcom/mopub/mobileads/MoPubInterstitial;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->h:Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    :cond_1
    return-void
.end method
