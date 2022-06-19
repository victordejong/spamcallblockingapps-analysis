.class Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$2;
.super Lcom/callapp/contacts/manager/task/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->loadAd(Lcom/callapp/contacts/util/ads/AdUtils$AdEvents;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-direct {p0}, Lcom/callapp/contacts/manager/task/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder$2;->this$0:Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;

    invoke-static {v0}, Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;->access$000(Lcom/callapp/contacts/util/ads/bidder/FacebookBidder;)Lcom/facebook/biddingkit/c/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/biddingkit/c/b;->notifyWin()V

    return-void
.end method
