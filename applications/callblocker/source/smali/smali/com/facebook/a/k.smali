.class public final enum Lcom/facebook/a/k;
.super Ljava/lang/Enum;
.source "FlushResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/k;

.field public static final enum b:Lcom/facebook/a/k;

.field public static final enum c:Lcom/facebook/a/k;

.field public static final enum d:Lcom/facebook/a/k;

.field private static final synthetic e:[Lcom/facebook/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->a:Lcom/facebook/a/k;

    .line 25
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "SERVER_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->b:Lcom/facebook/a/k;

    .line 26
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "NO_CONNECTIVITY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->c:Lcom/facebook/a/k;

    .line 27
    new-instance v0, Lcom/facebook/a/k;

    const-string/jumbo v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/k;->d:Lcom/facebook/a/k;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/a/k;

    sget-object v1, Lcom/facebook/a/k;->a:Lcom/facebook/a/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/a/k;->b:Lcom/facebook/a/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/a/k;->c:Lcom/facebook/a/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/a/k;->d:Lcom/facebook/a/k;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/a/k;->e:[Lcom/facebook/a/k;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/k;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/k;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/k;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/a/k;->e:[Lcom/facebook/a/k;

    invoke-virtual {v0}, [Lcom/facebook/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/k;

    return-object v0
.end method
