.class public final Lcom/facebook/ads/redexgen/X/Zf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DM;


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:I

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public A0D:Lcom/facebook/ads/redexgen/X/CS;

.field public A0E:Ljava/lang/String;

.field public A0F:Z

.field public A0G:Z

.field public final A0H:Lcom/facebook/ads/redexgen/X/IL;

.field public final A0I:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0J:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zf;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Zf;->A04()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65532
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0J:Ljava/lang/String;

    .line 65533
    const/16 v1, 0x400

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    .line 65534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    .line 65535
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/IL;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 65536
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v2

    .line 65537
    .local p0, "bitsLeft":I
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/I1;->A02(Lcom/facebook/ads/redexgen/X/IL;Z)Landroid/util/Pair;

    move-result-object v1

    .line 65538
    .local p1, "config":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A05:I

    .line 65539
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A02:I

    .line 65540
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IL;->A02()I

    move-result v0

    sub-int/2addr v2, v0

    return v2
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/IL;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 65541
    const/4 v2, 0x0

    .line 65542
    .local p0, "muxSlotLengthBytes":I
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A03:I

    if-nez v0, :cond_1

    .line 65543
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 65544
    .local p1, "tmp":I
    add-int/2addr v2, v1

    .line 65545
    const/16 v0, 0xff

    if-eq v1, v0, :cond_0

    .line 65546
    return v2

    .line 65547
    .end local p1    # "tmp":I
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IL;)J
    .locals 1

    .line 65548
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 65549
    .local p0, "bytesForValue":I
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zf;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x23

    sget-object v2, Lcom/facebook/ads/redexgen/X/Zf;->A0L:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zf;->A0L:[Ljava/lang/String;

    const-string v1, "gooppkWHFs0OH8ZO7KHmI5JoYki0niEb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "gQ32BKgMXcn7uGYeyK4g8BO1uII782R4"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Zf;->A0K:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x43t
        -0x54t
        -0x4ft
        -0x49t
        0x77t
        -0x4bt
        -0x48t
        0x7ct
        -0x57t
        0x75t
        -0x4ct
        -0x57t
        -0x44t
        -0x4bt
    .end array-data
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "hgUALiBHRBx3rc9PT3qyJLJuKriNjQIA"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JcSPF8dLSzFIe8gapkYyYGiPDe1iVZ7T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "a8IrrF5hi8IFjeZ2lIy6xY1armnYmb5o"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dI536DedIqR9AIwKwKzHAZoNzdw0gd0o"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "spoCU0rWYssiPe95xKAIpCDVtAt9VbvV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZT5oGWr6FGwuE"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "k3I4LHvMKlhfRum43HVkkWOAjRBPWhRl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GOwjxx90kdElmS0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Zf;->A0L:[Ljava/lang/String;

    return-void
.end method

.method private A06(I)V
    .locals 2

    .line 65550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 65551
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A0C([B)V

    .line 65552
    return-void
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/IL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 65553
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    .line 65554
    .local p0, "useSameStreamMux":Z
    if-nez v0, :cond_2

    .line 65555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0G:Z

    .line 65556
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zf;->A09(Lcom/facebook/ads/redexgen/X/IL;)V

    .line 65557
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A00:I

    if-nez v0, :cond_4

    .line 65558
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A04:I

    if-nez v0, :cond_3

    .line 65559
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Zf;->A01(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v0

    .line 65560
    .local p1, "muxSlotLengthBytes":I
    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Zf;->A0A(Lcom/facebook/ads/redexgen/X/IL;I)V

    .line 65561
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0F:Z

    if-eqz v0, :cond_1

    .line 65562
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A09:J

    long-to-int v0, v1

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 65563
    .end local p1    # "muxSlotLengthBytes":I
    :cond_1
    return-void

    .line 65564
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0G:Z

    if-nez v0, :cond_0

    .line 65565
    return-void

    .line 65566
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0

    .line 65567
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/IL;)V
    .locals 6

    .line 65568
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A03:I

    .line 65569
    iget v5, p0, Lcom/facebook/ads/redexgen/X/Zf;->A03:I

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    if-eq v5, v4, :cond_2

    const/4 v1, 0x6

    if-eq v5, v2, :cond_4

    const/4 v0, 0x4

    if-eq v5, v0, :cond_4

    const/4 v0, 0x5

    if-eq v5, v0, :cond_4

    if-eq v5, v1, :cond_1

    const/4 v3, 0x7

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zf;->A0L:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Zf;->A0L:[Ljava/lang/String;

    const-string v1, "QJhjenmrzPYVr6mrKS1ywIZfks2sEqmv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "rtM7Stfru76sVtn814uyI2mxrEEn9Ydu"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq v5, v3, :cond_1

    goto :goto_0

    .line 65570
    :cond_1
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_0

    .line 65571
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 65572
    goto :goto_0

    .line 65573
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 65574
    goto :goto_0

    .line 65575
    :cond_4
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 65576
    :goto_0
    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/IL;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 65577
    move-object/from16 v4, p0

    move-object v4, v4

    const/4 v3, 0x1

    move-object/from16 v5, p1

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 65578
    .local v5, "audioMuxVersion":I
    const/4 v7, 0x0

    if-ne v2, v3, :cond_6

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    :goto_0
    iput v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A00:I

    .line 65579
    iget v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A00:I

    if-nez v0, :cond_9

    .line 65580
    if-ne v2, v3, :cond_0

    .line 65581
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Zf;->A02(Lcom/facebook/ads/redexgen/X/IL;)J

    .line 65582
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 65583
    const/4 v0, 0x6

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    iput v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A04:I

    .line 65584
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v1

    .line 65585
    .local v2, "numProgram":I
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    .line 65586
    .local v7, "numLayer":I
    if-nez v1, :cond_7

    if-nez v0, :cond_7

    .line 65587
    const/16 v6, 0x8

    if-nez v2, :cond_5

    .line 65588
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A04()I

    move-result v0

    .line 65589
    .local v0, "startPosition":I
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Zf;->A00(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v1

    .line 65590
    .local v0, "readBits":I
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 65591
    add-int/lit8 v0, v1, 0x7

    div-int/2addr v0, v6

    new-array v0, v0, [B

    .line 65592
    .local v0, "initData":[B
    invoke-virtual {v5, v0, v7, v1}, Lcom/facebook/ads/redexgen/X/IL;->A0E([BII)V

    .line 65593
    iget-object v8, v4, Lcom/facebook/ads/redexgen/X/Zf;->A0E:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    iget v13, v4, Lcom/facebook/ads/redexgen/X/Zf;->A02:I

    iget v14, v4, Lcom/facebook/ads/redexgen/X/Zf;->A05:I

    .line 65594
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/Zf;->A0J:Ljava/lang/String;

    .line 65595
    const/4 v6, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x25

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/Zf;->A03(III)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v7

    invoke-static/range {v8 .. v18}, Lcom/facebook/ads/internal/exoplayer2/Format;->A07(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v8

    .line 65596
    .local v3, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A0C:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-virtual {v8, v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65597
    iput-object v8, v4, Lcom/facebook/ads/redexgen/X/Zf;->A0C:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 65598
    const-wide/32 v6, 0x3d090000

    iget v0, v8, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    int-to-long v0, v0

    div-long/2addr v6, v0

    iput-wide v6, v4, Lcom/facebook/ads/redexgen/X/Zf;->A0A:J

    .line 65599
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A0D:Lcom/facebook/ads/redexgen/X/CS;

    invoke-interface {v0, v8}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 65600
    .end local v3    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v0    # "initData":[B
    :cond_1
    :goto_1
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Zf;->A08(Lcom/facebook/ads/redexgen/X/IL;)V

    .line 65601
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    iput-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A0F:Z

    .line 65602
    const-wide/16 v0, 0x0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A09:J

    .line 65603
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A0F:Z

    if-eqz v0, :cond_2

    .line 65604
    if-ne v2, v3, :cond_4

    .line 65605
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Zf;->A02(Lcom/facebook/ads/redexgen/X/IL;)J

    move-result-wide v0

    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/Zf;->A09:J

    .line 65606
    .end local v4
    :cond_2
    :goto_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v0

    .line 65607
    .local v4, "crcCheckPresent":Z
    if-eqz v0, :cond_3

    .line 65608
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 65609
    .end local v4    # "crcCheckPresent":Z
    .end local v2    # "numProgram":I
    .end local v7    # "numLayer":I
    :cond_3
    return-void

    .line 65610
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IL;->A0G()Z

    move-result v6

    .line 65611
    .local v4, "otherDataLenEsc":Z
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Zf;->A09:J

    const/16 v0, 0x8

    shl-long/2addr v2, v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v4, Lcom/facebook/ads/redexgen/X/Zf;->A09:J

    .line 65612
    if-nez v6, :cond_4

    goto :goto_2

    .line 65613
    :cond_5
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Zf;->A02(Lcom/facebook/ads/redexgen/X/IL;)J

    move-result-wide v0

    long-to-int v6, v0

    .line 65614
    .local v3, "ascLen":I
    invoke-direct {v4, v5}, Lcom/facebook/ads/redexgen/X/Zf;->A00(Lcom/facebook/ads/redexgen/X/IL;)I

    move-result v0

    .line 65615
    .local v0, "bitsRead":I
    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    goto :goto_1

    .line 65616
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 65617
    .restart local v2    # "numProgram":I
    .restart local v7    # "numLayer":I
    :cond_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0

    .line 65618
    .end local v2    # "numProgram":I
    .end local v7    # "numLayer":I
    :cond_8
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0

    .line 65619
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AJ;-><init>()V

    throw v0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/IL;I)V
    .locals 7

    .line 65620
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IL;->A04()I

    move-result v2

    .line 65621
    .local p0, "bitPosition":I
    and-int/lit8 v0, v2, 0x7

    move v4, p2

    if-nez v0, :cond_0

    .line 65622
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    shr-int/lit8 v0, v2, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 65623
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0D:Lcom/facebook/ads/redexgen/X/CS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 65624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0D:Lcom/facebook/ads/redexgen/X/CS;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0B:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/CS;->ADS(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 65625
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0B:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0A:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0B:J

    .line 65626
    return-void

    .line 65627
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    mul-int/lit8 v0, v4, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A0E([BII)V

    .line 65628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A49(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 65629
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-lez v0, :cond_8

    .line 65630
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Zf;->A08:I

    const/16 v4, 0x56

    const/4 v1, 0x1

    if-eqz v6, :cond_7

    const/4 v5, 0x2

    const/4 v3, 0x0

    if-eq v6, v1, :cond_5

    const/4 v2, 0x3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Zf;->A0L:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/Zf;->A0L:[Ljava/lang/String;

    const-string v1, "eXMY6UfuU8mptnxKZK3KjbCMiU1pAKNs"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const-string v1, "BrFOrdIatggcu5HdAKqvOHyOVIidANWA"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    if-eq v6, v5, :cond_3

    if-eq v6, v2, :cond_2

    goto :goto_0

    .line 65631
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A06:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A01:I

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 65632
    .local p0, "bytesToRead":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IL;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A01:I

    invoke-virtual {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 65633
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A01:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A01:I

    .line 65634
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A06:I

    if-ne v1, v0, :cond_0

    .line 65635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IL;->A08(I)V

    .line 65636
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0H:Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zf;->A07(Lcom/facebook/ads/redexgen/X/IL;)V

    .line 65637
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Zf;->A08:I

    goto :goto_0

    .line 65638
    .end local p0    # "bytesToRead":I
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A07:I

    and-int/lit16 v0, v0, -0xe1

    shl-int/lit8 v1, v0, 0x8

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    or-int/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A06:I

    .line 65639
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0I:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    array-length v0, v0

    if-le v1, v0, :cond_4

    .line 65640
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A06:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Zf;->A06(I)V

    .line 65641
    :cond_4
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Zf;->A01:I

    .line 65642
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Zf;->A08:I

    .line 65643
    goto/16 :goto_0

    .line 65644
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 65645
    .local p0, "secondByte":I
    and-int/lit16 v1, v2, 0xe0

    const/16 v0, 0xe0

    if-ne v1, v0, :cond_6

    .line 65646
    iput v2, p0, Lcom/facebook/ads/redexgen/X/Zf;->A07:I

    .line 65647
    iput v5, p0, Lcom/facebook/ads/redexgen/X/Zf;->A08:I

    goto/16 :goto_0

    .line 65648
    :cond_6
    if-eq v2, v4, :cond_0

    .line 65649
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Zf;->A08:I

    goto/16 :goto_0

    .line 65650
    .end local p0    # "secondByte":I
    :cond_7
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 65651
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A08:I

    goto/16 :goto_0

    .line 65652
    :cond_8
    return-void
.end method

.method public final A4V(Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 2

    .line 65653
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A06()V

    .line 65654
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A04()I

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEM(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0D:Lcom/facebook/ads/redexgen/X/CS;

    .line 65655
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Da;->A05()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0E:Ljava/lang/String;

    .line 65656
    return-void
.end method

.method public final ACI()V
    .locals 0

    .line 65657
    return-void
.end method

.method public final ACJ(JZ)V
    .locals 0

    .line 65658
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0B:J

    .line 65659
    return-void
.end method

.method public final ADV()V
    .locals 1

    .line 65660
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A08:I

    .line 65661
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Zf;->A0G:Z

    .line 65662
    return-void
.end method
