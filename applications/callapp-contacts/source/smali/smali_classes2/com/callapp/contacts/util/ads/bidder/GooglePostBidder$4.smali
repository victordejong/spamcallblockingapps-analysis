.class Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 357
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$100(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 361
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 365
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 366
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/GooglePostBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_3
    return-void
.end method
