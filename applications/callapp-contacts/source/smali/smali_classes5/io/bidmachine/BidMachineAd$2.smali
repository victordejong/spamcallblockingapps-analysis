.class final Lio/bidmachine/BidMachineAd$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/AdRequest$AdRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/AdRequest$AdRequestListener<",
        "TAdRequestType;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRequestExpired(Lio/bidmachine/AdRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v0, :cond_0

    .line 322
    iget-object p1, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object p1, p1, Lio/bidmachine/BidMachineAd;->processCallback:Lio/bidmachine/AdProcessCallback;

    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processExpired()V

    :cond_0
    return-void
.end method

.method public final onRequestFailed(Lio/bidmachine/AdRequest;Lio/bidmachine/utils/BMError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lio/bidmachine/utils/BMError;",
            ")V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, v0, :cond_0

    .line 315
    iget-object p1, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {p1, p2}, Lio/bidmachine/BidMachineAd;->access$200(Lio/bidmachine/BidMachineAd;Lio/bidmachine/utils/BMError;)V

    :cond_0
    return-void
.end method

.method public final onRequestSuccess(Lio/bidmachine/AdRequest;Lio/bidmachine/models/AuctionResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;",
            "Lio/bidmachine/models/AuctionResult;",
            ")V"
        }
    .end annotation

    .line 303
    iget-object p2, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object p2, p2, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    if-ne p1, p2, :cond_0

    .line 304
    iget-object p2, p0, Lio/bidmachine/BidMachineAd$2;->this$0:Lio/bidmachine/BidMachineAd;

    iget-object v0, p1, Lio/bidmachine/AdRequest;->seatBidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    iget-object v1, p1, Lio/bidmachine/AdRequest;->bidResult:Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    iget-object v2, p1, Lio/bidmachine/AdRequest;->adResult:Lcom/explorestack/protobuf/adcom/Ad;

    invoke-static {p2, p1, v0, v1, v2}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdRequest;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V

    :cond_0
    return-void
.end method
