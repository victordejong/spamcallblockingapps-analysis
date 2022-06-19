.class public Lev$z;
.super Lev$h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->r0(Landroidx/media2/common/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lev$h0<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic m:Landroidx/media2/common/MediaItem;

.field public final synthetic n:Lev;


# direct methods
.method public constructor <init>(Lev;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lev$z;->n:Lev;

    iput-object p3, p0, Lev$z;->m:Landroidx/media2/common/MediaItem;

    invoke-direct {p0, p2}, Lev$h0;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public t()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lev$z;->n:Lev;

    iget-object v1, v1, Lev;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lev$z;->n:Lev;

    iget-object v2, v2, Lev;->o:Lev$c0;

    invoke-virtual {v2}, Lev$c0;->a()V

    iget-object v2, p0, Lev$z;->n:Lev;

    iget-object v2, v2, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lev$z;->n:Lev;

    iget-object v3, p0, Lev$z;->m:Landroidx/media2/common/MediaItem;

    iput-object v3, v2, Lev;->s:Landroidx/media2/common/MediaItem;

    const/4 v4, 0x0

    iput-object v4, v2, Lev;->t:Landroidx/media2/common/MediaItem;

    const/4 v5, -0x1

    iput v5, v2, Lev;->r:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, v3, v4}, Lev;->t0(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
