.class public final Lcom/facebook/ads/redexgen/X/BE;
.super Lcom/facebook/ads/redexgen/X/TC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CenterSmoothScroller"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ax;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ax;Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 22136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BE;->A00:Lcom/facebook/ads/redexgen/X/Ax;

    .line 22137
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/TC;-><init>(Landroid/content/Context;)V

    .line 22138
    return-void
.end method


# virtual methods
.method public final A0K(Landroid/util/DisplayMetrics;)F
    .locals 2

    .line 22139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BE;->A00:Lcom/facebook/ads/redexgen/X/Ax;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ax;->A02(Lcom/facebook/ads/redexgen/X/Ax;)F

    move-result v1

    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public final A0L()I
    .locals 1

    .line 22140
    const/4 v0, -0x1

    return v0
.end method

.method public final A0P(Landroid/view/View;I)I
    .locals 8

    .line 22141
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4X;->A09()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v2

    .line 22142
    .local p0, "layoutManager":Lcom/facebook/ads/redexgen/X/4K;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4K;->A25()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22143
    const/4 v0, 0x0

    return v0

    .line 22144
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/4L;

    .line 22145
    .local p1, "params":Lcom/facebook/ads/redexgen/X/4L;
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0l(Landroid/view/View;)I

    move-result v3

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4L;->leftMargin:I

    sub-int/2addr v3, v0

    .line 22146
    .local v7, "left":I
    invoke-virtual {v2, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0o(Landroid/view/View;)I

    move-result v4

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4L;->rightMargin:I

    add-int/2addr v4, v0

    .line 22147
    .local v2, "right":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v5

    .line 22148
    .local v3, "start":I
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v6, v0

    .line 22149
    .local v4, "end":I
    move-object v2, p0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/TC;->A0O(IIIII)I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BE;->A00:Lcom/facebook/ads/redexgen/X/Ax;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ax;->A03(Lcom/facebook/ads/redexgen/X/Ax;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0Q(I)Landroid/graphics/PointF;
    .locals 1

    .line 22150
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BE;->A00:Lcom/facebook/ads/redexgen/X/Ax;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A46(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
