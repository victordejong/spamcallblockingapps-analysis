.class Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->onAdLoaded(Lnet/pubnative/lite/sdk/presenter/AdPresenter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;Landroid/view/View;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 219
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 221
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 222
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->val$moPubAdSize:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v5

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "pubnative"

    invoke-static/range {v1 .. v6}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    :cond_0
    return-void
.end method
