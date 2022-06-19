.class Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 347
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1102(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 352
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1202(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;->access$1302(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_2
    return-void
.end method
