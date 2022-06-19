.class Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$200(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$202(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 238
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$102(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$400(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 243
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;->access$402(Lcom/callapp/contacts/util/ads/bidder/MoPubBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_2
    return-void
.end method
