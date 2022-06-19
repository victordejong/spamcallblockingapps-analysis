.class Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/banner/BannerRequest$AdRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->getBid(Landroid/content/Context;Lcom/callapp/contacts/util/ads/JSONBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;Lcom/callapp/contacts/util/ads/NativeAdParamGetter;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

.field final synthetic val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lcom/callapp/contacts/util/ads/AppBidder$BidListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onRequestExpired(Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 134
    check-cast p1, Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->onRequestExpired(Lio/bidmachine/banner/BannerRequest;)V

    return-void
.end method

.method public onRequestExpired(Lio/bidmachine/banner/BannerRequest;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, p0}, Lio/bidmachine/banner/BannerRequest;->removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-void
.end method

.method public bridge synthetic onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .locals 0

    .line 134
    check-cast p1, Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->onRequestFailed(Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method public onRequestFailed(Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    invoke-static {p2}, Lcom/mopub/mobileads/BidMachineUtils;->transformToMoPubErrorCode(Lio/bidmachine/utils/BMError;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, p0}, Lio/bidmachine/banner/BannerRequest;->removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-void
.end method

.method public bridge synthetic onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V
    .locals 0

    .line 134
    check-cast p1, Lio/bidmachine/banner/BannerRequest;

    invoke-virtual {p0, p1, p2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->onRequestSuccess(Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/models/AuctionResult;)V

    return-void
.end method

.method public onRequestSuccess(Lio/bidmachine/banner/BannerRequest;Lio/bidmachine/models/AuctionResult;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, p2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/models/AuctionResult;)V

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$102(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;Lio/bidmachine/banner/BannerRequest;)Lio/bidmachine/banner/BannerRequest;

    .line 139
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-interface {p2}, Lio/bidmachine/models/AuctionResult;->getPrice()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$202(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;D)D

    .line 140
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->val$bidListener:Lcom/callapp/contacts/util/ads/AppBidder$BidListener;

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/BidMachineBidder;)D

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/callapp/contacts/util/ads/AppBidder$BidListener;->a(D)V

    .line 141
    invoke-virtual {p1, p0}, Lio/bidmachine/banner/BannerRequest;->removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-void
.end method
