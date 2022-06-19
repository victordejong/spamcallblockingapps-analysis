.class Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 401
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$602(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/ads/AdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-static {v0}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 406
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->destroy()V

    .line 407
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$802(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/facebook/ads/AdView;)Lcom/facebook/ads/AdView;

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 412
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$402(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 417
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$6;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$1102(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_3
    return-void
.end method
