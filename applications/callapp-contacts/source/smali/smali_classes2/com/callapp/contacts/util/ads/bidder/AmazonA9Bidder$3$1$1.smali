.class Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->onAdLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged()V
    .locals 7

    .line 283
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$900(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->getNetworkName(Lcom/amazon/device/ads/DTBAdResponse;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/amazon/device/ads/DTBAdSize;

    move-result-object v0

    .line 1046
    iget v0, v0, Lcom/amazon/device/ads/DTBAdSize;->b:I

    .line 284
    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v5

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    return-void
.end method
