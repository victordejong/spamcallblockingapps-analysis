.class public Lcom/facebook/ads/redexgen/X/Ti;
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

    .line 55413
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/55;-><init>()V

    .line 55414
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A01:I

    .line 55415
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:I

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 2

    .line 55416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 55417
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->removeView(Landroid/view/View;)V

    .line 55418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Landroid/view/View;

    .line 55419
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Mj;)V
    .locals 2

    .line 55420
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Landroid/view/View;

    .line 55421
    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Mj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y(Landroid/view/ViewGroup;)V

    .line 55423
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A02:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 55424
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 55425
    return-object p0
.end method

.method public final initialize(Lcom/facebook/ads/NativeAdLayout;)V
    .locals 0

    .line 55426
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    .line 55427
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 55428
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/55;->onMeasure(II)V

    .line 55429
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:I

    if-le v0, v1, :cond_1

    .line 55430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/55;->setMeasuredDimension(II)V

    .line 55431
    :cond_0
    :goto_0
    return-void

    .line 55432
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A01:I

    if-ge v0, v1, :cond_0

    .line 55433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ti;->A03:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAdLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/55;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public final setMaxWidth(I)V
    .locals 0

    .line 55434
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A00:I

    .line 55435
    return-void
.end method

.method public final setMinWidth(I)V
    .locals 0

    .line 55436
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ti;->A01:I

    .line 55437
    return-void
.end method
