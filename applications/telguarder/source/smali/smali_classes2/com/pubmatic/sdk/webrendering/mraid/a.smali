.class final enum Lcom/pubmatic/sdk/webrendering/mraid/a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/webrendering/mraid/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/pubmatic/sdk/webrendering/mraid/a;

.field public static final enum c:Lcom/pubmatic/sdk/webrendering/mraid/a;

.field private static final synthetic d:[Lcom/pubmatic/sdk/webrendering/mraid/a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/a;

    const-string v1, "READY"

    const/4 v2, 0x0

    const-string v3, "ready"

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/webrendering/mraid/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pubmatic/sdk/webrendering/mraid/a;->b:Lcom/pubmatic/sdk/webrendering/mraid/a;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/a;

    const-string v3, "SIZE_CHANGE"

    const/4 v4, 0x1

    const-string v5, "sizeChange"

    invoke-direct {v1, v3, v4, v5}, Lcom/pubmatic/sdk/webrendering/mraid/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/pubmatic/sdk/webrendering/mraid/a;->c:Lcom/pubmatic/sdk/webrendering/mraid/a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/pubmatic/sdk/webrendering/mraid/a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/pubmatic/sdk/webrendering/mraid/a;->d:[Lcom/pubmatic/sdk/webrendering/mraid/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/webrendering/mraid/a;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/webrendering/mraid/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/webrendering/mraid/a;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/webrendering/mraid/a;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/a;->d:[Lcom/pubmatic/sdk/webrendering/mraid/a;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/webrendering/mraid/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/webrendering/mraid/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/a;->a:Ljava/lang/String;

    return-object v0
.end method
