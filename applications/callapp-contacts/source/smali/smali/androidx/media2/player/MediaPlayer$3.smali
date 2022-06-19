.class final Landroidx/media2/player/MediaPlayer$3;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(I)Lcom/google/common/util/concurrent/a;
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

    .line 1345
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$3;->f:I

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 1353
    :try_start_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer$3;->f:I

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 4909
    iget-object v2, v2, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 1354
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x3

    .line 5096
    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    .line 1354
    monitor-exit v0

    return-object v1

    .line 1356
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget v2, p0, Landroidx/media2/player/MediaPlayer$3;->f:I

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer$c;->a(I)Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 1357
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1358
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1359
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget v2, v2, Landroidx/media2/player/MediaPlayer;->r:I

    if-ge v1, v2, :cond_1

    .line 1360
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget v2, v1, Landroidx/media2/player/MediaPlayer;->r:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/media2/player/MediaPlayer;->r:I

    .line 1363
    :cond_1
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->A()Landroidx/core/e/b;

    move-result-object v1

    .line 1364
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    .line 1365
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 1366
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->n()Ljava/util/List;

    move-result-object v0

    .line 1368
    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v5}, Landroidx/media2/player/MediaPlayer;->o()Landroidx/media2/common/MediaMetadata;

    move-result-object v5

    .line 1369
    iget-object v6, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    new-instance v7, Landroidx/media2/player/MediaPlayer$3$1;

    invoke-direct {v7, p0, v0, v5}, Landroidx/media2/player/MediaPlayer$3$1;-><init>(Landroidx/media2/player/MediaPlayer$3;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v6, v7}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 1379
    iget-object v3, v1, Landroidx/core/e/b;->a:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1380
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v2, v4}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1381
    :cond_2
    iget-object v1, v1, Landroidx/core/e/b;->b:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1382
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v4}, Landroidx/media2/player/MediaPlayer;->b(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1385
    :cond_3
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$3;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v2, 0x0

    .line 6083
    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->b(ILandroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object v1

    .line 1385
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 1366
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
