.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/CriteoBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/lang/String;

    const-string v2, "criteo"

    invoke-static {v2, v0, v1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onAdClick()V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1400(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/CriteoErrorCode;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 274
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$2;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/CriteoBannerView;)V
    .locals 1

    .line 241
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;)V

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
