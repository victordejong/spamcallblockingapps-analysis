.class final Lio/bidmachine/BidMachineAd$1;
.super Lio/bidmachine/TrackingObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$1;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-direct {p0}, Lio/bidmachine/TrackingObject;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTrackingKey()Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$1;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Lio/bidmachine/models/AuctionResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lio/bidmachine/models/AuctionResult;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "-1"

    return-object v0
.end method

.method public final getTrackingUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$1;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/BidMachineAd$1;->this$0:Lio/bidmachine/BidMachineAd;

    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/bidmachine/BidMachineAd$1;->this$0:Lio/bidmachine/BidMachineAd;

    .line 72
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/models/AdObject;

    move-result-object v0

    invoke-interface {v0}, Lio/bidmachine/models/AdObject;->getParams()Lio/bidmachine/models/AdObjectParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/bidmachine/models/AdObjectParams;->getTrackUrls(Lio/bidmachine/TrackEventType;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
