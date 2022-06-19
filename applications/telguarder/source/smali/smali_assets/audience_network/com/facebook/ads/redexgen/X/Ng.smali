.class public final Lcom/facebook/ads/redexgen/X/Ng;
.super Landroid/view/View;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public final A01:F

.field public final A02:Landroid/graphics/Paint;

.field public final A03:Landroid/graphics/Paint;

.field public final A04:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ng;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ng;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 45615
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45616
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ng;->A01:F

    .line 45617
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:F

    .line 45618
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A04:Landroid/graphics/RectF;

    .line 45619
    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A02:Landroid/graphics/Paint;

    .line 45620
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ng;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45621
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ng;->A02:Landroid/graphics/Paint;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A01:F

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45622
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A03:Landroid/graphics/Paint;

    .line 45623
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ng;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45624
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ng;->A03:Landroid/graphics/Paint;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A01:F

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 45625
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ng;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ng;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ng;->A06:[Ljava/lang/String;

    const-string v1, "SahMn6yRzkp23Kmva3Z5gQPUDBgZr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7b

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ng;->A05:[B

    return-void

    :array_0
    .array-data 1
        0x3t
        0x1t
        0x1ct
        0x14t
        0x1t
        0x16t
        0x0t
        0x0t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "6CPTD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fXgP9xh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ib2e4in6DthWL0Q8yAPc5xfntbPyX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "G2AJONpeKHBBwjt4Sz8dsS7zReejT0Uv"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ehyeN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WBwJl6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "LCSmLTdRFMhZrs9WeNkLEUS62n49AyUU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TtqxlXaAwuHndX0DwnqxXM3nrIfVxGxz"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ng;->A06:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A03(II)V
    .locals 1

    .line 45626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A02:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A03:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45628
    return-void
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 45629
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:F

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 45630
    move-object v2, p1

    invoke-super {p0, v2}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 45631
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ng;->A04:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ng;->A02:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 45632
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:F

    const/high16 v1, 0x42c80000    # 100.0f

    sub-float v5, v1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v5, v0

    div-float/2addr v5, v1

    .line 45633
    .local p0, "sweepAngle":F
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ng;->A04:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ng;->A03:Landroid/graphics/Paint;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 45634
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 45635
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ng;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/facebook/ads/redexgen/X/Ng;->getDefaultSize(II)I

    move-result v1

    .line 45636
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ng;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/Ng;->getDefaultSize(II)I

    move-result v0

    .line 45637
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 45638
    .local p0, "min":I
    invoke-virtual {p0, v7, v7}, Lcom/facebook/ads/redexgen/X/Ng;->setMeasuredDimension(II)V

    .line 45639
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ng;->A04:Landroid/graphics/RectF;

    iget v4, p0, Lcom/facebook/ads/redexgen/X/Ng;->A01:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    const/4 v1, 0x0

    add-float/2addr v4, v1

    .line 45640
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ng;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ng;->A01:F

    div-float/2addr v3, v6

    add-float/2addr v3, v1

    .line 45641
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ng;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    int-to-float v2, v7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A01:F

    div-float/2addr v0, v6

    sub-float/2addr v2, v0

    .line 45642
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ng;->getPaddingRight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    int-to-float v1, v7

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A01:F

    div-float/2addr v0, v6

    sub-float/2addr v1, v0

    .line 45643
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ng;->getPaddingBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    .line 45644
    invoke-virtual {v5, v4, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 45645
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 45646
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ng;->A00:F

    .line 45647
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ng;->postInvalidate()V

    .line 45648
    return-void
.end method

.method public setProgressWithAnimation(F)V
    .locals 4

    .line 45649
    const/4 v0, 0x1

    new-array v3, v0, [F

    const/4 v0, 0x0

    aput p1, v3, v0

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ng;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 45650
    .local p0, "objectAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x190

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45651
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 45652
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 45653
    return-void
.end method
