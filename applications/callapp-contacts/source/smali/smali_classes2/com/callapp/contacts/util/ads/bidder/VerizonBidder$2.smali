.class Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/verizon/ads/inlineplacement/InlineAdFactory$InlineAdFactoryListener;


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

    .line 160
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/ErrorInfo;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-static {p2}, Lcom/mopub/mobileads/VerizonUtils;->convertErrorInfoToMoPub(Lcom/verizon/ads/ErrorInfo;)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdFailed(Lcom/mopub/mobileads/MoPubView;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public onLoaded(Lcom/verizon/ads/inlineplacement/InlineAdFactory;Lcom/verizon/ads/inlineplacement/InlineAdView;)V
    .locals 2

    .line 163
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/verizon/ads/inlineplacement/InlineAdView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$202(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/inlineplacement/InlineAdView;

    .line 165
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 166
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 167
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object p1

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {p2}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object p2

    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    return-void
.end method
