.class public final enum Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/openwrap/core/POBBidEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BidEventError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BID_EXPIRED:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

.field public static final enum CLIENT_SIDE_AUCTION_LOSS:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

.field public static final enum OTHER:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

.field private static final synthetic b:[Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    const-string v1, "CLIENT_SIDE_AUCTION_LOSS"

    const/4 v2, 0x0

    const-string v3, "BidEventErrorClientSideAuctionLoss"

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->CLIENT_SIDE_AUCTION_LOSS:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    new-instance v1, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    const-string v3, "BID_EXPIRED"

    const/4 v4, 0x1

    const-string v5, "BidEventErrorBidExpired"

    invoke-direct {v1, v3, v4, v5}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->BID_EXPIRED:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    new-instance v3, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    const-string v7, "BidEventErrorOther"

    invoke-direct {v3, v5, v6, v7}, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->OTHER:Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->b:[Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->b:[Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;

    return-object v0
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/openwrap/core/POBBidEvent$BidEventError;->a:Ljava/lang/String;

    return-object v0
.end method
