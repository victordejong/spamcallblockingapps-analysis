.class public final Lcom/facebook/ads/redexgen/X/VL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ct;,
        Lcom/facebook/ads/redexgen/X/Cs;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static A0X:[B

.field public static A0Y:[Ljava/lang/String;

.field public static final A0Z:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0a:I

.field public static final A0b:Lcom/facebook/ads/internal/exoplayer2/Format;

.field public static final A0c:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:Lcom/facebook/ads/redexgen/X/CI;

.field public A0D:Lcom/facebook/ads/redexgen/X/Ct;

.field public A0E:Lcom/facebook/ads/redexgen/X/IM;

.field public A0F:Z

.field public A0G:Z

.field public A0H:[Lcom/facebook/ads/redexgen/X/CS;

.field public A0I:[Lcom/facebook/ads/redexgen/X/CS;

.field public final A0J:I

.field public final A0K:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ct;",
            ">;"
        }
    .end annotation
.end field

.field public final A0L:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0M:Lcom/facebook/ads/redexgen/X/CS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0N:Lcom/facebook/ads/redexgen/X/D2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0O:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0P:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0R:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0S:Lcom/facebook/ads/redexgen/X/IY;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0T:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/VR;",
            ">;"
        }
    .end annotation
.end field

.field public final A0U:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/Cs;",
            ">;"
        }
    .end annotation
.end field

.field public final A0V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field public final A0W:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 59472
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VL;->A0E()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VL;->A0D()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/VM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/VM;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VL;->A0Z:Lcom/facebook/ads/redexgen/X/CJ;

    .line 59473
    const/16 v2, 0x2aa

    const/4 v1, 0x4

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/VL;->A0a:I

    .line 59474
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VL;->A0c:[B

    .line 59475
    const/4 v3, 0x0

    const/16 v2, 0x298

    const/16 v1, 0x12

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v2

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v3, v2, v0, v1}, Lcom/facebook/ads/internal/exoplayer2/Format;->A02(Ljava/lang/String;Ljava/lang/String;J)Lcom/facebook/ads/internal/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VL;->A0b:Lcom/facebook/ads/internal/exoplayer2/Format;

    .line 59476
    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 59477
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VL;-><init>(I)V

    .line 59478
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 59479
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/VL;-><init>(ILcom/facebook/ads/redexgen/X/IY;)V

    .line 59480
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/IY;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/IY;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59481
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/VL;-><init>(ILcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V

    .line 59482
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V
    .locals 6
    .param p2    # Lcom/facebook/ads/redexgen/X/IY;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/D2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59483
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 59484
    move-object v0, p0

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/VL;-><init>(ILcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/List;)V

    .line 59485
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/List;)V
    .locals 7
    .param p2    # Lcom/facebook/ads/redexgen/X/IY;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/D2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/IY;",
            "Lcom/facebook/ads/redexgen/X/D2;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;)V"
        }
    .end annotation

    .line 59486
    .local v5, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/VL;-><init>(ILcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/List;Lcom/facebook/ads/redexgen/X/CS;)V

    .line 59487
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;Ljava/util/List;Lcom/facebook/ads/redexgen/X/CS;)V
    .locals 3
    .param p2    # Lcom/facebook/ads/redexgen/X/IY;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/D2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/ads/redexgen/X/CS;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/facebook/ads/redexgen/X/IY;",
            "Lcom/facebook/ads/redexgen/X/D2;",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/internal/exoplayer2/Format;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/CS;",
            ")V"
        }
    .end annotation

    .line 59488
    .local v0, "closedCaptionFormats":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/Format;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59489
    if-eqz p3, :cond_0

    const/16 v0, 0x8

    :goto_0
    or-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0J:I

    .line 59490
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VL;->A0S:Lcom/facebook/ads/redexgen/X/IY;

    .line 59491
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/VL;->A0N:Lcom/facebook/ads/redexgen/X/D2;

    .line 59492
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/VL;->A0L:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    .line 59493
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0V:Ljava/util/List;

    .line 59494
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/VL;->A0M:Lcom/facebook/ads/redexgen/X/CS;

    .line 59495
    const/16 v2, 0x10

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0O:Lcom/facebook/ads/redexgen/X/IM;

    .line 59496
    sget-object v1, Lcom/facebook/ads/redexgen/X/II;->A03:[B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0R:Lcom/facebook/ads/redexgen/X/IM;

    .line 59497
    const/4 v1, 0x5

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0Q:Lcom/facebook/ads/redexgen/X/IM;

    .line 59498
    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IM;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    .line 59499
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0W:[B

    .line 59500
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    .line 59501
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0U:Ljava/util/ArrayDeque;

    .line 59502
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    .line 59503
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A08:J

    .line 59504
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0A:J

    .line 59505
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0B:J

    .line 59506
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VL;->A0B()V

    .line 59507
    return-void

    .line 59508
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Ct;IJILcom/facebook/ads/redexgen/X/IM;I)I
    .locals 28

    move/from16 v5, p6

    move-wide/from16 v0, p2

    .line 59509
    const/16 v2, 0x8

    move-object/from16 p6, p5

    move-object/from16 v3, p6

    move v4, v2

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59510
    move-object/from16 v2, p6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 59511
    .local p1, "fullAtom":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ch;->A00(I)I

    move-result v8

    .line 59512
    .local v3, "atomFlags":I
    move-object/from16 v2, p0

    iget-object v6, v2, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    .line 59513
    .local p4, "track":Lcom/facebook/ads/redexgen/X/D2;
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 59514
    .local p6, "fragment":Lcom/facebook/ads/redexgen/X/D4;
    iget-object v7, v4, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/Cn;

    .line 59515
    .local v5, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cn;
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/D4;->A0E:[I

    move-object/from16 v2, p6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v2

    aput v2, v3, p1

    .line 59516
    iget-object v9, v4, Lcom/facebook/ads/redexgen/X/D4;->A0G:[J

    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/D4;->A05:J

    aput-wide v2, v9, p1

    .line 59517
    and-int/lit8 v2, v8, 0x1

    if-eqz v2, :cond_0

    .line 59518
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/D4;->A0G:[J

    aget-wide v9, v11, p1

    move-object/from16 v2, p6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v9, v2

    aput-wide v9, v11, p1

    .line 59519
    :cond_0
    and-int/lit8 v2, v8, 0x4

    const/4 v3, 0x1

    if-eqz v2, :cond_12

    const/16 v27, 0x1

    .line 59520
    .local v2, "firstSampleFlagsPresent":Z
    :goto_0
    iget v2, v7, Lcom/facebook/ads/redexgen/X/Cn;->A01:I

    move/from16 v26, v2

    .line 59521
    .local v2, "firstSampleFlags":I
    if-eqz v27, :cond_1

    .line 59522
    move-object/from16 v2, p6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v26

    .line 59523
    :cond_1
    and-int/lit16 v2, v8, 0x100

    if-eqz v2, :cond_11

    const/16 v25, 0x1

    .line 59524
    .local v8, "sampleDurationsPresent":Z
    :goto_1
    and-int/lit16 v2, v8, 0x200

    if-eqz v2, :cond_10

    const/16 v24, 0x1

    .line 59525
    .local v6, "sampleSizesPresent":Z
    :goto_2
    and-int/lit16 v2, v8, 0x400

    if-eqz v2, :cond_f

    const/16 v23, 0x1

    .line 59526
    .local v4, "sampleFlagsPresent":Z
    :goto_3
    and-int/lit16 v2, v8, 0x800

    if-eqz v2, :cond_e

    const/16 v22, 0x1

    .line 59527
    .local v7, "sampleCompositionTimeOffsetsPresent":Z
    :goto_4
    const-wide/16 v20, 0x0

    .line 59528
    .local v3, "edtsOffset":J
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    if-eqz v2, :cond_2

    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    array-length v2, v2

    if-ne v2, v3, :cond_2

    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/D2;->A08:[J

    const/4 v3, 0x0

    aget-wide v10, v2, v3

    const-wide/16 v8, 0x0

    cmp-long v2, v10, v8

    if-nez v2, :cond_2

    .line 59529
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/D2;->A09:[J

    aget-wide v8, v2, v3

    const-wide/16 v10, 0x3e8

    .end local v2    # "firstSampleFlags":I
    .local v2, "firstSampleFlags":I
    iget-wide v12, v6, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v20

    .line 59530
    .end local v2    # "firstSampleFlags":I
    .restart local v2    # "firstSampleFlags":I
    :cond_2
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/D4;->A0D:[I

    move-object/from16 v19, v2

    .line 59531
    .local p6, "sampleSizeTable":[I
    iget-object v11, v4, Lcom/facebook/ads/redexgen/X/D4;->A0C:[I

    .line 59532
    .local v2, "sampleCompositionTimeOffsetTable":[I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/D4;->A0F:[J

    move-object/from16 v18, v2

    .line 59533
    .local v2, "sampleDecodingTimeTable":[J
    iget-object v14, v4, Lcom/facebook/ads/redexgen/X/D4;->A0I:[Z

    .line 59534
    .local v2, "sampleIsSyncFrameTable":[Z
    .end local p1    # "fullAtom":I
    .local v19, "fullAtom":I
    iget v3, v6, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_d

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_d

    const/16 v17, 0x1

    .line 59535
    .local p1, "workaroundEveryVideoFrameIsSyncFrame":Z
    :goto_5
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/D4;->A0E:[I

    aget v2, v2, p1

    add-int v10, v5, v2

    .line 59536
    .local v0, "trackRunEnd":I
    .end local v2    # "sampleIsSyncFrameTable":[Z
    .end local p1    # "workaroundEveryVideoFrameIsSyncFrame":Z
    .local v2, "sampleIsSyncFrameTable":[Z
    .local v11, "workaroundEveryVideoFrameIsSyncFrame":Z
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/D2;->A06:J

    .line 59537
    .local v2, "timescale":J
    if-lez p1, :cond_3

    .end local v3    # "edtsOffset":J
    .end local p4    # "track":Lcom/facebook/ads/redexgen/X/D2;
    .local v9, "atomFlags":I
    .local v23, "track":Lcom/facebook/ads/redexgen/X/D2;
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/D4;->A06:J

    .line 59538
    .local v3, "i":I
    .local v27, "cumulativeTime":J
    :cond_3
    :goto_6
    if-ge v5, v10, :cond_13

    .line 59539
    if-eqz v25, :cond_c

    move-object/from16 v6, p6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v13

    .line 59540
    .local p4, "sampleDuration":I
    :goto_7
    if-eqz v24, :cond_9

    move-object/from16 v6, p6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v12

    .line 59541
    .local v8, "sampleSize":I
    :goto_8
    if-nez v5, :cond_7

    if-eqz v27, :cond_7

    .line 59542
    move/from16 v6, v26

    .line 59543
    .local v2, "sampleFlags":I
    :goto_9
    if-eqz v22, :cond_6

    .line 59544
    .end local v5    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cn;
    .local v2, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cn;
    move-object/from16 v8, p6

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v8

    .line 59545
    .local v5, "sampleOffset":I
    .end local v6    # "sampleSizesPresent":Z
    .end local v4    # "sampleFlagsPresent":Z
    .local v24, "sampleSizesPresent":Z
    .local v2, "sampleFlagsPresent":Z
    int-to-long v8, v8

    const-wide/16 v15, 0x3e8

    mul-long/2addr v8, v15

    div-long/2addr v8, v2

    long-to-int v15, v8

    aput v15, v11, v5

    .line 59546
    .end local v5    # "sampleOffset":I
    :goto_a
    const-wide/16 p2, 0x3e8

    .line 59547
    move-wide/from16 p0, v0

    move-wide/from16 p4, v2

    invoke-static/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v8

    sub-long v8, v8, v20

    aput-wide v8, v18, v5

    .line 59548
    aput v12, v19, v5

    .line 59549
    shr-int/lit8 v6, v6, 0x10

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_5

    if-eqz v17, :cond_4

    if-nez v5, :cond_5

    :cond_4
    const/4 v6, 0x1

    :goto_b
    aput-boolean v6, v14, v5

    .line 59550
    int-to-long v8, v13

    .end local v27    # "cumulativeTime":J
    .local v2, "cumulativeTime":J
    .local v2, "timescale":J
    add-long/2addr v0, v8

    .line 59551
    .end local v2    # "timescale":J
    .end local p4    # "sampleDuration":I
    .end local v2
    .end local v8    # "sampleSize":I
    .restart local v27    # "cumulativeTime":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 59552
    :cond_5
    const/4 v6, 0x0

    goto :goto_b

    .line 59553
    .end local v2
    .end local v24    # "sampleSizesPresent":Z
    .end local v2
    .local v5, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cn;
    .restart local v6    # "sampleSizesPresent":Z
    .restart local v4    # "sampleFlagsPresent":Z
    .end local v5    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cn;
    .end local v6    # "sampleSizesPresent":Z
    .end local v4    # "sampleFlagsPresent":Z
    .restart local v2    # "timescale":J
    .restart local v24    # "sampleSizesPresent":Z
    .restart local v2    # "timescale":J
    :cond_6
    const/4 v8, 0x0

    aput v8, v11, v5

    goto :goto_a

    .line 59554
    :cond_7
    if-eqz v23, :cond_8

    move-object/from16 v6, p6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v6

    goto :goto_9

    .end local v2    # "timescale":J
    .local v25, "firstSampleFlagsPresent":Z
    :cond_8
    iget v6, v7, Lcom/facebook/ads/redexgen/X/Cn;->A01:I

    sget-object v15, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v9, v15, v8

    const/4 v8, 0x3

    aget-object v15, v15, v8

    const/16 v8, 0x1e

    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v9, v8, :cond_a

    sget-object v15, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v9, "o5M2EOqomUE715rfXvFmDwcAOmZT1ljd"

    const/4 v8, 0x2

    aput-object v9, v15, v8

    const-string v9, "maDczvHXfMJaT3W08X4PwXTr9eoRbN7f"

    const/4 v8, 0x1

    aput-object v9, v15, v8

    goto :goto_9

    .line 59555
    :cond_9
    sget-object v8, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v8, v8, v6

    const/16 v6, 0x1a

    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v6, 0x4d

    if-eq v8, v6, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v8
    .local v2, "sampleDurationsPresent":Z
    :cond_b
    sget-object v9, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v8, "PJkJhVfY8nlXZvMGensL90vO3slACLV7"

    const/4 v6, 0x7

    aput-object v8, v9, v6

    const-string v8, "5bhnKVzvlN2kSXe4uW6bHXXoS3Gb34Tr"

    const/4 v6, 0x6

    aput-object v8, v9, v6

    iget v12, v7, Lcom/facebook/ads/redexgen/X/Cn;->A03:I

    goto/16 :goto_8

    .line 59556
    :cond_c
    iget v13, v7, Lcom/facebook/ads/redexgen/X/Cn;->A00:I

    goto/16 :goto_7

    .line 59557
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 59558
    :cond_e
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 59559
    :cond_f
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 59560
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 59561
    :cond_11
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 59562
    :cond_12
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 59563
    .end local v2    # "sampleDurationsPresent":Z
    .end local v2
    .end local v25    # "firstSampleFlagsPresent":Z
    .end local v2
    .end local v24    # "sampleSizesPresent":Z
    .end local v2
    .local v2, "timescale":J
    .restart local v5    # "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cn;
    .local v2, "firstSampleFlagsPresent":Z
    .local v8, "sampleDurationsPresent":Z
    .restart local v6    # "sampleSizesPresent":Z
    .restart local v4    # "sampleFlagsPresent":Z
    .end local v3    # "i":I
    .end local v27    # "cumulativeTime":J
    .local v2, "cumulativeTime":J
    .restart local v2    # "cumulativeTime":J
    :cond_13
    iput-wide v0, v4, Lcom/facebook/ads/redexgen/X/D4;->A06:J

    .line 59564
    return v10
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/IM;)J
    .locals 1

    .line 59565
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59566
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 59567
    .local p0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v0

    .line 59568
    .local v0, "version":I
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/IM;)J
    .locals 2

    .line 59569
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59570
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 59571
    .local p0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v1

    .line 59572
    .local v0, "version":I
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/IM;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/Cn;",
            ">;"
        }
    .end annotation

    .line 59573
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59574
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 59575
    .local p0, "trackId":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 59576
    .local v0, "defaultSampleDescriptionIndex":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v4

    .line 59577
    .local v1, "defaultSampleDuration":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v3

    .line 59578
    .local v0, "defaultSampleSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 59579
    .local v5, "defaultSampleFlags":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cn;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Cn;-><init>(IIII)V

    .line 59580
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/IM;J)Landroid/util/Pair;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Lcom/facebook/ads/redexgen/X/Vm;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59581
    const/16 v0, 0x8

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59582
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 59583
    .local p1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v1

    .line 59584
    .local v2, "version":I
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 59585
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v19

    .line 59586
    .local p1, "timescale":J
    .local v0, "offset":J
    if-nez v1, :cond_0

    .line 59587
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v15

    .line 59588
    .local v1, "earliestPresentationTime":J
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    add-long p1, p1, v0

    .line 59589
    .end local v0    # "offset":J
    .end local v1    # "earliestPresentationTime":J
    .local v15, "earliestPresentationTime":J
    .local v0, "offset":J
    :goto_0
    const-wide/32 v17, 0xf4240

    .line 59590
    invoke-static/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v13

    .line 59591
    .local p1, "earliestPresentationTimeUs":J
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 59592
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0J()I

    move-result v7

    .line 59593
    .local v19, "referenceCount":I
    new-array v6, v7, [I

    .line 59594
    .local v9, "sizes":[I
    new-array v8, v7, [J

    .line 59595
    .local v1, "offsets":[J
    new-array v4, v7, [J

    .line 59596
    .local v0, "durationsUs":[J
    new-array v3, v7, [J

    .line 59597
    .local v0, "timesUs":[J
    .local p1, "time":J
    .local v15, "timeUs":J
    const/4 v2, 0x0

    move-wide v11, v13

    .local v0, "i":I
    .local p1, "offset":J
    .local v15, "time":J
    .local v17, "timeUs":J
    :goto_1
    if-ge v2, v7, :cond_2

    .line 59598
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    .line 59599
    .local v15, "firstInt":I
    const/high16 v0, -0x80000000

    and-int/2addr v0, v1

    .line 59600
    .local v15, "type":I
    if-nez v0, :cond_1

    .line 59601
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v9

    .line 59602
    .local p5, "referenceDuration":J
    const v0, 0x7fffffff

    and-int/2addr v0, v1

    aput v0, v6, v2

    .line 59603
    aput-wide p1, v8, v2

    .line 59604
    aput-wide v11, v3, v2

    .line 59605
    add-long/2addr v15, v9

    .line 59606
    const-wide/32 v17, 0xf4240

    .end local v0    # "i":I
    .local v5, "timesUs":[J
    .end local v1    # "offsets":[J
    .end local v0
    .local p1, "offsets":[J
    .local v2, "durationsUs":[J
    .local p9, "fullAtom":I
    .local v0, "version":I
    .end local v19    # "referenceCount":I
    .end local v9    # "sizes":[I
    .local v15, "sizes":[I
    .local p7, "referenceCount":I
    .local v7, "earliestPresentationTime":J
    invoke-static/range {v15 .. v20}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v11

    .line 59607
    aget-wide v9, v3, v2

    sub-long v0, v11, v9

    aput-wide v0, v4, v2

    .line 59608
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 59609
    aget v0, v6, v2

    int-to-long v0, v0

    add-long p1, p1, v0

    .line 59610
    .end local v15    # "sizes":[I
    .end local v15
    .end local p5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59611
    .end local v1
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v15

    .line 59612
    .restart local v1    # "offsets":[J
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    add-long p1, p1, v0

    goto :goto_0

    .line 59613
    .end local v5    # "timesUs":[J
    .end local p7
    .end local p9
    .end local v0    # "version":I
    .end local v7    # "earliestPresentationTime":J
    .local p1, "fullAtom":I
    .local v2, "version":I
    .restart local v0    # "version":I
    .restart local v1    # "offsets":[J
    .restart local v0    # "version":I
    .restart local v19    # "referenceCount":I
    .restart local v9    # "sizes":[I
    .local v15, "earliestPresentationTime":J
    .restart local v15    # "earliestPresentationTime":J
    .restart local v15    # "earliestPresentationTime":J
    .end local v0    # "version":I
    .restart local v5    # "timesUs":[J
    :cond_1
    const/16 v2, 0x245

    const/16 v1, 0x1c

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59614
    .end local v5    # "timesUs":[J
    .end local v15    # "earliestPresentationTime":J
    .end local v15
    .restart local v0    # "version":I
    .end local v0    # "version":I
    .end local v1    # "offsets":[J
    .end local v0
    .end local v9    # "sizes":[I
    .end local v0
    .local p1, "offsets":[J
    .local v2, "durationsUs":[J
    .restart local v5    # "timesUs":[J
    .local v15, "sizes":[I
    .restart local p9
    .restart local v0    # "version":I
    .restart local v7    # "earliestPresentationTime":J
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vm;

    invoke-direct {v0, v6, v8, v4, v3}, Lcom/facebook/ads/redexgen/X/Vm;-><init>([I[J[J[J)V

    .line 59615
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/VQ;",
            ">;)",
            "Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;"
        }
    .end annotation

    .line 59616
    .local v4, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    const/4 v4, 0x0

    .line 59617
    .local p0, "schemeDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 59618
    .local v4, "leafChildrenSize":I
    const/4 v5, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v5, v6, :cond_3

    .line 59619
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/VQ;

    .line 59620
    .local v5, "child":Lcom/facebook/ads/redexgen/X/VQ;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0s:I

    if-ne v1, v0, :cond_1

    .line 59621
    if-nez v4, :cond_0

    .line 59622
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 59623
    :cond_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 59624
    .local v2, "psshData":[B
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Cz;->A03([B)Ljava/util/UUID;

    move-result-object v3

    .line 59625
    .local v2, "uuid":Ljava/util/UUID;
    if-nez v3, :cond_2

    .line 59626
    const/16 v2, 0x80

    const/16 v1, 0x16

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1b5

    const/16 v1, 0x2a

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59627
    .end local v5    # "child":Lcom/facebook/ads/redexgen/X/VQ;
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v2
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 59628
    :cond_2
    const/16 v2, 0x2b8

    const/16 v1, 0x9

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;

    invoke-direct {v0, v3, v1, v7}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 59629
    .end local v6    # "i":I
    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_4
    new-instance v0, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    invoke-direct {v0, v4}, Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method private A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/Cn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Cn;",
            ">;I)",
            "Lcom/facebook/ads/redexgen/X/Cn;"
        }
    .end annotation

    .line 59630
    .local v1, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 59631
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cn;

    return-object v0

    .line 59632
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Cn;

    return-object v0
.end method

.method public static A07(Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/Ct;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ct;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Ct;"
        }
    .end annotation

    .line 59633
    .local v0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/4 v10, 0x0

    .line 59634
    .local p0, "nextTrackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    const-wide v8, 0x7fffffffffffffffL

    .line 59635
    .local v10, "nextTrackRunOffset":J
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 59636
    .local v3, "trackBundlesSize":I
    const/4 v4, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 59637
    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ct;

    .line 59638
    .local v4, "trackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    iget v1, v3, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D4;->A02:I

    if-ne v1, v0, :cond_1

    .line 59639
    .end local v4    # "trackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    .end local v3    # "trackBundlesSize":I
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 59640
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D4;->A0G:[J

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    aget-wide v6, v1, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 59641
    .local v3, "trunOffset":J
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "vP4FBGoScPr2IEqYAi5Wz4DeHh77wGAg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "XvpDDdcbPnNFCgNjTDEBwLNgm38bNfDP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_0

    .line 59642
    move-object v10, v3

    .line 59643
    move-wide v8, v6

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59644
    .end local v5    # "i":I
    :cond_3
    return-object v10
.end method

.method public static A08(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/Ct;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ct;",
            ">;I)",
            "Lcom/facebook/ads/redexgen/X/Ct;"
        }
    .end annotation

    .line 59645
    .local v1, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 59646
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ct;

    return-object v0

    .line 59647
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ct;

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/IM;Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/Ct;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/IM;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ct;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Ct;"
        }
    .end annotation

    .line 59648
    .local v0, "trackBundles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59649
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 59650
    .local p0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00(I)I

    move-result v8

    .line 59651
    .local p1, "atomFlags":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 59652
    .local v0, "trackId":I
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A08(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v6

    .line 59653
    .local v0, "trackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    if-nez v6, :cond_0

    .line 59654
    const/4 v0, 0x0

    return-object v0

    .line 59655
    :cond_0
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_1

    .line 59656
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v1

    .line 59657
    .local v8, "baseDataPosition":J
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/D4;->A05:J

    .line 59658
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iput-wide v1, v0, Lcom/facebook/ads/redexgen/X/D4;->A04:J

    .line 59659
    .end local v8    # "baseDataPosition":J
    :cond_1
    iget-object v7, v6, Lcom/facebook/ads/redexgen/X/Ct;->A04:Lcom/facebook/ads/redexgen/X/Cn;

    .line 59660
    .local v8, "defaultSampleValues":Lcom/facebook/ads/redexgen/X/Cn;
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_3

    .line 59661
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 59662
    .local v0, "defaultSampleDescriptionIndex":I
    :goto_0
    and-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_2

    .line 59663
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v4

    .line 59664
    .local v6, "defaultSampleDuration":I
    :goto_1
    and-int/lit8 v3, v8, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59665
    :cond_2
    iget v4, v7, Lcom/facebook/ads/redexgen/X/Cn;->A00:I

    goto :goto_1

    .line 59666
    :cond_3
    iget v5, v7, Lcom/facebook/ads/redexgen/X/Cn;->A02:I

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "BoRSZjq0qdl34U9NY3IVzLmDGG6qxFbE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "cuVw8AuZJIm3GZwInvEifd4YjMqwmDk1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_6

    .line 59667
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v3

    .line 59668
    .local v0, "defaultSampleSize":I
    :goto_2
    and-int/lit8 v0, v8, 0x20

    if-eqz v0, :cond_5

    .line 59669
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v2

    .line 59670
    .local v0, "defaultSampleFlags":I
    :goto_3
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cn;

    invoke-direct {v0, v5, v4, v3, v2}, Lcom/facebook/ads/redexgen/X/Cn;-><init>(IIII)V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/Cn;

    .line 59671
    return-object v6

    .line 59672
    :cond_5
    iget v2, v7, Lcom/facebook/ads/redexgen/X/Cn;->A01:I

    goto :goto_3

    .line 59673
    :cond_6
    iget v3, v7, Lcom/facebook/ads/redexgen/X/Cn;->A03:I

    goto :goto_2
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A0X:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0B()V
    .locals 1

    .line 59674
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    .line 59675
    iput v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    .line 59676
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 59677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    if-nez v0, :cond_2

    .line 59678
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/CS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    .line 59679
    const/4 v5, 0x0

    .line 59680
    .local p0, "emsgTrackOutputCount":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A0M:Lcom/facebook/ads/redexgen/X/CS;

    if-eqz v2, :cond_0

    .line 59681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    add-int/lit8 v0, v5, 0x1

    .end local p0    # "emsgTrackOutputCount":I
    .local v0, "emsgTrackOutputCount":I
    aput-object v2, v1, v5

    move v5, v0

    .line 59682
    .end local v0    # "emsgTrackOutputCount":I
    .restart local p0    # "emsgTrackOutputCount":I
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0J:I

    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-eqz v0, :cond_1

    .line 59683
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    add-int/lit8 v2, v5, 0x1

    .end local p0    # "emsgTrackOutputCount":I
    .restart local v0    # "emsgTrackOutputCount":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A0C:Lcom/facebook/ads/redexgen/X/CI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    .line 59684
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    aput-object v0, v3, v5

    move v5, v2

    .line 59685
    .end local v0    # "emsgTrackOutputCount":I
    .restart local p0    # "emsgTrackOutputCount":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/CS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    .line 59686
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v3, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v4, v2

    .line 59687
    .local v5, "eventMessageTrackOutput":Lcom/facebook/ads/redexgen/X/CS;
    sget-object v0, Lcom/facebook/ads/redexgen/X/VL;->A0b:Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59688
    .end local v5    # "eventMessageTrackOutput":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59689
    .end local p0    # "emsgTrackOutputCount":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0H:[Lcom/facebook/ads/redexgen/X/CS;

    if-nez v0, :cond_3

    .line 59690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/CS;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0H:[Lcom/facebook/ads/redexgen/X/CS;

    .line 59691
    const/4 v3, 0x0

    .local p0, "i":I
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0H:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 59692
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A0C:Lcom/facebook/ads/redexgen/X/CI;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v1, v3

    const/4 v0, 0x3

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v1

    .line 59693
    .local v0, "output":Lcom/facebook/ads/redexgen/X/CS;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0V:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/exoplayer2/Format;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CS;->A5P(Lcom/facebook/ads/internal/exoplayer2/Format;)V

    .line 59694
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0H:[Lcom/facebook/ads/redexgen/X/CS;

    aput-object v1, v0, v3

    .line 59695
    .end local v0    # "output":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59696
    .end local p0    # "i":I
    :cond_3
    return-void
.end method

.method public static A0D()V
    .locals 1

    const/16 v0, 0x2c1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VL;->A0X:[B

    return-void

    :array_0
    .array-data 1
        0x11t
        0x1dt
        0x1at
        0x2ft
        0x34t
        0x36t
        0x7bt
        0x28t
        0x32t
        0x21t
        0x3et
        0x7bt
        0x37t
        0x3et
        0x28t
        0x28t
        0x7bt
        0x2ft
        0x33t
        0x3at
        0x35t
        0x7bt
        0x33t
        0x3et
        0x3at
        0x3ft
        0x3et
        0x29t
        0x7bt
        0x37t
        0x3et
        0x35t
        0x3ct
        0x2ft
        0x33t
        0x7bt
        0x73t
        0x2et
        0x35t
        0x28t
        0x2et
        0x2bt
        0x2bt
        0x34t
        0x29t
        0x2ft
        0x3et
        0x3ft
        0x72t
        0x75t
        0x76t
        0x5dt
        0x47t
        0x41t
        0x4at
        0x13t
        0x50t
        0x5ct
        0x46t
        0x5dt
        0x47t
        0x13t
        0x5at
        0x5dt
        0x13t
        0x40t
        0x51t
        0x54t
        0x43t
        0x13t
        0x12t
        0xet
        0x13t
        0x2t
        0x13t
        0x1bt
        0x46t
        0x5dt
        0x40t
        0x46t
        0x43t
        0x43t
        0x5ct
        0x41t
        0x47t
        0x56t
        0x57t
        0x1at
        0x1dt
        0x0t
        0x2bt
        0x31t
        0x37t
        0x3ct
        0x65t
        0x26t
        0x2at
        0x30t
        0x2bt
        0x31t
        0x65t
        0x2ct
        0x2bt
        0x65t
        0x36t
        0x22t
        0x35t
        0x21t
        0x65t
        0x64t
        0x78t
        0x65t
        0x74t
        0x65t
        0x6dt
        0x30t
        0x2bt
        0x36t
        0x30t
        0x35t
        0x35t
        0x2at
        0x37t
        0x31t
        0x20t
        0x21t
        0x6ct
        0x6bt
        0x52t
        0x66t
        0x75t
        0x73t
        0x79t
        0x71t
        0x7at
        0x60t
        0x71t
        0x70t
        0x59t
        0x64t
        0x20t
        0x51t
        0x6ct
        0x60t
        0x66t
        0x75t
        0x77t
        0x60t
        0x7bt
        0x66t
        0x1at
        0x34t
        0x3dt
        0x3ct
        0x21t
        0x3at
        0x3dt
        0x34t
        0x73t
        0x3dt
        0x36t
        0x34t
        0x32t
        0x27t
        0x3at
        0x25t
        0x36t
        0x73t
        0x3ct
        0x35t
        0x35t
        0x20t
        0x36t
        0x27t
        0x73t
        0x27t
        0x3ct
        0x73t
        0x20t
        0x32t
        0x3et
        0x23t
        0x3ft
        0x36t
        0x73t
        0x37t
        0x32t
        0x27t
        0x32t
        0x7dt
        0x34t
        0x1dt
        0x19t
        0x1et
        0x58t
        0x19t
        0xct
        0x17t
        0x15t
        0x58t
        0x1ct
        0x1dt
        0x1et
        0x11t
        0x16t
        0x1dt
        0xbt
        0x58t
        0x1dt
        0x0t
        0xct
        0x1dt
        0x16t
        0x1ct
        0x1dt
        0x1ct
        0x58t
        0x19t
        0xct
        0x17t
        0x15t
        0x58t
        0xbt
        0x11t
        0x2t
        0x1dt
        0x58t
        0x50t
        0xdt
        0x16t
        0xbt
        0xdt
        0x8t
        0x8t
        0x17t
        0xat
        0xct
        0x1dt
        0x1ct
        0x51t
        0x56t
        0x59t
        0x70t
        0x74t
        0x73t
        0x35t
        0x74t
        0x61t
        0x7at
        0x78t
        0x35t
        0x62t
        0x7ct
        0x61t
        0x7dt
        0x35t
        0x79t
        0x70t
        0x7bt
        0x72t
        0x61t
        0x7dt
        0x35t
        0x2bt
        0x35t
        0x27t
        0x24t
        0x21t
        0x22t
        0x21t
        0x2dt
        0x26t
        0x23t
        0x21t
        0x22t
        0x35t
        0x3dt
        0x60t
        0x7bt
        0x66t
        0x60t
        0x65t
        0x65t
        0x7at
        0x67t
        0x61t
        0x70t
        0x71t
        0x3ct
        0x3bt
        0x38t
        0x11t
        0x1at
        0x13t
        0x0t
        0x1ct
        0x54t
        0x19t
        0x1dt
        0x7t
        0x19t
        0x15t
        0x0t
        0x17t
        0x1ct
        0x4et
        0x54t
        0x63t
        0x4at
        0x4at
        0x5ft
        0x49t
        0x58t
        0xct
        0x58t
        0x43t
        0xct
        0x49t
        0x42t
        0x4ft
        0x5et
        0x55t
        0x5ct
        0x58t
        0x45t
        0x43t
        0x42t
        0xct
        0x48t
        0x4dt
        0x58t
        0x4dt
        0xct
        0x5bt
        0x4dt
        0x5ft
        0xct
        0x42t
        0x49t
        0x4bt
        0x4dt
        0x58t
        0x45t
        0x5at
        0x49t
        0x2t
        0x29t
        0x0t
        0x0t
        0x15t
        0x3t
        0x12t
        0x46t
        0x12t
        0x9t
        0x46t
        0x3t
        0x8t
        0x2t
        0x46t
        0x9t
        0x0t
        0x46t
        0xbt
        0x2t
        0x7t
        0x12t
        0x46t
        0x11t
        0x7t
        0x15t
        0x46t
        0x8t
        0x3t
        0x1t
        0x7t
        0x12t
        0xft
        0x10t
        0x3t
        0x48t
        0x6bt
        0x52t
        0x41t
        0x56t
        0x56t
        0x4dt
        0x40t
        0x4dt
        0x4at
        0x43t
        0x4t
        0x70t
        0x56t
        0x45t
        0x47t
        0x4ft
        0x61t
        0x4at
        0x47t
        0x56t
        0x5dt
        0x54t
        0x50t
        0x4dt
        0x4bt
        0x4at
        0x66t
        0x4bt
        0x5ct
        0x4t
        0x54t
        0x45t
        0x56t
        0x45t
        0x49t
        0x41t
        0x50t
        0x41t
        0x56t
        0x57t
        0x4t
        0x4dt
        0x57t
        0x4t
        0x51t
        0x4at
        0x57t
        0x51t
        0x54t
        0x54t
        0x4bt
        0x56t
        0x50t
        0x41t
        0x40t
        0xat
        0x1dt
        0x25t
        0x27t
        0x3et
        0x3et
        0x2bt
        0x2at
        0x6et
        0x3et
        0x3dt
        0x3dt
        0x26t
        0x6et
        0x2ft
        0x3at
        0x21t
        0x23t
        0x6et
        0x66t
        0x28t
        0x2ft
        0x27t
        0x22t
        0x2bt
        0x2at
        0x6et
        0x3at
        0x21t
        0x6et
        0x2bt
        0x36t
        0x3at
        0x3ct
        0x2ft
        0x2dt
        0x3at
        0x6et
        0x3bt
        0x3bt
        0x27t
        0x2at
        0x67t
        0x5ct
        0x64t
        0x66t
        0x7ft
        0x7ft
        0x66t
        0x61t
        0x68t
        0x2ft
        0x6et
        0x7bt
        0x60t
        0x62t
        0x2ft
        0x78t
        0x66t
        0x7bt
        0x67t
        0x2ft
        0x63t
        0x6at
        0x61t
        0x68t
        0x7bt
        0x67t
        0x2ft
        0x31t
        0x2ft
        0x3dt
        0x3et
        0x3bt
        0x38t
        0x3bt
        0x37t
        0x3ct
        0x39t
        0x3bt
        0x38t
        0x2ft
        0x27t
        0x7at
        0x61t
        0x7ct
        0x7at
        0x7ft
        0x7ft
        0x60t
        0x7dt
        0x7bt
        0x6at
        0x6bt
        0x26t
        0x21t
        0x19t
        0x22t
        0x29t
        0x34t
        0x3ct
        0x29t
        0x2ft
        0x38t
        0x29t
        0x28t
        0x6ct
        0x21t
        0x23t
        0x23t
        0x3at
        0x6ct
        0x2et
        0x23t
        0x34t
        0x62t
        0x19t
        0x22t
        0x29t
        0x34t
        0x3ct
        0x29t
        0x2ft
        0x38t
        0x29t
        0x28t
        0x6ct
        0x3ft
        0x2dt
        0x25t
        0x23t
        0x6ct
        0x29t
        0x22t
        0x38t
        0x3et
        0x35t
        0x6ct
        0x2ft
        0x23t
        0x39t
        0x22t
        0x38t
        0x76t
        0x6ct
        0x75t
        0x4et
        0x48t
        0x41t
        0x4et
        0x44t
        0x4ct
        0x45t
        0x44t
        0x0t
        0x49t
        0x4et
        0x44t
        0x49t
        0x52t
        0x45t
        0x43t
        0x54t
        0x0t
        0x52t
        0x45t
        0x46t
        0x45t
        0x52t
        0x45t
        0x4et
        0x43t
        0x45t
        0x1at
        0x2dt
        0x3et
        0x25t
        0x2dt
        0x2et
        0x20t
        0x29t
        0x6ct
        0x20t
        0x29t
        0x22t
        0x2bt
        0x38t
        0x24t
        0x6ct
        0x28t
        0x29t
        0x3ft
        0x2ft
        0x3et
        0x25t
        0x3ct
        0x38t
        0x25t
        0x23t
        0x22t
        0x6ct
        0x25t
        0x22t
        0x6ct
        0x3ft
        0x2bt
        0x3ct
        0x28t
        0x6ct
        0x2at
        0x23t
        0x39t
        0x22t
        0x28t
        0x6ct
        0x64t
        0x39t
        0x22t
        0x3ft
        0x39t
        0x3ct
        0x3ct
        0x23t
        0x3et
        0x38t
        0x29t
        0x28t
        0x65t
        0x0t
        0x11t
        0x11t
        0xdt
        0x8t
        0x2t
        0x0t
        0x15t
        0x8t
        0xet
        0xft
        0x4et
        0x19t
        0x4ct
        0x4t
        0xct
        0x12t
        0x6t
        0x52t
        0x44t
        0x48t
        0x46t
        0x44t
        0x5bt
        0x56t
        0x57t
        0x5dt
        0x1dt
        0x5at
        0x57t
        0x44t
        0x51t
        0x5t
        0x1at
        0x17t
        0x16t
        0x1ct
        0x5ct
        0x1et
        0x3t
        0x47t
    .end array-data
.end method

.method public static A0E()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "g4nWRvfNnAAIiGxGnpSgbR9b6QMuzQcB"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1nNBkzTZ7tsb1IQUd5CjozKkAt4Ie6rT"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "OPmcUucIDWTwLhoQhOAP1VS9FdSmwqCt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "oybuTUiWRxWRKWsuJCmFKJO6t7uLbr1y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "s7tBwuwLXf0Xzsu9FRUEoFOLNfbYGTu6"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "28rblOQ3PKiJfRhZpgaNL3K05b6CxLfw"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "8N05DubOXA6Axndz4dogTtSXWmBdNVXP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rOXs61jtUpn8BAxO4IzG2QZX4ETYPFZG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    return-void
.end method

.method private A0F(J)V
    .locals 12

    move-object v4, p0

    .line 59697
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VL;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59698
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VL;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Cs;

    .line 59699
    .local p1, "sampleInfo":Lcom/facebook/ads/redexgen/X/Cs;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/VL;->A03:I

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Cs;->A00:I

    sub-int/2addr v1, v0

    iput v1, v4, Lcom/facebook/ads/redexgen/X/VL;->A03:I

    .line 59700
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Cs;->A01:J

    add-long v6, p1, v0

    .line 59701
    .local v2, "metadataTimeUs":J
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VL;->A0S:Lcom/facebook/ads/redexgen/X/IY;

    if-eqz v0, :cond_1

    .line 59702
    invoke-virtual {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/IY;->A07(J)J

    move-result-wide v6

    .line 59703
    :cond_1
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v5, v2, v0

    .line 59704
    .local v6, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/CS;
    const/4 v8, 0x1

    iget v9, v3, Lcom/facebook/ads/redexgen/X/Cs;->A00:I

    iget v10, v4, Lcom/facebook/ads/redexgen/X/VL;->A03:I

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 59705
    .end local v6    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59706
    :cond_2
    return-void
.end method

.method private A0G(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59707
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VR;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/VR;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_0

    .line 59708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VR;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0J(Lcom/facebook/ads/redexgen/X/VR;)V

    goto :goto_0

    .line 59709
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VL;->A0B()V

    .line 59710
    return-void
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/CH;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59711
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    long-to-int v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    sub-int/2addr v2, v0

    .line 59712
    .local p1, "atomPayloadSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    if-eqz v0, :cond_0

    .line 59713
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    const/16 v0, 0x8

    invoke-interface {p1, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 59714
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    new-instance v2, Lcom/facebook/ads/redexgen/X/VQ;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VQ;-><init>(ILcom/facebook/ads/redexgen/X/IM;)V

    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/VL;->A0P(Lcom/facebook/ads/redexgen/X/VQ;J)V

    .line 59715
    :goto_0
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/VL;->A0G(J)V

    .line 59716
    return-void

    .line 59717
    :cond_0
    invoke-interface {p1, v2}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    goto :goto_0
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/CH;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 59718
    const/4 v2, 0x0

    .line 59719
    .local p0, "nextTrackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    const-wide v3, 0x7fffffffffffffffL

    .line 59720
    .local p1, "nextDataOffset":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 59721
    .local v3, "trackBundlesSize":I
    const/4 v7, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v7, v8, :cond_1

    .line 59722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 59723
    .local v0, "trackFragment":Lcom/facebook/ads/redexgen/X/D4;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/D4;->A0B:Z

    if-eqz v0, :cond_0

    iget-wide v5, v1, Lcom/facebook/ads/redexgen/X/D4;->A04:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_0

    .line 59724
    iget-wide v3, v1, Lcom/facebook/ads/redexgen/X/D4;->A04:J

    .line 59725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ct;

    .line 59726
    .end local v0    # "trackFragment":Lcom/facebook/ads/redexgen/X/D4;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 59727
    .end local v4    # "i":I
    :cond_1
    if-nez v2, :cond_2

    .line 59728
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    .line 59729
    return-void

    .line 59730
    :cond_2
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    sub-long/2addr v3, v0

    long-to-int v0, v3

    .line 59731
    .local v0, "bytesToSkip":I
    if-ltz v0, :cond_3

    .line 59732
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 59733
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/D4;->A05(Lcom/facebook/ads/redexgen/X/CH;)V

    .line 59734
    return-void

    .line 59735
    :cond_3
    const/16 v2, 0x133

    const/16 v1, 0x27

    const/16 v0, 0x36

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/VR;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59736
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0k:I

    if-ne v1, v0, :cond_1

    .line 59737
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VL;->A0L(Lcom/facebook/ads/redexgen/X/VR;)V

    .line 59738
    :cond_0
    :goto_0
    return-void

    .line 59739
    :cond_1
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0j:I

    if-ne v1, v0, :cond_2

    .line 59740
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VL;->A0K(Lcom/facebook/ads/redexgen/X/VR;)V

    goto :goto_0

    .line 59741
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/VR;->A09(Lcom/facebook/ads/redexgen/X/VR;)V

    goto :goto_0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/VR;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59743
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A0J:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0W:[B

    invoke-static {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0M(Lcom/facebook/ads/redexgen/X/VR;Landroid/util/SparseArray;I[B)V

    .line 59744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0L:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    .line 59745
    .local p0, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    :goto_0
    if-eqz v6, :cond_2

    .line 59746
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 59747
    .local p1, "trackCount":I
    const/4 v4, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 59748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "rYvrochTH6CPgUhiR2xzx5cJfmMawhdn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ct;

    invoke-virtual {v3, v6}, Lcom/facebook/ads/redexgen/X/Ct;->A07(Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;)V

    .line 59749
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 59750
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VL;->A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v6

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59751
    .end local p1    # "trackCount":I
    .end local v2    # "i":I
    :cond_2
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A0A:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v4

    if-eqz v0, :cond_4

    .line 59752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 59753
    .restart local p1    # "trackCount":I
    const/4 v3, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v3, v6, :cond_3

    .line 59754
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Ct;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0A:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ct;->A06(J)V

    .line 59755
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 59756
    .end local v2    # "i":I
    :cond_3
    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A0A:J

    .line 59757
    .end local p1    # "trackCount":I
    :cond_4
    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/VR;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59758
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0N:Lcom/facebook/ads/redexgen/X/D2;

    if-nez v0, :cond_3

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x214

    const/16 v1, 0x14

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Hx;->A06(ZLjava/lang/Object;)V

    .line 59759
    iget-object v13, v5, Lcom/facebook/ads/redexgen/X/VL;->A0L:Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-object/from16 v7, p1

    if-eqz v13, :cond_2

    .line 59760
    .local v0, "drmInitData":Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;
    :goto_1
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0n:I

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/VR;->A07(I)Lcom/facebook/ads/redexgen/X/VR;

    move-result-object v8

    .line 59761
    .local v5, "mvex":Lcom/facebook/ads/redexgen/X/VR;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 59762
    .local v0, "defaultSampleValuesArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 59763
    .local v3, "duration":J
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 59764
    .local v8, "mvexChildrenSize":I
    const/4 v3, 0x0

    .end local v3    # "duration":J
    .local v1, "i":I
    .local v4, "duration":J
    :goto_2
    if-ge v3, v6, :cond_5

    .line 59765
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/VQ;

    .line 59766
    .local v3, "atom":Lcom/facebook/ads/redexgen/X/VQ;
    iget v1, v9, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1N:I

    if-ne v1, v0, :cond_1

    .line 59767
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VL;->A03(Lcom/facebook/ads/redexgen/X/IM;)Landroid/util/Pair;

    move-result-object v2

    .line 59768
    .local v2, "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59769
    .end local v2    # "trexData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/DefaultSampleValues;>;"
    .end local v3    # "atom":Lcom/facebook/ads/redexgen/X/VQ;
    :cond_0
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 59770
    :cond_1
    iget v2, v9, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget-object v10, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v10, v0

    const/4 v0, 0x1

    aget-object v10, v10, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v10, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "k2u0Riq4zgTXzhG8n36HGReVy01IJU1M"

    const/4 v0, 0x2

    aput-object v1, v10, v0

    const-string v1, "D02MzvZEg8XOePgNGZqd9ORLvSwer5wp"

    const/4 v0, 0x1

    aput-object v1, v10, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0g:I

    if-ne v2, v0, :cond_0

    .line 59771
    iget-object v0, v9, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VL;->A01(Lcom/facebook/ads/redexgen/X/IM;)J

    move-result-wide v11

    goto :goto_3

    .line 59772
    :cond_2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VL;->A05(Ljava/util/List;)Lcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;

    move-result-object v13

    goto :goto_1

    .line 59773
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59774
    .end local v1    # "i":I
    :cond_5
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 59775
    .local v13, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 59776
    .local v13, "moovContainerChildrenSize":I
    const/4 v2, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v2, v6, :cond_8

    .line 59777
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/VR;

    .line 59778
    .local v0, "atom":Lcom/facebook/ads/redexgen/X/VR;
    iget v1, v9, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1M:I

    if-ne v1, v0, :cond_6

    .line 59779
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0o:I

    .line 59780
    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v10

    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0J:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    const/4 v14, 0x1

    :goto_5
    const/4 v15, 0x0

    .line 59781
    .end local v1    # "i":I
    .end local v0    # "atom":Lcom/facebook/ads/redexgen/X/VR;
    .local v0, "i":I
    .local v6, "atom":Lcom/facebook/ads/redexgen/X/VR;
    .end local v13    # "moovContainerChildrenSize":I
    .local v3, "moovContainerChildrenSize":I
    .end local v13
    .local v7, "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    invoke-static/range {v9 .. v15}, Lcom/facebook/ads/redexgen/X/Cm;->A0C(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/VQ;JLcom/facebook/ads/internal/exoplayer2/drm/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/D2;

    move-result-object v1

    .line 59782
    .local v3, "track":Lcom/facebook/ads/redexgen/X/D2;
    if-eqz v1, :cond_6

    .line 59783
    iget v0, v1, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59784
    .end local v1
    .end local v0    # "i":I
    .end local v13
    .end local v13
    .restart local v7    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    .restart local v0    # "i":I
    .restart local v3    # "track":Lcom/facebook/ads/redexgen/X/D2;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_4

    .line 59785
    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 59786
    .end local v7    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    .end local v3    # "track":Lcom/facebook/ads/redexgen/X/D2;
    .restart local v13    # "moovContainerChildrenSize":I
    .restart local v13    # "moovContainerChildrenSize":I
    .end local v1    # "i":I
    .end local v13    # "moovContainerChildrenSize":I
    .end local v13
    .restart local v7    # "tracks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Track;>;"
    .restart local v3    # "track":Lcom/facebook/ads/redexgen/X/D2;
    :cond_8
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 59787
    .local v3, "trackCount":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 59788
    const/4 v9, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v9, v8, :cond_d

    .line 59789
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/ads/redexgen/X/D2;

    .line 59790
    .local v2, "track":Lcom/facebook/ads/redexgen/X/D2;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/VL;->A0C:Lcom/facebook/ads/redexgen/X/CI;

    iget v0, v10, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    invoke-interface {v1, v9, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ct;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Ct;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    .line 59791
    .local v1, "trackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    iget v0, v10, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    invoke-direct {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/VL;->A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/Cn;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lcom/facebook/ads/redexgen/X/Ct;->A08(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/Cn;)V

    .line 59792
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    iget v0, v10, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59793
    iget-wide v6, v5, Lcom/facebook/ads/redexgen/X/VL;->A08:J

    .end local v5    # "mvex":Lcom/facebook/ads/redexgen/X/VR;
    .local v0, "mvex":Lcom/facebook/ads/redexgen/X/VR;
    iget-wide v0, v10, Lcom/facebook/ads/redexgen/X/D2;->A04:J

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A08:J

    .line 59794
    .end local v2    # "track":Lcom/facebook/ads/redexgen/X/D2;
    .end local v1    # "trackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 59795
    .end local v0    # "mvex":Lcom/facebook/ads/redexgen/X/VR;
    .restart local v5    # "mvex":Lcom/facebook/ads/redexgen/X/VR;
    .end local v5    # "mvex":Lcom/facebook/ads/redexgen/X/VR;
    .restart local v0    # "mvex":Lcom/facebook/ads/redexgen/X/VR;
    :cond_9
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_b

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "3qxrQI4RSNJuezkjWZLJfnXfN18bK1WD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "CUHS6dXkG9IXHh0lSeCUshbO6XQEGtAO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v8, :cond_c

    :goto_7
    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_a

    .line 59796
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "Q1n7hGr3SK0fQ6ktvphkLW6VXP2M2AUq"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v6, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v6, v8, :cond_e

    .line 59797
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/D2;

    .line 59798
    .local v5, "track":Lcom/facebook/ads/redexgen/X/D2;
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 59799
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ct;

    iget v0, v2, Lcom/facebook/ads/redexgen/X/D2;->A00:I

    .line 59800
    invoke-direct {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/VL;->A06(Landroid/util/SparseArray;I)Lcom/facebook/ads/redexgen/X/Cn;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ct;->A08(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/Cn;)V

    .line 59801
    .end local v5    # "track":Lcom/facebook/ads/redexgen/X/D2;
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_a
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "wAvIEpKVQykgG6xT8folpmJEQOMVUM0U"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v6, 0x0

    goto :goto_9

    :cond_b
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "8cVkAhOHoLS19x1q4V4wKJP9wKxlnIAT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "BuIetoyvRjdFLsYB7Vash08PRyhl31Pa"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ne v0, v8, :cond_c

    goto :goto_7

    .line 59802
    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    .line 59803
    .end local v0    # "mvex":Lcom/facebook/ads/redexgen/X/VR;
    .restart local v5    # "track":Lcom/facebook/ads/redexgen/X/D2;
    .end local v5    # "track":Lcom/facebook/ads/redexgen/X/D2;
    .end local v0
    .restart local v0    # "mvex":Lcom/facebook/ads/redexgen/X/VR;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/VL;->A0C()V

    .line 59804
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0C:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 59805
    .end local v7    # "i":I
    :cond_e
    return-void
.end method

.method public static A0M(Lcom/facebook/ads/redexgen/X/VR;Landroid/util/SparseArray;I[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/VR;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ct;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59806
    .local v3, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 59807
    .local p0, "moofContainerChildrenSize":I
    const/4 v3, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 59808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A01:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/VR;

    .line 59809
    .local p2, "child":Lcom/facebook/ads/redexgen/X/VR;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1L:I

    if-ne v1, v0, :cond_0

    .line 59810
    invoke-static {v2, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/VL;->A0N(Lcom/facebook/ads/redexgen/X/VR;Landroid/util/SparseArray;I[B)V

    .line 59811
    .end local p2    # "child":Lcom/facebook/ads/redexgen/X/VR;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59812
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method public static A0N(Lcom/facebook/ads/redexgen/X/VR;Landroid/util/SparseArray;I[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/VR;",
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Ct;",
            ">;I[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59813
    .local v0, "trackBundleArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/FragmentedMp4Extractor$TrackBundle;>;"
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1J:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 59814
    .local p2, "tfhd":Lcom/facebook/ads/redexgen/X/VQ;
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/VL;->A09(Lcom/facebook/ads/redexgen/X/IM;Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v4

    .line 59815
    .local p3, "trackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    if-nez v4, :cond_0

    .line 59816
    return-void

    .line 59817
    :cond_0
    iget-object v3, v4, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 59818
    .local p2, "fragment":Lcom/facebook/ads/redexgen/X/D4;
    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/D4;->A06:J

    .line 59819
    .local v0, "decodeTime":J
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ct;->A05()V

    .line 59820
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1I:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 59821
    .local v0, "tfdtAtom":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v0, :cond_1

    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    .line 59822
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1I:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VL;->A02(Lcom/facebook/ads/redexgen/X/IM;)J

    move-result-wide v1

    .line 59823
    :cond_1
    invoke-static {p0, v4, v1, v2, p2}, Lcom/facebook/ads/redexgen/X/VL;->A0O(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/Ct;JI)V

    .line 59824
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/Cn;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cn;->A02:I

    .line 59825
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/D2;->A00(I)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v6

    .line 59826
    .local p1, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0v:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 59827
    .local v4, "saiz":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v0, :cond_2

    .line 59828
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v6, v0, v3}, Lcom/facebook/ads/redexgen/X/VL;->A0Q(Lcom/facebook/ads/redexgen/X/D3;Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/D4;)V

    .line 59829
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0u:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 59830
    .local v3, "saio":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v0, :cond_5

    .line 59831
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4d

    if-eq v1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "x1raruMX3DQrMXh41poL3rJgJukko9n1"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "wTlRqDvGJWRPqCGmE1WfGoFCb7sHhU43"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v4, v3}, Lcom/facebook/ads/redexgen/X/VL;->A0T(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/D4;)V

    .line 59832
    :cond_5
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A11:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v0

    .line 59833
    .local v1, "senc":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v0, :cond_6

    .line 59834
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/VL;->A0U(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/D4;)V

    .line 59835
    :cond_6
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0y:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v1

    .line 59836
    .local p6, "sbgp":Lcom/facebook/ads/redexgen/X/VQ;
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A12:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/VR;->A08(I)Lcom/facebook/ads/redexgen/X/VQ;

    move-result-object v5

    .line 59837
    .local v0, "sgpd":Lcom/facebook/ads/redexgen/X/VQ;
    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    .line 59838
    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_9

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 59839
    if-eqz v6, :cond_a

    .end local p2    # "fragment":Lcom/facebook/ads/redexgen/X/D4;
    .local v0, "tfhd":Lcom/facebook/ads/redexgen/X/VQ;
    :goto_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/D3;->A02:Ljava/lang/String;

    .line 59840
    :goto_1
    invoke-static {v4, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VL;->A0W(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/D4;)V

    .line 59841
    .end local p2
    .restart local v0    # "tfhd":Lcom/facebook/ads/redexgen/X/VQ;
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 59842
    .local p1, "leafChildrenSize":I
    const/4 v4, 0x0

    .local p2, "i":I
    :goto_2
    if-ge v4, v5, :cond_b

    .line 59843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/VQ;

    .line 59844
    .local v0, "atom":Lcom/facebook/ads/redexgen/X/VQ;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    .end local p1    # "leafChildrenSize":I
    .local v0, "leafChildrenSize":I
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1R:I

    if-ne v1, v0, :cond_8

    .line 59845
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0, v3, p3}, Lcom/facebook/ads/redexgen/X/VL;->A0V(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/D4;[B)V

    .line 59846
    .end local v0    # "leafChildrenSize":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "4S3fFsct9wMqhtbjX3OzCQYTzxA2DpZX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "33cDkUVXU7T5TEpz5AWQYrb8qRnZI9lY"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    goto :goto_2

    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "eR2ci7oCi5KYmA5Aij21tpzSPWY3D7SY"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "61B3KDr7erNi09ZRxof0GMiUpcZHoOHP"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 59847
    if-eqz v6, :cond_a

    goto :goto_0

    .end local v0
    .restart local p2    # "i":I
    .end local p2    # "i":I
    .restart local v0    # "leafChildrenSize":I
    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    .line 59848
    .end local p2
    .end local v0    # "leafChildrenSize":I
    .restart local p1    # "leafChildrenSize":I
    :cond_b
    return-void
.end method

.method public static A0O(Lcom/facebook/ads/redexgen/X/VR;Lcom/facebook/ads/redexgen/X/Ct;JI)V
    .locals 13

    .line 59849
    const/4 v7, 0x0

    .line 59850
    .local p0, "trunCount":I
    const/4 v6, 0x0

    .line 59851
    .local v8, "totalSampleCount":I
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/VR;->A02:Ljava/util/List;

    .line 59852
    .local v5, "leafChildren":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/exoplayer2/extractor/mp4/Atom$LeafAtom;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 59853
    .local v4, "leafChildrenSize":I
    const/4 v3, 0x0

    .end local p0    # "trunCount":I
    .end local v8    # "totalSampleCount":I
    .local v10, "i":I
    .local v3, "trunCount":I
    .local v7, "totalSampleCount":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 59854
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/VQ;

    .line 59855
    .local p0, "atom":Lcom/facebook/ads/redexgen/X/VQ;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1O:I

    if-ne v1, v0, :cond_0

    .line 59856
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 59857
    .local v8, "trunData":Lcom/facebook/ads/redexgen/X/IM;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59858
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    .line 59859
    .local v3, "trunSampleCount":I
    if-lez v0, :cond_0

    .line 59860
    add-int/2addr v6, v0

    .line 59861
    add-int/lit8 v7, v7, 0x1

    .line 59862
    .end local p0    # "atom":Lcom/facebook/ads/redexgen/X/VQ;
    .end local v8    # "trunData":Lcom/facebook/ads/redexgen/X/IM;
    .end local v3    # "trunSampleCount":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59863
    .end local v10    # "i":I
    :cond_1
    const/4 v0, 0x0

    move-object v8, p1

    iput v0, v8, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    .line 59864
    iput v0, v8, Lcom/facebook/ads/redexgen/X/Ct;->A00:I

    .line 59865
    iput v0, v8, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    .line 59866
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    invoke-virtual {v0, v7, v6}, Lcom/facebook/ads/redexgen/X/D4;->A04(II)V

    .line 59867
    const/4 v9, 0x0

    .line 59868
    .local p0, "trunIndex":I
    const/4 p1, 0x0

    .line 59869
    .local v8, "trunStartPosition":I
    const/4 v3, 0x0

    .end local p0    # "trunIndex":I
    .local v8, "trunIndex":I
    .local v6, "i":I
    .local v2, "trunStartPosition":I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 59870
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/VQ;

    .line 59871
    .local v2, "trun":Lcom/facebook/ads/redexgen/X/VQ;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1O:I

    if-ne v1, v0, :cond_2

    .line 59872
    add-int/lit8 v0, v9, 0x1

    .end local v8    # "trunIndex":I
    .local v1, "trunIndex":I
    iget-object p0, v2, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    .line 59873
    move/from16 v12, p4

    move-wide v10, p2

    invoke-static/range {v8 .. v14}, Lcom/facebook/ads/redexgen/X/VL;->A00(Lcom/facebook/ads/redexgen/X/Ct;IJILcom/facebook/ads/redexgen/X/IM;I)I

    move-result p1

    move v9, v0

    .line 59874
    .end local v2    # "trun":Lcom/facebook/ads/redexgen/X/VQ;
    .end local v1    # "trunIndex":I
    .restart local v8    # "trunIndex":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59875
    .end local v6    # "i":I
    :cond_3
    return-void
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/VQ;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59877
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VR;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/VR;->A0A(Lcom/facebook/ads/redexgen/X/VQ;)V

    .line 59878
    :cond_0
    :goto_0
    return-void

    .line 59879
    :cond_1
    iget v3, p1, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "iyHmyOudMy953ygVgHG2EAsP8wMF60NA"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A13:I

    if-ne v3, v0, :cond_2

    .line 59880
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/VL;->A04(Lcom/facebook/ads/redexgen/X/IM;J)Landroid/util/Pair;

    move-result-object v2

    .line 59881
    .local p0, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/facebook/ads/internal/exoplayer2/extractor/ChunkIndex;>;"
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0B:J

    .line 59882
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A0C:Lcom/facebook/ads/redexgen/X/CI;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/CP;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 59883
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0F:Z

    .end local p0    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/facebook/ads/internal/exoplayer2/extractor/ChunkIndex;>;"
    goto :goto_0

    .line 59884
    :cond_2
    iget v1, p1, Lcom/facebook/ads/redexgen/X/Ch;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0Q:I

    if-ne v1, v0, :cond_0

    .line 59885
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/VQ;->A00:Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0R(Lcom/facebook/ads/redexgen/X/IM;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0Q(Lcom/facebook/ads/redexgen/X/D3;Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/D4;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59886
    iget p0, p0, Lcom/facebook/ads/redexgen/X/D3;->A00:I

    .line 59887
    .local p0, "vectorSize":I
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59888
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 59889
    .local p2, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00(I)I

    move-result v0

    .line 59890
    .local p0, "flags":I
    and-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    .line 59891
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 59892
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v2

    .line 59893
    .local p1, "defaultSampleInfoSize":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v4

    .line 59894
    .local v1, "sampleCount":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/D4;->A00:I

    if-ne v4, v0, :cond_6

    .line 59895
    const/4 v3, 0x0

    .line 59896
    .local v0, "totalSize":I
    const/4 v1, 0x0

    if-nez v2, :cond_2

    .line 59897
    iget-object v2, p2, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    .line 59898
    .local v5, "sampleHasSubsampleEncryptionTable":[Z
    const/4 v1, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 59899
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 59900
    .local v4, "sampleInfoSize":I
    add-int/2addr v3, v0

    .line 59901
    if-le v0, p0, :cond_1

    const/4 v0, 0x1

    :goto_1
    aput-boolean v0, v2, v1

    .line 59902
    .end local v4    # "sampleInfoSize":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59903
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 59904
    :cond_2
    if-le v2, p0, :cond_4

    .line 59905
    .local v0, "subsampleEncryption":Z
    :goto_2
    mul-int/2addr v2, v4

    add-int/2addr v3, v2

    .line 59906
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    invoke-static {v0, v1, v4, v5}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 59907
    .end local v0    # "subsampleEncryption":Z
    :cond_3
    invoke-virtual {p2, v3}, Lcom/facebook/ads/redexgen/X/D4;->A03(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 59908
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "QIQ2ibrCsah6ZYP2cJAaMosJMX221IiC"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "UD1pquZAgnzSI7qqJeS7ex1A5FLEsvx3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 59909
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 59910
    .end local v0
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x122

    const/16 v1, 0x11

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/D4;->A00:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 17

    .line 59911
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 59912
    .end local v11
    .end local v11
    .end local v13
    :cond_0
    return-void

    .line 59913
    :cond_1
    const/16 v7, 0xc

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59914
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v10

    .line 59915
    .local v11, "sampleSize":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0R()Ljava/lang/String;

    .line 59916
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0R()Ljava/lang/String;

    .line 59917
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v15

    .line 59918
    .local v11, "timescale":J
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    invoke-static/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/Ic;->A0F(JJJ)J

    move-result-wide v2

    .line 59919
    .local v13, "presentationTimeDeltaUs":J
    iget-object v6, v4, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v5, v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v0, v6, v1

    .line 59920
    .local v10, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/CS;
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59921
    invoke-interface {v0, v8, v10}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 59922
    .end local v10    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59923
    :cond_2
    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/VL;->A0B:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v5

    if-eqz v0, :cond_4

    .line 59924
    add-long/2addr v7, v2

    .line 59925
    .local v4, "sampleTimeUs":J
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/VL;->A0S:Lcom/facebook/ads/redexgen/X/IY;

    if-eqz v0, :cond_3

    .line 59926
    invoke-virtual {v0, v7, v8}, Lcom/facebook/ads/redexgen/X/IY;->A07(J)J

    move-result-wide v7

    .line 59927
    .end local v4    # "sampleTimeUs":J
    .local v15, "sampleTimeUs":J
    :cond_3
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/VL;->A0I:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    aget-object v6, v2, v0

    .line 59928
    .local p0, "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/CS;
    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 59929
    .end local p0    # "emsgTrackOutput":Lcom/facebook/ads/redexgen/X/CS;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59930
    :cond_4
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/VL;->A0U:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cs;

    invoke-direct {v0, v2, v3, v10}, Lcom/facebook/ads/redexgen/X/Cs;-><init>(JI)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 59931
    iget v0, v4, Lcom/facebook/ads/redexgen/X/VL;->A03:I

    add-int/2addr v0, v10

    iput v0, v4, Lcom/facebook/ads/redexgen/X/VL;->A03:I

    .line 59932
    :cond_5
    return-void
.end method

.method public static A0S(Lcom/facebook/ads/redexgen/X/IM;ILcom/facebook/ads/redexgen/X/D4;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59933
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59934
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    .line 59935
    .local p0, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ch;->A00(I)I

    move-result v1

    .line 59936
    .local p1, "flags":I
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_2

    .line 59937
    and-int/lit8 v0, v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 59938
    .local p2, "subsampleEncryption":Z
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result p1

    .line 59939
    .local v0, "sampleCount":I
    iget v0, p2, Lcom/facebook/ads/redexgen/X/D4;->A00:I

    if-ne p1, v0, :cond_1

    .line 59940
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/D4;->A0H:[Z

    invoke-static {v0, v2, p1, v1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 59941
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/D4;->A03(I)V

    .line 59942
    invoke-virtual {p2, p0}, Lcom/facebook/ads/redexgen/X/D4;->A06(Lcom/facebook/ads/redexgen/X/IM;)V

    .line 59943
    return-void

    .line 59944
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 59945
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x122

    const/16 v1, 0x11

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p2, Lcom/facebook/ads/redexgen/X/D4;->A00:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59946
    .end local p2    # "subsampleEncryption":Z
    .end local v0    # "sampleCount":I
    :cond_2
    const/16 v2, 0x17d

    const/16 v1, 0x38

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0T(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/D4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59947
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59948
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 59949
    .local p1, "fullAtom":I
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ch;->A00(I)I

    move-result v0

    .line 59950
    .local v3, "flags":I
    and-int/lit8 v1, v0, 0x1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 59951
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 59952
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v4

    .line 59953
    .local p0, "entryCount":I
    if-ne v4, v0, :cond_2

    .line 59954
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v0

    .line 59955
    .local v2, "version":I
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/D4;->A04:J

    .line 59956
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    :goto_0
    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/facebook/ads/redexgen/X/D4;->A04:J

    .line 59957
    return-void

    .line 59958
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    goto :goto_0

    .line 59959
    .end local v2    # "version":I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x228

    const/16 v1, 0x1d

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0U(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/D4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59960
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/VL;->A0S(Lcom/facebook/ads/redexgen/X/IM;ILcom/facebook/ads/redexgen/X/D4;)V

    .line 59961
    return-void
.end method

.method public static A0V(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/D4;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59962
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59963
    const/16 v1, 0x10

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 59964
    sget-object v0, Lcom/facebook/ads/redexgen/X/VL;->A0c:[B

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59965
    return-void

    .line 59966
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/VL;->A0S(Lcom/facebook/ads/redexgen/X/IM;ILcom/facebook/ads/redexgen/X/D4;)V

    .line 59967
    return-void
.end method

.method public static A0W(Lcom/facebook/ads/redexgen/X/IM;Lcom/facebook/ads/redexgen/X/IM;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/D4;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AJ;
        }
    .end annotation

    .line 59968
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59969
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v2

    .line 59970
    .local p0, "sbgpFullAtom":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/VL;->A0a:I

    if-eq v1, v0, :cond_0

    .line 59971
    return-void

    .line 59972
    :cond_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v0

    const/4 v4, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 59973
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 59974
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 59975
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 59976
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v3

    .line 59977
    .local p3, "sgpdFullAtom":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/VL;->A0a:I

    if-eq v1, v0, :cond_2

    .line 59978
    return-void

    .line 59979
    :cond_2
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ch;->A01(I)I

    move-result v1

    .line 59980
    .local p1, "sgpdVersion":I
    if-ne v1, v2, :cond_5

    .line 59981
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v5

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-eqz v0, :cond_9

    .line 59982
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v5

    const-wide/16 v3, 0x1

    cmp-long v0, v5, v3

    if-nez v0, :cond_8

    .line 59983
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 59984
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 59985
    .local v2, "patternByte":I
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v7, v0, 0x4

    .line 59986
    .local p3, "cryptByteBlock":I
    and-int/lit8 v8, v1, 0xf

    .line 59987
    .local v1, "skipByteBlock":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_4

    const/4 v3, 0x1

    .line 59988
    .local v1, "isProtected":Z
    :goto_1
    if-nez v3, :cond_6

    .line 59989
    return-void

    .line 59990
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 59991
    :cond_5
    const/4 v0, 0x2

    if-lt v1, v0, :cond_3

    .line 59992
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    goto :goto_0

    .line 59993
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v5

    .line 59994
    .local v5, "perSampleIvSize":I
    const/16 v0, 0x10

    new-array v6, v0, [B

    .line 59995
    .local v3, "keyId":[B
    array-length v0, v6

    invoke-virtual {p1, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 59996
    const/4 p0, 0x0

    .line 59997
    .local v0, "constantIv":[B
    if-eqz v3, :cond_7

    if-nez v5, :cond_7

    .line 59998
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 59999
    .local v4, "constantIvSize":I
    new-array p0, v0, [B

    .line 60000
    invoke-virtual {p1, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0d([BII)V

    .line 60001
    .end local v0    # "constantIv":[B
    .local p11, "constantIv":[B
    :cond_7
    iput-boolean v2, p3, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    .line 60002
    new-instance v2, Lcom/facebook/ads/redexgen/X/D3;

    .end local v3    # "keyId":[B
    .local v3, "keyId":[B
    move-object v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/facebook/ads/redexgen/X/D3;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v2, p3, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    .line 60003
    return-void

    .line 60004
    .end local p3    # "cryptByteBlock":I
    .end local v2    # "patternByte":I
    .end local v1    # "isProtected":Z
    .end local v1
    .end local v5    # "perSampleIvSize":I
    .end local p11
    .end local v3    # "keyId":[B
    :cond_8
    const/16 v2, 0x59

    const/16 v1, 0x27

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60005
    :cond_9
    const/16 v2, 0x261

    const/16 v1, 0x37

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60006
    .end local p3
    .end local p1    # "sgpdVersion":I
    :cond_a
    const/16 v2, 0x32

    const/16 v1, 0x27

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A0X(I)Z
    .locals 4

    .line 60007
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0k:I

    if-eq p0, v0, :cond_0

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A1M:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "5u2K9r6JIdzlcfhnLrffAJz0jQ7FoXkj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "KWKFBMHfUu88xWObj9sTXIP2NVeoQH3Z"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0e:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0i:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A17:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0j:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1L:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0n:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0O:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0Y(I)Z
    .locals 4

    .line 60008
    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0W:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0d:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0o:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A13:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1B:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1I:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1J:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1K:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1N:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1O:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0s:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0v:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0u:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A11:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A1R:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0y:I

    if-eq p0, v0, :cond_0

    sget v3, Lcom/facebook/ads/redexgen/X/Ch;->A12:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "3vSW9oHVzq8ichjnxGFYPG2iD1Mv6UDn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0P:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0g:I

    if-eq p0, v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0Q:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Z(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60009
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1

    .line 60010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0O:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v5, v6, v4}, Lcom/facebook/ads/redexgen/X/CH;->ACp([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60011
    return v5

    .line 60012
    :cond_0
    iput v6, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    .line 60013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0O:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0O:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0N()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    .line 60015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0O:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:I

    .line 60016
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    const-wide/16 v7, 0x1

    cmp-long v2, v0, v7

    if-nez v2, :cond_3

    .line 60017
    const/16 v1, 0x8

    .line 60018
    .local p0, "headerBytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0O:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-interface {p1, v0, v6, v1}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60019
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    .line 60020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0O:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0O()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    .line 60021
    .end local p0    # "headerBytesRemaining":I
    :cond_2
    :goto_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    int-to-long v0, v0

    cmp-long v7, v2, v0

    if-ltz v7, :cond_f

    .line 60022
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    int-to-long v0, v0

    sub-long/2addr v2, v0

    .line 60023
    .local v5, "atomPosition":J
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0j:I

    if-ne v1, v0, :cond_5

    .line 60024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 60025
    .local p0, "trackCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v1, v7, :cond_5

    .line 60026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 60027
    .local v0, "fragment":Lcom/facebook/ads/redexgen/X/D4;
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/D4;->A03:J

    .line 60028
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/D4;->A04:J

    .line 60029
    iput-wide v2, v0, Lcom/facebook/ads/redexgen/X/D4;->A05:J

    .line 60030
    .end local v0    # "fragment":Lcom/facebook/ads/redexgen/X/D4;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 60031
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-nez v2, :cond_2

    .line 60032
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A6i()J

    move-result-wide v2

    .line 60033
    .local v5, "endPosition":J
    const-wide/16 v7, -0x1

    cmp-long v0, v2, v7

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60034
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/VR;

    iget-wide v2, v0, Lcom/facebook/ads/redexgen/X/VR;->A00:J

    .line 60035
    :cond_4
    cmp-long v0, v2, v7

    if-eqz v0, :cond_2

    .line 60036
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    goto :goto_0

    .line 60037
    .end local p0    # "trackCount":I
    .end local v0
    :cond_5
    iget v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:I

    sget v0, Lcom/facebook/ads/redexgen/X/Ch;->A0c:I

    const/4 v9, 0x0

    if-ne v1, v0, :cond_8

    .line 60038
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    .line 60039
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A09:J

    sget-object v5, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v5, v0

    const/4 v0, 0x3

    aget-object v5, v5, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    .line 60040
    sget-object v5, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "n8zYoDsdflbxpQzqRRqgLdFAVWNyw3vJ"

    const/4 v0, 0x5

    aput-object v1, v5, v0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0F:Z

    if-nez v0, :cond_6

    .line 60041
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A0C:Lcom/facebook/ads/redexgen/X/CI;

    iget-wide v5, p0, Lcom/facebook/ads/redexgen/X/VL;->A08:J

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(JJ)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 60042
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A0F:Z

    .line 60043
    :cond_6
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    .line 60044
    return v4

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60045
    :cond_8
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VL;->A0X(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 60046
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v5

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    add-long/2addr v5, v0

    const-wide/16 v0, 0x8

    sub-long/2addr v5, v0

    .line 60047
    .local p0, "endPosition":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/VR;

    invoke-direct {v0, v1, v5, v6}, Lcom/facebook/ads/redexgen/X/VR;-><init>(IJ)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 60048
    iget-wide v7, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    int-to-long v1, v0

    cmp-long v0, v7, v1

    if-nez v0, :cond_9

    .line 60049
    invoke-direct {p0, v5, v6}, Lcom/facebook/ads/redexgen/X/VL;->A0G(J)V

    .line 60050
    :goto_2
    return v4

    .line 60051
    :cond_9
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VL;->A0B()V

    goto :goto_2

    .line 60052
    :cond_a
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VL;->A0Y(I)Z

    move-result v0

    const-wide/32 v7, 0x7fffffff

    if-eqz v0, :cond_b

    .line 60053
    iget v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A00:I

    if-ne v0, v6, :cond_d

    .line 60054
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    cmp-long v0, v2, v7

    if-gtz v0, :cond_c

    .line 60055
    long-to-int v1, v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    .line 60056
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0O:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    invoke-static {v1, v5, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60057
    iput v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    goto :goto_2

    .line 60058
    :cond_b
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A07:J

    cmp-long v0, v1, v7

    if-gtz v0, :cond_e

    .line 60059
    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/VL;->A0E:Lcom/facebook/ads/redexgen/X/IM;

    .line 60060
    iput v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    goto :goto_2

    .line 60061
    :cond_c
    const/16 v2, 0xf1

    const/16 v1, 0x31

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60062
    :cond_d
    const/16 v2, 0xbe

    const/16 v1, 0x33

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60063
    :cond_e
    const/16 v2, 0x1df

    const/16 v1, 0x35

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60064
    .end local v5    # "endPosition":J
    :cond_f
    const/4 v2, 0x2

    const/16 v1, 0x30

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0a(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60065
    move-object/from16 v5, p0

    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v11, 0x4

    const/4 v3, 0x1

    const/4 v10, 0x0

    move-object/from16 v9, p1

    if-ne v0, v2, :cond_a

    .line 60066
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    sget-object v6, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v6, v0

    const/4 v0, 0x1

    aget-object v6, v6, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v6, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "0PM6tDsPkhBjT0DKLXUfuP9guSMYpxys"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    if-nez v7, :cond_3

    .line 60067
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/VL;->A07(Landroid/util/SparseArray;)Lcom/facebook/ads/redexgen/X/Ct;

    move-result-object v8

    .line 60068
    .local v5, "currentTrackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    if-nez v8, :cond_1

    .line 60069
    iget-wide v2, v5, Lcom/facebook/ads/redexgen/X/VL;->A09:J

    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v0

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 60070
    .local v0, "bytesToSkip":I
    if-ltz v0, :cond_0

    .line 60071
    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60072
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/VL;->A0B()V

    .line 60073
    return v10

    .line 60074
    :cond_0
    const/16 v2, 0x15a

    const/16 v1, 0x23

    const/16 v0, 0x7c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60075
    .end local v0    # "bytesToSkip":I
    :cond_1
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    sget-object v6, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v6, v0

    const/4 v0, 0x1

    aget-object v6, v6, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v6, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "BP9pWUwb5tH8b1wTqZYAR9IOs44z3L2U"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    const-string v1, "WSMbVVDrl73hl8JGmnjXiFJ3UxF0oGNv"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/D4;->A0G:[J

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    aget-wide v0, v1, v0

    .line 60076
    .local v10, "nextDataPosition":J
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-int v6, v0

    .line 60077
    .local v3, "bytesToSkip":I
    if-gez v6, :cond_2

    .line 60078
    :goto_0
    const/16 v6, 0x80

    const/16 v1, 0x16

    const/16 v0, 0xe

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v7

    const/16 v6, 0x96

    const/16 v1, 0x28

    const/16 v0, 0x49

    invoke-static {v6, v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60079
    const/4 v6, 0x0

    .line 60080
    :cond_2
    invoke-interface {v9, v6}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60081
    iput-object v8, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    .line 60082
    .end local v5    # "currentTrackBundle":Lcom/facebook/ads/redexgen/X/Ct;
    .end local v3    # "bytesToSkip":I
    .end local v10    # "nextDataPosition":J
    :cond_3
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/D4;->A0D:[I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    aget v7, v1, v0

    sget-object v6, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v6, v0

    const/4 v0, 0x6

    aget-object v6, v6, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v6, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "zedyGCGrJv1M1eirXC8uLHS4DwEeaOvj"

    const/4 v0, 0x5

    aput-object v1, v6, v0

    iput v7, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    .line 60083
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ct;->A03:I

    if-ge v1, v0, :cond_8

    .line 60084
    :goto_1
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60085
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ct;->A03(Lcom/facebook/ads/redexgen/X/Ct;)V

    .line 60086
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ct;->A09()Z

    move-result v0

    if-nez v0, :cond_4

    .line 60087
    iput-object v4, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    .line 60088
    :cond_4
    iput v2, v5, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    .line 60089
    return v3

    :cond_5
    sget-object v6, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "Tj1D1nCYVKhBnsiSi5dVAlRrkGMt3HMa"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    iput v7, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    .line 60090
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ct;->A03:I

    if-ge v1, v0, :cond_8

    goto :goto_1

    :cond_6
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/D4;->A0G:[J

    iget v0, v8, Lcom/facebook/ads/redexgen/X/Ct;->A02:I

    aget-wide v0, v1, v0

    .line 60091
    .local v10, "nextDataPosition":J
    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/CH;->A71()J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-int v6, v0

    .line 60092
    .local v3, "bytesToSkip":I
    if-gez v6, :cond_2

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 60093
    :cond_8
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A02:I

    if-ne v0, v3, :cond_9

    .line 60094
    iget v1, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    const/16 v0, 0x8

    sub-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    .line 60095
    invoke-interface {v9, v0}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 60096
    :cond_9
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ct;->A04()I

    move-result v0

    iput v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    .line 60097
    iget v1, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    add-int/2addr v1, v0

    iput v1, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    .line 60098
    iput v11, v5, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    .line 60099
    iput v10, v5, Lcom/facebook/ads/redexgen/X/VL;->A05:I

    .line 60100
    :cond_a
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Ct;->A07:Lcom/facebook/ads/redexgen/X/D4;

    .line 60101
    .local v5, "fragment":Lcom/facebook/ads/redexgen/X/D4;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ct;->A05:Lcom/facebook/ads/redexgen/X/D2;

    .line 60102
    .local v3, "track":Lcom/facebook/ads/redexgen/X/D2;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Ct;->A06:Lcom/facebook/ads/redexgen/X/CS;

    .line 60103
    .local v10, "output":Lcom/facebook/ads/redexgen/X/CS;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/Ct;->A01:I

    .line 60104
    .local v6, "sampleIndex":I
    invoke-virtual {v8, v7}, Lcom/facebook/ads/redexgen/X/D4;->A01(I)J

    move-result-wide v1

    const-wide/16 v12, 0x3e8

    mul-long/2addr v1, v12

    .line 60105
    .local v7, "sampleTimeUs":J
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0S:Lcom/facebook/ads/redexgen/X/IY;

    if-eqz v0, :cond_b

    .line 60106
    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/IY;->A07(J)J

    move-result-wide v1

    .line 60107
    .end local v7    # "sampleTimeUs":J
    .local v1, "sampleTimeUs":J
    :cond_b
    iget v0, v4, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    if-eqz v0, :cond_10

    .line 60108
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0Q:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 60109
    .local v7, "nalPrefixData":[B
    aput-byte v10, v14, v10

    .line 60110
    aput-byte v10, v14, v3

    .line 60111
    const/4 v0, 0x2

    aput-byte v10, v14, v0

    .line 60112
    iget v13, v4, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    add-int/2addr v13, v3

    .line 60113
    .local v6, "nalUnitPrefixLength":I
    iget v0, v4, Lcom/facebook/ads/redexgen/X/D2;->A01:I

    rsub-int/lit8 v12, v0, 0x4

    .line 60114
    .local v0, "nalUnitLengthFieldLengthDiff":I
    :goto_2
    iget v15, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    if-ge v15, v0, :cond_11

    .line 60115
    iget v15, v5, Lcom/facebook/ads/redexgen/X/VL;->A05:I

    if-nez v15, :cond_d

    .line 60116
    invoke-interface {v9, v14, v12, v13}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60117
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0Q:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60118
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0Q:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0I()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A05:I

    .line 60119
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0R:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60120
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0R:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v6, v0, v11}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60121
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0Q:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v6, v0, v3}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60122
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0H:[Lcom/facebook/ads/redexgen/X/CS;

    array-length v0, v0

    if-lez v0, :cond_c

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v15, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    aget-byte v0, v14, v11

    .line 60123
    invoke-static {v15, v0}, Lcom/facebook/ads/redexgen/X/II;->A0D(Ljava/lang/String;B)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0G:Z

    .line 60124
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    add-int/lit8 v0, v0, 0x5

    iput v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    .line 60125
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    add-int/2addr v0, v12

    iput v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    goto :goto_2

    .line 60126
    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    .line 60127
    :cond_d
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0G:Z

    if-eqz v0, :cond_e

    .line 60128
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v15}, Lcom/facebook/ads/redexgen/X/IM;->A0X(I)V

    .line 60129
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A05:I

    invoke-interface {v9, v3, v10, v0}, Lcom/facebook/ads/redexgen/X/CH;->readFully([BII)V

    .line 60130
    iget-object v3, v5, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A05:I

    invoke-interface {v6, v3, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADS(Lcom/facebook/ads/redexgen/X/IM;I)V

    .line 60131
    iget v3, v5, Lcom/facebook/ads/redexgen/X/VL;->A05:I

    .line 60132
    .local v9, "writtenBytes":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v0

    invoke-static {v10, v0}, Lcom/facebook/ads/redexgen/X/II;->A02([BI)I

    move-result v16

    .line 60133
    .local v0, "unescapedLength":I
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/D2;->A07:Lcom/facebook/ads/internal/exoplayer2/Format;

    iget-object v11, v0, Lcom/facebook/ads/internal/exoplayer2/Format;->A0O:Ljava/lang/String;

    const/16 v15, 0x2ae

    const/16 v10, 0xa

    const/16 v0, 0x28

    invoke-static {v15, v10, v0}, Lcom/facebook/ads/redexgen/X/VL;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v10, v17

    move v11, v0

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 60134
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    move-object v10, v0

    move/from16 v11, v16

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 60135
    iget-object v10, v5, Lcom/facebook/ads/redexgen/X/VL;->A0P:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0H:[Lcom/facebook/ads/redexgen/X/CS;

    invoke-static {v1, v2, v10, v0}, Lcom/facebook/ads/redexgen/X/GM;->A03(JLcom/facebook/ads/redexgen/X/IM;[Lcom/facebook/ads/redexgen/X/CS;)V

    .line 60136
    .end local v0    # "unescapedLength":I
    .restart local v9    # "writtenBytes":I
    :goto_4
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    add-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    .line 60137
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A05:I

    sub-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A05:I

    .line 60138
    .end local v9    # "writtenBytes":I
    const/4 v11, 0x4

    const/4 v3, 0x1

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 60139
    .end local v9
    :cond_e
    const/4 v11, 0x0

    sget-object v10, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v3, v10, v0

    const/4 v0, 0x6

    aget-object v10, v10, v0

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v3, v0, :cond_f

    sget-object v10, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v3, "DgmsoDc5fqxMuCPMAShOLdHXA4GFFLxd"

    const/4 v0, 0x5

    aput-object v3, v10, v0

    invoke-interface {v6, v9, v15, v11}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v3

    goto :goto_4

    :cond_f
    invoke-interface {v6, v9, v15, v11}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v3

    goto :goto_4

    .line 60140
    :cond_10
    :goto_5
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    iget v3, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    if-ge v0, v3, :cond_11

    .line 60141
    sub-int/2addr v3, v0

    const/4 v0, 0x0

    invoke-interface {v6, v9, v3, v0}, Lcom/facebook/ads/redexgen/X/CS;->ADR(Lcom/facebook/ads/redexgen/X/CH;IZ)I

    move-result v3

    .line 60142
    .local v0, "writtenBytes":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    add-int/2addr v0, v3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A04:I

    .line 60143
    .end local v0    # "writtenBytes":I
    goto :goto_5

    .line 60144
    :cond_11
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/D4;->A0I:[Z

    aget-boolean v10, v0, v7

    .line 60145
    .local v9, "sampleFlags":I
    const/4 v7, 0x0

    .line 60146
    .local v0, "cryptoData":Lcom/facebook/ads/redexgen/X/CR;
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/D4;->A0A:Z

    if-eqz v0, :cond_12

    .line 60147
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr v10, v0

    .line 60148
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    if-eqz v0, :cond_14

    .line 60149
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/D4;->A08:Lcom/facebook/ads/redexgen/X/D3;

    .line 60150
    .local v4, "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    :goto_6
    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/D3;->A01:Lcom/facebook/ads/redexgen/X/CR;

    .line 60151
    .end local v4    # "encryptionBox":Lcom/facebook/ads/redexgen/X/D3;
    :cond_12
    iget v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A06:I

    const/4 v12, 0x0

    move-wide v3, v1

    .end local v1    # "sampleTimeUs":J
    .local v1, "sampleTimeUs":J
    .end local v6    # "nalUnitPrefixLength":I
    .local v4, "sampleIndex":I
    move-wide v8, v1

    move v11, v0

    move-object v13, v7

    move-object v7, v6

    invoke-interface/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/CS;->ADT(JIIILcom/facebook/ads/redexgen/X/CR;)V

    .line 60152
    .end local v1    # "sampleTimeUs":J
    .local v7, "sampleTimeUs":J
    invoke-direct {v5, v3, v4}, Lcom/facebook/ads/redexgen/X/VL;->A0F(J)V

    .line 60153
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ct;->A09()Z

    move-result v0

    if-nez v0, :cond_13

    .line 60154
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A0D:Lcom/facebook/ads/redexgen/X/Ct;

    .line 60155
    :cond_13
    const/4 v0, 0x3

    iput v0, v5, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    .line 60156
    const/4 v0, 0x1

    return v0

    .line 60157
    :cond_14
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/D4;->A07:Lcom/facebook/ads/redexgen/X/Cn;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Cn;->A02:I

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/D2;->A00(I)Lcom/facebook/ads/redexgen/X/D3;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 4

    .line 60158
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VL;->A0C:Lcom/facebook/ads/redexgen/X/CI;

    .line 60159
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0N:Lcom/facebook/ads/redexgen/X/D2;

    if-eqz v0, :cond_0

    .line 60160
    iget v0, v0, Lcom/facebook/ads/redexgen/X/D2;->A03:I

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/CI;->AEO(II)Lcom/facebook/ads/redexgen/X/CS;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ct;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Ct;-><init>(Lcom/facebook/ads/redexgen/X/CS;)V

    .line 60161
    .local p0, "bundle":Lcom/facebook/ads/redexgen/X/Ct;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/VL;->A0N:Lcom/facebook/ads/redexgen/X/D2;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Cn;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/facebook/ads/redexgen/X/Cn;-><init>(IIII)V

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ct;->A08(Lcom/facebook/ads/redexgen/X/D2;Lcom/facebook/ads/redexgen/X/Cn;)V

    .line 60162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60163
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VL;->A0C()V

    .line 60164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0C:Lcom/facebook/ads/redexgen/X/CI;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/CI;->A59()V

    .line 60165
    .end local p0    # "bundle":Lcom/facebook/ads/redexgen/X/Ct;
    :cond_0
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60166
    :cond_0
    :goto_0
    iget v4, p0, Lcom/facebook/ads/redexgen/X/VL;->A02:I

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "b3o07XXq1GipVVQeN3AwLoeN9FcpS17m"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    const/4 v0, 0x2

    if-eq v4, v0, :cond_1

    .line 60167
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VL;->A0a(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60168
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "ewU9DwN7qbXgFV812fe7gIsUzFMHRL1c"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    .line 60169
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VL;->A0I(Lcom/facebook/ads/redexgen/X/CH;)V

    .line 60170
    goto :goto_0

    .line 60171
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VL;->A0H(Lcom/facebook/ads/redexgen/X/CH;)V

    .line 60172
    goto :goto_0

    .line 60173
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VL;->A0Z(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60174
    const/4 v0, -0x1

    return v0

    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/VL;->A0Y:[Ljava/lang/String;

    const-string v1, "FZ5RPV7dEN5P5wVWarrRLIGX4oiJFkW7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final ADX(JJ)V
    .locals 3

    .line 60175
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 60176
    .local p0, "trackCount":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 60177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0K:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ct;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ct;->A05()V

    .line 60178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60179
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0U:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 60180
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A03:I

    .line 60181
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/VL;->A0A:J

    .line 60182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VL;->A0T:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 60183
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VL;->A0B()V

    .line 60184
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60185
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/D0;->A04(Lcom/facebook/ads/redexgen/X/CH;)Z

    move-result v0

    return v0
.end method
