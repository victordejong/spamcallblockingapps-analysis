.class public Lcom/facebook/ads/redexgen/X/55;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdComponentViewApi;


# instance fields
.field public A00:Lcom/facebook/ads/internal/api/AdComponentView;

.field public A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A03:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V
    .locals 3

    .line 12920
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 12921
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    check-cast v2, Lcom/facebook/ads/internal/api/AdComponentViewApi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/55;->A00:Lcom/facebook/ads/internal/api/AdComponentView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 12922
    return-void
.end method

.method public final A01(Z)V
    .locals 0

    .line 12923
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    .line 12924
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 12925
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    if-nez v0, :cond_0

    .line 12926
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;)V

    .line 12927
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 12928
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    if-nez v0, :cond_0

    .line 12929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;I)V

    .line 12930
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 12931
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    if-nez v0, :cond_0

    .line 12932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;II)V

    .line 12933
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 12934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12935
    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 12936
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    if-nez v0, :cond_0

    .line 12937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12938
    :cond_0
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 12939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 12940
    return-void
.end method

.method public onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 12941
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/55;->A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 12942
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/55;->A00:Lcom/facebook/ads/internal/api/AdComponentView;

    .line 12943
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 12944
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 12945
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onAttachedToWindow()V

    .line 12946
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 12947
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onDetachedFromWindow()V

    .line 12948
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 12949
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onMeasure(II)V

    .line 12950
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 12951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onVisibilityChanged(Landroid/view/View;I)V

    .line 12952
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 12953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onWindowFocusChanged(Z)V

    .line 12954
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 12955
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12956
    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 1

    .line 12957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->setMeasuredDimension(II)V

    .line 12958
    return-void
.end method
