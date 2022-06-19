.class final Landroidx/media2/player/MediaPlayer$12;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;
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
.field final synthetic f:Landroid/view/Surface;

.field final synthetic g:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroid/view/Surface;)V
    .locals 0

    .line 2056
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$12;->g:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$12;->f:Landroid/view/Surface;

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

    .line 2059
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3045
    new-instance v1, Landroidx/c/a/b;

    invoke-direct {v1}, Landroidx/c/a/b;-><init>()V

    .line 2061
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$12;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 2062
    :try_start_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$12;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$12;->f:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer2;->a(Landroid/view/Surface;)Ljava/lang/Object;

    move-result-object v3

    .line 2063
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$12;->g:Landroidx/media2/player/MediaPlayer;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5, v1, v3}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 2064
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2065
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 2064
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
