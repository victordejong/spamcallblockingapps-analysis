.class public final Lcom/facebook/ads/redexgen/X/LL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/LK;
    }
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/LK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/LJ;

.field public final A03:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LL;->A03()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 1

    .line 42516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42517
    new-instance v0, Lcom/facebook/ads/redexgen/X/LJ;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/LJ;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    .line 42518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->A03()V

    .line 42519
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/LL;->A03:Ljava/lang/Runnable;

    .line 42520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A01:Z

    .line 42521
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/LL;)Lcom/facebook/ads/redexgen/X/LJ;
    .locals 0

    .line 42522
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/LL;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/LL;Lcom/facebook/ads/redexgen/X/LK;)Lcom/facebook/ads/redexgen/X/LK;
    .locals 0

    .line 42523
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/LL;->A00:Lcom/facebook/ads/redexgen/X/LK;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/LL;)Ljava/lang/Runnable;
    .locals 0

    .line 42524
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/LL;->A03:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2nsg4el0A36VlU4U8wemERyTuqctIl3X"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "w3qUCjKKK24gB07R4rR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZVNPBsOFX1bAxJj3fQki87COWAfLG"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mpzve1eraJ8JhnkGdultfsvzzpiMOKpH"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "U8bryNR3LCM1LxZog8V2FVyOpNmHugiy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1HLK5EBzLd8epMQfY3U"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "1ehYfK7uV86W4fKjAngeizearXslbsnm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "HjmP4yohGmQdGVrMD8wvNLQASyuWPcUt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/LL;->A04:[Ljava/lang/String;

    return-void
.end method

.method private final declared-synchronized A04()V
    .locals 1

    monitor-enter p0

    .line 42525
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A00:Lcom/facebook/ads/redexgen/X/LK;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A01:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 42526
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/LK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LK;-><init>(Lcom/facebook/ads/redexgen/X/LL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A00:Lcom/facebook/ads/redexgen/X/LK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42527
    monitor-exit p0

    return-void

    .line 42528
    .end local v0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 42529
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A05()Lcom/facebook/ads/redexgen/X/LJ;
    .locals 1

    .line 42530
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    return-object v0
.end method

.method public final declared-synchronized A06()V
    .locals 3

    monitor-enter p0

    .line 42531
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A01:Z

    if-eqz v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42532
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/LL;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/LL;->A04:[Ljava/lang/String;

    const-string v1, "tK4OUmLBjO9bQzngwvS"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "OjFtrLzzdWDa9SRwOWW"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42533
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A00:Lcom/facebook/ads/redexgen/X/LK;

    if-nez v0, :cond_2

    .line 42534
    new-instance v0, Lcom/facebook/ads/redexgen/X/LK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LK;-><init>(Lcom/facebook/ads/redexgen/X/LL;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A00:Lcom/facebook/ads/redexgen/X/LK;

    .line 42535
    .end local v0
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A00:Lcom/facebook/ads/redexgen/X/LK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LK;->A00()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42536
    monitor-exit p0

    return-void

    .line 42537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A07()V
    .locals 1

    monitor-enter p0

    .line 42538
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A02:Lcom/facebook/ads/redexgen/X/LJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LJ;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A01:Z

    if-nez v0, :cond_0

    .line 42539
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/LL;->A04()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42540
    .end local v0
    :cond_0
    monitor-exit p0

    return-void

    .line 42541
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

    .line 42542
    monitor-enter p0

    .line 42543
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A01:Z

    .line 42544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/LL;->A00:Lcom/facebook/ads/redexgen/X/LK;

    .line 42545
    .local p0, "executing":Lcom/facebook/ads/redexgen/X/LK;
    monitor-exit p0

    .line 42546
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42547
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LK;->close()V

    .line 42548
    :cond_0
    return-void

    .line 42549
    .end local p0    # "executing":Lcom/facebook/ads/redexgen/X/LK;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
