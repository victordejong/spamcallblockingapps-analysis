.class public final enum Lcom/flurry/sdk/kb;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/kb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/kb;

.field public static final enum b:Lcom/flurry/sdk/kb;

.field private static final synthetic e:[Lcom/flurry/sdk/kb;


# instance fields
.field public final c:I

.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/flurry/sdk/kb;

    const-string v1, "DeviceId"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/flurry/sdk/kb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/kb;->a:Lcom/flurry/sdk/kb;

    new-instance v1, Lcom/flurry/sdk/kb;

    const-string v3, "AndroidAdvertisingId"

    const/4 v4, 0x1

    const/16 v5, 0xd

    invoke-direct {v1, v3, v4, v5}, Lcom/flurry/sdk/kb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/flurry/sdk/kb;->b:Lcom/flurry/sdk/kb;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/flurry/sdk/kb;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/flurry/sdk/kb;->e:[Lcom/flurry/sdk/kb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flurry/sdk/kb;->c:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/flurry/sdk/kb;->d:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/kb;
    .locals 1

    const-class v0, Lcom/flurry/sdk/kb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/kb;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/kb;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/kb;->e:[Lcom/flurry/sdk/kb;

    invoke-virtual {v0}, [Lcom/flurry/sdk/kb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/kb;

    return-object v0
.end method
