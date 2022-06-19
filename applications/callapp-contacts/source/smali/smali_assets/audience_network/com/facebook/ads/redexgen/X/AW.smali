.class public final Lcom/facebook/ads/redexgen/X/AW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/AU;,
        Lcom/facebook/ads/redexgen/X/AV;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Landroid/os/Handler;

.field public A04:Ljava/lang/Object;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/AU;

.field public final A0B:Lcom/facebook/ads/redexgen/X/AV;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Af;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AU;Lcom/facebook/ads/redexgen/X/AV;Lcom/facebook/ads/redexgen/X/Af;ILandroid/os/Handler;)V
    .locals 2

    .line 21331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21332
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AW;->A0A:Lcom/facebook/ads/redexgen/X/AU;

    .line 21333
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AW;->A0B:Lcom/facebook/ads/redexgen/X/AV;

    .line 21334
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AW;->A0C:Lcom/facebook/ads/redexgen/X/Af;

    .line 21335
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/AW;->A03:Landroid/os/Handler;

    .line 21336
    iput p4, p0, Lcom/facebook/ads/redexgen/X/AW;->A01:I

    .line 21337
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A02:J

    .line 21338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A05:Z

    .line 21339
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 21340
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 21341
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A01:I

    return v0
.end method

.method public final A02()J
    .locals 2

    .line 21342
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A02:J

    return-wide v0
.end method

.method public final A03()Landroid/os/Handler;
    .locals 1

    .line 21343
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A03:Landroid/os/Handler;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/AV;
    .locals 1

    .line 21344
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A0B:Lcom/facebook/ads/redexgen/X/AV;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/AW;
    .locals 6

    .line 21345
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21346
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/AW;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 21347
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A05:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 21348
    :cond_0
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    .line 21349
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A0A:Lcom/facebook/ads/redexgen/X/AU;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/AU;->ADe(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 21350
    return-object p0
.end method

.method public final A06(I)Lcom/facebook/ads/redexgen/X/AW;
    .locals 1

    .line 21351
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21352
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AW;->A00:I

    .line 21353
    return-object p0
.end method

.method public final A07(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AW;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21354
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21355
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AW;->A04:Ljava/lang/Object;

    .line 21356
    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/Af;
    .locals 1

    .line 21357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A0C:Lcom/facebook/ads/redexgen/X/Af;

    return-object v0
.end method

.method public final A09()Ljava/lang/Object;
    .locals 1

    .line 21358
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A04:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized A0A(Z)V
    .locals 1

    monitor-enter p0

    .line 21359
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A07:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A07:Z

    .line 21360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A08:Z

    .line 21361
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21362
    monitor-exit p0

    return-void

    .line 21363
    .end local p1    # null:Z
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0B()Z
    .locals 1

    .line 21364
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A05:Z

    return v0
.end method

.method public final declared-synchronized A0C()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 21365
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A03:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21367
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A08:Z

    if-nez v0, :cond_1

    .line 21368
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 21369
    .end local v0
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A07:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 21370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0D()Z
    .locals 1

    monitor-enter p0

    .line 21371
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A06:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
