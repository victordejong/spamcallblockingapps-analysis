.class final Landroidx/media2/player/MediaPlayer$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media2/player/MediaPlayer$h;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer$h;)V
    .locals 0

    .line 551
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$h$1;->a:Landroidx/media2/player/MediaPlayer$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 554
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$h$1;->a:Landroidx/media2/player/MediaPlayer$h;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$h;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$h$1;->a:Landroidx/media2/player/MediaPlayer$h;

    iget-boolean v0, v0, Landroidx/media2/player/MediaPlayer$h;->j:Z

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$h$1;->a:Landroidx/media2/player/MediaPlayer$h;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer$h;->c()V

    :cond_0
    return-void
.end method
