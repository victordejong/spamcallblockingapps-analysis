.class final Landroidx/media2/player/MediaPlayer$7;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->b(I)Lcom/google/common/util/concurrent/a;
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

    .line 1662
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$7;->f:I

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

    .line 1667
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 1668
    :try_start_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer$7;->f:I

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 4909
    iget-object v2, v2, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1669
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x3

    const/4 v3, 0x0

    .line 5096
    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    .line 1669
    monitor-exit v0

    return-object v1

    .line 1671
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v1, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget v4, p0, Landroidx/media2/player/MediaPlayer$7;->f:I

    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer$c;->b(I)Landroidx/media2/common/MediaItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroidx/media2/player/MediaPlayer;->r:I

    .line 1672
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->A()Landroidx/core/e/b;

    .line 1673
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    .line 1674
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 1675
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$7;->g:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1675
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
