.class public final Lcom/facebook/ads/redexgen/X/MA;
.super Landroid/view/View;
.source ""


# instance fields
.field public A00:I

.field public A01:Landroid/graphics/Paint;

.field public A02:Landroid/graphics/Paint;

.field public A03:Landroid/graphics/Paint;

.field public A04:Z


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 43806
    const/16 v1, 0x3c

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/MA;-><init>(Lcom/facebook/ads/redexgen/X/Wm;IZ)V

    .line 43807
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;IZ)V
    .locals 3

    .line 43808
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43809
    iput p2, p0, Lcom/facebook/ads/redexgen/X/MA;->A00:I

    .line 43810
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/MA;->A04:Z

    .line 43811
    if-eqz p3, :cond_0

    .line 43812
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A02:Landroid/graphics/Paint;

    .line 43813
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A02:Landroid/graphics/Paint;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A02:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43815
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A02:Landroid/graphics/Paint;

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A02:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43817
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A01:Landroid/graphics/Paint;

    .line 43818
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A01:Landroid/graphics/Paint;

    const v0, -0x4cbbbbbc

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43819
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A01:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A01:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43821
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A03:Landroid/graphics/Paint;

    .line 43822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A03:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43823
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A03:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43824
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A03:Landroid/graphics/Paint;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A03:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43826
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 43827
    sget v3, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    .line 43828
    .local p0, "density":F
    iget v1, p0, Lcom/facebook/ads/redexgen/X/MA;->A00:I

    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v2, v0

    int-to-float v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43829
    .local v3, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43830
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 43831
    return-object v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 43832
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A04:Z

    move-object v8, p1

    if-eqz v0, :cond_1

    .line 43833
    invoke-virtual {v8}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge v1, v0, :cond_0

    .line 43834
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/MA;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43835
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v8}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 43836
    .local p0, "edgeLength":I
    div-int/lit8 v6, v7, 0x2

    .line 43837
    .local v8, "centerX":I
    div-int/lit8 v5, v7, 0x2

    .line 43838
    .local v0, "centerY":I
    mul-int/lit8 v0, v6, 0x2

    div-int/lit8 v4, v0, 0x3

    .line 43839
    .local v0, "outerRadius":I
    int-to-float v3, v6

    int-to-float v2, v5

    int-to-float v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A02:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43840
    add-int/lit8 v0, v4, -0x2

    .line 43841
    .local v1, "innerRadius":I
    int-to-float v3, v6

    int-to-float v2, v5

    int-to-float v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MA;->A01:Landroid/graphics/Paint;

    invoke-virtual {v8, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 43842
    div-int/lit8 v2, v7, 0x3

    .line 43843
    .local v0, "startX":I
    div-int/lit8 v1, v7, 0x3

    .line 43844
    .local v1, "startY":I
    int-to-float v9, v2

    int-to-float v10, v1

    mul-int/lit8 v0, v2, 0x2

    int-to-float v11, v0

    mul-int/lit8 v0, v1, 0x2

    int-to-float v12, v0

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/MA;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43845
    mul-int/lit8 v0, v2, 0x2

    int-to-float v9, v0

    int-to-float v10, v1

    int-to-float v11, v2

    mul-int/lit8 v0, v1, 0x2

    int-to-float v12, v0

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/MA;->A03:Landroid/graphics/Paint;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 43846
    .end local p0    # "edgeLength":I
    .end local v8    # "centerX":I
    .end local v0    # "startX":I
    .end local v0
    .end local v1    # "startY":I
    .end local v0
    .end local v1
    :cond_1
    invoke-super {p0, v8}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43847
    return-void
.end method
