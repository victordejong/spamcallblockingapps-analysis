.class public final Lcom/facebook/ads/redexgen/X/MC;
.super Landroid/view/View;
.source ""


# instance fields
.field public A00:I

.field public A01:Landroid/graphics/Paint;

.field public A02:Landroid/graphics/Paint;

.field public A03:Landroid/graphics/Paint;

.field public A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 43703
    const/16 v1, 0x3c

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/MC;-><init>(Lcom/facebook/ads/redexgen/X/XJ;IZ)V

    .line 43704
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;IZ)V
    .locals 3

    .line 43705
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43706
    iput p2, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:I

    .line 43707
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Z

    .line 43708
    if-eqz p3, :cond_0

    .line 43709
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/graphics/Paint;

    .line 43710
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/graphics/Paint;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43711
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43712
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43714
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/graphics/Paint;

    .line 43715
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/graphics/Paint;

    const v0, -0x4cbbbbbc

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43716
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43718
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Landroid/graphics/Paint;

    .line 43719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43720
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43721
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Landroid/graphics/Paint;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43723
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 43724
    sget v3, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    .line 43725
    .local p0, "density":F
    iget v1, p0, Lcom/facebook/ads/redexgen/X/MC;->A00:I

    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v2, v0

    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43726
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43727
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43728
    return-object v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 43729
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A04:Z

    move-object v8, p1

    if-eqz v0, :cond_1

    .line 43730
    invoke-virtual {v8}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_0

    .line 43731
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/MC;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43732
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 43733
    .local p0, "edgeLength":I
    div-int/lit8 v6, v7, 0x2

    .line 43734
    .local v8, "centerX":I
    div-int/lit8 v5, v7, 0x2

    .line 43735
    .local v0, "centerY":I
    mul-int/lit8 v0, v6, 0x2

    div-int/lit8 v4, v0, 0x3

    .line 43736
    .local v0, "outerRadius":I
    int-to-float v3, v6

    int-to-float v2, v5

    int-to-float v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A02:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43737
    add-int/lit8 v0, v4, -0x2

    .line 43738
    .local v1, "innerRadius":I
    int-to-float v3, v6

    int-to-float v2, v5

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MC;->A01:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43739
    div-int/lit8 v2, v7, 0x3

    .line 43740
    .local v0, "startX":I
    div-int/lit8 v1, v7, 0x3

    .line 43741
    .local v1, "startY":I
    int-to-float v9, v2

    int-to-float v10, v1

    mul-int/lit8 v0, v2, 0x2

    int-to-float v11, v0

    mul-int/lit8 v0, v1, 0x2

    int-to-float v12, v0

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43742
    mul-int/lit8 v0, v2, 0x2

    int-to-float v9, v0

    int-to-float v10, v1

    int-to-float v11, v2

    mul-int/lit8 v0, v1, 0x2

    int-to-float v12, v0

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/MC;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43743
    .end local p0    # "edgeLength":I
    .end local v8    # "centerX":I
    .end local v0    # "startX":I
    .end local v0
    .end local v1    # "startY":I
    .end local v0
    .end local v1
    :cond_1
    invoke-super {p0, v8}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43744
    return-void
.end method
