.class public final Lcom/facebook/ads/redexgen/X/BH;
.super Lcom/facebook/ads/redexgen/X/U4;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Gu;,
        Lcom/facebook/ads/redexgen/X/Gv;,
        Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;,
        Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;,
        Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$ParametersBuilder;
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;

.field public static final A04:[I


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/H3;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 22476
    invoke-static {}, Lcom/facebook/ads/redexgen/X/BH;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/BH;->A0E()V

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/redexgen/X/BH;->A04:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22477
    const/4 v0, 0x0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H3;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/BH;-><init>(Lcom/facebook/ads/redexgen/X/H3;)V

    .line 22478
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H3;)V
    .locals 2
    .param p1    # Lcom/facebook/ads/redexgen/X/H3;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22479
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/U4;-><init>()V

    .line 22480
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BH;->A00:Lcom/facebook/ads/redexgen/X/H3;

    .line 22481
    sget-object v1, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0J:Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BH;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    .line 22482
    return-void
.end method

.method public static A00(II)I
    .locals 1

    .line 22483
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 22484
    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 22485
    :cond_0
    :goto_0
    return v0

    .line 22486
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sub-int v0, p0, p1

    goto :goto_0
.end method

.method public static A01(II)I
    .locals 0

    .line 22487
    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    :goto_0
    return p0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static synthetic A02(II)I
    .locals 0

    .line 22488
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/BH;->A01(II)I

    move-result p0

    return p0
.end method

