.class public final Lcom/facebook/ads/redexgen/X/ar;
.super Lcom/facebook/ads/redexgen/X/44;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/44;->A00(Lcom/facebook/ads/redexgen/X/4K;)Lcom/facebook/ads/redexgen/X/44;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 1

    .line 67786
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/44;-><init>(Lcom/facebook/ads/redexgen/X/4K;Lcom/facebook/ads/redexgen/X/ar;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 67787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 67788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 67789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 67790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0j()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 67791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 67792
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    .line 67793
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    .line 67794
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 67795
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 67796
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0o(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 67797
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 67798
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

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 67799
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 67800
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

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 67801
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 67802
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0l(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->leftMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 67803
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1F(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 67804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 67805
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4K;->A1F(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 67806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 67807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/44;->A02:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A10(I)V

    .line 67808
    return-void
.end method
