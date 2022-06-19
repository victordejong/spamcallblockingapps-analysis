.class final Landroidx/media2/player/MediaPlayer$34;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;
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

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaMetadata;Ljava/util/List;)V
    .locals 0

    .line 1218
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$34;->f:Landroidx/media2/common/MediaMetadata;

    iput-object p4, p0, Landroidx/media2/player/MediaPlayer$34;->g:Ljava/util/List;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;Landroidx/media2/common/SessionPlayer$a;)V
    .locals 1

    .line 1233
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {p3, v0, p1, p2}, Landroidx/media2/common/SessionPlayer$a;->onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method

.method public static synthetic lambda$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg(Landroidx/media2/player/MediaPlayer$34;Ljava/util/List;Landroidx/media2/common/MediaMetadata;Landroidx/media2/common/SessionPlayer$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/player/MediaPlayer$34;->a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;Landroidx/media2/common/SessionPlayer$a;)V

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

    .line 1223
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v0, v0, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 1224
    :try_start_0
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$34;->f:Landroidx/media2/common/MediaMetadata;

    iput-object v2, v1, Landroidx/media2/player/MediaPlayer;->o:Landroidx/media2/common/MediaMetadata;

    .line 1225
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$34;->g:Ljava/util/List;

    .line 4867
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media2/common/MediaItem;

    .line 4868
    instance-of v5, v4, Landroidx/media2/common/FileMediaItem;

    if-eqz v5, :cond_0

    .line 4869
    check-cast v4, Landroidx/media2/common/FileMediaItem;

    invoke-virtual {v4}, Landroidx/media2/common/FileMediaItem;->a()V

    goto :goto_0

    .line 4872
    :cond_1
    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer$c;->a()V

    .line 4873
    iget-object v1, v1, Landroidx/media2/player/MediaPlayer$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1226
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->z()V

    .line 1227
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/media2/player/MediaPlayer;->r:I

    .line 1228
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v1}, Landroidx/media2/player/MediaPlayer;->A()Landroidx/core/e/b;

    .line 1229
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    .line 1230
    iget-object v3, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v3, v3, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 1231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$34;->g:Ljava/util/List;

    iget-object v5, p0, Landroidx/media2/player/MediaPlayer$34;->f:Landroidx/media2/common/MediaMetadata;

    new-instance v6, Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;

    invoke-direct {v6, p0, v4, v5}, Landroidx/media2/player/-$$Lambda$MediaPlayer$34$Bdj3KYNYbh1MQtX_AUHHvjO8Bxg;-><init>(Landroidx/media2/player/MediaPlayer$34;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    invoke-virtual {v0, v6}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    if-eqz v1, :cond_2

    .line 1236
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    invoke-virtual {v0, v1, v3}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1238
    :cond_2
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$34;->h:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x0

    .line 5096
    invoke-virtual {v0, v2, v1}, Landroidx/media2/player/MediaPlayer;->c(ILandroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 1231
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
