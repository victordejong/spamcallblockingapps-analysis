.class public final Lcom/facebook/ads/redexgen/X/60;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 14294
    .local p1, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14295
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 14296
    iput p1, p0, Lcom/facebook/ads/redexgen/X/60;->A00:I

    .line 14297
    return-void
.end method


# virtual methods
.method public final declared-synchronized A00()I
    .locals 1

    .local v0, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 14298
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A01()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 14299
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14300
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 14301
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 14302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 14303
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 14305
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 14306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .local v1, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 14307
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14308
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 14309
    .local v0, "dataObject":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14310
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    .line 14311
    .end local p0    # "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p1, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    .local v0, "object":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 14312
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/60;->A00:I

    if-gtz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14313
    monitor-exit p0

    return-void

    .line 14314
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/60;->A00()I

    move-result v0

    if-nez v0, :cond_1

    .line 14315
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    .line 14316
    .end local p1    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14317
    monitor-exit p0

    return-void

    .line 14318
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
