.class Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1100(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/InlineVisibilityTracker;->destroy()V

    .line 421
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1102(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/InlineVisibilityTracker;)Lcom/mopub/mobileads/InlineVisibilityTracker;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->destroy()V

    .line 426
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$802(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;)Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$300(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 431
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$302(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/MoPubView;)Lcom/mopub/mobileads/MoPubView;

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1200(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;)Lcom/mopub/mobileads/MoPubInterstitial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->destroy()V

    .line 436
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder$5;->this$0:Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;->access$1202(Lcom/callapp/contacts/util/ads/bidder/AmazonA9Bidder;Lcom/mopub/mobileads/MoPubInterstitial;)Lcom/mopub/mobileads/MoPubInterstitial;

    :cond_3
    return-void
.end method
