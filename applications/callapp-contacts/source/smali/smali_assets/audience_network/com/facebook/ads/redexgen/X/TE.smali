.class public final Lcom/facebook/ads/redexgen/X/TE;
.super Lcom/facebook/ads/redexgen/X/44;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/44;->A01(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 1

    .line 54565
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/44;-><init>(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/TD;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 54566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 54567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 54568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 54569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0Z()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 54570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 54571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    .line 54572
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v1, v0

    .line 54573
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 54574
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 54575
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0k(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 54576
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 54577
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0m(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 54578
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 54579
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0n(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 54580
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 54581
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0p(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 54582
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1F(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 54583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 54584
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1F(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 54585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 54586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A11(I)V

    .line 54587
    return-void
.end method
