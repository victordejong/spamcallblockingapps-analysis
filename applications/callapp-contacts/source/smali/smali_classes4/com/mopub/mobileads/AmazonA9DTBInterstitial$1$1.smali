.class final Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 167
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->d(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v1, v1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->e(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v3, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v3, v3, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v3}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->f(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getCode()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 158
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 155
    :cond_0
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 152
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 149
    :cond_2
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 146
    :cond_3
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method

.method public final onAdOpened()V
    .locals 7

    .line 174
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 175
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->d(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->e(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)D

    move-result-wide v3

    sget-object v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$1;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->f(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method