.method public static A03(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 22489
    .local v7, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 22490
    .local p0, "adaptiveTrackCount":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    move-object/from16 v3, p7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 22491
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22492
    .local v4, "trackIndex":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    aget v5, p1, v0

    .line 22493
    move/from16 v9, p6

    move v8, p5

    move v7, p4

    move-object v4, p3

    move v6, p2

    invoke-static/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/BH;->A0M(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22494
    add-int/lit8 v2, v2, 0x1

    .line 22495
    .end local v4    # "trackIndex":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22496
    .end local p1    # "i":I
    :cond_1
    return v2
.end method

.method public static A04(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[ILcom/facebook/ads/redexgen/X/Gu;)I
    .locals 4

    .line 22497
    const/4 v3, 0x0

    .line 22498
    .local p0, "count":I
    const/4 v2, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v2, v0, :cond_1

    .line 22499
    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    aget v0, p1, v2

    invoke-static {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/BH;->A0K(Lcom/facebook/ads/internal/exoplayer2/Format;ILcom/facebook/ads/redexgen/X/Gu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22500
    add-int/lit8 v3, v3, 0x1

    .line 22501
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22502
    .end local p1    # "i":I
    :cond_1
    return v3
.end method

.method public static A05(ZIIII)Landroid/graphics/Point;
    .locals 1

    .line 22503
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-le p3, p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-le p1, p2, :cond_1

    :goto_1
    if-eq v0, p0, :cond_0

    .line 22504
    move v0, p1

    .line 22505
    .local p0, "tempViewportWidth":I
    move p1, p2

    .line 22506
    move p2, v0

    .line 22507
    .end local p0    # "tempViewportWidth":I
    :cond_0
    mul-int p0, p3, p2

    mul-int v0, p4, p1

    if-lt p0, v0, :cond_3

    .line 22508
    mul-int v0, p1, p4

    invoke-static {v0, p3}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 22509
    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 22510
    :cond_3
    mul-int v0, p2, p3

    invoke-static {v0, p4}, Lcom/facebook/ads/redexgen/X/Ic;->A04(II)I

    move-result p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private final A06(ILcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/H4;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 22511
    const/4 v6, 0x0

    .line 22512
    .local p1, "selectedGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    const/4 v8, 0x0

    .line 22513
    .local p2, "selectedTrackIndex":I
    const/4 v9, 0x0

    .line 22514
    .local p3, "selectedTrackScore":I
    const/4 v7, 0x0

    .local v0, "groupIndex":I
    :goto_0
    iget v0, p2, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v7, v0, :cond_8

    .line 22515
    invoke-virtual {p2, v7}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v5

    .line 22516
    .local p2, "trackGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    aget-object v12, p3, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22517
    .local v6, "trackFormatSupport":[I
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "xYY3gcBjGbGJnTacI6V8ytzu4uM1DqIG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "YnWNxGQj1NPSTtrRMCkjAFdHVlRfD5pV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v4, 0x0

    .local v8, "trackIndex":I
    :goto_1
    iget v0, v5, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v4, v0, :cond_7

    .line 22518
    aget v1, v12, v4

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22519
    invoke-virtual {v5, v4}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 22520
    .local v9, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    const/4 v11, 0x0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 22521
    .local v0, "isDefault":Z
    :goto_2
    if-eqz v0, :cond_1

    const/4 v3, 0x2

    .line 22522
    .local v5, "trackScore":I
    :cond_1
    aget v10, v12, v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_3

    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22523
    :goto_3
    add-int/lit16 v3, v3, 0x3e8

    .line 22524
    :cond_2
    if-le v3, v9, :cond_6

    .line 22525
    move-object v6, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22526
    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "u7e8of2M0wDSFycWBnJhQU0G83cVDvnA"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "qBbFq99zb8o8ZpVT0JK57RFF9lbWDVkJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v10, v11}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 22527
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 22528
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "s7bMr4ObbbwRPVL2CwMLD4XTeR"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "yOJF9u8Z8gRPFmArMrY9w2Xu7z"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    move v8, v4

    .line 22529
    move v9, v3

    .line 22530
    .end local v9    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v0    # "isDefault":Z
    .end local v5    # "trackScore":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22531
    .end local p2    # "trackGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    .end local v6    # "trackFormatSupport":[I
    .end local v8    # "trackIndex":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 22532
    .end local v0
    :cond_8
    if-nez v6, :cond_9

    .line 22533
    const/4 v0, 0x0

    .line 22534
    :goto_4
    return-object v0

    .line 22535
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, v6, v8}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;I)V

    goto :goto_4
.end method

.method public static A07(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/H3;)Lcom/facebook/ads/redexgen/X/H4;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 22536
    move-object/from16 v2, p3

    iget-boolean v0, v2, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0A:Z

    if-eqz v0, :cond_2

    .line 22537
    const/16 v7, 0x18

    .line 22538
    .local p2, "requiredAdaptiveSupport":I
    :goto_0
    iget-boolean v0, v2, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A09:Z

    if-eqz v0, :cond_1

    and-int p2, p2, v7

    if-eqz p2, :cond_1

    const/4 v6, 0x1

    .line 22539
    .local p0, "allowMixedMimeTypes":Z
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v3, v0, :cond_3

    .line 22540
    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 22541
    .local v0, "group":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    aget-object v5, p1, v3

    iget v8, v2, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A03:I

    iget v9, v2, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A02:I

    iget v10, v2, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A01:I

    iget v11, v2, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A06:I

    iget v12, v2, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A05:I

    iget-boolean v13, v2, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0F:Z

    .line 22542
    invoke-static/range {v4 .. v13}, Lcom/facebook/ads/redexgen/X/BH;->A0P(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I

    move-result-object v1

    .line 22543
    .local v2, "adaptiveTracks":[I
    array-length v0, v1

    if-lez v0, :cond_0

    .line 22544
    invoke-static/range {p4 .. p4}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H3;

    .line 22545
    invoke-interface {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/H3;->A4R(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    .line 22546
    return-object v0

    .line 22547
    .end local v2    # "adaptiveTracks":[I
    .end local v0    # "group":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 22548
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 22549
    :cond_2
    const/16 v7, 0x10

    goto :goto_0

    .line 22550
    .end local v3    # "i":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private final A08(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/H3;)Lcom/facebook/ads/redexgen/X/H4;
    .locals 10
    .param p5    # Lcom/facebook/ads/redexgen/X/H3;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 22551
    const/4 v3, -0x1

    .line 22552
    .local p0, "selectedTrackIndex":I
    const/4 v5, -0x1

    .line 22553
    .local p1, "selectedGroupIndex":I
    const/4 v8, 0x0

    .line 22554
    .local p2, "selectedTrackScore":Lcom/facebook/ads/redexgen/X/Gv;
    const/4 v7, 0x0

    .local p3, "groupIndex":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v7, v0, :cond_3

    .line 22555
    invoke-virtual {p1, v7}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v6

    .line 22556
    .local p4, "trackGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    aget-object v9, p2, v7

    .line 22557
    .local p5, "trackFormatSupport":[I
    const/4 v4, 0x0

    .local v3, "trackIndex":I
    :goto_1
    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v4, v0, :cond_2

    .line 22558
    aget v1, v9, v4

    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22559
    invoke-virtual {v6, v4}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    .line 22560
    .local v5, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    new-instance v1, Lcom/facebook/ads/redexgen/X/Gv;

    aget v0, v9, v4

    invoke-direct {v1, v2, p4, v0}, Lcom/facebook/ads/redexgen/X/Gv;-><init>(Lcom/facebook/ads/internal/exoplayer2/Format;Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;I)V

    .line 22561
    .local v8, "trackScore":Lcom/facebook/ads/redexgen/X/Gv;
    if-eqz v8, :cond_0

    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/Gv;->A01(Lcom/facebook/ads/redexgen/X/Gv;)I

    move-result v0

    if-lez v0, :cond_1

    .line 22562
    :cond_0
    move v5, v7

    .line 22563
    move v3, v4

    .line 22564
    move-object v8, v1

    .line 22565
    .end local v5    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v8    # "trackScore":Lcom/facebook/ads/redexgen/X/Gv;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22566
    .end local p4    # "trackGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    .end local p5    # "trackFormatSupport":[I
    .end local v3    # "trackIndex":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 22567
    .end local p3    # "groupIndex":I
    :cond_3
    const/4 v0, -0x1

    if-ne v5, v0, :cond_5

    .line 22568
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "p5fGFdhyWNj065QreiPEDnyVN719MrSi"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 22569
    :cond_5
    invoke-virtual {p1, v5}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v2

    .line 22570
    .local p3, "selectedGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0D:Z

    if-nez v0, :cond_6

    if-eqz p5, :cond_6

    .line 22571
    aget-object v1, p2, v5

    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A09:Z

    .line 22572
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0O(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[IZ)[I

    move-result-object v1

    .line 22573
    .local p4, "adaptiveTracks":[I
    array-length v0, v1

    if-lez v0, :cond_6

    .line 22574
    invoke-interface {p5, v2, v1}, Lcom/facebook/ads/redexgen/X/H3;->A4R(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    return-object v0

    .line 22575
    .end local p4    # "adaptiveTracks":[I
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;I)V

    return-object v0
.end method

.method private final A09(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/H3;)Lcom/facebook/ads/redexgen/X/H4;
    .locals 2
    .param p5    # Lcom/facebook/ads/redexgen/X/H3;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 22576
    const/4 v1, 0x0

    .line 22577
    .local p0, "selection":Lcom/facebook/ads/redexgen/X/H4;
    iget-boolean v0, p4, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0D:Z

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 22578
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/BH;->A07(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/H3;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v1

    .line 22579
    :cond_0
    if-nez v1, :cond_1

    .line 22580
    invoke-static {p1, p2, p4}, Lcom/facebook/ads/redexgen/X/BH;->A0A(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v1

    .line 22581
    :cond_1
    return-object v1
.end method

.method public static A0A(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/H4;
    .locals 19
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 22582
    const/4 v13, 0x0

    .line 22583
    .local v14, "selectedGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    const/4 v12, 0x0

    .line 22584
    .local v1, "selectedTrackIndex":I
    const/4 v11, 0x0

    .line 22585
    .local v14, "selectedTrackScore":I
    const/4 v10, -0x1

    .line 22586
    .local v13, "selectedBitrate":I
    const/4 v9, -0x1

    .line 22587
    .local v12, "selectedPixelCount":I
    const/4 v8, 0x0

    .local v11, "groupIndex":I
    :goto_0
    move-object/from16 v1, p0

    iget v0, v1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v8, v0, :cond_12

    .line 22588
    invoke-virtual {v1, v8}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 22589
    .local v10, "trackGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    move-object/from16 v14, p2

    iget v2, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A06:I

    iget v1, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A05:I

    iget-boolean v0, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0F:Z

    .line 22590
    invoke-static {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0D(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v6

    .line 22591
    .local v9, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    aget-object v18, p1, v8

    .line 22592
    .local v8, "trackFormatSupport":[I
    const/4 v5, 0x0

    .local v0, "trackIndex":I
    :goto_1
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v5, v0, :cond_11

    .line 22593
    aget v1, v18, v5

    iget-boolean v0, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22594
    invoke-virtual {v7, v5}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v4

    .line 22595
    .local v7, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget v1, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A03:I

    if-gt v1, v0, :cond_10

    :cond_0
    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-eq v0, v2, :cond_1

    iget v1, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    iget v0, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A02:I

    if-gt v1, v0, :cond_10

    :cond_1
    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    if-eq v0, v2, :cond_2

    iget v1, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    iget v0, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A01:I

    if-gt v1, v0, :cond_10

    :cond_2
    const/16 v17, 0x1

    .line 22596
    .local v2, "isWithinConstraints":Z
    :goto_2
    if-nez v17, :cond_4

    iget-boolean v0, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0C:Z

    if-nez v0, :cond_4

    .line 22597
    .end local v7    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v2    # "isWithinConstraints":Z
    .end local v1    # "selectedTrackIndex":I
    .end local v0    # "trackIndex":I
    .end local v18
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 22598
    :cond_4
    if-eqz v17, :cond_f

    const/4 v3, 0x2

    .line 22599
    .local v1, "trackScore":I
    :goto_4
    aget v1, v18, v5

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v16

    .line 22600
    .local v0, "isWithinCapabilities":Z
    if-eqz v16, :cond_5

    .line 22601
    add-int/lit16 v3, v3, 0x3e8

    .line 22602
    :cond_5
    if-le v3, v11, :cond_e

    const/4 v0, 0x1

    .line 22603
    .local v18, "selectTrack":Z
    :goto_5
    if-ne v3, v11, :cond_6

    .line 22604
    iget-boolean v0, v14, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0D:Z

    if-eqz v0, :cond_8

    .line 22605
    iget v0, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    invoke-static {v0, v10}, Lcom/facebook/ads/redexgen/X/BH;->A00(II)I

    move-result v0

    if-gez v0, :cond_7

    const/4 v0, 0x1

    .line 22606
    .end local v1    # "trackScore":I
    .end local v5
    :cond_6
    :goto_6
    if-eqz v0, :cond_3

    .line 22607
    move-object v13, v7

    .line 22608
    move v12, v5

    .line 22609
    move v11, v3

    .line 22610
    iget v10, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    .line 22611
    invoke-virtual {v4}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F()I

    move-result v9

    goto :goto_3

    .line 22612
    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    .line 22613
    :cond_8
    invoke-virtual {v4}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F()I

    move-result v0

    .line 22614
    .local v1, "formatPixelCount":I
    if-eq v0, v9, :cond_9

    .line 22615
    invoke-static {v0, v9}, Lcom/facebook/ads/redexgen/X/BH;->A00(II)I

    move-result v0

    .line 22616
    .local v1, "comparisonResult":I
    :goto_7
    if-eqz v16, :cond_c

    if-eqz v17, :cond_c

    .line 22617
    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_6

    .line 22618
    .end local v1    # "comparisonResult":I
    .local v5, "formatPixelCount":I
    :cond_9
    iget v2, v4, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_a
    sget-object v15, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "vOxwy"

    const/4 v0, 0x2

    aput-object v1, v15, v0

    invoke-static {v2, v10}, Lcom/facebook/ads/redexgen/X/BH;->A00(II)I

    move-result v0

    goto :goto_7

    .line 22619
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 22620
    :cond_c
    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_6

    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 22621
    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 22622
    :cond_f
    const/4 v3, 0x1

    goto :goto_4

    .line 22623
    :cond_10
    const/16 v17, 0x0

    goto :goto_2

    .line 22624
    .end local v10    # "trackGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    .end local v9    # "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "trackFormatSupport":[I
    .end local v0    # "isWithinCapabilities":Z
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 22625
    .end local v11    # "groupIndex":I
    :cond_12
    if-nez v13, :cond_13

    .line 22626
    const/4 v0, 0x0

    .line 22627
    :goto_8
    return-object v0

    .line 22628
    :cond_13
    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, v13, v12}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;I)V

    goto :goto_8
.end method

.method private final A0B(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/H4;
    .locals 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 22629
    const/4 v5, 0x0

    .line 22630
    .local p2, "selectedGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    const/4 v4, 0x0

    .line 22631
    .local v10, "selectedTrackIndex":I
    const/4 v6, 0x0

    .line 22632
    .local p1, "selectedTrackScore":I
    const/4 v3, 0x0

    .local v10, "groupIndex":I
    :goto_0
    iget v0, p1, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-ge v3, v0, :cond_c

    .line 22633
    invoke-virtual {p1, v3}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v8

    .line 22634
    .local v5, "trackGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    aget-object v13, p2, v3

    .line 22635
    .local v4, "trackFormatSupport":[I
    const/4 v7, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v0, v8, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v7, v0, :cond_a

    .line 22636
    aget v1, v13, v7

    move-object/from16 v10, p3

    iget-boolean v0, v10, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0B:Z

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22637
    invoke-virtual {v8, v7}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v1

    .line 22638
    .local v3, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget v2, v1, Lcom/facebook/ads/internal/exoplayer2/Format;->A0D:I

    iget v0, v10, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A00:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v2, v0

    .line 22639
    .local v0, "maskedSelectionFlags":I
    and-int/lit8 v0, v2, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_9

    const/4 v11, 0x1

    .line 22640
    .local v8, "isDefault":Z
    :goto_2
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_8

    .line 22641
    .local v7, "isForced":Z
    :goto_3
    iget-object v0, v10, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A08:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0L(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v2

    .line 22642
    .local v0, "preferredLanguageFound":Z
    if-nez v2, :cond_0

    iget-boolean v0, v10, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A0E:Z

    if-eqz v0, :cond_5

    .line 22643
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BH;->A0J(Lcom/facebook/ads/internal/exoplayer2/Format;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22644
    .end local v1
    :cond_0
    if-eqz v11, :cond_3

    .line 22645
    const/16 v1, 0x8

    .line 22646
    .restart local v1
    .restart local v1
    :goto_4
    add-int/2addr v1, v2

    .line 22647
    :goto_5
    aget v0, v13, v7

    invoke-static {v0, v9}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22648
    add-int/lit16 v1, v1, 0x3e8

    .line 22649
    :cond_1
    if-le v1, v6, :cond_2

    .line 22650
    move-object v5, v8

    .line 22651
    move v4, v7

    .line 22652
    move v6, v1

    .line 22653
    .end local v3    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v0    # "preferredLanguageFound":Z
    .end local v8    # "isDefault":Z
    .end local v7    # "isForced":Z
    .end local v0
    .end local v1
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 22654
    .end local v1
    :cond_3
    if-nez v12, :cond_4

    .line 22655
    const/4 v1, 0x6

    .restart local v1
    goto :goto_4

    .line 22656
    .end local v1
    :cond_4
    const/4 v1, 0x4

    goto :goto_4

    .line 22657
    :cond_5
    if-eqz v11, :cond_6

    .line 22658
    const/4 v1, 0x3

    .local v1, "trackScore":I
    goto :goto_5

    .line 22659
    .end local v1    # "trackScore":I
    :cond_6
    if-eqz v12, :cond_2

    .line 22660
    iget-object v0, v10, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A07:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0L(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 22661
    const/4 v1, 0x2

    .restart local v1    # "trackScore":I
    goto :goto_5

    .line 22662
    .end local v1    # "trackScore":I
    :cond_7
    const/4 v1, 0x1

    .restart local v1    # "trackScore":I
    goto :goto_5

    .line 22663
    :cond_8
    const/4 v12, 0x0

    goto :goto_3

    .line 22664
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 22665
    .end local v5    # "trackGroup":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;
    .end local v4    # "trackFormatSupport":[I
    .end local v6    # "trackIndex":I
    :cond_a
    add-int/lit8 v3, v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "W5DXaCTGZwnxHNI9uNHjgELbhtknmdFT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto/16 :goto_0

    .line 22666
    .end local v10    # "groupIndex":I
    :cond_c
    if-nez v5, :cond_d

    .line 22667
    const/4 v0, 0x0

    .line 22668
    :goto_6
    return-object v0

    .line 22669
    :cond_d
    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;I)V

    goto :goto_6
.end method

.method public static A0C(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0D(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;",
            "IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22670
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 22671
    .local p0, "selectedTrackIndices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v1, v0, :cond_0

    .line 22672
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22673
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22674
    .end local p1    # "i":I
    :cond_0
    const v7, 0x7fffffff

    if-eq p1, v7, :cond_1

    if-ne p2, v7, :cond_2

    .line 22675
    .end local p2    # null:I
    :cond_1
    return-object v4

    .line 22676
    :cond_2
    const v3, 0x7fffffff

    .line 22677
    .local p2, "maxVideoPixelsToRetain":I
    const/4 v6, 0x0

    .local p3, "i":I
    :goto_1
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v6, v0, :cond_4

    .line 22678
    invoke-virtual {p0, v6}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v9

    .line 22679
    .local v0, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    if-lez v0, :cond_3

    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-lez v0, :cond_3

    .line 22680
    iget v1, v9, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    .line 22681
    invoke-static {p3, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A05(ZIIII)Landroid/graphics/Point;

    move-result-object v8

    .line 22682
    .local v4, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v5, v9, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, v9, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    mul-int/2addr v5, v0

    .line 22683
    .local v1, "videoPixels":I
    iget v1, v9, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x3f7ae148    # 0.98f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lt v1, v0, :cond_3

    iget v1, v9, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lt v1, v0, :cond_3

    if-ge v5, v3, :cond_3

    .line 22684
    move v3, v5

    .line 22685
    .end local v0    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v4    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v1    # "videoPixels":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 22686
    .end local p3    # "i":I
    :cond_4
    if-eq v3, v7, :cond_8

    .line 22687
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .restart local p1    # "i":I
    :goto_2
    if-ltz v5, :cond_8

    .line 22688
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_5

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "am1mkuuO55CXXmrQB0yJoAgpQIQSDA78"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "BqqRDSHEON32Z3HA1GgSiiKNcCDBDA64"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 22689
    .local p3, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    invoke-virtual {v0}, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F()I

    move-result v1

    .line 22690
    .local v0, "pixelCount":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    if-le v1, v3, :cond_7

    .line 22691
    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22692
    .end local p3    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v0    # "pixelCount":I
    :cond_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 22693
    .end local p1    # "i":I
    :cond_8
    return-object v4
.end method

.method public static A0E()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/BH;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x5at
        0x50t
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ml4hyBFIfKpQWvlikYMjr7IobG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "TnEyxWKOja6y1hG4xa0XXB1sr6ACDVsq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "olFk0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "H5JvZ8LTTPp0LKjuorR4sgbrmclkARi0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lwMgj7IDN7o9ASHaECxKXqbfqMa3DD04"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9JdfhliroFrby1wJTlNzShfI3v4lxCsK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yv85CN6pfsJwJM9vwQbhcBl9oXRYDZr3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "attyjssDUJf2jpzsSQJ9aFmKKi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A0G(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;",
            "[II",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 22694
    .local v7, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v2, p7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local p1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 22695
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22696
    .local v6, "trackIndex":I
    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v3

    aget v5, p1, v0

    .line 22697
    move/from16 v9, p6

    move v8, p5

    move v7, p4

    move-object v4, p3

    move v6, p2

    invoke-static/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/BH;->A0M(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22698
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 22699
    .end local v6    # "trackIndex":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 22700
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/H2;[[[I[Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/redexgen/X/H4;I)V
    .locals 14

    .line 22701
    move/from16 v9, p4

    if-nez v9, :cond_0

    .line 22702
    return-void

    .line 22703
    :cond_0
    const/4 v8, -0x1

    .line 22704
    .local p0, "tunnelingAudioRendererIndex":I
    const/4 v7, -0x1

    .line 22705
    .local p1, "tunnelingVideoRendererIndex":I
    const/4 v13, 0x1

    .line 22706
    .local p2, "enableTunneling":Z
    const/4 v10, 0x0

    .local p3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/H2;->A00()I

    move-result v0

    const/4 v6, 0x1

    const/4 v5, -0x1

    if-ge v10, v0, :cond_3

    .line 22707
    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/H2;->A01(I)I

    move-result v4

    .line 22708
    .local v9, "rendererType":I
    aget-object v11, p3, v10

    .line 22709
    .local v13, "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    if-eq v4, v6, :cond_1

    const/4 v0, 0x2

    if-ne v4, v0, :cond_9

    :cond_1
    if-eqz v11, :cond_9

    .line 22710
    aget-object v3, p1, v10

    .line 22711
    invoke-virtual {p0, v10}, Lcom/facebook/ads/redexgen/X/H2;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x31

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22712
    :cond_2
    sget-object v12, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "s5A2x"

    const/4 v0, 0x2

    aput-object v1, v12, v0

    invoke-static {v3, v2, v11}, Lcom/facebook/ads/redexgen/X/BH;->A0N([[ILcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H4;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 22713
    if-ne v4, v6, :cond_6

    .line 22714
    if-eq v8, v5, :cond_8

    .line 22715
    const/4 v13, 0x0

    .line 22716
    .end local p3    # "i":I
    :cond_3
    :goto_1
    if-eq v8, v5, :cond_5

    if-eq v7, v5, :cond_5

    :goto_2
    and-int/2addr v13, v6

    .line 22717
    if-eqz v13, :cond_4

    .line 22718
    new-instance v0, Lcom/facebook/ads/redexgen/X/AZ;

    invoke-direct {v0, v9}, Lcom/facebook/ads/redexgen/X/AZ;-><init>(I)V

    .line 22719
    .local p3, "tunnelingRendererConfiguration":Lcom/facebook/ads/redexgen/X/AZ;
    aput-object v0, p2, v8

    .line 22720
    aput-object v0, p2, v7

    .line 22721
    .end local p3    # "tunnelingRendererConfiguration":Lcom/facebook/ads/redexgen/X/AZ;
    :cond_4
    return-void

    .line 22722
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 22723
    :cond_6
    if-eq v7, v5, :cond_7

    .line 22724
    const/4 v13, 0x0

    .line 22725
    goto :goto_1

    .line 22726
    :cond_7
    move v7, v10

    goto :goto_3

    .line 22727
    :cond_8
    move v8, v10

    .line 22728
    .end local v9    # "rendererType":I
    .end local v13    # "trackSelection":Lcom/facebook/ads/redexgen/X/H4;
    :cond_9
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method public static A0I(IZ)Z
    .locals 1

    .line 22729
    and-int/lit8 p0, p0, 0x7

    .line 22730
    .local p0, "maskedSupport":I
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0J(Lcom/facebook/ads/internal/exoplayer2/Format;)Z
    .locals 3

    .line 22731
    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x68

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0C(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0L(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0K(Lcom/facebook/ads/internal/exoplayer2/Format;ILcom/facebook/ads/redexgen/X/Gu;)Z
    .locals 3

    .line 22732
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Gu;->A00:I

    if-ne v1, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/Gu;->A01:I

    if-ne v1, v0, :cond_1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/Gu;->A02:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/Gu;->A02:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 22733
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 22734
    :cond_1
    return v2
.end method

.method public static A0L(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22735
    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0N:Ljava/lang/String;

    .line 22736
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Ic;->A0L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 22737
    :goto_0
    return p0

    .line 22738
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static A0M(Lcom/facebook/ads/internal/exoplayer2/Format;Ljava/lang/String;IIIII)Z
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22739
    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/facebook/ads/redexgen/X/BH;->A0I(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 22740
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ic;->A0h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0F:I

    if-gt v0, p4, :cond_5

    :cond_1
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    if-eq v0, v5, :cond_3

    iget v4, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A08:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "6cJjfYng2v9SY1soHQN64cGk7fadUkce"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-gt v4, p5, :cond_5

    :cond_3
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/Format;->A04:I

    if-gt v0, p6, :cond_5

    :cond_4
    const/4 v3, 0x1

    .line 22741
    :cond_5
    return v3
.end method

.method public static A0N([[ILcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;Lcom/facebook/ads/redexgen/X/H4;)Z
    .locals 5

    .line 22742
    const/4 v4, 0x0

    if-nez p2, :cond_0

    .line 22743
    return v4

    .line 22744
    :cond_0
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/H4;->A7P()Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;)I

    move-result v3

    .line 22745
    .local p1, "trackGroupIndex":I
    const/4 v2, 0x0

    .local p2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/H4;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 22746
    aget-object v1, p0, v3

    invoke-interface {p2, v2}, Lcom/facebook/ads/redexgen/X/H4;->A6c(I)I

    move-result v0

    aget v0, v1, v0

    .line 22747
    .local v4, "trackFormatSupport":I
    and-int/lit8 v1, v0, 0x20

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    .line 22748
    return v4

    .line 22749
    .end local v4    # "trackFormatSupport":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22750
    .end local p2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static A0O(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[IZ)[I
    .locals 9

    .line 22751
    const/4 v6, 0x0

    .line 22752
    .local p0, "selectedConfigurationTrackCount":I
    const/4 v8, 0x0

    .line 22753
    .local p1, "selectedConfiguration":Lcom/facebook/ads/redexgen/X/Gu;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 22754
    .local p2, "seenConfigurationTuples":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$AudioConfigurationTuple;>;"
    const/4 v4, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v4, v0, :cond_4

    .line 22755
    invoke-virtual {p0, v4}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    .line 22756
    .local v8, "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    new-instance v7, Lcom/facebook/ads/redexgen/X/Gu;

    iget v2, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A05:I

    iget v1, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0C:I

    .line 22757
    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-direct {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Gu;-><init>(IILjava/lang/String;)V

    .line 22758
    .local v5, "configuration":Lcom/facebook/ads/redexgen/X/Gu;
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "bX4CPwE0QKSPz1wuqAU3fJ7C8nROzy1R"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 22759
    invoke-static {p0, p1, v7}, Lcom/facebook/ads/redexgen/X/BH;->A04(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[ILcom/facebook/ads/redexgen/X/Gu;)I

    move-result v3

    .line 22760
    .local v4, "configurationCount":I
    if-le v3, v6, :cond_1

    .line 22761
    move-object v8, v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x35

    if-eq v1, v0, :cond_2

    .line 22762
    move v6, v3

    .line 22763
    .end local v8    # "format":Lcom/facebook/ads/internal/exoplayer2/Format;
    .end local v5    # "configuration":Lcom/facebook/ads/redexgen/X/Gu;
    .end local v4    # "configurationCount":I
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22764
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "IrNWrQnPRSv9j1T5HuBFYfRTQKaZMq45"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    move v6, v3

    goto :goto_2

    .line 22765
    :cond_3
    iget-object v0, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    goto :goto_1

    .line 22766
    .end local v6    # "i":I
    :cond_4
    const/4 v0, 0x1

    if-le v6, v0, :cond_7

    .line 22767
    new-array v5, v6, [I

    .line 22768
    .local v6, "adaptiveIndices":[I
    const/4 v4, 0x0

    .line 22769
    .local v8, "index":I
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_3
    iget v0, p0, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    if-ge v3, v0, :cond_6

    .line 22770
    invoke-virtual {p0, v3}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v2

    aget v1, p1, v3

    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Gu;

    .line 22771
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0K(Lcom/facebook/ads/internal/exoplayer2/Format;ILcom/facebook/ads/redexgen/X/Gu;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22772
    add-int/lit8 v0, v4, 0x1

    .end local v8    # "index":I
    .local v4, "index":I
    aput v3, v5, v4

    move v4, v0

    .line 22773
    .end local v4    # "index":I
    .restart local v8    # "index":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 22774
    .end local v5    # "i":I
    :cond_6
    return-object v5

    .line 22775
    .end local v6    # "adaptiveIndices":[I
    .end local v8    # "index":I
    :cond_7
    sget-object v0, Lcom/facebook/ads/redexgen/X/BH;->A04:[I

    return-object v0
.end method

.method public static A0P(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[IZIIIIIIZ)[I
    .locals 15

    .line 22776
    move-object v12, p0

    iget v0, v12, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 22777
    sget-object v3, Lcom/facebook/ads/redexgen/X/BH;->A04:[I

    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "Y8HhWBmNVBzlCAtBz2a8AgMfYA"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "fMOpCjdod7E6025oXCWCson3HZ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    .line 22778
    :cond_1
    move/from16 v0, p9

    move/from16 v2, p8

    move/from16 v3, p7

    invoke-static {v12, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0D(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;IIZ)Ljava/util/List;

    move-result-object v11

    .line 22779
    .local v3, "selectedTrackIndices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 22780
    sget-object v0, Lcom/facebook/ads/redexgen/X/BH;->A04:[I

    return-object v0

    .line 22781
    :cond_2
    const/4 p0, 0x0

    .line 22782
    .local v12, "selectedMimeType":Ljava/lang/String;
    move/from16 v10, p6

    move/from16 v8, p4

    move/from16 v6, p3

    move-object/from16 v5, p1

    move/from16 v9, p5

    if-nez p2, :cond_4

    .line 22783
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 22784
    .local v2, "seenMimeTypes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 22785
    .local v5, "selectedMimeTypeTrackCount":I
    const/4 v1, 0x0

    .end local v12    # "selectedMimeType":Ljava/lang/String;
    .end local v5    # "selectedMimeTypeTrackCount":I
    .local v3, "selectedMimeTypeTrackCount":I
    .local v0, "i":I
    .local v1, "selectedMimeType":Ljava/lang/String;
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 22786
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 22787
    .local v10, "trackIndex":I
    invoke-virtual {v12, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;->A01(I)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    iget-object v7, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    .line 22788
    .local v9, "sampleMimeType":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22789
    move-object v4, v12

    move-object v7, v7

    .end local v9    # "sampleMimeType":Ljava/lang/String;
    .local v0, "sampleMimeType":Ljava/lang/String;
    .end local v10    # "trackIndex":I
    .local v0, "trackIndex":I
    .end local v3    # "selectedMimeTypeTrackCount":I
    .local v0, "selectedMimeTypeTrackCount":I
    invoke-static/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/BH;->A03(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)I

    move-result v0

    .line 22790
    .local v12, "countForMimeType":I
    if-le v0, v2, :cond_3

    .line 22791
    .end local v1    # "selectedMimeType":Ljava/lang/String;
    .local v5, "selectedMimeType":Ljava/lang/String;
    move-object p0, v7

    move v2, v0

    .line 22792
    .end local v0    # "selectedMimeTypeTrackCount":I
    .local p2, "selectedMimeTypeTrackCount":I
    .end local v0
    .restart local v3    # "selectedMimeTypeTrackCount":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22793
    .end local v12    # "countForMimeType":I
    .restart local v1    # "selectedMimeType":Ljava/lang/String;
    :cond_4
    move-object v13, v5

    move v14, v6

    move/from16 p1, v8

    move/from16 p2, v9

    move/from16 p3, v10

    move-object/from16 p4, v11

    invoke-static/range {v12 .. v19}, Lcom/facebook/ads/redexgen/X/BH;->A0G(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[IILjava/lang/String;IIILjava/util/List;)V

    .line 22794
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x2

    if-ge v1, v0, :cond_5

    sget-object v0, Lcom/facebook/ads/redexgen/X/BH;->A04:[I

    :goto_1
    return-object v0

    :cond_5
    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/Ic;->A0k(Ljava/util/List;)[I

    move-result-object v0

    goto :goto_1
.end method

.method private final A0Q(Lcom/facebook/ads/redexgen/X/H2;[[[I[ILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/facebook/ads/redexgen/X/H4;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 22795
    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/H2;->A00()I

    move-result v2

    .line 22796
    .local v1, "rendererCount":I
    new-array v1, v2, [Lcom/facebook/ads/redexgen/X/H4;

    .line 22797
    .local v14, "rendererTrackSelections":[Lcom/facebook/ads/redexgen/X/H4;
    const/4 v14, 0x0

    .line 22798
    .local p0, "seenVideoRendererWithMappedTracks":Z
    const/4 v10, 0x0

    .line 22799
    .local v5, "selectedVideoTracks":Z
    const/4 v7, 0x0

    .end local p0    # "seenVideoRendererWithMappedTracks":Z
    .end local v5    # "selectedVideoTracks":Z
    .local v10, "i":I
    .local v7, "selectedVideoTracks":Z
    .local v14, "seenVideoRendererWithMappedTracks":Z
    :goto_0
    const/4 v8, 0x2

    move-object/from16 v4, p4

    if-ge v7, v2, :cond_5

    .line 22800
    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/H2;->A01(I)I

    move-result v0

    if-ne v8, v0, :cond_3

    .line 22801
    if-nez v10, :cond_1

    .line 22802
    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/H2;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v16

    aget-object v17, p2, v7

    aget v18, p3, v7

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/BH;->A00:Lcom/facebook/ads/redexgen/X/H3;

    .line 22803
    move-object/from16 v15, p0

    move-object/from16 v19, v4

    const/4 v9, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/BH;->A09(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/H3;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    aput-object v0, v1, v7

    .line 22804
    aget-object v0, v1, v7

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    .line 22805
    :goto_1
    invoke-virtual {v5, v7}, Lcom/facebook/ads/redexgen/X/H2;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v8

    sget-object v4, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v4, v4, v0

    const/16 v0, 0x1a

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x52

    if-eq v4, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22806
    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    .line 22807
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 22808
    :cond_2
    sget-object v6, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v4, "35jYx60w6MIxLcIyy2cdKgAod8mllL2W"

    const/4 v0, 0x3

    aput-object v4, v6, v0

    iget v0, v8, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A01:I

    if-lez v0, :cond_4

    :goto_2
    or-int/2addr v14, v9

    .line 22809
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 22810
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 22811
    :cond_5
    const/4 v7, 0x1

    .line 22812
    .end local v10    # "i":I
    const/4 v13, 0x0

    .line 22813
    .local p0, "selectedAudioTracks":Z
    const/4 v12, 0x0

    .line 22814
    .local v5, "selectedTextTracks":Z
    const/4 v6, 0x0

    sget-object v10, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v9, v10, v0

    const/4 v0, 0x1

    aget-object v10, v10, v0

    const/16 v0, 0x1c

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v9, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v10, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v9, "ayMxGLMz09PtSPfnMMsk70dfUi"

    const/4 v0, 0x7

    aput-object v9, v10, v0

    const-string v9, "YP05i0qOGb3DKAhjnS6iIT80cz"

    const/4 v0, 0x0

    aput-object v9, v10, v0

    .end local p0    # "selectedAudioTracks":Z
    .end local v5    # "selectedTextTracks":Z
    .restart local v10    # "i":I
    .local v8, "selectedAudioTracks":Z
    .local v0, "selectedTextTracks":Z
    :goto_3
    if-ge v6, v2, :cond_e

    .line 22815
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/H2;->A01(I)I

    move-result v11

    sget-object v10, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v9, v10, v0

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v9, v0, :cond_a

    .line 22816
    .local v3, "trackType":I
    if-eq v11, v7, :cond_b

    :goto_4
    if-eq v11, v8, :cond_7

    const/4 v0, 0x3

    if-eq v11, v0, :cond_8

    .line 22817
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/H2;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    aget-object v0, p2, v6

    .line 22818
    invoke-direct {v3, v11, v9, v0, v4}, Lcom/facebook/ads/redexgen/X/BH;->A06(ILcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    aput-object v0, v1, v6

    .line 22819
    .end local v3    # "trackType":I
    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 22820
    :cond_8
    if-nez v12, :cond_7

    .line 22821
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/H2;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v9

    aget-object v0, p2, v6

    .line 22822
    invoke-direct {v3, v9, v0, v4}, Lcom/facebook/ads/redexgen/X/BH;->A0B(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[ILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    aput-object v0, v1, v6

    .line 22823
    aget-object v0, v1, v6

    if-eqz v0, :cond_9

    const/4 v12, 0x1

    goto :goto_5

    :cond_9
    const/4 v12, 0x0

    goto :goto_5

    .line 22824
    .local v3, "trackType":I
    :cond_a
    sget-object v10, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v9, "swjfdmt1lLQyQ8YN8qYkIRsCZtRnKfR2"

    const/4 v0, 0x6

    aput-object v9, v10, v0

    if-eq v11, v7, :cond_b

    goto :goto_4

    .line 22825
    :cond_b
    if-nez v13, :cond_7

    .line 22826
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/H2;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v16

    aget-object v17, p2, v6

    aget v18, p3, v6

    .line 22827
    if-eqz v14, :cond_c

    const/4 v0, 0x0

    .line 22828
    :goto_6
    move-object/from16 v15, p0

    move-object/from16 v19, v4

    .end local v3    # "trackType":I
    .local v17, "trackType":I
    move-object/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/BH;->A08(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;[[IILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/facebook/ads/redexgen/X/H3;)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    aput-object v0, v1, v6

    .line 22829
    aget-object v0, v1, v6

    if-eqz v0, :cond_d

    const/4 v13, 0x1

    goto :goto_5

    .line 22830
    :cond_c
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/BH;->A00:Lcom/facebook/ads/redexgen/X/H3;

    goto :goto_6

    .line 22831
    :cond_d
    const/4 v13, 0x0

    goto :goto_5

    .line 22832
    .end local v10    # "i":I
    :cond_e
    return-object v1
.end method


# virtual methods
.method public final A0X(Lcom/facebook/ads/redexgen/X/H2;[[[I[I)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/H2;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/facebook/ads/redexgen/X/AZ;",
            "[",
            "Lcom/facebook/ads/redexgen/X/H4;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/A0;
        }
    .end annotation

    .line 22833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BH;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 22834
    .local p0, "params":Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/H2;->A00()I

    move-result v5

    .line 22835
    .local p1, "rendererCount":I
    invoke-direct {p0, p1, p2, p3, v6}, Lcom/facebook/ads/redexgen/X/BH;->A0Q(Lcom/facebook/ads/redexgen/X/H2;[[[I[ILcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)[Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v4

    .line 22836
    .local p2, "rendererTrackSelections":[Lcom/facebook/ads/redexgen/X/H4;
    const/4 v3, 0x0

    .local p3, "i":I
    :goto_0
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-ge v3, v5, :cond_4

    .line 22837
    invoke-virtual {v6, v3}, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A07(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22838
    aput-object v8, v4, v3

    .line 22839
    .end local v5
    .end local v4
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22840
    :cond_1
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/H2;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    .line 22841
    .local v5, "rendererTrackGroups":Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;
    invoke-virtual {v6, v3, v1}, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A08(ILcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22842
    invoke-virtual {v6, v3, v1}, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A06(ILcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;)Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    move-result-object v7

    .line 22843
    .local v4, "override":Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;
    if-nez v7, :cond_2

    .line 22844
    aput-object v8, v4, v3

    goto :goto_1

    .line 22845
    :cond_2
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->A01:I

    if-ne v0, v2, :cond_3

    .line 22846
    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->A00:I

    .line 22847
    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v2

    iget-object v0, v7, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->A02:[I

    aget v1, v0, v9

    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/BE;-><init>(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;I)V

    aput-object v0, v4, v3

    goto :goto_1

    .line 22848
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BH;->A00:Lcom/facebook/ads/redexgen/X/H3;

    .line 22849
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/H3;

    iget v0, v7, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->A00:I

    .line 22850
    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/exoplayer2/source/TrackGroupArray;->A02(I)Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;

    move-result-object v1

    iget-object v0, v7, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->A02:[I

    .line 22851
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/H3;->A4R(Lcom/facebook/ads/internal/exoplayer2/source/TrackGroup;[I)Lcom/facebook/ads/redexgen/X/H4;

    move-result-object v0

    aput-object v0, v4, v3

    goto :goto_1

    .line 22852
    .end local p3    # "i":I
    :cond_4
    new-array v3, v5, [Lcom/facebook/ads/redexgen/X/AZ;

    .line 22853
    .local p3, "rendererConfigurations":[Lcom/facebook/ads/redexgen/X/AZ;
    const/4 v7, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v7, v5, :cond_9

    .line 22854
    invoke-virtual {v6, v7}, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A07(I)Z

    move-result v0

    .line 22855
    .local v4, "forceRendererDisabled":Z
    if-nez v0, :cond_8

    .line 22856
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/H2;->A01(I)I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_5

    aget-object v0, v4, v7

    if-eqz v0, :cond_8

    :cond_5
    const/4 v0, 0x1

    .line 22857
    .local v3, "rendererEnabled":Z
    :goto_3
    if-eqz v0, :cond_7

    sget-object v0, Lcom/facebook/ads/redexgen/X/AZ;->A01:Lcom/facebook/ads/redexgen/X/AZ;

    :goto_4
    aput-object v0, v3, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 22858
    .end local v4    # "forceRendererDisabled":Z
    .end local v3    # "rendererEnabled":Z
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/BH;->A03:[Ljava/lang/String;

    const-string v1, "6mDHRv5ny3ScS15t0kMnEsidC5icCfkU"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 22859
    :cond_7
    move-object v0, v8

    goto :goto_4

    .line 22860
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 22861
    .end local v5    # "i":I
    :cond_9
    iget v0, v6, Lcom/facebook/ads/internal/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->A04:I

    invoke-static {p1, p2, v3, v4, v0}, Lcom/facebook/ads/redexgen/X/BH;->A0H(Lcom/facebook/ads/redexgen/X/H2;[[[I[Lcom/facebook/ads/redexgen/X/AZ;[Lcom/facebook/ads/redexgen/X/H4;I)V

    .line 22862
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method
