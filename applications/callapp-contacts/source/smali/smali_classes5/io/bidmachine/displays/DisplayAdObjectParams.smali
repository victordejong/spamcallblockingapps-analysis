.class final Lio/bidmachine/displays/DisplayAdObjectParams;
.super Lio/bidmachine/displays/IabAdObjectParams;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/displays/IabAdObjectParams;-><init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 10
    invoke-virtual {p3}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getEventList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/displays/DisplayAdObjectParams;->prepareEvents(Ljava/util/List;)V

    return-void
.end method
