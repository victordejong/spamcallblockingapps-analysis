.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->onAdReceived(Lcom/criteo/publisher/CriteoBannerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 244
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$500(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/CriteoBannerView;->destroy()V

    .line 247
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/CriteoBannerView;

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Landroid/content/Context;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1102(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 251
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/util/ads/JSONBidder;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    new-instance v7, Lcom/mopub/mobileads/InlineVisibilityTracker;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getRootView()Landroid/view/View;

    move-result-object v3

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mopub/mobileads/InlineVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    invoke-static {v0, v7}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1302(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/InlineVisibilityTracker;->setInlineVisibilityTrackerListener(Lcom/mopub/mobileads/InlineVisibilityTracker$InlineVisibilityTrackerListener;)V

    .line 264
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v2, v2, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/callapp/contacts/util/ads/JSONBidder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/util/ads/JSONBidder;->isCallappDisableRefresh()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    :cond_1
    return-void
.end method
