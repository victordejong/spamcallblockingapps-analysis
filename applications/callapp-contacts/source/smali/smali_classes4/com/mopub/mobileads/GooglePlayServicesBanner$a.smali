.class final Lcom/mopub/mobileads/GooglePlayServicesBanner$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/GooglePlayServicesBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/GooglePlayServicesBanner;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesBanner;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesBanner;Lcom/mopub/mobileads/GooglePlayServicesBanner$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;-><init>(Lcom/mopub/mobileads/GooglePlayServicesBanner;)V

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

    .line 310
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 308
    :cond_0
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 306
    :cond_1
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 304
    :cond_2
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 302
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

    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 233
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 234
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 232
    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load Google banners with message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Caused by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCause()Lcom/google/android/gms/ads/AdError;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 235
    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p1

    invoke-static {p1}, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onAdImpression()V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->d(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 289
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->e(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v2}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->f(Lcom/mopub/mobileads/GooglePlayServicesBanner;)D

    move-result-wide v2

    iget-object v4, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v4}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

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

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0a01be

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/AdView;->setTag(ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v1

    .line 251
    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v2}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v2}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    goto/16 :goto_1

    .line 252
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-virtual {v2}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 253
    invoke-virtual {v7}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    sget-object v7, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 252
    invoke-static {v2, v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 255
    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-virtual {v2}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c()Ljava/lang/String;

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

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    .line 257
    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    .line 255
    invoke-static {v2, v5, v6}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onAdOpened()V
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesBanner;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->d(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->e(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/GooglePlayServicesBanner$a;->a:Lcom/mopub/mobileads/GooglePlayServicesBanner;

    invoke-static {v2}, Lcom/mopub/mobileads/GooglePlayServicesBanner;->a(Lcom/mopub/mobileads/GooglePlayServicesBanner;)Lcom/google/android/gms/ads/AdView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdView;->getAdSize()Lcom/google/android/gms/ads/AdSize;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->b(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_1
    return-void
.end method
