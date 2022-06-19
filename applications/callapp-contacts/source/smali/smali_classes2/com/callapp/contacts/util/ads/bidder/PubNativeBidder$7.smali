.class Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->destroy()V

    .line 380
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$802(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lnet/pubnative/lite/sdk/presenter/AdPresenter;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 385
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 390
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$1302(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 395
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$7;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_3
    return-void
.end method
