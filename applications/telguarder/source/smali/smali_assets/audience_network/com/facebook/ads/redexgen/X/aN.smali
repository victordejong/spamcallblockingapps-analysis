.class public Lcom/facebook/ads/redexgen/X/aN;
.super Lcom/facebook/ads/redexgen/X/55;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdLayoutApi;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/NativeAdLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66919
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/55;-><init>()V

    .line 66920
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:I

    .line 66921
    iput v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:I

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 2

    .line 66922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 66923
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeView(Landroid/view/View;)V

    .line 66924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Landroid/view/View;

    .line 66925
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Me;)V
    .locals 2

    .line 66926
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Landroid/view/View;

    .line 66927
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Me;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0V(Landroid/view/ViewGroup;)V

    .line 66929
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 66930
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 66931
    return-object p0
.end method

.method public final initialize(Lcom/facebook/ads/NativeAdLayout;)V
    .locals 0

    .line 66932
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    .line 66933
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 66934
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/55;->onMeasure(II)V

    .line 66935
    iget v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:I

    if-le v0, v1, :cond_1

    .line 66936
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/55;->setMeasuredDimension(II)V

    .line 66937
    :cond_0
    :goto_0
    return-void

    .line 66938
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:I

    if-ge v0, v1, :cond_0

    .line 66939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aN;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/55;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final setMaxWidth(I)V
    .locals 0

    .line 66940
    iput p1, p0, Lcom/facebook/ads/redexgen/X/aN;->A00:I

    .line 66941
    return-void
.end method

.method public final setMinWidth(I)V
    .locals 0

    .line 66942
    iput p1, p0, Lcom/facebook/ads/redexgen/X/aN;->A01:I

    .line 66943
    return-void
.end method
