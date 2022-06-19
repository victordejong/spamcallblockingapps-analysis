.class public final enum Lcom/flurry/sdk/in;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/in;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/in;

.field public static final enum b:Lcom/flurry/sdk/in;

.field public static final enum c:Lcom/flurry/sdk/in;

.field public static final enum d:Lcom/flurry/sdk/in;

.field public static final enum e:Lcom/flurry/sdk/in;

.field public static final enum f:Lcom/flurry/sdk/in;

.field public static final enum g:Lcom/flurry/sdk/in;

.field public static final enum h:Lcom/flurry/sdk/in;

.field private static final synthetic i:[Lcom/flurry/sdk/in;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/flurry/sdk/in;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/in;->a:Lcom/flurry/sdk/in;

    new-instance v1, Lcom/flurry/sdk/in;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/flurry/sdk/in;->b:Lcom/flurry/sdk/in;

    new-instance v3, Lcom/flurry/sdk/in;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/flurry/sdk/in;->c:Lcom/flurry/sdk/in;

    new-instance v5, Lcom/flurry/sdk/in;

    const-string v7, "FATAL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/flurry/sdk/in;->d:Lcom/flurry/sdk/in;

    new-instance v7, Lcom/flurry/sdk/in;

    const-string v9, "INFO"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/flurry/sdk/in;->e:Lcom/flurry/sdk/in;

    new-instance v9, Lcom/flurry/sdk/in;

    const-string v11, "OFF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/flurry/sdk/in;->f:Lcom/flurry/sdk/in;

    new-instance v11, Lcom/flurry/sdk/in;

    const-string v13, "TRACE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/flurry/sdk/in;->g:Lcom/flurry/sdk/in;

    new-instance v13, Lcom/flurry/sdk/in;

    const-string v15, "WARN"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/flurry/sdk/in;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/flurry/sdk/in;->h:Lcom/flurry/sdk/in;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/flurry/sdk/in;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/flurry/sdk/in;->i:[Lcom/flurry/sdk/in;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/in;
    .locals 1

    const-class v0, Lcom/flurry/sdk/in;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/in;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/in;
    .locals 1

    sget-object v0, Lcom/flurry/sdk/in;->i:[Lcom/flurry/sdk/in;

    invoke-virtual {v0}, [Lcom/flurry/sdk/in;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/in;

    return-object v0
.end method
