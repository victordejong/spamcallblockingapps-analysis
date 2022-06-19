.class final Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$1;)V
    .locals 0

    .line 237
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;-><init>(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)V

    return-void
.end method

.method private static a(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 323
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 321
    :cond_0
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 319
    :cond_1
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 317
    :cond_2
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 315
    :cond_3
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 0

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 7

    .line 245
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 246
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 247
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 245
    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load Google banners with message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Caused by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCause()Lcom/google/android/gms/ads/AdError;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 248
    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p1

    invoke-static {p1}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->d(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->e(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v2}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->f(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v4}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v4

    invoke-static {v4}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 9

    .line 259
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a01be

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setTag(ILjava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    .line 264
    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v2}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v2}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    goto/16 :goto_1

    .line 265
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-virtual {v2}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 266
    invoke-virtual {v7}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 265
    invoke-static {v2, v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 268
    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-virtual {v2}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Google served an ad but it was invalidated because its size of "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " exceeds the publisher-specified size of "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    .line 270
    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 268
    invoke-static {v2, v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onAdOpened()V
    .locals 6

    .line 288
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->d(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->e(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;

    invoke-static {v2}, Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesDfpBanner;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_1
    return-void
.end method
