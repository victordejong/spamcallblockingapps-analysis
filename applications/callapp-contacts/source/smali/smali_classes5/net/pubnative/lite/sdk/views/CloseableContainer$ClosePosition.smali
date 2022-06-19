.class public final enum Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/views/CloseableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClosePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field public static final enum BOTTOM_CENTER:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field public static final enum BOTTOM_LEFT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field public static final enum BOTTOM_RIGHT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field public static final enum CENTER:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field public static final enum RANDOM:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field public static final enum TOP_CENTER:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field public static final enum TOP_LEFT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

.field public static final enum TOP_RIGHT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;


# instance fields
.field private final mGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 30
    new-instance v0, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    const v3, 0x800033

    invoke-direct {v0, v1, v2, v3}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->TOP_LEFT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    .line 31
    new-instance v1, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const-string v3, "TOP_CENTER"

    const/4 v4, 0x1

    const/16 v5, 0x31

    invoke-direct {v1, v3, v4, v5}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->TOP_CENTER:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    .line 32
    new-instance v3, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const-string v5, "TOP_RIGHT"

    const/4 v6, 0x2

    const v7, 0x800035

    invoke-direct {v3, v5, v6, v7}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->TOP_RIGHT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    .line 33
    new-instance v5, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const-string v7, "CENTER"

    const/4 v8, 0x3

    const/16 v9, 0x11

    invoke-direct {v5, v7, v8, v9}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->CENTER:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    .line 34
    new-instance v7, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const-string v9, "BOTTOM_LEFT"

    const/4 v10, 0x4

    const v11, 0x800053

    invoke-direct {v7, v9, v10, v11}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->BOTTOM_LEFT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    .line 35
    new-instance v9, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const-string v11, "BOTTOM_CENTER"

    const/4 v12, 0x5

    const/16 v13, 0x51

    invoke-direct {v9, v11, v12, v13}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->BOTTOM_CENTER:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    .line 36
    new-instance v11, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const-string v13, "BOTTOM_RIGHT"

    const/4 v14, 0x6

    const v15, 0x800055

    invoke-direct {v11, v13, v14, v15}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->BOTTOM_RIGHT:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    .line 37
    new-instance v13, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const-string v15, "RANDOM"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v2}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->RANDOM:Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    const/16 v15, 0x8

    new-array v15, v15, [Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 29
    sput-object v15, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->$VALUES:[Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->mGravity:I

    return-void
.end method

.method public static getRandomPosition()Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;
    .locals 3

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 51
    invoke-static {}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->values()[Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    move-result-object v1

    invoke-static {}, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->values()[Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    aget-object v0, v1, v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;
    .locals 1

    .line 29
    const-class v0, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    return-object p0
.end method

.method public static values()[Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;
    .locals 1

    .line 29
    sget-object v0, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->$VALUES:[Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    invoke-virtual {v0}, [Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;

    return-object v0
.end method


# virtual methods
.method final getGravity()I
    .locals 1

    .line 46
    iget v0, p0, Lnet/pubnative/lite/sdk/views/CloseableContainer$ClosePosition;->mGravity:I

    return v0
.end method
