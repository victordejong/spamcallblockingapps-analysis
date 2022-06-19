.class public final enum Lcom/facebook/biddingkit/c/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/biddingkit/c/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/biddingkit/c/d;

.field public static final enum BANNER_320_50:Lcom/facebook/biddingkit/c/d;

.field public static final enum BANNER_HEIGHT_250:Lcom/facebook/biddingkit/c/d;

.field public static final enum BANNER_HEIGHT_50:Lcom/facebook/biddingkit/c/d;

.field public static final enum BANNER_HEIGHT_90:Lcom/facebook/biddingkit/c/d;

.field public static final enum INSTREAM_VIDEO:Lcom/facebook/biddingkit/c/d;

.field public static final enum INTERSTITIAL:Lcom/facebook/biddingkit/c/d;

.field public static final enum NATIVE:Lcom/facebook/biddingkit/c/d;

.field public static final enum NATIVE_BANNER:Lcom/facebook/biddingkit/c/d;

.field public static final enum REWARDED_VIDEO:Lcom/facebook/biddingkit/c/d;


# instance fields
.field private final mFormatLabel:Ljava/lang/String;

.field private final mHeight:I

.field private final mInstl:I

.field private final mLinearity:I

.field private final mVideoType:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 27
    new-instance v9, Lcom/facebook/biddingkit/c/d;

    const-string v1, "BANNER_320_50"

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x32

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "banner"

    const-string v8, ""

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/facebook/biddingkit/c/d;->BANNER_320_50:Lcom/facebook/biddingkit/c/d;

    .line 28
    new-instance v0, Lcom/facebook/biddingkit/c/d;

    const-string v11, "BANNER_HEIGHT_50"

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/16 v14, 0x32

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "banner"

    const-string v18, ""

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/biddingkit/c/d;->BANNER_HEIGHT_50:Lcom/facebook/biddingkit/c/d;

    .line 29
    new-instance v1, Lcom/facebook/biddingkit/c/d;

    const-string v20, "BANNER_HEIGHT_90"

    const/16 v21, 0x2

    const/16 v22, -0x1

    const/16 v23, 0x5a

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "banner"

    const-string v27, ""

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v27}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/biddingkit/c/d;->BANNER_HEIGHT_90:Lcom/facebook/biddingkit/c/d;

    .line 30
    new-instance v2, Lcom/facebook/biddingkit/c/d;

    const-string v11, "BANNER_HEIGHT_250"

    const/4 v12, 0x3

    const/16 v14, 0xfa

    const-string v17, "banner"

    const-string v18, ""

    move-object v10, v2

    invoke-direct/range {v10 .. v18}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/facebook/biddingkit/c/d;->BANNER_HEIGHT_250:Lcom/facebook/biddingkit/c/d;

    .line 31
    new-instance v3, Lcom/facebook/biddingkit/c/d;

    const-string v20, "INTERSTITIAL"

    const/16 v21, 0x4

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const-string v26, "banner"

    const-string v27, ""

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v27}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/facebook/biddingkit/c/d;->INTERSTITIAL:Lcom/facebook/biddingkit/c/d;

    .line 32
    new-instance v4, Lcom/facebook/biddingkit/c/d;

    const-string v11, "INSTREAM_VIDEO"

    const/4 v12, 0x5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x1

    const-string v17, "video"

    const-string v18, ""

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/facebook/biddingkit/c/d;->INSTREAM_VIDEO:Lcom/facebook/biddingkit/c/d;

    .line 33
    new-instance v5, Lcom/facebook/biddingkit/c/d;

    const-string v20, "REWARDED_VIDEO"

    const/16 v21, 0x6

    const/16 v24, 0x0

    const/16 v25, 0x2

    const-string v26, "video"

    const-string v27, "rewarded"

    move-object/from16 v19, v5

    invoke-direct/range {v19 .. v27}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/facebook/biddingkit/c/d;->REWARDED_VIDEO:Lcom/facebook/biddingkit/c/d;

    .line 34
    new-instance v6, Lcom/facebook/biddingkit/c/d;

    const-string v11, "NATIVE"

    const/4 v12, 0x7

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v16, 0x0

    const-string v17, "native"

    const-string v18, ""

    move-object v10, v6

    invoke-direct/range {v10 .. v18}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/facebook/biddingkit/c/d;->NATIVE:Lcom/facebook/biddingkit/c/d;

    .line 35
    new-instance v7, Lcom/facebook/biddingkit/c/d;

    const-string v20, "NATIVE_BANNER"

    const/16 v21, 0x8

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v25, 0x0

    const-string v26, "native"

    const-string v27, ""

    move-object/from16 v19, v7

    invoke-direct/range {v19 .. v27}, Lcom/facebook/biddingkit/c/d;-><init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/facebook/biddingkit/c/d;->NATIVE_BANNER:Lcom/facebook/biddingkit/c/d;

    const/16 v8, 0x9

    new-array v8, v8, [Lcom/facebook/biddingkit/c/d;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v6, v8, v0

    const/16 v0, 0x8

    aput-object v7, v8, v0

    .line 23
    sput-object v8, Lcom/facebook/biddingkit/c/d;->$VALUES:[Lcom/facebook/biddingkit/c/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/facebook/biddingkit/c/d;->mWidth:I

    .line 45
    iput p4, p0, Lcom/facebook/biddingkit/c/d;->mHeight:I

    .line 46
    iput p5, p0, Lcom/facebook/biddingkit/c/d;->mInstl:I

    .line 47
    iput p6, p0, Lcom/facebook/biddingkit/c/d;->mLinearity:I

    .line 48
    iput-object p7, p0, Lcom/facebook/biddingkit/c/d;->mFormatLabel:Ljava/lang/String;

    .line 49
    iput-object p8, p0, Lcom/facebook/biddingkit/c/d;->mVideoType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/biddingkit/c/d;
    .locals 1

    .line 23
    const-class v0, Lcom/facebook/biddingkit/c/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/biddingkit/c/d;

    return-object p0
.end method

.method public static values()[Lcom/facebook/biddingkit/c/d;
    .locals 1

    .line 23
    sget-object v0, Lcom/facebook/biddingkit/c/d;->$VALUES:[Lcom/facebook/biddingkit/c/d;

    invoke-virtual {v0}, [Lcom/facebook/biddingkit/c/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/biddingkit/c/d;

    return-object v0
.end method


# virtual methods
.method public final getFormatLabel()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/facebook/biddingkit/c/d;->mFormatLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/facebook/biddingkit/c/d;->mHeight:I

    return v0
.end method

.method public final getInstl()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/facebook/biddingkit/c/d;->mInstl:I

    return v0
.end method

.method public final getLinearity()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/facebook/biddingkit/c/d;->mLinearity:I

    return v0
.end method

.method public final getVideoType()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/facebook/biddingkit/c/d;->mVideoType:Ljava/lang/String;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/facebook/biddingkit/c/d;->mWidth:I

    return v0
.end method
