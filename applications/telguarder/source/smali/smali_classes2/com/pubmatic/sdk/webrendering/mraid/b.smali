.class final enum Lcom/pubmatic/sdk/webrendering/mraid/b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/webrendering/mraid/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/pubmatic/sdk/webrendering/mraid/b;

.field public static final enum c:Lcom/pubmatic/sdk/webrendering/mraid/b;

.field public static final enum d:Lcom/pubmatic/sdk/webrendering/mraid/b;

.field public static final enum e:Lcom/pubmatic/sdk/webrendering/mraid/b;

.field private static final synthetic f:[Lcom/pubmatic/sdk/webrendering/mraid/b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/b;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const-string v3, "default"

    invoke-direct {v0, v1, v2, v3}, Lcom/pubmatic/sdk/webrendering/mraid/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/pubmatic/sdk/webrendering/mraid/b;->b:Lcom/pubmatic/sdk/webrendering/mraid/b;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/b;

    const-string v3, "LOADING"

    const/4 v4, 0x1

    const-string v5, "loading"

    invoke-direct {v1, v3, v4, v5}, Lcom/pubmatic/sdk/webrendering/mraid/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/pubmatic/sdk/webrendering/mraid/b;->c:Lcom/pubmatic/sdk/webrendering/mraid/b;

    new-instance v3, Lcom/pubmatic/sdk/webrendering/mraid/b;

    const-string v5, "EXPANDED"

    const/4 v6, 0x2

    const-string v7, "expanded"

    invoke-direct {v3, v5, v6, v7}, Lcom/pubmatic/sdk/webrendering/mraid/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/pubmatic/sdk/webrendering/mraid/b;->d:Lcom/pubmatic/sdk/webrendering/mraid/b;

    new-instance v5, Lcom/pubmatic/sdk/webrendering/mraid/b;

    const-string v7, "RESIZED"

    const/4 v8, 0x3

    const-string v9, "resized"

    invoke-direct {v5, v7, v8, v9}, Lcom/pubmatic/sdk/webrendering/mraid/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/pubmatic/sdk/webrendering/mraid/b;->e:Lcom/pubmatic/sdk/webrendering/mraid/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/pubmatic/sdk/webrendering/mraid/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/pubmatic/sdk/webrendering/mraid/b;->f:[Lcom/pubmatic/sdk/webrendering/mraid/b;

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

    iput-object p3, p0, Lcom/pubmatic/sdk/webrendering/mraid/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/webrendering/mraid/b;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/webrendering/mraid/b;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/webrendering/mraid/b;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/b;->f:[Lcom/pubmatic/sdk/webrendering/mraid/b;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/webrendering/mraid/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/webrendering/mraid/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pubmatic/sdk/webrendering/mraid/b;->a:Ljava/lang/String;

    return-object v0
.end method
