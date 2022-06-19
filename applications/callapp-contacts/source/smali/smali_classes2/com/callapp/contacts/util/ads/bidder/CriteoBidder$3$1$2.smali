.class Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$2;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$2;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$2;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1000(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;)Lcom/criteo/publisher/CriteoBannerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/CriteoBannerView;->destroy()V

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1$2;->this$2:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3$1;->this$1:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;

    iget-object v0, v0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$3;->this$0:Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;->access$1002(Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/CriteoBannerView;

    :cond_0
    return-void
.end method
