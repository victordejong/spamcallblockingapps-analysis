.class final enum Lcom/pubmatic/sdk/webrendering/mraid/n$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/webrendering/mraid/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/webrendering/mraid/n$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

.field public static final enum b:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

.field public static final enum c:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

.field public static final enum d:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

.field public static final enum e:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

.field public static final enum f:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

.field private static final synthetic g:[Lcom/pubmatic/sdk/webrendering/mraid/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    const-string v1, "CURRENT_POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/webrendering/mraid/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->a:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    new-instance v1, Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    const-string v3, "DEFAULT_POSITION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/webrendering/mraid/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->b:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    new-instance v3, Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    const-string v5, "SCREEN_SIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pubmatic/sdk/webrendering/mraid/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->c:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    new-instance v5, Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    const-string v7, "MAX_SIZE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/pubmatic/sdk/webrendering/mraid/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->d:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    new-instance v7, Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    const-string v9, "STATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/pubmatic/sdk/webrendering/mraid/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->e:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    new-instance v9, Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    const-string v11, "VIEWABLE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/pubmatic/sdk/webrendering/mraid/n$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->f:Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->g:[Lcom/pubmatic/sdk/webrendering/mraid/n$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/webrendering/mraid/n$b;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/webrendering/mraid/n$b;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/webrendering/mraid/n$b;->g:[Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/webrendering/mraid/n$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/webrendering/mraid/n$b;

    return-object v0
.end method
