.class final Landroidx/media2/player/MediaPlayer$4;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(II)Lcom/google/common/util/concurrent/a;
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

.field final synthetic g:I

.field final synthetic h:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;II)V
    .locals 0

    .line 1492
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$4;->f:I

    iput p4, p0, Landroidx/media2/player/MediaPlayer$4;->g:I

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

    .line 1498
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 1499
    :try_start_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer$4;->f:I

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 4909
    iget-object v2, v2, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5

    .line 1499
    iget v1, p0, Landroidx/media2/player/MediaPlayer$4;->g:I

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 5909
    iget-object v2, v2, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto/16 :goto_1

    .line 1503
    :cond_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget v2, p0, Landroidx/media2/player/MediaPlayer$4;->f:I

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer$c;->a(I)Landroidx/media2/common/MediaItem;

    move-result-object v1

    .line 1504
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget v4, p0, Landroidx/media2/player/MediaPlayer$4;->g:I

    invoke-virtual {v2, v4, v1}, Landroidx/media2/player/MediaPlayer$c;->a(ILandroidx/media2/common/MediaItem;)V

    .line 1505
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget v2, v2, Landroidx/media2/player/MediaPlayer;->q:I

    if-nez v2, :cond_1

    .line 1506
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    iget v4, p0, Landroidx/media2/player/MediaPlayer$4;->f:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1507
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    iget v4, p0, Landroidx/media2/player/MediaPlayer$4;->g:I

    invoke-virtual {v2, v4, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1508
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    if-ne v1, v2, :cond_1

    .line 1509
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget v2, p0, Landroidx/media2/player/MediaPlayer$4;->g:I

    iput v2, v1, Landroidx/media2/player/MediaPlayer;->r:I

    .line 1512
    :cond_1
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->A()Landroidx/core/e/b;

    move-result-object v1

    .line 1513
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    .line 1514
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 1515
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->n()Ljava/util/List;

    move-result-object v0

    .line 1518
    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v5}, Landroidx/media2/player/MediaPlayer;->o()Landroidx/media2/common/MediaMetadata;

    move-result-object v5

    .line 1519
    iget-object v6, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    new-instance v7, Landroidx/media2/player/MediaPlayer$4$1;

    invoke-direct {v7, p0, v0, v5}, Landroidx/media2/player/MediaPlayer$4$1;-><init>(Landroidx/media2/player/MediaPlayer$4;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v6, v7}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    .line 1527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_3

    .line 1529
    iget-object v3, v1, Landroidx/core/e/b;->a:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 1530
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v2, v4}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1531
    :cond_2
    iget-object v1, v1, Landroidx/core/e/b;->b:Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1532
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1, v4}, Landroidx/media2/player/MediaPlayer;->b(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1535
    :cond_3
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    const/4 v2, 0x0

    .line 7083
    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->b(ILandroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object v1

    .line 1535
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    return-object v0

    .line 1500
    :cond_5
    :goto_1
    :try_start_1
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$4;->h:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x3

    .line 6096
    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    .line 1500
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 1515
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
