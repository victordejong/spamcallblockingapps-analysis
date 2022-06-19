.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;->this$3:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;->this$3:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;->this$3:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;->this$3:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/Bid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/Bid;->getPrice()D

    move-result-wide v3

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;->this$3:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v5

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;->this$3:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "criteo"

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method
