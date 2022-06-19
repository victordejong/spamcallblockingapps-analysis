.class public final enum Lcom/facebook/i$a;
.super Ljava/lang/Enum;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/i$a;

.field public static final enum b:Lcom/facebook/i$a;

.field public static final enum c:Lcom/facebook/i$a;

.field private static final synthetic d:[Lcom/facebook/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 494
    new-instance v0, Lcom/facebook/i$a;

    const-string/jumbo v1, "LOGIN_RECOVERABLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i$a;->a:Lcom/facebook/i$a;

    .line 499
    new-instance v0, Lcom/facebook/i$a;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i$a;->b:Lcom/facebook/i$a;

    .line 504
    new-instance v0, Lcom/facebook/i$a;

    const-string/jumbo v1, "TRANSIENT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/i$a;->c:Lcom/facebook/i$a;

    .line 487
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/i$a;

    sget-object v1, Lcom/facebook/i$a;->a:Lcom/facebook/i$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/i$a;->b:Lcom/facebook/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/i$a;->c:Lcom/facebook/i$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/i$a;->d:[Lcom/facebook/i$a;

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
    .line 487
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/i$a;
    .locals 1

    .prologue
    .line 487
    const-class v0, Lcom/facebook/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/i$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/i$a;
    .locals 1

    .prologue
    .line 487
    sget-object v0, Lcom/facebook/i$a;->d:[Lcom/facebook/i$a;

    invoke-virtual {v0}, [Lcom/facebook/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/i$a;

    return-object v0
.end method
