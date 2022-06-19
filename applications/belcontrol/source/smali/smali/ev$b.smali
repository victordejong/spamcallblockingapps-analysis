.class public Lev$b;
.super Lev$h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->L()Lcom/google/common/util/concurrent/ListenableFuture;
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
.field public final synthetic m:Lev;


# direct methods
.method public constructor <init>(Lev;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lev$b;->m:Lev;

    invoke-direct {p0, p2}, Lev$h0;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public t()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lev$b;->m:Lev;

    iget-object v0, v0, Lev;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lev$b;->m:Lev;

    iget v2, v1, Lev;->r:I

    const/4 v3, -0x2

    if-gez v2, :cond_0

    invoke-virtual {v1, v3}, Lev;->V(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lev;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_3

    iget-object v1, p0, Lev$b;->m:Lev;

    iget v2, v1, Lev;->q:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Lev;->V(I)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :cond_3
    iget-object v1, p0, Lev$b;->m:Lev;

    iput v2, v1, Lev;->r:I

    invoke-virtual {v1}, Lev;->B0()Lka;

    iget-object v1, p0, Lev$b;->m:Lev;

    iget-object v2, v1, Lev;->s:Landroidx/media2/common/MediaItem;

    iget-object v3, v1, Lev;->t:Landroidx/media2/common/MediaItem;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2, v3}, Lev;->t0(Landroidx/media2/common/MediaItem;Landroidx/media2/common/MediaItem;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lev$b;->m:Lev;

    invoke-virtual {v1}, Lev;->A0()Lxv;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
