.class Lnet/pubnative/lite/sdk/auction/Auction$1;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/auction/Auction;-><init>(Landroid/content/Context;Ljava/util/List;JLnet/pubnative/lite/sdk/analytics/ReportingController;Lnet/pubnative/lite/sdk/auction/Auction$Listener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/auction/Auction;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/auction/Auction;JJ)V
    .locals 0

    .line 60
    iput-object p1, p0, Lnet/pubnative/lite/sdk/auction/Auction$1;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 68
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction$1;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/auction/Auction;->access$000(Lnet/pubnative/lite/sdk/auction/Auction;)Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    move-result-object v0

    sget-object v1, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->AWAITING_RESPONSES:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lnet/pubnative/lite/sdk/auction/Auction$1;->this$0:Lnet/pubnative/lite/sdk/auction/Auction;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/auction/Auction;->access$100(Lnet/pubnative/lite/sdk/auction/Auction;)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
