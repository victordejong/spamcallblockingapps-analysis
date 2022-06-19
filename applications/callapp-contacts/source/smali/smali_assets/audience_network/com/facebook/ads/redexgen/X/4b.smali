.class public final Lcom/facebook/ads/redexgen/X/4b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFlinger"
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/animation/Interpolator;

.field public A01:Landroid/widget/OverScroller;

.field public A02:I

.field public A03:I

.field public A04:Z

.field public A05:Z

.field public final synthetic A06:Lcom/facebook/ads/redexgen/X/Eq;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4b;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/4b;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;)V
    .locals 3

    .line 11632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11633
    sget-object v0, Lcom/facebook/ads/redexgen/X/Eq;->A1A:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Landroid/view/animation/Interpolator;

    .line 11634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A04:Z

    .line 11635
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    .line 11636
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eq;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Eq;->A1A:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, v2, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    .line 11637
    return-void
.end method

.method private A00(F)F
    .locals 3

    .line 11638
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 11639
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 11640
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v0, v1

    return v0
.end method

.method private A01(IIII)I
    .locals 10

    .line 11641
    move-object v7, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 11642
    .local p1, "absDx":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 11643
    .local p2, "absDy":I
    if-le v5, v4, :cond_3

    const/4 v9, 0x1

    .line 11644
    .local p3, "horizontal":Z
    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 11645
    .local p4, "velocity":I
    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 11646
    .local v7, "delta":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getWidth()I

    move-result v8

    .line 11647
    .local v5, "containerSize":I
    :goto_1
    div-int/lit8 v7, v8, 0x2

    .line 11648
    .local v4, "halfContainerSize":I
    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    int-to-float v0, v8

    div-float/2addr v1, v0

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 11649
    .local v9, "distanceRatio":F
    int-to-float v2, v7

    int-to-float v1, v7

    .line 11650
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4b;->A00(F)F

    move-result v0

    mul-float/2addr v1, v0

    add-float/2addr v2, v1

    .line 11651
    .local p4, "distance":F
    if-lez v6, :cond_0

    .line 11652
    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v0, v6

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v1, v0, 0x4

    .line 11653
    .local p3, "duration":I
    .end local p3    # "duration":I
    .restart local p3    # "duration":I
    :goto_2
    const/16 v0, 0x7d0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 11654
    .end local p3    # "duration":I
    :cond_0
    if-eqz v9, :cond_1

    :goto_3
    int-to-float v1, v5

    .line 11655
    .local p3, "absDelta":F
    int-to-float v0, v8

    div-float/2addr v1, v0

    add-float/2addr v1, v3

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    goto :goto_2

    .line 11656
    :cond_1
    move v5, v4

    goto :goto_3

    .line 11657
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getHeight()I

    move-result v8

    goto :goto_1

    .line 11658
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4b;->A07:[B

    return-void

    :array_0
    .array-data 1
        -0x2et
        -0x2at
        -0x60t
        -0x2dt
        -0x1dt
        -0xet
        -0x11t
        -0x14t
        -0x14t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "c4xSVVt4fNiIZ9aJ0ftrOCVpKy2EJW"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bj77oS7wYHzhrY124YppwtIfPTuDoAHL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mRmZUQV2DMpprRsDQaH8Mtbq5JuQtR14"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UXM5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "qfxFRQLCBxpF20va4RNO9ygLlTXV5cTV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Bw29gSSAA0erG37CQVEqOkFPeCj6ZZr8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KVIri1u0fbW7r5jnncTGzAnirlJcKx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TA0EOfT3Z02jNldii3VIEnkki3"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    return-void
.end method

.method private final A05()V
    .locals 1

    .line 11659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    .line 11660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A04:Z

    .line 11661
    return-void
.end method

.method private final A06()V
    .locals 1

    .line 11662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A04:Z

    .line 11663
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    if-eqz v0, :cond_0

    .line 11664
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4b;->A08()V

    .line 11665
    :cond_0
    return-void
.end method

.method private final A07(IIII)V
    .locals 1

    .line 11666
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/4b;->A01(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4b;->A0C(III)V

    .line 11667
    return-void
.end method


# virtual methods
.method public final A08()V
    .locals 3

    .line 11668
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A04:Z

    if-eqz v0, :cond_0

    .line 11669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    .line 11670
    :goto_0
    return-void

    .line 11671
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Eq;->removeCallbacks(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_1

    .line 11672
    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "DBTzn4opHB64KJUt1kyQdTPFEm6jko5S"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/2z;->A0C(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A09()V
    .locals 1

    .line 11673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Eq;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 11674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 11675
    return-void
.end method

.method public final A0A(II)V
    .locals 9

    .line 11676
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setScrollState(I)V

    .line 11677
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A02:I

    .line 11678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 11679
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4b;->A08()V

    .line 11680
    return-void
.end method

.method public final A0B(II)V
    .locals 1

    .line 11681
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4b;->A07(IIII)V

    .line 11682
    return-void
.end method

.method public final A0C(III)V
    .locals 1

    .line 11683
    sget-object v0, Lcom/facebook/ads/redexgen/X/Eq;->A1A:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/4b;->A0D(IIILandroid/view/animation/Interpolator;)V

    .line 11684
    return-void
.end method

.method public final A0D(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .line 11685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 11686
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4b;->A00:Landroid/view/animation/Interpolator;

    .line 11687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, v1, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    .line 11688
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setScrollState(I)V

    .line 11689
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A02:I

    .line 11690
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, p2

    move v5, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 11691
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_2

    .line 11692
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "UeYo97OquvC2FnZv3LivDSVIricXCoYT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 11693
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4b;->A08()V

    .line 11694
    return-void
.end method

.method public final A0E(IILandroid/view/animation/Interpolator;)V
    .locals 1

    .line 11695
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/facebook/ads/redexgen/X/4b;->A01(IIII)I

    move-result v0

    .line 11696
    if-nez p3, :cond_0

    sget-object p3, Lcom/facebook/ads/redexgen/X/Eq;->A1A:Landroid/view/animation/Interpolator;

    .line 11697
    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/ads/redexgen/X/4b;->A0D(IIILandroid/view/animation/Interpolator;)V

    .line 11698
    return-void
.end method

.method public final run()V
    .locals 21

    .line 11699
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    if-nez v0, :cond_0

    .line 11700
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4b;->A09()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x47

    if-eq v1, v0, :cond_26

    .line 11701
    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "wyRlewweBEsEMs9L1doa5ZD019uED4"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    .line 11702
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4b;->A05()V

    .line 11703
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1K()V

    .line 11704
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A01:Landroid/widget/OverScroller;

    move-object/from16 v20, v0

    .line 11705
    .local v8, "scroller":Landroid/widget/OverScroller;
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/4K;->A02:Lcom/facebook/ads/redexgen/X/4X;

    .line 11706
    .local v0, "smoothScroller":Lcom/facebook/ads/redexgen/X/4X;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_15

    .line 11707
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1C(Lcom/facebook/ads/redexgen/X/Eq;)[I

    move-result-object v15

    .line 11708
    .local v0, "scrollConsumed":[I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v7

    .line 11709
    .local v1, "x":I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    .line 11710
    .local v0, "y":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A02:I

    sub-int v5, v7, v0

    .line 11711
    .local v0, "dx":I
    iget v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A03:I

    sub-int v4, v6, v0

    .line 11712
    .local v20, "dy":I
    const/4 v3, 0x0

    .line 11713
    .local v0, "hresult":I
    const/4 v2, 0x0

    .line 11714
    .local v0, "vresult":I
    iput v7, v8, Lcom/facebook/ads/redexgen/X/4b;->A02:I

    .line 11715
    iput v6, v8, Lcom/facebook/ads/redexgen/X/4b;->A03:I

    .line 11716
    const/4 v1, 0x0

    .local v9, "overscrollX":I
    const/4 v0, 0x0

    .line 11717
    .local v0, "overscrollY":I
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v12, v10

    move v13, v5

    move v14, v4

    invoke-virtual/range {v12 .. v17}, Lcom/facebook/ads/redexgen/X/Eq;->A1z(II[I[II)Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    .line 11718
    aget v10, v15, v11

    sub-int/2addr v5, v10

    .line 11719
    aget v10, v15, v12

    sub-int/2addr v4, v10

    .line 11720
    :cond_1
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/Eq;->A04:Lcom/facebook/ads/redexgen/X/48;

    if-eqz v10, :cond_5

    .line 11721
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->A1L()V

    .line 11722
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->A1M()V

    .line 11723
    const/4 v13, 0x0

    const/16 v12, 0x9

    const/16 v10, 0x60

    invoke-static {v13, v12, v10}, Lcom/facebook/ads/redexgen/X/4b;->A02(III)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/2M;->A01(Ljava/lang/String;)V

    .line 11724
    iget-object v12, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v10, v12, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v12, v10}, Lcom/facebook/ads/redexgen/X/Eq;->A1m(Lcom/facebook/ads/redexgen/X/4Z;)V

    .line 11725
    if-eqz v5, :cond_2

    .line 11726
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v10, v5, v3, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1i(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v3

    .line 11727
    sub-int v1, v5, v3

    .line 11728
    :cond_2
    if-eqz v4, :cond_3

    .line 11729
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0r:Lcom/facebook/ads/redexgen/X/4S;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v10, v4, v2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1j(ILcom/facebook/ads/redexgen/X/4S;Lcom/facebook/ads/redexgen/X/4Z;)I

    move-result v2

    .line 11730
    sub-int v0, v4, v2

    .line 11731
    :cond_3
    invoke-static {}, Lcom/facebook/ads/redexgen/X/2M;->A00()V

    sget-object v12, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v12, v12, v10

    const/16 v10, 0xa

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v10, 0x6f

    if-eq v12, v10, :cond_25

    .line 11732
    sget-object v13, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v12, "AEnMZuqp98GVRFTkSbmwbA51QL"

    const/4 v10, 0x7

    aput-object v12, v13, v10

    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->A1Q()V

    .line 11733
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->A1N()V

    .line 11734
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/Eq;->A1s(Z)V

    .line 11735
    if-eqz v9, :cond_4

    :goto_0
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4X;->A0F()Z

    move-result v10

    if-nez v10, :cond_4

    .line 11736
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4X;->A0G()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 11737
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/Eq;->A0s:Lcom/facebook/ads/redexgen/X/4Z;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4Z;->A03()I

    move-result v11

    .line 11738
    .local v0, "adapterSize":I
    if-nez v11, :cond_23

    .line 11739
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4X;->A0A()V

    .line 11740
    .end local v0    # "adapterSize":I
    :cond_4
    :goto_1
    sget-object v11, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v10, 0x4

    aget-object v11, v11, v10

    const/16 v10, 0xa

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v10, 0x6f

    if-eq v11, v10, :cond_28

    sget-object v12, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v11, "TGS8taa2nLIFayhr7f7v"

    const/4 v10, 0x3

    aput-object v11, v12, v10

    .end local v0
    .end local v9    # "overscrollX":I
    .end local v0
    .local v0, "vresult":I
    .local v0, "overscrollX":I
    .local v1, "overscrollY":I
    :cond_5
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v10, v10, Lcom/facebook/ads/redexgen/X/Eq;->A0v:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 11741
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->invalidate()V

    .line 11742
    :cond_6
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->getOverScrollMode()I

    move-result v10

    const/4 v12, 0x2

    if-eq v10, v12, :cond_7

    .line 11743
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10, v5, v4}, Lcom/facebook/ads/redexgen/X/Eq;->A1a(II)V

    .line 11744
    :cond_7
    iget-object v13, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v17, v0

    move v14, v3

    move v15, v2

    move/from16 v16, v1

    invoke-virtual/range {v13 .. v19}, Lcom/facebook/ads/redexgen/X/Eq;->A1y(IIII[II)Z

    move-result v10

    if-nez v10, :cond_d

    if-nez v1, :cond_8

    if-eqz v0, :cond_d

    .line 11745
    :cond_8
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v10

    float-to-int v13, v10

    .line 11746
    .local v0, "vel":I
    const/4 v14, 0x0

    .line 11747
    .local v0, "velX":I
    if-eq v1, v7, :cond_9

    .line 11748
    if-gez v1, :cond_21

    neg-int v14, v13

    .line 11749
    .end local v0    # "velX":I
    .local v1, "velX":I
    :cond_9
    :goto_2
    const/4 v10, 0x0

    .line 11750
    .local v0, "velY":I
    if-eq v0, v6, :cond_20

    .line 11751
    if-gez v0, :cond_1e

    neg-int v13, v13

    .line 11752
    .end local v0    # "velY":I
    .local v1, "velY":I
    .end local v0
    .local v0, "scrollConsumed":[I
    :goto_3
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->getOverScrollMode()I

    move-result v15

    sget-object v16, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v10, 0x5

    aget-object v11, v16, v10

    const/4 v10, 0x1

    aget-object v16, v16, v10

    const/16 v10, 0xc

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    move-object/from16 v16, v16

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v11, v10, :cond_1d

    sget-object v16, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v11, "VAPByUbSVbCRl876Iw5SK7wrPn"

    const/4 v10, 0x7

    aput-object v11, v16, v10

    if-eq v15, v12, :cond_a

    .line 11753
    :goto_4
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10, v14, v13}, Lcom/facebook/ads/redexgen/X/Eq;->A1Z(II)V

    .line 11754
    :cond_a
    if-nez v14, :cond_b

    if-eq v1, v7, :cond_b

    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    if-nez v1, :cond_d

    :cond_b
    if-nez v13, :cond_c

    if-eq v0, v6, :cond_c

    .line 11755
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    if-nez v0, :cond_d

    .line 11756
    :cond_c
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 11757
    .end local v0    # "scrollConsumed":[I
    .restart local v0    # "scrollConsumed":[I
    :cond_d
    if-nez v3, :cond_e

    if-eqz v2, :cond_f

    .line 11758
    :cond_e
    iget-object v7, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    sget-object v6, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v6, v0

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1c

    invoke-virtual {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/Eq;->A1c(II)V

    .line 11759
    :cond_f
    :goto_5
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1B(Lcom/facebook/ads/redexgen/X/Eq;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 11760
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Eq;->invalidate()V

    .line 11761
    :cond_10
    if-eqz v4, :cond_1b

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A26()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-ne v2, v4, :cond_1b

    const/4 v1, 0x1

    .line 11762
    .local v0, "fullyConsumedVertical":Z
    :goto_6
    if-eqz v5, :cond_1a

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A06:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-eqz v0, :cond_1a

    if-ne v3, v5, :cond_1a

    const/4 v0, 0x1

    .line 11763
    .local v1, "fullyConsumedHorizontal":Z
    :goto_7
    if-nez v5, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    if-nez v0, :cond_12

    if-eqz v1, :cond_19

    :cond_12
    const/4 v6, 0x1

    .line 11764
    .local v1, "fullyConsumedAny":Z
    :goto_8
    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_27

    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "98aPJs2vUpcbHQSYyxrV3zG03CSHn11I"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_13

    if-nez v6, :cond_18

    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    .line 11765
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1w(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 11766
    :cond_13
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setScrollState(I)V

    .line 11767
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Eq;->A12()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 11768
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A02:Lcom/facebook/ads/redexgen/X/T8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A03()V

    .line 11769
    :cond_14
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->A1Y(I)V

    .line 11770
    .end local v0    # "fullyConsumedVertical":Z
    .end local v1    # "fullyConsumedAny":Z
    .end local v0
    .end local v1
    .end local v0
    .end local v1
    .end local v1
    .end local v0
    .end local v0
    .end local v20    # "dy":I
    .end local v0
    .end local v0
    :cond_15
    :goto_9
    if-eqz v9, :cond_17

    .line 11771
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4X;->A0F()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_26

    sget-object v2, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "1QtdEsEbLTCaQSWKyl1hJXPObs6yvI"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "gIBnLdKBfiMzk6Ug2irxti7V3sW67K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_16

    .line 11772
    const/4 v0, 0x0

    invoke-static {v9, v0, v0}, Lcom/facebook/ads/redexgen/X/4X;->A06(Lcom/facebook/ads/redexgen/X/4X;II)V

    .line 11773
    :cond_16
    iget-boolean v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A05:Z

    if-nez v0, :cond_17

    .line 11774
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4X;->A0A()V

    .line 11775
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4b;->A06()V

    .line 11776
    return-void

    .line 11777
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/4b;->A08()V

    .line 11778
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Eq;->A03:Lcom/facebook/ads/redexgen/X/3v;

    if-eqz v0, :cond_15

    .line 11779
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Eq;->A03:Lcom/facebook/ads/redexgen/X/3v;

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v1, v0, v5, v4}, Lcom/facebook/ads/redexgen/X/3v;->A0C(Lcom/facebook/ads/redexgen/X/Eq;II)V

    goto :goto_9

    .line 11780
    :cond_19
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 11781
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 11782
    :cond_1b
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_1c
    sget-object v6, Lcom/facebook/ads/redexgen/X/4b;->A08:[Ljava/lang/String;

    const-string v1, "bSHjdsVkhDQdmG1cm4T37Ejfm8kVFC"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    const-string v1, "uWlM2d1CCrIfar3HOPPYeFU5881RH0"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    invoke-virtual {v7, v3, v2}, Lcom/facebook/ads/redexgen/X/Eq;->A1c(II)V

    goto/16 :goto_5

    :cond_1d
    if-eq v15, v12, :cond_a

    goto/16 :goto_4

    .line 11783
    :cond_1e
    if-lez v0, :cond_1f

    goto/16 :goto_3

    :cond_1f
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 11784
    :cond_20
    move v13, v10

    goto/16 :goto_3

    .line 11785
    :cond_21
    if-lez v1, :cond_22

    move v14, v13

    goto/16 :goto_2

    :cond_22
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 11786
    :cond_23
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/4X;->A08()I

    move-result v10

    if-lt v10, v11, :cond_24

    .line 11787
    add-int/lit8 v10, v11, -0x1

    invoke-virtual {v9, v10}, Lcom/facebook/ads/redexgen/X/4X;->A0B(I)V

    .line 11788
    sub-int v11, v5, v1

    sub-int v10, v4, v0

    invoke-static {v9, v11, v10}, Lcom/facebook/ads/redexgen/X/4X;->A06(Lcom/facebook/ads/redexgen/X/4X;II)V

    goto/16 :goto_1

    .line 11789
    :cond_24
    sub-int v11, v5, v1

    sub-int v10, v4, v0

    invoke-static {v9, v11, v10}, Lcom/facebook/ads/redexgen/X/4X;->A06(Lcom/facebook/ads/redexgen/X/4X;II)V

    goto/16 :goto_1

    .line 11790
    :cond_25
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->A1Q()V

    .line 11791
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/Eq;->A1N()V

    .line 11792
    iget-object v10, v8, Lcom/facebook/ads/redexgen/X/4b;->A06:Lcom/facebook/ads/redexgen/X/Eq;

    invoke-virtual {v10, v11}, Lcom/facebook/ads/redexgen/X/Eq;->A1s(Z)V

    .line 11793
    if-eqz v9, :cond_4

    goto/16 :goto_0

    .line 11794
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
