.class Lnet/pubnative/lite/sdk/auction/Auction$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/auction/AdSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/auction/Auction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/auction/Auction;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/auction/Auction;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFetched(Lnet/pubnative/lite/sdk/models/Ad;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 98
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/auction/Auction;->access$200(Lnet/pubnative/lite/sdk/auction/Auction;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAdSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/auction/Auction;->access$300(Lnet/pubnative/lite/sdk/auction/Auction;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/models/Ad;->getAdSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->access$410(Lnet/pubnative/lite/sdk/auction/Auction;)I

    .line 103
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->access$000(Lnet/pubnative/lite/sdk/auction/Auction;)Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    move-result-object p1

    sget-object v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->AWAITING_RESPONSES:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->access$400(Lnet/pubnative/lite/sdk/auction/Auction;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 104
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->access$100(Lnet/pubnative/lite/sdk/auction/Auction;)V

    :cond_1
    return-void
.end method

.method public onError(Lnet/pubnative/lite/sdk/auction/AuctionError;)V
    .locals 3

    .line 111
    invoke-static {}, Lnet/pubnative/lite/sdk/auction/Auction;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/auction/AuctionError;->getError()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "Error fetching from ad source: "

    invoke-static {v0, v2, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/auction/AuctionError;->getAdSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/auction/Auction;->access$600(Lnet/pubnative/lite/sdk/auction/Auction;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lnet/pubnative/lite/sdk/auction/AuctionError;->getAdSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->access$410(Lnet/pubnative/lite/sdk/auction/Auction;)I

    .line 116
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->access$000(Lnet/pubnative/lite/sdk/auction/Auction;)Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    move-result-object p1

    sget-object v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->AWAITING_RESPONSES:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->access$400(Lnet/pubnative/lite/sdk/auction/Auction;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 117
    iget-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$2;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {p1}, Lnet/pubnative/lite/sdk/auction/Auction;->access$100(Lnet/pubnative/lite/sdk/auction/Auction;)V

    :cond_1
    return-void
.end method
