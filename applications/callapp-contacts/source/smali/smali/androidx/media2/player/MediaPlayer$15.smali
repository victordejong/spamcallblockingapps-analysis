.class final Landroidx/media2/player/MediaPlayer$15;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->b(J)Lcom/google/common/util/concurrent/a;
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

.field final synthetic g:J

.field final synthetic h:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;ZIJ)V
    .locals 0

    .line 2261
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$15;->h:Landroidx/media2/player/MediaPlayer;

    iput p4, p0, Landroidx/media2/player/MediaPlayer$15;->f:I

    iput-wide p5, p0, Landroidx/media2/player/MediaPlayer$15;->g:J

    invoke-direct {p0, p2, p3}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 2264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3045
    new-instance v1, Landroidx/c/a/b;

    invoke-direct {v1}, Landroidx/c/a/b;-><init>()V

    .line 2266
    sget-object v2, Landroidx/media2/player/MediaPlayer;->e:Landroidx/b/a;

    iget v3, p0, Landroidx/media2/player/MediaPlayer$15;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/b/a;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2267
    sget-object v2, Landroidx/media2/player/MediaPlayer;->e:Landroidx/b/a;

    iget v3, p0, Landroidx/media2/player/MediaPlayer$15;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 2268
    :goto_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$15;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v3

    .line 2269
    :try_start_0
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$15;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v4, v4, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    iget-wide v5, p0, Landroidx/media2/player/MediaPlayer$15;->g:J

    invoke-virtual {v4, v5, v6, v2}, Landroidx/media2/player/MediaPlayer2;->a(JI)Ljava/lang/Object;

    move-result-object v2

    .line 2270
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$15;->h:Landroidx/media2/player/MediaPlayer;

    const/16 v5, 0xe

    invoke-virtual {v4, v5, v1, v2}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 2271
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2272
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 2271
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
