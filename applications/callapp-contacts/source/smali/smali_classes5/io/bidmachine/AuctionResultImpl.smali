.class final Lio/bidmachine/AuctionResultImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/models/AuctionResult;


# instance fields
.field private final adDomains:[Ljava/lang/String;

.field private final cid:Ljava/lang/String;

.field private final creativeFormat:Lio/bidmachine/CreativeFormat;

.field private final creativeId:Ljava/lang/String;

.field private final customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deal:Ljava/lang/String;

.field private final demandSource:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final networkKey:Ljava/lang/String;

.field private final networkParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final price:D

.field private final seat:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkConfig;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AuctionResultImpl;->id:Ljava/lang/String;

    .line 52
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/AuctionResultImpl;->demandSource:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getSeat()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->seat:Ljava/lang/String;

    .line 54
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getPrice()D

    move-result-wide v0

    iput-wide v0, p0, Lio/bidmachine/AuctionResultImpl;->price:D

    .line 55
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getDeal()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->deal:Ljava/lang/String;

    .line 56
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->creativeId:Ljava/lang/String;

    .line 57
    invoke-virtual {p3}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getCid()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->cid:Ljava/lang/String;

    .line 58
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainCount()I

    move-result p2

    if-lez p2, :cond_0

    .line 59
    invoke-virtual {p4}, Lcom/explorestack/protobuf/adcom/Ad;->getAdomainList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Lcom/explorestack/protobuf/ProtocolStringList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->adDomains:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 61
    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->adDomains:[Ljava/lang/String;

    .line 63
    :goto_0
    invoke-direct {p0, p4}, Lio/bidmachine/AuctionResultImpl;->createCustomParams(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->customParams:Ljava/util/Map;

    .line 64
    invoke-virtual {p5}, Lio/bidmachine/NetworkConfig;->getKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/AuctionResultImpl;->networkKey:Ljava/lang/String;

    .line 65
    invoke-virtual {p1, p4}, Lio/bidmachine/AdsType;->obtainHeaderBiddingAd(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/AuctionResultImpl;->createClientParams(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AuctionResultImpl;->networkParams:Ljava/util/Map;

    .line 66
    invoke-static {p4}, Lio/bidmachine/AuctionResultImpl;->identifyCreativeFormat(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/CreativeFormat;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/AuctionResultImpl;->creativeFormat:Lio/bidmachine/CreativeFormat;

    return-void
.end method

.method private createCustomParams(Lcom/explorestack/protobuf/adcom/Ad;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/adcom/Ad;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Any;

    .line 152
    const-class v2, Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :try_start_0
    const-class v2, Lio/bidmachine/protobuf/AdExtension;

    invoke-virtual {v1, v2}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    move-result-object v1

    check-cast v1, Lio/bidmachine/protobuf/AdExtension;

    .line 155
    invoke-virtual {v1}, Lio/bidmachine/protobuf/AdExtension;->getCustomParamsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static identifyCreativeFormat(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/CreativeFormat;
    .locals 1

    .line 179
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getDisplay()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 184
    sget-object p0, Lio/bidmachine/CreativeFormat;->Native:Lio/bidmachine/CreativeFormat;

    return-object p0

    .line 182
    :cond_1
    :goto_0
    sget-object p0, Lio/bidmachine/CreativeFormat;->Banner:Lio/bidmachine/CreativeFormat;

    return-object p0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->hasVideo()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 187
    sget-object p0, Lio/bidmachine/CreativeFormat;->Video:Lio/bidmachine/CreativeFormat;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method final createClientParams(Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingAd;->getClientParamsMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public final getAdDomains()[Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->adDomains:[Ljava/lang/String;

    return-object v0
.end method

.method public final getCid()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreativeFormat()Lio/bidmachine/CreativeFormat;
    .locals 1

    .line 131
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->creativeFormat:Lio/bidmachine/CreativeFormat;

    return-object v0
.end method

.method public final getCreativeId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->customParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getDeal()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->deal:Ljava/lang/String;

    return-object v0
.end method

.method public final getDemandSource()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->demandSource:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkKey()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->networkKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getNetworkParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->networkParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getPrice()D
    .locals 2

    .line 83
    iget-wide v0, p0, Lio/bidmachine/AuctionResultImpl;->price:D

    return-wide v0
.end method

.method public final getSeat()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lio/bidmachine/AuctionResultImpl;->seat:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AuctionResultImpl;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", demandSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AuctionResultImpl;->demandSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lio/bidmachine/AuctionResultImpl;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", creativeId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AuctionResultImpl;->creativeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/AuctionResultImpl;->cid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
