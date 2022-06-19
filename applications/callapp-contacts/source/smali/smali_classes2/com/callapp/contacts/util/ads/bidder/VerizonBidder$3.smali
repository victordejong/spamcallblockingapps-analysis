.class Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/inlineplacement/InlineAdView$InlineAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLeftApplication(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    return-void
.end method

.method public onAdRefreshed(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    return-void
.end method

.method public onClicked(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/verizon/ads/inlineplacement/InlineAdView;->getHeight()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Ljava/lang/String;

    const-string v1, "verizon"

    invoke-static {v1, v0, p1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->c(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;)V

    :cond_0
    return-void
.end method

.method public onCollapsed(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/verizon/ads/inlineplacement/InlineAdView;Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 181
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-static {p2}, Lcom/mopub/mobileads/VerizonUtils;->convertErrorInfoToMoPub(Lcom/verizon/ads/ErrorInfo;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onEvent(Lcom/verizon/ads/inlineplacement/InlineAdView;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/verizon/ads/inlineplacement/InlineAdView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string p2, "adImpression"

    .line 219
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 221
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/verizon/ads/inlineplacement/InlineAdView;->getHeight()I

    move-result p1

    invoke-static {p1}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->getAdTypeAndSizeForBanner(I)Lcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;

    move-result-object v4

    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "verizon"

    invoke-static/range {v0 .. v5}, Lcom/callapp/contacts/manager/CallAppAdsAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;DLcom/mopub/common/MoPub$AD_TYPE_AND_SIZE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onExpanded(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    return-void
.end method

.method public onResized(Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 0

    return-void
.end method
