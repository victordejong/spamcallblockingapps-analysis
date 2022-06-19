.class Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

.field final synthetic b:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;->b:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;

    iput-object p2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/high16 v0, 0x41000000    # 8.0f

    .line 75
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v0

    float-to-int v0, v0

    .line 90
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 91
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;->b:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1;->a:Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader;->h:Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;

    iget-object v1, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-object v1, v1, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->moPubView:Lcom/mopub/mobileads/MoPubView;

    iget-object v2, p0, Lcom/callapp/contacts/util/ads/loaders/MultiSizeBiddingAdLoader$1$1;->a:Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;

    iget-boolean v2, v2, Lcom/callapp/contacts/util/ads/bidder/AppBidderResult;->disableRefresh:Z

    invoke-interface {v0, v1, v2}, Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;->onBannerAdLoaded(Lcom/mopub/mobileads/MoPubView;Z)V

    return-void
.end method
