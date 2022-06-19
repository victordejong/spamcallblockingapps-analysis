.class final Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


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

    .line 194
    iput-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 3

    .line 216
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 218
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->d(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v0, v0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v0}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->e(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v2, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object v2, v2, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {v2}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->f(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public final onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    .line 225
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    return-void
.end method

.method public final onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    return-void
.end method

.method public final onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 6

    .line 207
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 208
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 210
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->d(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->getProviderTag()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->e(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->b(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)D

    move-result-wide v2

    sget-object v4, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object p1, p0, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1$2;->a:Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;

    iget-object p1, p1, Lcom/mopub/mobileads/AmazonA9DTBInterstitial$1;->e:Lcom/mopub/mobileads/AmazonA9DTBInterstitial;

    invoke-static {p1}, Lcom/mopub/mobileads/AmazonA9DTBInterstitial;->f(Lcom/mopub/mobileads/AmazonA9DTBInterstitial;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method
