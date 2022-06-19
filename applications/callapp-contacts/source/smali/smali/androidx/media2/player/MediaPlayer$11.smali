.class final Landroidx/media2/player/MediaPlayer$11;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a()Lcom/google/common/util/concurrent/a;
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

    .line 753
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$11;->f:Landroidx/media2/player/MediaPlayer;

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

    .line 756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 758
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$11;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->k:Landroidx/media2/player/a;

    .line 4069
    iget-object v1, v1, Landroidx/media2/player/a;->a:Landroidx/media2/player/a$a;

    invoke-interface {v1}, Landroidx/media2/player/a$a;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$11;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer2;->j()Landroidx/media/AudioAttributesCompat;

    move-result-object v1

    if-nez v1, :cond_0

    .line 760
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$11;->f:Landroidx/media2/player/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->c(F)Landroidx/c/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5045
    :cond_0
    new-instance v1, Landroidx/c/a/b;

    invoke-direct {v1}, Landroidx/c/a/b;-><init>()V

    .line 763
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$11;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 764
    :try_start_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$11;->f:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    invoke-virtual {v3}, Landroidx/media2/player/MediaPlayer2;->d()Ljava/lang/Object;

    move-result-object v3

    .line 765
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$11;->f:Landroidx/media2/player/MediaPlayer;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v1, v3}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 766
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 768
    :cond_1
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$11;->f:Landroidx/media2/player/MediaPlayer;

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 5083
    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->b(ILandroidx/media2/common/MediaItem;)Landroidx/c/a/b;

    move-result-object v1

    .line 770
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
