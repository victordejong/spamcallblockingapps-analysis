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


# static fields
.field public static A0D:[Ljava/lang/String;


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
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/AW;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AU;Lcom/facebook/ads/redexgen/X/AV;Lcom/facebook/ads/redexgen/X/Af;ILandroid/os/Handler;)V
    .locals 2

    .line 21470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21471
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AW;->A0A:Lcom/facebook/ads/redexgen/X/AU;

    .line 21472
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/AW;->A0B:Lcom/facebook/ads/redexgen/X/AV;

    .line 21473
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/AW;->A0C:Lcom/facebook/ads/redexgen/X/Af;

    .line 21474
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/AW;->A03:Landroid/os/Handler;

    .line 21475
    iput p4, p0, Lcom/facebook/ads/redexgen/X/AW;->A01:I

    .line 21476
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A02:J

    .line 21477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A05:Z

    .line 21478
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "76nfkknO"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uwlw2Olm8AC5Z83gtNFTl1VgEt47Yk4B"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Tji6IW1jyX26zMF5dXXbAaqyAww6Ubr1"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8R3VXNYmCtIV7EQCPHmGU7t"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2L0beZcqTHpgZ13dlqPn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5M5aDT1UXTj8X4rsYyUnjQp4APq3hRMi"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SFGm94UwjLHkawoYEegFV09O2yrmPNwG"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8l7P9J0b9Rh3oEdN98Jo9uJBnmDtgDAH"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/AW;->A0D:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01()I
    .locals 1

    .line 21479
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A00:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 21480
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A01:I

    return v0
.end method

.method public final A03()J
    .locals 2

    .line 21481
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A02:J

    return-wide v0
.end method

.method public final A04()Landroid/os/Handler;
    .locals 1

    .line 21482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A03:Landroid/os/Handler;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/AV;
    .locals 1

    .line 21483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A0B:Lcom/facebook/ads/redexgen/X/AV;

    return-object v0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/AW;
    .locals 6

    .line 21484
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21485
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/AW;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 21486
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A05:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 21487
    :cond_0
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    .line 21488
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A0A:Lcom/facebook/ads/redexgen/X/AU;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/AU;->ADf(Lcom/facebook/ads/redexgen/X/AW;)V

    .line 21489
    return-object p0
.end method

.method public final A07(I)Lcom/facebook/ads/redexgen/X/AW;
    .locals 1

    .line 21490
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21491
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AW;->A00:I

    .line 21492
    return-object p0
.end method

.method public final A08(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/AW;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 21493
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AW;->A04:Ljava/lang/Object;

    .line 21495
    return-object p0
.end method

.method public final A09()Lcom/facebook/ads/redexgen/X/Af;
    .locals 1

    .line 21496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A0C:Lcom/facebook/ads/redexgen/X/Af;

    return-object v0
.end method

.method public final A0A()Ljava/lang/Object;
    .locals 1

    .line 21497
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A04:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized A0B(Z)V
    .locals 3

    monitor-enter p0

    .line 21498
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A07:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A07:Z

    .line 21499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A08:Z

    .line 21500
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21501
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/AW;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/AW;->A0D:[Ljava/lang/String;

    const-string v1, "b07XKeiN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 21502
    .end local p1    # null:Z
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0C()Z
    .locals 1

    .line 21503
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A05:Z

    return v0
.end method

.method public final declared-synchronized A0D()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 21504
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A09:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 21505
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

    .line 21506
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A08:Z

    if-nez v0, :cond_1

    .line 21507
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 21508
    .end local v0
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AW;->A07:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 21509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0E()Z
    .locals 1

    monitor-enter p0

    .line 21510
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
