.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->loadBannerAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

.field final synthetic val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->val$adEvents:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    new-instance v1, Lcom/criteo/publisher/CriteoBannerView;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v2}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$700(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v3}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/model/AdUnit;

    move-result-object v3

    check-cast v3, Lcom/criteo/publisher/model/BannerAdUnit;

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/CriteoBannerView;-><init>(Landroid/content/Context;Lcom/criteo/publisher/model/BannerAdUnit;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/CriteoBannerView;

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;-><init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/CriteoBannerView;->setCriteoBannerAdListener(Lcom/criteo/publisher/CriteoBannerAdListener;)V

    .line 299
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/Bid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/CriteoBannerView;->loadAd(Lcom/criteo/publisher/Bid;)V

    return-void
.end method
