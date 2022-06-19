.class Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->loadBannerAd(Lnet/pubnative/lite/sdk/presenter/PresenterFactory;Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;Lcom/mopub/mobileads/MoPubView$MoPubAdSize;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder$4;->this$0:Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;->access$800(Lcom/callapp/contacts/util/ads/bidder/PubNativeBidder;)Lnet/pubnative/lite/sdk/presenter/AdPresenter;

    move-result-object v0

    invoke-interface {v0}, Lnet/pubnative/lite/sdk/presenter/AdPresenter;->load()V

    return-void
.end method
