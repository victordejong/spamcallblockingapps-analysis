.class final Landroidx/media2/player/MediaPlayer$33;
.super Landroidx/media2/player/MediaPlayer$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/a;
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

.field final synthetic g:Landroidx/media2/player/MediaPlayer;


# direct methods
.method constructor <init>(Landroidx/media2/player/MediaPlayer;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V
    .locals 0

    .line 1132
    iput-object p1, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    iput-object p3, p0, Landroidx/media2/player/MediaPlayer$33;->f:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p2}, Landroidx/media2/player/MediaPlayer$h;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private synthetic a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 2

    .line 1145
    iget-object v0, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroidx/media2/common/SessionPlayer$a;->onPlaylistChanged(Landroidx/media2/common/SessionPlayer;Ljava/util/List;Landroidx/media2/common/MediaMetadata;)V

    return-void
.end method

.method public static synthetic lambda$dH-Su3DtYYch4vWqp22TEBZNwf8(Landroidx/media2/player/MediaPlayer$33;Landroidx/media2/common/SessionPlayer$a;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media2/player/MediaPlayer$33;->a(Landroidx/media2/common/SessionPlayer$a;)V

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

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v1, v1, Landroidx/media2/player/MediaPlayer;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 1137
    :try_start_0
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->m:Landroidx/media2/player/MediaPlayer$c;

    invoke-virtual {v2}, Landroidx/media2/player/MediaPlayer$c;->a()V

    .line 1138
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/media2/player/MediaPlayer;->o:Landroidx/media2/common/MediaMetadata;

    .line 1139
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, v2, Landroidx/media2/player/MediaPlayer;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1140
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v4, p0, Landroidx/media2/player/MediaPlayer$33;->f:Landroidx/media2/common/MediaItem;

    iput-object v4, v2, Landroidx/media2/player/MediaPlayer;->s:Landroidx/media2/common/MediaItem;

    .line 1141
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    iput-object v3, v2, Landroidx/media2/player/MediaPlayer;->t:Landroidx/media2/common/MediaItem;

    .line 1142
    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    const/4 v4, -0x1

    iput v4, v2, Landroidx/media2/player/MediaPlayer;->r:I

    .line 1143
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    new-instance v2, Landroidx/media2/player/-$$Lambda$MediaPlayer$33$dH-Su3DtYYch4vWqp22TEBZNwf8;

    invoke-direct {v2, p0}, Landroidx/media2/player/-$$Lambda$MediaPlayer$33$dH-Su3DtYYch4vWqp22TEBZNwf8;-><init>(Landroidx/media2/player/MediaPlayer$33;)V

    invoke-virtual {v1, v2}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/player/MediaPlayer$j;)V

    .line 1146
    iget-object v1, p0, Landroidx/media2/player/MediaPlayer$33;->g:Landroidx/media2/player/MediaPlayer;

    iget-object v2, p0, Landroidx/media2/player/MediaPlayer$33;->f:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2, v3}, Landroidx/media2/player/MediaPlayer;->a(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :catchall_0
    move-exception v0

    .line 1143
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
