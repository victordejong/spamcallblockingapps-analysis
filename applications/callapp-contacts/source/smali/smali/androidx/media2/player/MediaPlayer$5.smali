.class final Landroidx/media2/player/MediaPlayer$5;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->l()Lcom/google/common/util/concurrent/a;
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
.field final synthetic f:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1561
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 1566
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 1567
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->r:I

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-gez v1, :cond_0

    .line 1568
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    .line 4096
    invoke-virtual {v1, v3, v2}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    .line 1568
    monitor-exit v0

    return-object v1

    .line 1570
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->r:I

    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_3

    .line 1572
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->p:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iget v1, v1, Landroidx/media2/player/MediaPlayer;->p:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    goto :goto_0

    .line 1575
    :cond_1
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    .line 5096
    invoke-virtual {v1, v3, v2}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    .line 1575
    monitor-exit v0

    return-object v1

    .line 1573
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1578
    :cond_3
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iput v1, v2, Landroidx/media2/player/MediaPlayer;->r:I

    .line 1579
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->A()Landroidx/core/e/b;

    .line 1580
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    .line 1581
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 1582
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$5;->f:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1582
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
