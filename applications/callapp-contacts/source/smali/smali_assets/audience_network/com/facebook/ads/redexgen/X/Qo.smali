.class public final Lcom/facebook/ads/redexgen/X/Qo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/G1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 49565
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qo;->A01()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/Qo;->A02:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G1;)V
    .locals 2

    .line 49566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49567
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qo;->A01:Lcom/facebook/ads/redexgen/X/G1;

    .line 49568
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    .line 49569
    new-instance v1, Lcom/facebook/ads/redexgen/X/Qn;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Qn;-><init>(Lcom/facebook/ads/redexgen/X/Qo;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49570
    .local p0, "scheduler":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49571
    return-void
.end method

.method private A00()V
    .locals 9

    .line 49572
    :goto_0
    monitor-enter p0

    .line 49573
    :try_start_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49574
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49575
    :catch_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 49576
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 49577
    .local p0, "current":J
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    cmp-long v0, v7, v1

    if-gez v0, :cond_1

    .line 49578
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    sub-long/2addr v2, v7

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    long-to-int v7, v2

    .line 49579
    .local v0, "millisToSleep":I
    int-to-long v3, v7

    const-wide/16 v1, 0x1

    cmp-long v0, v3, v1

    if-ltz v0, :cond_1

    .line 49580
    int-to-long v0, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49581
    :catch_1
    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 49582
    .end local v0    # "millisToSleep":I
    :cond_1
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    .line 49583
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qo;->A01:Lcom/facebook/ads/redexgen/X/G1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/G1;->A0A()V

    .line 49585
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 49586
    monitor-enter p0

    .line 49587
    :try_start_5
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_2

    .line 49588
    iput-wide v5, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    .line 49589
    :cond_2
    monitor-exit p0

    goto :goto_0

    .restart local p0    # "current":J
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 49590
    .end local p0    # "current":J
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "qsn7C6zn3PdSVfgubJel9atpLV8UzMkS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "d5sl1UvhAH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "h3HSO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RPMH8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hkIXVCWcwK478YEFfwbo8RGIomhe8bPZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XzI0qoLX56"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bH89tdse0KsHc3c1ijve"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fX7ikpx60ZPhJLse4FRwcVwuHJXGRP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Qo;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Qo;)V
    .locals 0

    .line 49591
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qo;->A00()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A03()V
    .locals 2

    monitor-enter p0

    .line 49592
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    .line 49593
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49594
    monitor-exit p0

    return-void

    .line 49595
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Qo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A04(I)V
    .locals 7

    monitor-enter p0

    .line 49596
    int-to-long v5, p1

    const-wide/32 v0, 0xf4240

    mul-long/2addr v5, v0

    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Qo;->A02:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3e8

    :goto_0
    int-to-long v0, v0

    mul-long/2addr v5, v0

    .line 49597
    .local p0, "timeNanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    add-long/2addr v3, v5

    .line 49598
    .local v5, "requestedNextSync":J
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    .line 49599
    .end local v0
    :cond_1
    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:J

    .line 49600
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49601
    :cond_2
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qo;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qo;->A03:[Ljava/lang/String;

    const-string v1, "scQbN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "fyfTH"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49602
    .end local p0    # "timeNanos":J
    .end local v5    # "requestedNextSync":J
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
