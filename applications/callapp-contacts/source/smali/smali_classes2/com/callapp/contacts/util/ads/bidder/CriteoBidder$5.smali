.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 435
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1102(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/nativeads/NativeAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 440
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$602(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/nativeads/NativeAd;)Lcom/mopub/nativeads/NativeAd;

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1600(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 445
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1602(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/CriteoBannerView;->destroy()V

    .line 450
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/CriteoBannerView;

    .line 453
    :cond_3
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1300(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :catch_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1302(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    :cond_4
    return-void
.end method
