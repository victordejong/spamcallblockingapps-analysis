.class public final enum Lcom/b/a/a/a/f;
.super Ljava/lang/Enum;
.source "PurchaseState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/a/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/a/a/a/f;

.field public static final enum b:Lcom/b/a/a/a/f;

.field public static final enum c:Lcom/b/a/a/a/f;

.field public static final enum d:Lcom/b/a/a/a/f;

.field private static final synthetic e:[Lcom/b/a/a/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/b/a/a/a/f;

    const-string/jumbo v1, "PurchasedSuccessfully"

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/a/f;->a:Lcom/b/a/a/a/f;

    .line 21
    new-instance v0, Lcom/b/a/a/a/f;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1, v3}, Lcom/b/a/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/a/f;->b:Lcom/b/a/a/a/f;

    .line 22
    new-instance v0, Lcom/b/a/a/a/f;

    const-string/jumbo v1, "Refunded"

    invoke-direct {v0, v1, v4}, Lcom/b/a/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/a/f;->c:Lcom/b/a/a/a/f;

    .line 23
    new-instance v0, Lcom/b/a/a/a/f;

    const-string/jumbo v1, "SubscriptionExpired"

    invoke-direct {v0, v1, v5}, Lcom/b/a/a/a/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/b/a/a/a/f;->d:Lcom/b/a/a/a/f;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/b/a/a/a/f;

    sget-object v1, Lcom/b/a/a/a/f;->a:Lcom/b/a/a/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/b/a/a/a/f;->b:Lcom/b/a/a/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/a/a/a/f;->c:Lcom/b/a/a/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/a/a/a/f;->d:Lcom/b/a/a/a/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/b/a/a/a/f;->e:[Lcom/b/a/a/a/f;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/a/f;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/b/a/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/f;

    return-object v0
.end method

.method public static values()[Lcom/b/a/a/a/f;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/b/a/a/a/f;->e:[Lcom/b/a/a/a/f;

    invoke-virtual {v0}, [Lcom/b/a/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/a/a/a/f;

    return-object v0
.end method
