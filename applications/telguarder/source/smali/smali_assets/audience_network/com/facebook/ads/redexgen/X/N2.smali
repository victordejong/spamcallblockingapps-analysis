.class public final Lcom/facebook/ads/redexgen/X/N2;
.super Landroid/view/ViewGroup;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;

.field public static final A02:I


# instance fields
.field public A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44564
    invoke-static {}, Lcom/facebook/ads/redexgen/X/N2;->A00()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/N2;->A02:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 1

    .line 44565
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 44566
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/N2;->setMotionEventSplittingEnabled(Z)V

    .line 44567
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "NZkFYUXBqTyLE0uJAv5x9NXUc2VI7sJS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "uR57PzkU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rJSYxMTue9BrtOECqhcg2GfuYah"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YyZf9NPrzEzMWmx1W7C7iqaeo0zUpAtl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DTiQjOeLHS2Pt5vxV6oLe4amAnidYBVC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lHnCa3run773rLwZ2hjgCXNXpXLX76yu"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KbQZcAmLw4PS1PAelm"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "IRe5OrXcLx0wSVTSjdWVVTt7WICaTRCE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/N2;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 10

    .line 44568
    sub-int/2addr p4, p2

    .line 44569
    .local p0, "width":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingLeft()I

    move-result v5

    .line 44570
    .local p1, "xPos":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingTop()I

    move-result v4

    .line 44571
    .local p2, "yPos":I
    const/4 v3, 0x0

    .local p3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 44572
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/N2;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 44573
    .local p4, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 44574
    .local p5, "childWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 44575
    .local p4, "childHeight":I
    add-int v7, v5, v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/N2;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/N2;->A01:[Ljava/lang/String;

    const-string v1, "OfxBdDbwWwaKkhkWo9ENaAyC2bgPxB1w"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-le v7, p4, :cond_1

    .line 44576
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingLeft()I

    move-result v5

    .line 44577
    iget v0, p0, Lcom/facebook/ads/redexgen/X/N2;->A00:I

    add-int/2addr v4, v0

    .line 44578
    :cond_1
    add-int v1, v5, v9

    add-int v0, v4, v8

    invoke-virtual {v6, v5, v4, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 44579
    sget v0, Lcom/facebook/ads/redexgen/X/N2;->A02:I

    add-int/2addr v0, v9

    add-int/2addr v5, v0

    .line 44580
    .end local p4    # "childHeight":I
    .end local p5    # "childWidth":I
    .end local p4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44581
    .end local p3    # "i":I
    :cond_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 44582
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingLeft()I

    move-result v0

    sub-int/2addr v5, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingRight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 44583
    .local p0, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingTop()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    .line 44584
    .local p1, "height":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingLeft()I

    move-result v10

    .line 44585
    .local p2, "xPos":I
    const/4 v7, 0x0

    .line 44586
    .local v5, "lineHeight":I
    const/high16 v6, -0x80000000

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 44587
    .local v5, "childHeightMeasureSpec":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v9, 0x1

    .line 44588
    .local v0, "lines":I
    :goto_0
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 44589
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/N2;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 44590
    .local v1, "child":Landroid/view/View;
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Landroid/view/View;->measure(II)V

    .line 44591
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 44592
    .local v0, "childWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/N2;->A02:I

    add-int/2addr v1, v0

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 44593
    add-int v0, v10, v2

    if-le v0, v5, :cond_0

    .line 44594
    add-int/lit8 v9, v9, 0x1

    .line 44595
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/N2;->getPaddingLeft()I

    move-result v10

    .line 44596
    :cond_0
    sget v8, Lcom/facebook/ads/redexgen/X/N2;->A02:I

    add-int/2addr v8, v2

    sget-object v2, Lcom/facebook/ads/redexgen/X/N2;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/N2;->A01:[Ljava/lang/String;

    const-string v1, "n9Mm7W7nMoMcqU3dmLdt8wDmLs9m7g2q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "514SZhPsQ7DKXYFFbCEhDr5q0ZnH7KeP"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    add-int/2addr v10, v8

    .line 44597
    .end local v1    # "child":Landroid/view/View;
    .end local v0    # "childWidth":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 44598
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 44599
    .end local v5    # "i":I
    :cond_3
    iput v7, p0, Lcom/facebook/ads/redexgen/X/N2;->A00:I

    .line 44600
    iget v1, p0, Lcom/facebook/ads/redexgen/X/N2;->A00:I

    mul-int/2addr v1, v9

    sget v0, Lcom/facebook/ads/redexgen/X/N2;->A02:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v5, v1}, Lcom/facebook/ads/redexgen/X/N2;->setMeasuredDimension(II)V

    .line 44601
    return-void
.end method
