.class final Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/DTBAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;

.field final synthetic e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;Ljava/util/Map;Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iput-object p2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$2;->a:[I

    .line 1017
    iget-object p1, p1, Lcom/amazon/device/ads/AdError;->a:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 87
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError$ErrorCode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 103
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 100
    :pswitch_0
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 96
    :pswitch_1
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 93
    :pswitch_2
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 90
    :pswitch_3
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0, p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;Lcom/amazon/device/ads/DTBAdResponse;)Lcom/amazon/device/ads/DTBAdResponse;

    .line 111
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->b()I

    move-result v0

    if-gtz v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 117
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/util/Map;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 120
    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->c()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/ads/DTBAdSize;

    invoke-virtual {p1, v4}, Lcom/amazon/device/ads/DTBAdResponse;->a(Lcom/amazon/device/ads/DTBAdSize;)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-static {v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v5}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/mopub/mobileads/AmazonAdapterConfiguration;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/mopub/mobileads/AmazonAdapterConfiguration;->getPricePoints(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;D)D

    .line 123
    iget-object v4, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v4}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)D

    move-result-wide v4

    cmpl-double v6, v4, v2

    if-lez v6, :cond_1

    iget-object v2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v2}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)D

    move-result-wide v2

    cmpg-double v4, v2, v0

    if-gez v4, :cond_1

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    .line 132
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->get()Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;

    move-result-object v0

    const-string v1, "amazonFromDfpEnabled"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/CallAppRemoteConfigManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    iget-object v2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    .line 134
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;-><init>(Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 189
    sget-object v0, Lcom/amazon/device/ads/DTBAdUtil;->b:Lcom/amazon/device/ads/DTBAdUtil;

    invoke-static {p1}, Lcom/amazon/device/ads/DTBAdUtil;->a(Lcom/amazon/device/ads/DTBAdResponse;)Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->build()Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;->loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V

    return-void

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    new-instance v1, Lcom/mopub/mobileads/MoPubInterstitial;

    iget-object v2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->a(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->g(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/device/ads/DTBAdResponse;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->setKeywords(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->g(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object p1

    new-instance v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;-><init>(Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;)V

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 228
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->g(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    return-void
.end method
