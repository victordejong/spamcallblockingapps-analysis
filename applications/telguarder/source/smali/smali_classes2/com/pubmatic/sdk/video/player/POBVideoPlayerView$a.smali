.class Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;


# direct methods
.method constructor <init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;->a:Lcom/pubmatic/sdk/video/player/POBVideoPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a$a;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a$a;-><init>(Lcom/pubmatic/sdk/video/player/POBVideoPlayerView$a;)V

    invoke-static {v0}, Lcom/pubmatic/sdk/common/utility/POBUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
