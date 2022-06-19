.class public final Lcom/facebook/ads/redexgen/X/7L;
.super Lcom/facebook/ads/redexgen/X/MP;
.source ""


# instance fields
.field public final A00:Landroid/graphics/Paint;

.field public final A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A02:Lcom/facebook/ads/redexgen/X/JJ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/Le;

.field public final A04:Lcom/facebook/ads/redexgen/X/KW;

.field public final A05:Lcom/facebook/ads/redexgen/X/KQ;

.field public final A06:Lcom/facebook/ads/redexgen/X/Pj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;ZLcom/facebook/ads/redexgen/X/JJ;)V
    .locals 8
    .param p3    # Lcom/facebook/ads/redexgen/X/JJ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16522
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MP;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 16523
    new-instance v0, Lcom/facebook/ads/redexgen/X/7P;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7P;-><init>(Lcom/facebook/ads/redexgen/X/7L;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/KW;

    .line 16524
    new-instance v0, Lcom/facebook/ads/redexgen/X/7O;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7O;-><init>(Lcom/facebook/ads/redexgen/X/7L;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/KQ;

    .line 16525
    new-instance v0, Lcom/facebook/ads/redexgen/X/7N;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7N;-><init>(Lcom/facebook/ads/redexgen/X/7L;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/Le;

    .line 16526
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7L;->A02:Lcom/facebook/ads/redexgen/X/JJ;

    .line 16527
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7L;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 16528
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pj;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Pj;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/Pj;

    .line 16529
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 16530
    .local p0, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide v6, 0x4037c28f5c28f5c3L    # 23.76

    mul-double/2addr v0, v6

    double-to-int v5, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v0

    mul-double/2addr v3, v6

    double-to-int v0, v3

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16531
    .local p1, "btnLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Pj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16533
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/Pj;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pj;->setChecked(Z)V

    .line 16534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/Pj;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Pj;->setClickable(Z)V

    .line 16535
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Landroid/graphics/Paint;

    .line 16536
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16537
    if-eqz p2, :cond_0

    .line 16538
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Landroid/graphics/Paint;

    const/high16 v0, -0x67000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16539
    :goto_0
    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 16540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7L;->addView(Landroid/view/View;)V

    .line 16541
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7L;->setGravity(I)V

    .line 16542
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    mul-double/2addr v0, v5

    double-to-int v4, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    mul-double/2addr v2, v5

    double-to-int v1, v2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 16543
    .local p3, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16544
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7L;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16545
    return-void

    .line 16546
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 16547
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Landroid/graphics/Paint;

    const/16 v0, 0xcc

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 16548
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/JJ;
    .locals 0

    .line 16549
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A02:Lcom/facebook/ads/redexgen/X/JJ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 16550
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 16551
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 16552
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 16553
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/Pj;
    .locals 0

    .line 16554
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7L;->A06:Lcom/facebook/ads/redexgen/X/Pj;

    return-object p0
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 16555
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/MP;->A07()V

    .line 16556
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16557
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    .line 16558
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/KW;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/KQ;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/Le;

    aput-object v0, v2, v1

    .line 16559
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16560
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pg;-><init>(Lcom/facebook/ads/redexgen/X/7L;)V

    .line 16561
    .local p0, "clickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7L;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16562
    return-void
.end method

.method public final A08()V
    .locals 4

    .line 16563
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/7L;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16564
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16565
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MP;->getVideoView()Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    .line 16566
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x3

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A03:Lcom/facebook/ads/redexgen/X/Le;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A05:Lcom/facebook/ads/redexgen/X/KQ;

    aput-object v0, v2, v1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A04:Lcom/facebook/ads/redexgen/X/KW;

    aput-object v0, v2, v1

    .line 16567
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A05([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16568
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/MP;->A08()V

    .line 16569
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 16570
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getPaddingRight()I

    move-result v0

    sub-int/2addr v2, v0

    .line 16571
    .local p0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    .line 16572
    .local p1, "height":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 16573
    .local v2, "edgeLength":I
    div-int/lit8 v4, v0, 0x2

    .line 16574
    .local v0, "centerX":I
    div-int/lit8 v1, v0, 0x2

    .line 16575
    .local v2, "centerY":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, v4

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7L;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v2, v0

    int-to-float v1, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7L;->A00:Landroid/graphics/Paint;

    .line 16576
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 16577
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/MP;->onDraw(Landroid/graphics/Canvas;)V

    .line 16578
    return-void
.end method
