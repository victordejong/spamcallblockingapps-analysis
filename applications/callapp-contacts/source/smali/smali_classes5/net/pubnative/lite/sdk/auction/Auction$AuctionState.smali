.class final enum Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/auction/Auction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AuctionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

.field public static final enum AWAITING_RESPONSES:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

.field public static final enum DONE:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

.field public static final enum PROCESSING_RESULTS:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

.field public static final enum READY:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->READY:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    new-instance v1, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    const-string v3, "AWAITING_RESPONSES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->AWAITING_RESPONSES:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    new-instance v3, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    const-string v5, "PROCESSING_RESULTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->PROCESSING_RESULTS:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    new-instance v5, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    const-string v7, "DONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->DONE:Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 32
    sput-object v7, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->$VALUES:[Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;
    .locals 1

    .line 32
    const-class v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;
    .locals 1

    .line 32
    sget-object v0, Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->$VALUES:[Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/auction/Auction$AuctionState;

    return-object v0
.end method
