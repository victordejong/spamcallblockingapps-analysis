.class final Landroidx/media2/player/MediaPlayer$18;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->b()Lcom/google/common/util/concurrent/a;
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

    .line 797
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$18;->f:Landroidx/media2/player/MediaPlayer;

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

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1045
    new-instance v1, Landroidx/c/a/b;

    invoke-direct {v1}, Landroidx/c/a/b;-><init>()V

    .line 802
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$18;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->k:Landroidx/media2/player/a;

    .line 1076
    iget-object v2, v2, Landroidx/media2/player/a;->a:Landroidx/media2/player/a$a;

    invoke-interface {v2}, Landroidx/media2/player/a$a;->b()V

    .line 803
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$18;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 804
    :try_start_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$18;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer2;->e()Ljava/lang/Object;

    move-result-object v3

    .line 805
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$18;->f:Landroidx/media2/player/MediaPlayer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v1, v3}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 806
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 806
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
