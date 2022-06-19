.class final Landroidx/media2/player/MediaPlayer$8;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;
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
.field final synthetic f:Landroidx/media2/common/MediaMetadata;

.field final synthetic g:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaMetadata;)V
    .locals 0

    .line 1701
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$8;->g:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$8;->f:Landroidx/media2/common/MediaMetadata;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/c/a/b<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    .line 1704
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$8;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 1705
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$8;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$8;->f:Landroidx/media2/common/MediaMetadata;

    iput-object v2, v1, Landroidx/media2/player/MediaPlayer;->o:Landroidx/media2/common/MediaMetadata;

    .line 1706
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1707
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$8;->g:Landroidx/media2/player/MediaPlayer;

    new-instance v1, Landroidx/media2/player/MediaPlayer$8$1;

    invoke-direct {v1, p0}, Landroidx/media2/player/MediaPlayer$8$1;-><init>(Landroidx/media2/player/MediaPlayer$8;)V

    invoke-virtual {v0, v1}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    .line 1714
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$8;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4096
    invoke-virtual {v0, v1, v2}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1706
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
