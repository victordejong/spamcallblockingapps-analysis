.class final enum Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

.field public static final enum b:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

.field public static final enum c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

.field public static final enum d:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

.field public static final enum e:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

.field public static final enum f:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

.field public static final enum g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

.field private static final synthetic h:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    new-instance v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    const-string v3, "LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->b:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    new-instance v3, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    const-string v5, "PLAYING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->c:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    new-instance v5, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->d:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    new-instance v7, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    const-string v9, "STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->e:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    new-instance v9, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    const-string v11, "COMPLETE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->f:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    new-instance v11, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    const-string v13, "ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->g:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->h:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;
    .locals 1

    const-class v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    return-object p0
.end method

.method public static values()[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;
    .locals 1

    sget-object v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->h:[Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    invoke-virtual {v0}, [Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$f;

    return-object v0
.end method
