.class final Landroidx/media2/player/MediaPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$g;Landroidx/c/a/b;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a/b;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Landroidx/media2/player/MediaPlayer$g;

.field final synthetic d:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Landroidx/c/a/b;Ljava/lang/Object;Landroidx/media2/player/MediaPlayer$g;)V
    .locals 0

    .line 711
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$1;->d:Landroidx/media2/player/MediaPlayer;

    iput-object p2, p0, Landroidx/media2/player/MediaPlayer$1;->a:Landroidx/c/a/b;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$1;->b:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$1;->c:Landroidx/media2/player/MediaPlayer$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 715
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$1;->a:Landroidx/c/a/b;

    invoke-virtual {v0}, Landroidx/c/a/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$1;->d:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 717
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$1;->d:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$1;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer2;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$1;->d:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$1;->c:Landroidx/media2/player/MediaPlayer$g;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 720
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method
