.class Lio/bidmachine/displays/HeaderBiddingAdObjectParams;
.super Lio/bidmachine/models/AdObjectParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;
    }
.end annotation


# instance fields
.field private final headerBiddingAd:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

.field private final mediationParams:Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/models/AdObjectParams;-><init>(Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;)V

    .line 18
    new-instance p1, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;-><init>(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Lio/bidmachine/displays/HeaderBiddingAdObjectParams$1;)V

    iput-object p1, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->mediationParams:Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;

    .line 25
    iput-object p4, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->headerBiddingAd:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-void
.end method

.method static synthetic access$100(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/displays/HeaderBiddingAdObjectParams;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;
    .locals 0

    .line 14
    iget-object p0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->headerBiddingAd:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    return-object p0
.end method

.method private getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 33
    :cond_0
    iget-object v1, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->headerBiddingAd:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v1, p1, v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getServerParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 35
    iget-object v1, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->headerBiddingAd:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    invoke-virtual {v1, p1, v0}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getClientParamsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toMediationParams()Lio/bidmachine/unified/UnifiedMediationParams;
    .locals 1

    .line 48
    iget-object v0, p0, Lio/bidmachine/displays/HeaderBiddingAdObjectParams;->mediationParams:Lio/bidmachine/displays/HeaderBiddingAdObjectParams$a;

    return-object v0
.end method
