.class public final Lcom/facebook/ads/redexgen/X/FW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/FV;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:J

.field public A07:J

.field public A08:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A09:Z

.field public A0A:Z

.field public A0B:[I

.field public A0C:[I

.field public A0D:[I

.field public A0E:[J

.field public A0F:[J

.field public A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A0H:[Lcom/facebook/ads/redexgen/X/CR;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FW;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32640
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    .line 32641
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    .line 32642
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    .line 32643
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    .line 32644
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    .line 32645
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    .line 32646
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/CR;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    .line 32647
    new-array v0, v1, [Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 32648
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    .line 32649
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    .line 32650
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    .line 32651
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0A:Z

    .line 32652
    return-void
.end method

.method private A00(I)I
    .locals 2

    .line 32653
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    add-int/2addr v1, p1

    .line 32654
    .local p0, "relativeIndex":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    if-ge v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method private A01(IIJZ)I
    .locals 5

    .line 32655
    const/4 v4, -0x1

    .line 32656
    .local p0, "sampleCountToTarget":I
    .local p1, "searchIndex":I
    const/4 v3, 0x0

    .local p2, "i":I
    :goto_0
    if-ge v3, p2, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p3

    if-gtz v0, :cond_3

    .line 32657
    if-eqz p5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    aget v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 32658
    :cond_0
    move v4, v3

    .line 32659
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 32660
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    if-ne p1, v0, :cond_2

    .line 32661
    const/4 p1, 0x0

    .line 32662
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32663
    .end local p2    # "i":I
    :cond_3
    return v4
.end method

.method private A02(I)J
    .locals 4

    .line 32664
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    .line 32665
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/FW;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    .line 32666
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32667
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 32668
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32669
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    if-lt v1, v0, :cond_0

    .line 32670
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32671
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 32672
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    if-gez v0, :cond_1

    .line 32673
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 32674
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-nez v0, :cond_3

    .line 32675
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 32676
    .local p0, "relativeLastDiscardIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2

    .line 32677
    .end local p0    # "relativeLastDiscardIndex":I
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    aget-wide v0, v1, v0

    return-wide v0
.end method

.method private A03(I)J
    .locals 6

    .line 32678
    if-nez p1, :cond_1

    .line 32679
    const-wide/high16 v3, -0x8000000000000000L

    sget-object v1, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "trBZICYmBg69D"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-wide v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32680
    :cond_1
    const-wide/high16 v1, -0x8000000000000000L

    .line 32681
    .local p0, "largestTimestampUs":J
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v0

    .line 32682
    .local v3, "relativeSampleIndex":I
    const/4 v5, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v5, p1, :cond_2

    .line 32683
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v3, v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 32684
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    aget v3, v3, v0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 32685
    .end local v3    # "i":I
    :cond_2
    return-wide v1

    .line 32686
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 32687
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 32688
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    add-int/lit8 v0, v0, -0x1

    .line 32689
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WeSbqNyVuMBDy3yVdkqjwtvf1FCTQ9Tg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZI07SojfPyerSYoyXFFZ37ylYrYdXQh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zYHdmwYrkMGSkGZMotUZVYMklsrLmQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "RUPhrtZVRlD4Trk"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "J6c4HHf7ypxENNZibtBVLAPbip"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "aZ75OXDWk3PXux7m4MVNSP087WuNN5Tt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5Gmtv4pGzwVsV1NSZgccLHq6OSu4IwL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    return-void
.end method

.method private final declared-synchronized A05(J)V
    .locals 2

    monitor-enter p0

    .line 32690
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32691
    monitor-exit p0

    return-void

    .line 32692
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FW;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A06()I
    .locals 2

    .line 32693
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A07()I
    .locals 2

    .line 32694
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final declared-synchronized A08()I
    .locals 2

    monitor-enter p0

    .line 32695
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v1, v0

    .line 32696
    .local p0, "skipCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32697
    monitor-exit p0

    return v1

    .line 32698
    .end local p0    # "skipCount":I
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A09(JZZ)I
    .locals 10

    monitor-enter p0

    .line 32699
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v5

    .line 32700
    .local p0, "relativeReadIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FW;->A0J()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v1, v0, v5

    move-wide v7, p1

    cmp-long v0, v7, v1

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    cmp-long v0, v7, v1

    if-lez v0, :cond_1

    if-nez p4, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32701
    .end local v7
    .end local v3
    :cond_0
    monitor-exit p0

    return v3

    .line 32702
    :cond_1
    :try_start_1
    iget v6, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v6, v0

    move-object v4, p0

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/FW;->A01(IIJZ)I

    move-result v1

    .line 32703
    .local v7, "offset":I
    if-ne v1, v3, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32704
    monitor-exit p0

    return v3

    .line 32705
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32706
    monitor-exit p0

    return v1

    .line 32707
    .end local p0    # "relativeReadIndex":I
    .end local v0
    .end local p1    # null:J
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0A(Lcom/facebook/ads/redexgen/X/AD;Lcom/facebook/ads/redexgen/X/Vt;ZZLcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/redexgen/X/FV;)I
    .locals 5

    monitor-enter p0

    .line 32708
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FW;->A0J()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v4, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    .line 32709
    if-eqz p4, :cond_0

    .line 32710
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/BV;->A02(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32711
    monitor-exit p0

    return v3

    .line 32712
    .end local p6    # null:Lcom/facebook/ads/redexgen/X/FV;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    if-eq v0, p5, :cond_2

    .line 32713
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32714
    monitor-exit p0

    return v1

    .line 32715
    :cond_2
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "SAKw9ERp3CV5FWMWK"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32716
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v2

    .line 32717
    .local p0, "relativeReadIndex":I
    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget-object v0, v0, v2

    if-eq v0, p5, :cond_6

    .line 32718
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    aget-object v0, v0, v2

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/AD;->A00:Lcom/facebook/ads/internal/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32719
    monitor-exit p0

    return v1

    .line 32720
    :cond_6
    :try_start_3
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Vt;->A0B()Z

    move-result v0

    if-eqz v0, :cond_7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32721
    monitor-exit p0

    return v4

    .line 32722
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v0, v0, v2

    iput-wide v0, p2, Lcom/facebook/ads/redexgen/X/Vt;->A00:J

    .line 32723
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/BV;->A02(I)V

    .line 32724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    aget v0, v0, v2

    iput v0, p6, Lcom/facebook/ads/redexgen/X/FV;->A00:I

    .line 32725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    aget-wide v0, v0, v2

    iput-wide v0, p6, Lcom/facebook/ads/redexgen/X/FV;->A01:J

    .line 32726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    aget-object v0, v0, v2

    iput-object v0, p6, Lcom/facebook/ads/redexgen/X/FV;->A02:Lcom/facebook/ads/redexgen/X/CR;

    .line 32727
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32728
    monitor-exit p0

    return v3

    .line 32729
    .end local p0    # "relativeReadIndex":I
    .end local v0
    .end local v1
    .end local v4
    .end local v3
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0B()J
    .locals 2

    monitor-enter p0

    .line 32730
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32731
    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 32732
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A02(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 32733
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0C()J
    .locals 2

    monitor-enter p0

    .line 32734
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FW;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0D(I)J
    .locals 5

    .line 32735
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/FW;->A07()I

    move-result v2

    sub-int/2addr v2, p1

    .line 32736
    .local p0, "discardCount":I
    const/4 v4, 0x1

    if-ltz v2, :cond_0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    sub-int/2addr v1, v0

    if-gt v2, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A03(Z)V

    .line 32737
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32738
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    .line 32739
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-nez v0, :cond_1

    .line 32740
    const-wide/16 v0, 0x0

    return-wide v0

    .line 32741
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32742
    :cond_1
    sub-int/2addr v0, v4

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v1

    .line 32743
    .local p1, "relativeLastWriteIndex":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    aget v0, v0, v1

    int-to-long v0, v0

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final declared-synchronized A0E(JZZ)J
    .locals 11

    monitor-enter p0

    .line 32744
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    const-wide/16 v3, -0x1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    aget-wide v1, v1, v0

    move-wide v8, p1

    cmp-long v0, v8, v1

    if-gez v0, :cond_0

    goto :goto_1

    .line 32745
    :cond_0
    if-eqz p4, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    add-int/lit8 v7, v0, 0x1

    goto :goto_0

    .end local v0
    :cond_1
    iget v7, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32746
    .local v0, "searchLength":I
    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    move-object v5, p0

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/FW;->A01(IIJZ)I

    move-result v1

    .line 32747
    .local p0, "discardCount":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32748
    monitor-exit p0

    return-wide v3

    .line 32749
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/FW;->A02(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 32750
    .end local p0    # "discardCount":I
    .end local v0    # "searchLength":I
    :cond_3
    :goto_1
    monitor-exit p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x17

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "5Iw9nm1379wDyQFvNzkyD4csM09"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-wide v3

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32751
    .end local v1
    .end local v0
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0F()Lcom/facebook/ads/internal/exoplayer2/Format;
    .locals 1

    monitor-enter p0

    .line 32752
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    goto :goto_1

    :goto_0
    const/4 v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0G()V
    .locals 1

    monitor-enter p0

    .line 32753
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32754
    monitor-exit p0

    return-void

    .line 32755
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0H(JIJILcom/facebook/ads/redexgen/X/CR;)V
    .locals 13

    move-object v4, p0

    monitor-enter p0

    .line 32756
    :try_start_0
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0A:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 32757
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32758
    monitor-exit p0

    return-void

    .line 32759
    :cond_0
    :try_start_1
    iput-boolean v5, v4, Lcom/facebook/ads/redexgen/X/FW;->A0A:Z

    .line 32760
    .end local v0
    :cond_1
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    const/4 v3, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 32761
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FW;->A05(J)V

    .line 32762
    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v2

    .line 32763
    .local p0, "relativeEndIndex":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aput-wide p1, v0, v2

    .line 32764
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    aput-wide p4, v0, v2

    .line 32765
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    aput p6, v0, v2

    .line 32766
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    aput p3, v0, v2

    .line 32767
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    aput-object p7, v0, v2

    .line 32768
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    aput-object v0, v1, v2

    .line 32769
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A05:I

    aput v0, v1, v2

    .line 32770
    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    add-int/2addr v0, v3

    iput v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32771
    iget v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    if-ne v1, v0, :cond_3

    .line 32772
    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    add-int/lit16 v11, v0, 0x3e8

    .line 32773
    .local p3, "newCapacity":I
    new-array v12, v11, [I

    .line 32774
    .local p4, "newSourceIds":[I
    new-array v10, v11, [J

    .line 32775
    .local v5, "newOffsets":[J
    new-array v9, v11, [J

    .line 32776
    .local p6, "newTimesUs":[J
    new-array v8, v11, [I

    .line 32777
    .local p7, "newFlags":[I
    new-array v7, v11, [I

    .line 32778
    .local v4, "newSizes":[I
    new-array v6, v11, [Lcom/facebook/ads/redexgen/X/CR;

    .line 32779
    .local v0, "newCryptoDatas":[Lcom/facebook/ads/redexgen/X/CR;
    new-array v3, v11, [Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 32780
    .local v5, "newFormats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    iget v2, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    sub-int/2addr v2, v0

    .line 32781
    .local v0, "beforeWrap":I
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v10, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32782
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v9, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32783
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32784
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v7, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32785
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v6, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32786
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32787
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    invoke-static {v1, v0, v12, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32788
    iget v1, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32789
    .local v0, "afterWrap":I
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    invoke-static {v0, v5, v10, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32790
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    invoke-static {v0, v5, v9, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32791
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    invoke-static {v0, v5, v8, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32792
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    invoke-static {v0, v5, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32793
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    invoke-static {v0, v5, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32794
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {v0, v5, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32795
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    invoke-static {v0, v5, v12, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32796
    iput-object v10, v4, Lcom/facebook/ads/redexgen/X/FW;->A0E:[J

    .line 32797
    iput-object v9, v4, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    .line 32798
    iput-object v8, v4, Lcom/facebook/ads/redexgen/X/FW;->A0B:[I

    .line 32799
    iput-object v7, v4, Lcom/facebook/ads/redexgen/X/FW;->A0C:[I

    .line 32800
    iput-object v6, v4, Lcom/facebook/ads/redexgen/X/FW;->A0H:[Lcom/facebook/ads/redexgen/X/CR;

    .line 32801
    iput-object v3, v4, Lcom/facebook/ads/redexgen/X/FW;->A0G:[Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 32802
    iput-object v12, v4, Lcom/facebook/ads/redexgen/X/FW;->A0D:[I

    .line 32803
    iput v5, v4, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32804
    iget v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    iput v0, v4, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32805
    iput v11, v4, Lcom/facebook/ads/redexgen/X/FW;->A01:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32806
    .end local p3    # "newCapacity":I
    .end local p4    # "newSourceIds":[I
    .end local v5    # "newFormats":[Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local p6    # "newTimesUs":[J
    .end local p7    # "newFlags":[I
    .end local v4    # "newSizes":[I
    .end local v0    # "afterWrap":I
    .end local v5
    .end local v0
    .end local v0
    :cond_3
    monitor-exit p0

    return-void

    .line 32807
    .end local p0    # "relativeEndIndex":I
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0I(Z)V
    .locals 3

    .line 32808
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32809
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    .line 32810
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A04:I

    .line 32811
    iput v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 32812
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A0A:Z

    .line 32813
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    .line 32814
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A07:J

    .line 32815
    if-eqz p1, :cond_0

    .line 32816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 32817
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    .line 32818
    :cond_0
    return-void
.end method

.method public final declared-synchronized A0J()Z
    .locals 2

    monitor-enter p0

    .line 32819
    :try_start_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return v0

    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0K(J)Z
    .locals 7

    monitor-enter p0

    .line 32820
    :try_start_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    .line 32821
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    const/4 v4, 0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v4

    .line 32822
    .end local v0
    :cond_1
    :try_start_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A06:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    .line 32823
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A03(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 32824
    .local v0, "largestReadTimestampUs":J
    cmp-long v0, v1, p1

    if-ltz v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32825
    monitor-exit p0

    return v4

    .line 32826
    :cond_2
    :try_start_2
    iget v4, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    .line 32827
    .local p0, "retainCount":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A02:I

    sub-int/2addr v0, v6

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A00(I)I

    move-result v5

    .line 32828
    .local p1, "relativeSampleIndex":I
    :cond_3
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A03:I

    if-le v4, v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A0F:[J

    aget-wide v0, v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v3, v0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/FW;->A0I:[Ljava/lang/String;

    const-string v1, "mUvD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ltz v3, :cond_5

    .line 32829
    add-int/lit8 v4, v4, -0x1

    .line 32830
    add-int/lit8 v5, v5, -0x1

    .line 32831
    const/4 v0, -0x1

    if-ne v5, v0, :cond_3

    .line 32832
    :try_start_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A01:I

    add-int/lit8 v5, v0, -0x1

    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 32833
    :cond_5
    :try_start_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A00:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/FW;->A0D(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32834
    monitor-exit p0

    return v6

    .line 32835
    .end local p0    # "retainCount":I
    .end local p1    # "relativeSampleIndex":I
    .end local v0    # "largestReadTimestampUs":J
    .end local v2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0L(Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 3

    monitor-enter p0

    .line 32836
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 32837
    :try_start_0
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32838
    monitor-exit p0

    return v1

    .line 32839
    .end local v1
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/FW;->A09:Z

    .line 32840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32841
    monitor-exit p0

    return v1

    .line 32842
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FW;->A08:Lcom/facebook/ads/internal/exoplayer2/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32843
    monitor-exit p0

    return v2

    .line 32844
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
