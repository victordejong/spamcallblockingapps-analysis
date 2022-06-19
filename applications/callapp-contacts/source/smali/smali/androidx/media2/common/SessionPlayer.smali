.class public abstract Landroidx/media2/common/SessionPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/common/SessionPlayer$b;,
        Landroidx/media2/common/SessionPlayer$a;,
        Landroidx/media2/common/SessionPlayer$TrackInfo;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/e/b<",
            "Landroidx/media2/common/SessionPlayer$a;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer;->a:Ljava/lang/Object;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(F)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public a(II)Lcom/google/common/util/concurrent/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 650
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "movePlaylistItem is not implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(ILandroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media2/common/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(J)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public a(Landroid/view/Surface;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 492
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "setSurface is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public a(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 955
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "selectTrack is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Ljava/util/List;Landroidx/media2/common/MediaMetadata;)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;",
            "Landroidx/media2/common/MediaMetadata;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public final a(Landroidx/media2/common/SessionPlayer$a;)V
    .locals 3

    const-string v0, "callback shouldn\'t be null"

    .line 890
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 892
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 894
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/e/b;

    iget-object v2, v2, Landroidx/core/e/b;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 895
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 898
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/concurrent/Executor;Landroidx/media2/common/SessionPlayer$a;)V
    .locals 4

    const-string v0, "executor shouldn\'t be null"

    .line 865
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback shouldn\'t be null"

    .line 868
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 871
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/e/b;

    .line 873
    iget-object v3, v2, Landroidx/core/e/b;->a:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    iget-object v2, v2, Landroidx/core/e/b;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string p1, "SessionPlayer"

    const-string p2, "callback is already added. Ignoring."

    .line 874
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    monitor-exit v0

    return-void

    .line 878
    :cond_1
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    new-instance v2, Landroidx/core/e/b;

    invoke-direct {v2, p2, p1}, Landroidx/core/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract b()Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(I)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ")",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation

    .line 980
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "deselectTrack is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c()Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(I)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public close()V
    .locals 2

    .line 1013
    iget-object v0, p0, Landroidx/media2/common/SessionPlayer;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1014
    :try_start_0
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1015
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract d()I
.end method

.method public abstract d(I)Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()J
.end method

.method public e(I)Landroidx/media2/common/SessionPlayer$TrackInfo;
    .locals 1

    .line 1000
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getSelectedTrack is not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract f()J
.end method

.method public abstract g()J
.end method

.method public abstract h()I
.end method

.method public abstract i()F
.end method

.method public j()Landroidx/media2/common/VideoSize;
    .locals 2

    .line 476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getVideoSize is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract k()Landroidx/media/AudioAttributesCompat;
.end method

.method public abstract l()Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract m()Lcom/google/common/util/concurrent/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/a<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract n()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/MediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract o()Landroidx/media2/common/MediaMetadata;
.end method

.method public abstract p()I
.end method

.method public abstract q()I
.end method

.method public abstract r()Landroidx/media2/common/MediaItem;
.end method

.method public abstract s()I
.end method

.method public abstract t()I
.end method

.method public abstract u()I
.end method

.method protected final v()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/e/b<",
            "Landroidx/media2/common/SessionPlayer$a;",
            "Ljava/util/concurrent/Executor;",
            ">;>;"
        }
    .end annotation

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 909
    iget-object v1, p0, Landroidx/media2/common/SessionPlayer;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 910
    :try_start_0
    iget-object v2, p0, Landroidx/media2/common/SessionPlayer;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 911
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/common/SessionPlayer$TrackInfo;",
            ">;"
        }
    .end annotation

    .line 931
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getTracks is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
