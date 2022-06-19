.class final enum Lcom/google/zxing/c/d$a;
.super Ljava/lang/Enum;
.source "Code128Writer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/zxing/c/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/zxing/c/d$a;

.field public static final enum b:Lcom/google/zxing/c/d$a;

.field public static final enum c:Lcom/google/zxing/c/d$a;

.field public static final enum d:Lcom/google/zxing/c/d$a;

.field private static final synthetic e:[Lcom/google/zxing/c/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/google/zxing/c/d$a;

    const-string/jumbo v1, "UNCODABLE"

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/c/d$a;->a:Lcom/google/zxing/c/d$a;

    .line 58
    new-instance v0, Lcom/google/zxing/c/d$a;

    const-string/jumbo v1, "ONE_DIGIT"

    invoke-direct {v0, v1, v3}, Lcom/google/zxing/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/c/d$a;->b:Lcom/google/zxing/c/d$a;

    .line 59
    new-instance v0, Lcom/google/zxing/c/d$a;

    const-string/jumbo v1, "TWO_DIGITS"

    invoke-direct {v0, v1, v4}, Lcom/google/zxing/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/c/d$a;->c:Lcom/google/zxing/c/d$a;

    .line 60
    new-instance v0, Lcom/google/zxing/c/d$a;

    const-string/jumbo v1, "FNC_1"

    invoke-direct {v0, v1, v5}, Lcom/google/zxing/c/d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/c/d$a;->d:Lcom/google/zxing/c/d$a;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/c/d$a;

    sget-object v1, Lcom/google/zxing/c/d$a;->a:Lcom/google/zxing/c/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/c/d$a;->b:Lcom/google/zxing/c/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/c/d$a;->c:Lcom/google/zxing/c/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/c/d$a;->d:Lcom/google/zxing/c/d$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/c/d$a;->e:[Lcom/google/zxing/c/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/c/d$a;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/zxing/c/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/c/d$a;

    return-object v0
.end method

.method public static values()[Lcom/google/zxing/c/d$a;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/c/d$a;->e:[Lcom/google/zxing/c/d$a;

    invoke-virtual {v0}, [Lcom/google/zxing/c/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/c/d$a;

    return-object v0
.end method
