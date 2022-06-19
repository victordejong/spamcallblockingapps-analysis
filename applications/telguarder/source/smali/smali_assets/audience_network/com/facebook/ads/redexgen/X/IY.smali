.class public final Lcom/facebook/ads/redexgen/X/IY;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:J

.field public A01:J

.field public volatile A02:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IY;->A02()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 38652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38653
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    .line 38654
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/IY;->A03(J)V

    .line 38655
    return-void
.end method

.method public static A00(J)J
    .locals 4

    .line 38656
    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p0

    const-wide/32 v0, 0x15f90

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A01(J)J
    .locals 4

    .line 38657
    const-wide/32 v2, 0x15f90

    mul-long/2addr v2, p0

    const-wide/32 v0, 0xf4240

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UIrj4cZOOITgIBusFoMtlYfFe4lto6Hl"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "T7rDS2JrplTwyaU4S9y1fOK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4tgaOnvfGNQiu3r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XYp2jAiK88JK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uVAD5p0rbGy3RHCm80zoFrm"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BaXZads0BvcP8Ye"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "psSfSdLPWY0bE4f8IwMBqMEHhXJnPKfI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "6OI5eQULog0B"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IY;->A03:[Ljava/lang/String;

    return-void
.end method

.method private final declared-synchronized A03(J)V
    .locals 5

    monitor-enter p0

    .line 38658
    :try_start_0
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38659
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38660
    monitor-exit p0

    return-void

    .line 38661
    .end local v1
    .end local p1    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A04()J
    .locals 2

    .line 38662
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:J

    return-wide v0
.end method

.method public final A05()J
    .locals 7

    .line 38663
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v5

    if-eqz v0, :cond_1

    .line 38664
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:J

    add-long/2addr v5, v0

    .line 38665
    :cond_0
    :goto_0
    return-wide v5

    .line 38666
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    move-wide v5, v3

    goto :goto_0
.end method

.method public final A06()J
    .locals 7

    .line 38667
    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v5, v1

    if-nez v0, :cond_0

    .line 38668
    const-wide/16 v3, 0x0

    .line 38669
    :goto_0
    return-wide v3

    .line 38670
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:J

    goto :goto_0
.end method

.method public final A07(J)J
    .locals 5

    .line 38671
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    .line 38672
    return-wide v3

    .line 38673
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 38674
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    .line 38675
    :goto_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:J

    add-long/2addr v0, p1

    return-wide v0

    .line 38676
    :cond_1
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/IY;->A00:J

    sget-object v2, Lcom/facebook/ads/redexgen/X/IY;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/IY;->A03:[Ljava/lang/String;

    const-string v1, "XCP35lBDzdmUC4Mv0KMuPDKpvm6z8UoE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "RMlN7LPNm7pGByA3f5MEdDhud14LT81P"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 38677
    sub-long/2addr v3, p1

    iput-wide v3, p0, Lcom/facebook/ads/redexgen/X/IY;->A01:J

    .line 38678
    :cond_3
    monitor-enter p0

    .line 38679
    :try_start_0
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    .line 38680
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 38681
    monitor-exit p0

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final A08(J)J
    .locals 11

    .line 38682
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    .line 38683
    return-wide v3

    .line 38684
    :cond_0
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 38685
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/IY;->A01(J)J

    move-result-wide v9

    .line 38686
    .local p0, "lastPts":J
    const-wide v2, 0x100000000L

    add-long/2addr v2, v9

    const-wide v7, 0x200000000L

    div-long/2addr v2, v7

    .line 38687
    .local v2, "closestWrapCount":J
    const-wide/16 v0, 0x1

    sub-long v5, v2, v0

    mul-long/2addr v5, v7

    add-long/2addr v5, p1

    .line 38688
    .local v1, "ptsWrapBelow":J
    mul-long/2addr v7, v2

    add-long/2addr v7, p1

    .line 38689
    .local v4, "ptsWrapAbove":J
    sub-long v0, v5, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sub-long v0, v7, v9

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 38690
    :goto_0
    move-wide p1, v5

    .line 38691
    .end local p0    # "lastPts":J
    .end local v2    # "closestWrapCount":J
    .end local v4    # "ptsWrapAbove":J
    .end local v1    # "ptsWrapBelow":J
    :cond_1
    invoke-static {p1, p2}, Lcom/facebook/ads/redexgen/X/IY;->A00(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/IY;->A07(J)J

    move-result-wide v0

    return-wide v0

    .line 38692
    :cond_2
    move-wide v5, v7

    goto :goto_0
.end method

.method public final A09()V
    .locals 2

    .line 38693
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/IY;->A02:J

    .line 38694
    return-void
.end method
