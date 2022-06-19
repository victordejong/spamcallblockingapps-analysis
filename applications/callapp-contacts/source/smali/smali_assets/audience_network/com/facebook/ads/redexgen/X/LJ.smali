.class public final Lcom/facebook/ads/redexgen/X/LJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/LI;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/LI;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/LH;

.field public final A03:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 1

    .line 42529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42530
    new-instance v0, Lcom/facebook/ads/redexgen/X/LH;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/LH;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:Lcom/facebook/ads/redexgen/X/LH;

    .line 42531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LH;->A02()V

    .line 42532
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/LJ;->A03:Ljava/lang/Runnable;

    .line 42533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:Z

    .line 42534
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/LJ;)Lcom/facebook/ads/redexgen/X/LH;
    .locals 0

    .line 42535
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:Lcom/facebook/ads/redexgen/X/LH;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/LJ;Lcom/facebook/ads/redexgen/X/LI;)Lcom/facebook/ads/redexgen/X/LI;
    .locals 0

    .line 42536
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Lcom/facebook/ads/redexgen/X/LI;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/LJ;)Ljava/lang/Runnable;
    .locals 0

    .line 42537
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A03:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final declared-synchronized A03()V
    .locals 1

    monitor-enter p0

    .line 42538
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Lcom/facebook/ads/redexgen/X/LI;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42539
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/LI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LI;-><init>(Lcom/facebook/ads/redexgen/X/LJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Lcom/facebook/ads/redexgen/X/LI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42540
    monitor-exit p0

    return-void

    .line 42541
    .end local v0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 42542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/LH;
    .locals 1

    .line 42543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:Lcom/facebook/ads/redexgen/X/LH;

    return-object v0
.end method

.method public final declared-synchronized A05()V
    .locals 1

    monitor-enter p0

    .line 42544
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42545
    monitor-exit p0

    return-void

    .line 42546
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Lcom/facebook/ads/redexgen/X/LI;

    if-nez v0, :cond_1

    .line 42547
    new-instance v0, Lcom/facebook/ads/redexgen/X/LI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LI;-><init>(Lcom/facebook/ads/redexgen/X/LJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Lcom/facebook/ads/redexgen/X/LI;

    .line 42548
    .end local v0
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Lcom/facebook/ads/redexgen/X/LI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LI;->A01()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42549
    monitor-exit p0

    return-void

    .line 42550
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06()V
    .locals 1

    monitor-enter p0

    .line 42551
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A02:Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LH;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:Z

    if-nez v0, :cond_0

    .line 42552
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LJ;->A03()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42553
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 42554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42555
    monitor-enter p0

    .line 42556
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A01:Z

    .line 42557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LJ;->A00:Lcom/facebook/ads/redexgen/X/LI;

    .line 42558
    .local p0, "executing":Lcom/facebook/ads/redexgen/X/LI;
    monitor-exit p0

    .line 42559
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42560
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LI;->close()V

    .line 42561
    :cond_0
    return-void

    .line 42562
    .end local p0    # "executing":Lcom/facebook/ads/redexgen/X/LI;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
