.class public final enum Lcom/google/zxing/b/a/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/b/a/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/b/a/l;

.field public static final enum FORCE_NONE:Lcom/google/zxing/b/a/l;

.field public static final enum FORCE_RECTANGLE:Lcom/google/zxing/b/a/l;

.field public static final enum FORCE_SQUARE:Lcom/google/zxing/b/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lcom/google/zxing/b/a/l;

    const-string v1, "FORCE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/b/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/b/a/l;->FORCE_NONE:Lcom/google/zxing/b/a/l;

    .line 26
    new-instance v1, Lcom/google/zxing/b/a/l;

    const-string v3, "FORCE_SQUARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/zxing/b/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/b/a/l;->FORCE_SQUARE:Lcom/google/zxing/b/a/l;

    .line 27
    new-instance v3, Lcom/google/zxing/b/a/l;

    const-string v5, "FORCE_RECTANGLE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/zxing/b/a/l;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/b/a/l;->FORCE_RECTANGLE:Lcom/google/zxing/b/a/l;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/zxing/b/a/l;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 23
    sput-object v5, Lcom/google/zxing/b/a/l;->$VALUES:[Lcom/google/zxing/b/a/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/b/a/l;
    .locals 1

    .line 23
    const-class v0, Lcom/google/zxing/b/a/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/b/a/l;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/b/a/l;
    .locals 1

    .line 23
    sget-object v0, Lcom/google/zxing/b/a/l;->$VALUES:[Lcom/google/zxing/b/a/l;

    invoke-virtual {v0}, [Lcom/google/zxing/b/a/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/b/a/l;

    return-object v0
.end method
