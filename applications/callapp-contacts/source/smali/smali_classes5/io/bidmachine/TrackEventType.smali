.class public final enum Lio/bidmachine/TrackEventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/TrackEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequest:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestCancel:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

.field public static final enum AuctionRequestExpired:Lio/bidmachine/TrackEventType;

.field public static final enum Click:Lio/bidmachine/TrackEventType;

.field public static final enum Close:Lio/bidmachine/TrackEventType;

.field public static final enum Destroy:Lio/bidmachine/TrackEventType;

.field public static final enum Error:Lio/bidmachine/TrackEventType;

.field public static final enum Expired:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

.field public static final enum HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

.field public static final enum Impression:Lio/bidmachine/TrackEventType;

.field public static final enum InitLoading:Lio/bidmachine/TrackEventType;

.field public static final enum Load:Lio/bidmachine/TrackEventType;

.field public static final enum MediationLoss:Lio/bidmachine/TrackEventType;

.field public static final enum MediationWin:Lio/bidmachine/TrackEventType;

.field public static final enum Show:Lio/bidmachine/TrackEventType;

.field public static final enum TrackingError:Lio/bidmachine/TrackEventType;


# instance fields
.field private ortbActionValue:I

.field private ortbExtValue:I

.field private ortbValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 12
    new-instance v6, Lio/bidmachine/TrackEventType;

    const-string v1, "InitLoading"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v4, 0x1fa

    const/16 v5, 0x1fa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    .line 15
    new-instance v0, Lio/bidmachine/TrackEventType;

    const-string v8, "AuctionRequest"

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/16 v11, 0x1fb

    const/16 v12, 0x1fb

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 18
    new-instance v1, Lio/bidmachine/TrackEventType;

    const-string v14, "AuctionRequestCancel"

    const/4 v15, 0x2

    const/16 v16, -0x1

    const/16 v17, 0x1fc

    const/16 v18, 0x1fc

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lio/bidmachine/TrackEventType;->AuctionRequestCancel:Lio/bidmachine/TrackEventType;

    .line 21
    new-instance v2, Lio/bidmachine/TrackEventType;

    const-string v8, "AuctionRequestExpired"

    const/4 v9, 0x3

    const/16 v11, 0x1fd

    const/16 v12, 0x1fd

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v2, Lio/bidmachine/TrackEventType;->AuctionRequestExpired:Lio/bidmachine/TrackEventType;

    .line 24
    new-instance v3, Lio/bidmachine/TrackEventType;

    const-string v14, "AuctionRequestDestroy"

    const/4 v15, 0x4

    const/16 v17, 0x1fe

    const/16 v18, 0x1fe

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v3, Lio/bidmachine/TrackEventType;->AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

    .line 27
    new-instance v4, Lio/bidmachine/TrackEventType;

    const-string v8, "Load"

    const/4 v9, 0x5

    const/16 v11, 0x1f4

    const/16 v12, 0x1f4

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v4, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 30
    new-instance v5, Lio/bidmachine/TrackEventType;

    const-string v14, "Impression"

    const/4 v15, 0x6

    const/16 v17, 0x1f6

    const/16 v18, 0x1f6

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v5, Lio/bidmachine/TrackEventType;->Impression:Lio/bidmachine/TrackEventType;

    .line 33
    new-instance v13, Lio/bidmachine/TrackEventType;

    const-string v8, "Show"

    const/4 v9, 0x7

    const/4 v10, 0x1

    const/16 v11, 0x1f5

    const/16 v12, 0x1f5

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v13, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    .line 36
    new-instance v7, Lio/bidmachine/TrackEventType;

    const-string v15, "Click"

    const/16 v16, 0x8

    const/16 v17, -0x1

    const/16 v18, 0x1f7

    const/16 v19, 0x1f7

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lio/bidmachine/TrackEventType;->Click:Lio/bidmachine/TrackEventType;

    .line 39
    new-instance v8, Lio/bidmachine/TrackEventType;

    const-string v21, "Close"

    const/16 v22, 0x9

    const/16 v23, -0x1

    const/16 v24, 0x1f8

    const/16 v25, 0x1f8

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v8, Lio/bidmachine/TrackEventType;->Close:Lio/bidmachine/TrackEventType;

    .line 42
    new-instance v9, Lio/bidmachine/TrackEventType;

    const-string v15, "Expired"

    const/16 v16, 0xa

    const/16 v18, 0x1ff

    const/16 v19, 0x1ff

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v9, Lio/bidmachine/TrackEventType;->Expired:Lio/bidmachine/TrackEventType;

    .line 45
    new-instance v10, Lio/bidmachine/TrackEventType;

    const-string v21, "Error"

    const/16 v22, 0xb

    const/16 v24, 0x3e8

    const/16 v25, 0x3e8

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v10, Lio/bidmachine/TrackEventType;->Error:Lio/bidmachine/TrackEventType;

    .line 48
    new-instance v11, Lio/bidmachine/TrackEventType;

    const-string v15, "Destroy"

    const/16 v16, 0xc

    const/16 v18, 0x1f9

    const/16 v19, 0x1f9

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v11, Lio/bidmachine/TrackEventType;->Destroy:Lio/bidmachine/TrackEventType;

    .line 51
    new-instance v12, Lio/bidmachine/TrackEventType;

    const-string v21, "TrackingError"

    const/16 v22, 0xd

    const/16 v24, 0x3e9

    const/16 v25, 0x3e9

    move-object/from16 v20, v12

    invoke-direct/range {v20 .. v25}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v12, Lio/bidmachine/TrackEventType;->TrackingError:Lio/bidmachine/TrackEventType;

    .line 54
    new-instance v20, Lio/bidmachine/TrackEventType;

    const-string v15, "HeaderBiddingNetworksPrepare"

    const/16 v16, 0xe

    const/16 v18, 0x2bf

    const/16 v19, 0x2bf

    move-object/from16 v14, v20

    invoke-direct/range {v14 .. v19}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v20, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworksPrepare:Lio/bidmachine/TrackEventType;

    .line 57
    new-instance v14, Lio/bidmachine/TrackEventType;

    const-string v22, "HeaderBiddingNetworkInitialize"

    const/16 v23, 0xf

    const/16 v24, -0x1

    const/16 v25, 0x2bd

    const/16 v26, 0x2bd

    move-object/from16 v21, v14

    invoke-direct/range {v21 .. v26}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v14, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkInitialize:Lio/bidmachine/TrackEventType;

    .line 60
    new-instance v15, Lio/bidmachine/TrackEventType;

    const-string v28, "HeaderBiddingNetworkPrepare"

    const/16 v29, 0x10

    const/16 v30, -0x1

    const/16 v31, 0x2be

    const/16 v32, 0x2be

    move-object/from16 v27, v15

    invoke-direct/range {v27 .. v32}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v15, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    .line 63
    new-instance v16, Lio/bidmachine/TrackEventType;

    const-string v22, "MediationWin"

    const/16 v23, 0x11

    const/16 v25, -0x1

    const/16 v26, -0x1

    move-object/from16 v21, v16

    invoke-direct/range {v21 .. v26}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v16, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    .line 64
    new-instance v17, Lio/bidmachine/TrackEventType;

    const-string v28, "MediationLoss"

    const/16 v29, 0x12

    const/16 v31, -0x1

    const/16 v32, -0x1

    move-object/from16 v27, v17

    invoke-direct/range {v27 .. v32}, Lio/bidmachine/TrackEventType;-><init>(Ljava/lang/String;IIII)V

    sput-object v17, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    move-object/from16 v18, v15

    const/16 v15, 0x13

    new-array v15, v15, [Lio/bidmachine/TrackEventType;

    const/16 v19, 0x0

    aput-object v6, v15, v19

    const/4 v6, 0x1

    aput-object v0, v15, v6

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v13, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v8, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v20, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v18, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v17, v15, v0

    .line 10
    sput-object v15, Lio/bidmachine/TrackEventType;->$VALUES:[Lio/bidmachine/TrackEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lio/bidmachine/TrackEventType;->ortbValue:I

    .line 72
    iput p4, p0, Lio/bidmachine/TrackEventType;->ortbExtValue:I

    .line 73
    iput p5, p0, Lio/bidmachine/TrackEventType;->ortbActionValue:I

    return-void
.end method

.method public static fromNumber(I)Lio/bidmachine/TrackEventType;
    .locals 5

    .line 78
    invoke-static {}, Lio/bidmachine/TrackEventType;->values()[Lio/bidmachine/TrackEventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 79
    iget v4, v3, Lio/bidmachine/TrackEventType;->ortbValue:I

    if-eq v4, p0, :cond_1

    iget v4, v3, Lio/bidmachine/TrackEventType;->ortbExtValue:I

    if-ne v4, p0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/TrackEventType;
    .locals 1

    .line 10
    const-class v0, Lio/bidmachine/TrackEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/TrackEventType;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/TrackEventType;
    .locals 1

    .line 10
    sget-object v0, Lio/bidmachine/TrackEventType;->$VALUES:[Lio/bidmachine/TrackEventType;

    invoke-virtual {v0}, [Lio/bidmachine/TrackEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/TrackEventType;

    return-object v0
.end method


# virtual methods
.method public final getOrtbActionValue()I
    .locals 1

    .line 87
    iget v0, p0, Lio/bidmachine/TrackEventType;->ortbActionValue:I

    return v0
.end method
