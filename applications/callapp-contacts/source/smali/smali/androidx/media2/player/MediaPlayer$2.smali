.class final Landroidx/media2/player/MediaPlayer$2;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/a;
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
.field final synthetic f:Landroidx/media2/common/MediaItem;

.field final synthetic g:I

.field final synthetic h:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;I)V
    .locals 0

    .line 1280
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$2;->f:Landroidx/media2/common/MediaItem;

    iput p4, p0, Landroidx/media2/player/MediaPlayer$2;->g:I

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

    .line 1284
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 1285
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer$c;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1286
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x3

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$2;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1288
    :cond_0
    iget v1, p0, Landroidx/media2/player/MediaPlayer$2;->g:I

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    .line 4909
    iget-object v2, v2, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1288
    invoke-static {v1, v2}, Landroidx/media2/player/MediaPlayer;->b(II)I

    move-result v1

    .line 1290
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$2;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2, v1, v3}, Landroidx/media2/player/MediaPlayer$c;->a(ILandroidx/media2/common/MediaItem;)V

    .line 1291
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget v2, v2, Landroidx/media2/player/MediaPlayer;->q:I

    if-nez v2, :cond_1

    .line 1292
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$2;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 1295
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    mul-double v1, v1, v3

    double-to-int v1, v1

    .line 1296
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$2;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1298
    :goto_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget v2, v2, Landroidx/media2/player/MediaPlayer;->r:I

    if-gt v1, v2, :cond_2

    .line 1299
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget v2, v1, Landroidx/media2/player/MediaPlayer;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media2/player/MediaPlayer;->r:I

    .line 1301
    :cond_2
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->A()Landroidx/core/e/b;

    move-result-object v1

    .line 1302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0}, Landroidx/media2/player/MediaPlayer;->n()Ljava/util/List;

    move-result-object v0

    .line 1304
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer;->o()Landroidx/media2/common/MediaMetadata;

    move-result-object v2

    .line 1305
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    new-instance v4, Landroidx/media2/player/MediaPlayer$2$1;

    invoke-direct {v4, p0, v0, v2}, Landroidx/media2/player/MediaPlayer$2$1;-><init>(Landroidx/media2/player/MediaPlayer$2;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    if-eqz v1, :cond_4

    .line 1313
    iget-object v0, v1, Landroidx/core/e/b;->b:Ljava/lang/Object;

    if-nez v0, :cond_3

    goto :goto_1

    .line 1316
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/core/e/b;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/media2/common/MediaItem;

    invoke-virtual {v2, v1}, Landroidx/media2/player/MediaPlayer;->b(Landroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1314
    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$2;->h:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5096
    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1302
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
