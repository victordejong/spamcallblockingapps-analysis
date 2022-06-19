.class Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-interface {v0, p1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V
    .locals 9

    .line 389
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {p1}, Lcom/mopub/nativeads/BaseNativeAd;->destroy()V

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object v0

    .line 393
    new-instance v7, Lcom/mopub/nativeads/BidMachineNativeRenderer;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/NativeAdParamGetter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/callapp/contacts/util/ads/NativeAdParamGetter;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object v1

    invoke-direct {v7, v1, v0}, Lcom/mopub/nativeads/BidMachineNativeRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;Lcom/callapp/contacts/util/ads/AdSettings;)V

    .line 395
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    new-instance v8, Lcom/mopub/nativeads/NativeAd;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    move-object v1, v8

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/mopub/nativeads/NativeAd;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/mopub/nativeads/BaseNativeAd;Lcom/mopub/nativeads/MoPubAdRenderer;)V

    invoke-static {v0, v8}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1302(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 396
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object p1, p1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V

    return-void
.end method
