.class Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;DLjava/lang/String;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

.field final synthetic val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Landroid/content/Context;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    iput-object p3, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;->getMultiAdType()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;)V

    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    sget-object v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    sget-object v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0, v1, v2, v3}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V

    return-void

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$jsonPostBidderAdUnit:Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$1;->val$nativeAdParamGetter:Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/callapp/contacts/util/ads/JSONPostBidderAdUnit;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;)V

    return-void
.end method
