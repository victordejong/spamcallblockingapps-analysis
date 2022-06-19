.class public final enum Lcom/google/zxing/e/a/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/e/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/e/a/a;

.field private static final FOR_BITS:[Lcom/google/zxing/e/a/a;

.field public static final enum H:Lcom/google/zxing/e/a/a;

.field public static final enum L:Lcom/google/zxing/e/a/a;

.field public static final enum M:Lcom/google/zxing/e/a/a;

.field public static final enum Q:Lcom/google/zxing/e/a/a;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 28
    new-instance v0, Lcom/google/zxing/e/a/a;

    const-string v1, "L"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/zxing/e/a/a;->L:Lcom/google/zxing/e/a/a;

    .line 30
    new-instance v1, Lcom/google/zxing/e/a/a;

    const-string v4, "M"

    invoke-direct {v1, v4, v3, v2}, Lcom/google/zxing/e/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/zxing/e/a/a;->M:Lcom/google/zxing/e/a/a;

    .line 32
    new-instance v4, Lcom/google/zxing/e/a/a;

    const-string v5, "Q"

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/e/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/zxing/e/a/a;->Q:Lcom/google/zxing/e/a/a;

    .line 34
    new-instance v5, Lcom/google/zxing/e/a/a;

    const-string v8, "H"

    invoke-direct {v5, v8, v7, v6}, Lcom/google/zxing/e/a/a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/zxing/e/a/a;->H:Lcom/google/zxing/e/a/a;

    const/4 v8, 0x4

    new-array v9, v8, [Lcom/google/zxing/e/a/a;

    aput-object v0, v9, v2

    aput-object v1, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v7

    .line 25
    sput-object v9, Lcom/google/zxing/e/a/a;->$VALUES:[Lcom/google/zxing/e/a/a;

    new-array v8, v8, [Lcom/google/zxing/e/a/a;

    aput-object v1, v8, v2

    aput-object v0, v8, v3

    aput-object v5, v8, v6

    aput-object v4, v8, v7

    .line 36
    sput-object v8, Lcom/google/zxing/e/a/a;->FOR_BITS:[Lcom/google/zxing/e/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/google/zxing/e/a/a;->bits:I

    return-void
.end method

.method public static forBits(I)Lcom/google/zxing/e/a/a;
    .locals 2

    if-ltz p0, :cond_0

    .line 53
    sget-object v0, Lcom/google/zxing/e/a/a;->FOR_BITS:[Lcom/google/zxing/e/a/a;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 56
    aget-object p0, v0, p0

    return-object p0

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/e/a/a;
    .locals 1

    .line 25
    const-class v0, Lcom/google/zxing/e/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/e/a/a;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/e/a/a;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/zxing/e/a/a;->$VALUES:[Lcom/google/zxing/e/a/a;

    invoke-virtual {v0}, [Lcom/google/zxing/e/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/e/a/a;

    return-object v0
.end method


# virtual methods
.method public final getBits()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/zxing/e/a/a;->bits:I

    return v0
.end method
