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

    .line 38362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38363
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    .line 38364
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    const/16 v1, 0xa

    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Ljava/util/PriorityQueue;

    .line 38365
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    .line 38366
    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 3

    .line 38367
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 38368
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 38369
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    .line 38370
    monitor-exit v2

    .line 38371
    return-void

    .line 38372
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

    .line 38373
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    monitor-enter v1

    .line 38374
    :goto_0
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    if-eq v0, p1, :cond_0

    .line 38375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 38376
    :cond_0
    monitor-exit v1

    .line 38377
    return-void

    .line 38378
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

    .line 38379
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 38380
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    if-ne v0, p1, :cond_0

    .line 38381
    monitor-exit v2

    .line 38382
    return-void

    .line 38383
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/IP;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/IP;-><init>(II)V

    .end local v1
    throw v0

    .line 38384
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

    .line 38385
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    monitor-enter v2

    .line 38386
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IQ;->A02:Ljava/util/PriorityQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    .line 38387
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

    .line 38388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IQ;->A01:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 38389
    monitor-exit v2

    .line 38390
    return-void

    .line 38391
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
