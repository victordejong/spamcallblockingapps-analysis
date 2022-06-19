.class final Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/GooglePlayServicesInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;


# direct methods
.method private constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;Lcom/mopub/mobileads/GooglePlayServicesInterstitial$1;)V
    .locals 0

    .line 225
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;-><init>(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)V

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

    .line 301
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 299
    :cond_0
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 297
    :cond_1
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 295
    :cond_2
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0

    .line 293
    :cond_3
    sget-object p0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    return-object p0
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->a(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->b(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v1}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v3, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v3}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->e(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_1
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 7

    .line 238
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 239
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 240
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result v3

    invoke-static {v3}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 238
    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load Google interstitial with message: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Caused by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCause()Lcom/google/android/gms/ads/AdError;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 241
    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p1

    invoke-static {p1}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onAdLoaded()V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public final onAdOpened()V
    .locals 7

    .line 261
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Ljava/lang/String;Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 265
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->a(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->b(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->c(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->d(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)D

    move-result-wide v3

    sget-object v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v0, p0, Lcom/mopub/mobileads/GooglePlayServicesInterstitial$a;->a:Lcom/mopub/mobileads/GooglePlayServicesInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/GooglePlayServicesInterstitial;->e(Lcom/mopub/mobileads/GooglePlayServicesInterstitial;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method
