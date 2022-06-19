.class public final enum Lcom/flurry/sdk/jc;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/jc;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/jc;

.field public static final enum b:Lcom/flurry/sdk/jc;

.field public static final enum c:Lcom/flurry/sdk/jc;

.field private static final synthetic f:[Lcom/flurry/sdk/jc;


# instance fields
.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/flurry/sdk/jc;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/flurry/sdk/jc;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/jc;->a:Lcom/flurry/sdk/jc;

    new-instance v1, Lcom/flurry/sdk/jc;

    const-string v3, "PUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3, v4}, Lcom/flurry/sdk/jc;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/flurry/sdk/jc;->b:Lcom/flurry/sdk/jc;

    new-instance v3, Lcom/flurry/sdk/jc;

    const-string v5, "POST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5, v6}, Lcom/flurry/sdk/jc;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/flurry/sdk/jc;->c:Lcom/flurry/sdk/jc;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/flurry/sdk/jc;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/flurry/sdk/jc;->f:[Lcom/flurry/sdk/jc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/flurry/sdk/jc;->d:Ljava/lang/String;

    iput p4, p0, Lcom/flurry/sdk/jc;->e:I

    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/jc;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/flurry/sdk/jc;->c:Lcom/flurry/sdk/jc;

    return-object p0

    :cond_1
    sget-object p0, Lcom/flurry/sdk/jc;->b:Lcom/flurry/sdk/jc;

    return-object p0

    :cond_2
    sget-object p0, Lcom/flurry/sdk/jc;->a:Lcom/flurry/sdk/jc;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/jc;
    .locals 1

    const-class v0, Lcom/flurry/sdk/jc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/jc;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/jc;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/jc;->f:[Lcom/flurry/sdk/jc;

    invoke-virtual {v0}, [Lcom/flurry/sdk/jc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/jc;

    return-object v0
.end method
