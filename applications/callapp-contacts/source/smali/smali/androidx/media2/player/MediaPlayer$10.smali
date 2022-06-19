.class final Landroidx/media2/player/MediaPlayer$10;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->d(I)Lcom/google/common/util/concurrent/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/player/MediaPlayer$h<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:I

.field final synthetic g:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1792
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$10;->g:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$10;->f:I

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 1795
    iget v0, p0, Landroidx/media2/player/MediaPlayer$10;->f:I

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    goto :goto_1

    .line 1801
    :cond_0
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$10;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 1802
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$10;->g:Landroidx/media2/player/MediaPlayer;

    iget v2, v2, Landroidx/media2/player/MediaPlayer;->q:I

    iget v3, p0, Landroidx/media2/player/MediaPlayer$10;->f:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1803
    :goto_0
    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$10;->g:Landroidx/media2/player/MediaPlayer;

    iput v3, v5, Landroidx/media2/player/MediaPlayer;->q:I

    .line 1804
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$10;->g:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer;->z()V

    .line 1805
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 1807
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$10;->g:Landroidx/media2/player/MediaPlayer;

    new-instance v2, Landroidx/media2/player/MediaPlayer$10$1;

    invoke-direct {v2, p0}, Landroidx/media2/player/MediaPlayer$10$1;-><init>(Landroidx/media2/player/MediaPlayer$10;)V

    invoke-virtual {v0, v2}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    .line 1815
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$10;->g:Landroidx/media2/player/MediaPlayer;

    .line 5096
    invoke-virtual {v0, v4, v1}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1805
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1797
    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$10;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x3

    .line 4096
    invoke-virtual {v0, v2, v1}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
