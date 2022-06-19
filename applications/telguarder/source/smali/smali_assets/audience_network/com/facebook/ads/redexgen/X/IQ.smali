.class public final Lcom/facebook/ads/redexgen/X/IQ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/IP;
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:Ljava/lang/Object;

.field public final A02:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 38488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38489
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    .line 38490
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    const/16 v1, 0xa

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Ljava/util/PriorityQueue;

    .line 38491
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    .line 38492
    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 3

    .line 38493
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 38494
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 38495
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    .line 38496
    monitor-exit v2

    .line 38497
    return-void

    .line 38498
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A01(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 38499
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    monitor-enter v1

    .line 38500
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    if-eq v0, p1, :cond_0

    .line 38501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 38502
    :cond_0
    monitor-exit v1

    .line 38503
    return-void

    .line 38504
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A02(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/IP;
        }
    .end annotation

    .line 38505
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 38506
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    if-ne v0, p1, :cond_0

    .line 38507
    monitor-exit v2

    .line 38508
    return-void

    .line 38509
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/IP;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IP;-><init>(II)V

    .end local v1
    throw v0

    .line 38510
    .restart local v1
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final A03(I)V
    .locals 3

    .line 38511
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 38512
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 38513
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    .line 38514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 38515
    monitor-exit v2

    .line 38516
    return-void

    .line 38517
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
