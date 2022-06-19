.class Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/verizon/ads/inlineplacement/InlineAdView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/verizon/ads/inlineplacement/InlineAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/ads/inlineplacement/InlineAdView;->destroy()V

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$202(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/verizon/ads/inlineplacement/InlineAdView;)Lcom/verizon/ads/inlineplacement/InlineAdView;

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 337
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 342
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/VerizonBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_2
    return-void
.end method
