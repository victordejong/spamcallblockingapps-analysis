.class public final enum Lnet/pubnative/lite/sdk/models/AdSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/models/AdSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_1024x768:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_160x600:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_250x250:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_300x50:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_300x600:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_320x100:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_320x480:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_320x50:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_480x320:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_728x90:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_768x1024:Lnet/pubnative/lite/sdk/models/AdSize;

.field public static final enum SIZE_INTERSTITIAL:Lnet/pubnative/lite/sdk/models/AdSize;


# instance fields
.field private final adLayoutSize:Ljava/lang/String;

.field private final height:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 6
    new-instance v6, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v1, "SIZE_320x50"

    const/4 v2, 0x0

    const/16 v3, 0x140

    const/16 v4, 0x32

    const-string v5, "s"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x50:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 7
    new-instance v0, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v8, "SIZE_300x250"

    const/4 v9, 0x1

    const/16 v10, 0x12c

    const/16 v11, 0xfa

    const-string v12, "m"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x250:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 8
    new-instance v1, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v14, "SIZE_300x50"

    const/4 v15, 0x2

    const/16 v16, 0x12c

    const/16 v17, 0x32

    const-string v18, "s"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x50:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 9
    new-instance v2, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v8, "SIZE_320x480"

    const/4 v9, 0x3

    const/16 v10, 0x140

    const/16 v11, 0x1e0

    const-string v12, "l"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x480:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 10
    new-instance v3, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v14, "SIZE_1024x768"

    const/4 v15, 0x4

    const/16 v16, 0x400

    const/16 v17, 0x300

    const-string v18, "l"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_1024x768:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 11
    new-instance v4, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v8, "SIZE_768x1024"

    const/4 v9, 0x5

    const/16 v10, 0x300

    const/16 v11, 0x400

    const-string v12, "l"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_768x1024:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 12
    new-instance v5, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v14, "SIZE_728x90"

    const/4 v15, 0x6

    const/16 v16, 0x2d8

    const/16 v17, 0x5a

    const-string v18, "s"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v5, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_728x90:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 13
    new-instance v13, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v8, "SIZE_160x600"

    const/4 v9, 0x7

    const/16 v10, 0xa0

    const/16 v11, 0x258

    const-string v12, "m"

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v13, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_160x600:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 14
    new-instance v7, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v15, "SIZE_250x250"

    const/16 v16, 0x8

    const/16 v17, 0xfa

    const/16 v18, 0xfa

    const-string v19, "m"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_250x250:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 15
    new-instance v8, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v21, "SIZE_300x600"

    const/16 v22, 0x9

    const/16 v23, 0x12c

    const/16 v24, 0x258

    const-string v25, "l"

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v25}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v8, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_300x600:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 16
    new-instance v9, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v15, "SIZE_320x100"

    const/16 v16, 0xa

    const/16 v17, 0x140

    const/16 v18, 0x64

    const-string v19, "s"

    move-object v14, v9

    invoke-direct/range {v14 .. v19}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v9, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_320x100:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 17
    new-instance v10, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v21, "SIZE_480x320"

    const/16 v22, 0xb

    const/16 v23, 0x1e0

    const/16 v24, 0x140

    const-string v25, "l"

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v25}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v10, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_480x320:Lnet/pubnative/lite/sdk/models/AdSize;

    .line 18
    new-instance v11, Lnet/pubnative/lite/sdk/models/AdSize;

    const-string v15, "SIZE_INTERSTITIAL"

    const/16 v16, 0xc

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "l"

    move-object v14, v11

    invoke-direct/range {v14 .. v19}, Lnet/pubnative/lite/sdk/models/AdSize;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v11, Lnet/pubnative/lite/sdk/models/AdSize;->SIZE_INTERSTITIAL:Lnet/pubnative/lite/sdk/models/AdSize;

    const/16 v12, 0xd

    new-array v12, v12, [Lnet/pubnative/lite/sdk/models/AdSize;

    const/4 v14, 0x0

    aput-object v6, v12, v14

    const/4 v6, 0x1

    aput-object v0, v12, v6

    const/4 v0, 0x2

    aput-object v1, v12, v0

    const/4 v0, 0x3

    aput-object v2, v12, v0

    const/4 v0, 0x4

    aput-object v3, v12, v0

    const/4 v0, 0x5

    aput-object v4, v12, v0

    const/4 v0, 0x6

    aput-object v5, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v7, v12, v0

    const/16 v0, 0x9

    aput-object v8, v12, v0

    const/16 v0, 0xa

    aput-object v9, v12, v0

    const/16 v0, 0xb

    aput-object v10, v12, v0

    const/16 v0, 0xc

    aput-object v11, v12, v0

    .line 5
    sput-object v12, Lnet/pubnative/lite/sdk/models/AdSize;->$VALUES:[Lnet/pubnative/lite/sdk/models/AdSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lnet/pubnative/lite/sdk/models/AdSize;->width:I

    .line 26
    iput p4, p0, Lnet/pubnative/lite/sdk/models/AdSize;->height:I

    .line 27
    iput-object p5, p0, Lnet/pubnative/lite/sdk/models/AdSize;->adLayoutSize:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/AdSize;
    .locals 1

    .line 5
    const-class v0, Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/models/AdSize;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/models/AdSize;
    .locals 1

    .line 5
    sget-object v0, Lnet/pubnative/lite/sdk/models/AdSize;->$VALUES:[Lnet/pubnative/lite/sdk/models/AdSize;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/models/AdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/models/AdSize;

    return-object v0
.end method


# virtual methods
.method public final getAdLayoutSize()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/AdSize;->adLayoutSize:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 35
    iget v0, p0, Lnet/pubnative/lite/sdk/models/AdSize;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 31
    iget v0, p0, Lnet/pubnative/lite/sdk/models/AdSize;->width:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 44
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/AdSize;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lnet/pubnative/lite/sdk/models/AdSize;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "(%d x %d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
