.class public final enum Lcom/facebook/o;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/o;

.field public static final enum b:Lcom/facebook/o;

.field public static final enum c:Lcom/facebook/o;

.field private static final synthetic d:[Lcom/facebook/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/facebook/o;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/facebook/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/o;->a:Lcom/facebook/o;

    .line 35
    new-instance v0, Lcom/facebook/o;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/o;->b:Lcom/facebook/o;

    .line 40
    new-instance v0, Lcom/facebook/o;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/o;->c:Lcom/facebook/o;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/o;

    sget-object v1, Lcom/facebook/o;->a:Lcom/facebook/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/o;->b:Lcom/facebook/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/o;->c:Lcom/facebook/o;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/o;->d:[Lcom/facebook/o;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/o;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/o;

    return-object v0
.end method

.method public static values()[Lcom/facebook/o;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/o;->d:[Lcom/facebook/o;

    invoke-virtual {v0}, [Lcom/facebook/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/o;

    return-object v0
.end method
