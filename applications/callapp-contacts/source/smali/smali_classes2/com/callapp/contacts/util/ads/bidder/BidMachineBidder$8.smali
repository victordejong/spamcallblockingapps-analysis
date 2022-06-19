.class Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 452
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 454
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$602(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/nativead/NativeRequest;->destroy()V

    .line 459
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/nativead/NativeRequest;)Lio/bidmachine/nativead/NativeRequest;

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/banner/BannerRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/banner/BannerRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerRequest;->destroy()V

    .line 464
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$102(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/banner/BannerRequest;)Lio/bidmachine/banner/BannerRequest;

    .line 467
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 468
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/interstitial/InterstitialRequest;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/interstitial/InterstitialRequest;->destroy()V

    .line 469
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$402(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/interstitial/InterstitialRequest;)Lio/bidmachine/interstitial/InterstitialRequest;

    .line 472
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/banner/BannerView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1400(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lio/bidmachine/banner/BannerView;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/banner/BannerView;->destroy()V

    .line 474
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1402(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/banner/BannerView;)Lio/bidmachine/banner/BannerView;

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 478
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 479
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1302(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 482
    :cond_5
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 483
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 484
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$8;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_6
    return-void
.end method
