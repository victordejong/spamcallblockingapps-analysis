.class final Landroidx/media2/player/MediaPlayer$31;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(F)Lcom/google/common/util/concurrent/a;
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
.field final synthetic f:F

.field final synthetic g:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;F)V
    .locals 0

    .line 920
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$31;->g:Landroidx/media2/player/MediaPlayer;

    iput p3, p0, Landroidx/media2/player/MediaPlayer$31;->f:F

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

    .line 923
    iget v0, p0, Landroidx/media2/player/MediaPlayer$31;->f:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 924
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$31;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v1, -0x3

    const/4 v2, 0x0

    .line 4096
    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 926
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5045
    new-instance v1, Landroidx/c/a/b;

    invoke-direct {v1}, Landroidx/c/a/b;-><init>()V

    .line 928
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$31;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->i:Ljava/util/ArrayDeque;

    monitor-enter v2

    .line 929
    :try_start_0
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$31;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    new-instance v4, Landroidx/media2/player/j$a;

    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$31;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v5, v5, Landroidx/media2/player/MediaPlayer;->g:Landroidx/media2/player/MediaPlayer2;

    .line 930
    invoke-virtual {v5}, Landroidx/media2/player/MediaPlayer2;->k()Landroidx/media2/player/j;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/media2/player/j$a;-><init>(Landroidx/media2/player/j;)V

    iget v5, p0, Landroidx/media2/player/MediaPlayer$31;->f:F

    .line 931
    invoke-virtual {v4, v5}, Landroidx/media2/player/j$a;->a(F)Landroidx/media2/player/j$a;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media2/player/j$a;->c()Landroidx/media2/player/j;

    move-result-object v4

    .line 929
    invoke-virtual {v3, v4}, Landroidx/media2/player/MediaPlayer2;->a(Landroidx/media2/player/j;)Ljava/lang/Object;

    move-result-object v3

    .line 932
    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$31;->g:Landroidx/media2/player/MediaPlayer;

    const/16 v5, 0x18

    invoke-virtual {v4, v5, v1, v3}, Landroidx/media2/player/MediaPlayer;->a(ILandroidx/c/a/b;Ljava/lang/Object;)V

    .line 934
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 934
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
