.class final Lcom/mopub/mobileads/CriteoBiddingInterstital$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/CriteoInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/CriteoBiddingInterstital;->load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:Lcom/mopub/mobileads/CriteoBiddingInterstital;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/CriteoBiddingInterstital;D)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iput-wide p2, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->a:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object v0, v0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object v0, v0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdClicked()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CriteoBiddingInterstital;->getProviderTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    invoke-static {v1}, Lcom/mopub/mobileads/CriteoBiddingInterstital;->a(Lcom/mopub/mobileads/CriteoBiddingInterstital;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v3, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    invoke-static {v3}, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b(Lcom/mopub/mobileads/CriteoBiddingInterstital;)Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    return-void
.end method

.method public final onAdClosed()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object v0, v0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object v0, v0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method public final onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object p1, p1, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object p1, p1, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public final onAdOpened()V
    .locals 7

    .line 106
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object v0, v0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object v0, v0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdShown()V

    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object v0, v0, Lcom/mopub/mobileads/CriteoBiddingInterstital;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdImpression()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CriteoBiddingInterstital;->getProviderTag()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    invoke-static {v0}, Lcom/mopub/mobileads/CriteoBiddingInterstital;->a(Lcom/mopub/mobileads/CriteoBiddingInterstital;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->a:D

    sget-object v5, Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;->INTERSTITIAL:Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    iget-object v0, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    invoke-static {v0}, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b(Lcom/mopub/mobileads/CriteoBiddingInterstital;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdReceived(Lcom/criteo/publisher/CriteoInterstitial;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object p1, p1, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/mopub/mobileads/CriteoBiddingInterstital$1;->b:Lcom/mopub/mobileads/CriteoBiddingInterstital;

    iget-object p1, p1, Lcom/mopub/mobileads/CriteoBiddingInterstital;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    :cond_0
    return-void
.end method
