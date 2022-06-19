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


# static fields
.field public static A02:[Ljava/lang/String;


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
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/60;->A00()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 14203
    .local p1, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14204
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    .line 14205
    iput p1, p0, Lcom/facebook/ads/redexgen/X/60;->A00:I

    .line 14206
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dOZKS2ZI7II"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "H1g7gqR2EKn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "HfxVquxaUjpYbjJdoITajwkesDv6b5OP"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LKGrDWI4UhzaVgtHDOFVkFmAOkdfM3kS"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eoAuUQbCqIbnVyiqi6nAqoKpMgu8SE72"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BREsl3NjjeIkGT8YX46XMxY6QnBlFPku"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "r0N9JiiALcRfLFwgFUe0Fbolf1MfiQ1h"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "O05UPhpRrjuDMd"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/60;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized A01()I
    .locals 4

    .local v0, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 14207
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->remainingCapacity()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/60;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/60;->A02:[Ljava/lang/String;

    const-string v1, "R8iXUhs6Ry9t7OlTnDSaYaqPOUvaVcmE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 14208
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 14210
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 14211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A03()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .local v0, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    monitor-enter p0

    .line 14212
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 14214
    .end local v0    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 14215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04()Ljava/util/List;
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

    .line 14216
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14217
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

    .line 14218
    .local v0, "dataObject":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14219
    .end local v1    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :cond_0
    monitor-exit p0

    return-object v2

    .line 14220
    .end local p0    # "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A05(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .local p1, "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    .local v0, "object":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 14221
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/60;->A00:I

    if-gtz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14222
    monitor-exit p0

    return-void

    .line 14223
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/60;->A01()I

    move-result v0

    if-nez v0, :cond_1

    .line 14224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    .line 14225
    .end local p1    # "this":Lcom/facebook/ads/redexgen/X/60;, "Lcom/facebook/ads/internal/botdetection/interval/buffer/CircularBuffer<TT;>;"
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/60;->A01:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14226
    monitor-exit p0

    return-void

    .line 14227
    .end local v0    # "object":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
