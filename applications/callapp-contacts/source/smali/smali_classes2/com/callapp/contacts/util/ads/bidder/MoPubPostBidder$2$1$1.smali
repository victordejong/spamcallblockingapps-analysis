.class Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1;->onNativeAdLoaded(Lcom/mopub/nativeads/NativeAd;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1;

.field final synthetic val$finalMoPubView:Lcom/mopub/mobileads/MoPubView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1;Lcom/mopub/mobileads/MoPubView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1$1;->this$2:Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1$1;->val$finalMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/MoPubPostBidder$2$1$1;->val$finalMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    return-void
.end method
