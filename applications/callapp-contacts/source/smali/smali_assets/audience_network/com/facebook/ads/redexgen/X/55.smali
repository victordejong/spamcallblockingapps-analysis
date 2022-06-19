.class public Lcom/facebook/ads/redexgen/X/55;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AdComponentViewApi;


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/internal/api/AdComponentView;

.field public A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/55;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "DtktONWnXEY5FzVbssK3HUcX82Hc8dPM"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VYSkBw2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Sk9LBYg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "zsSx1Kr51XMvStaGQs4t"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dpmwV6mETINkPbyFQBJp66qCpa0Du"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XIAhU79E3TcXoEefCY9V"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/55;->A04:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V
    .locals 3

    .line 12828
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 12829
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    check-cast v2, Lcom/facebook/ads/internal/api/AdComponentViewApi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/55;->A00:Lcom/facebook/ads/internal/api/AdComponentView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewApi;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 12830
    return-void
.end method

.method public final A02(Z)V
    .locals 0

    .line 12831
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    .line 12832
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 12833
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    if-nez v0, :cond_0

    .line 12834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;)V

    .line 12835
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 4

    .line 12836
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    if-nez v0, :cond_0

    .line 12837
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    sget-object v1, Lcom/facebook/ads/redexgen/X/55;->A04:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/55;->A04:[Ljava/lang/String;

    const-string v1, "2ikQI8hSZFFed3t7z6895TIzQQBAwMh9"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;I)V

    .line 12838
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final addView(Landroid/view/View;II)V
    .locals 1

    .line 12839
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    if-nez v0, :cond_0

    .line 12840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;II)V

    .line 12841
    :cond_0
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 12842
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 12843
    return-void
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 12844
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/55;->A03:Z

    if-nez v0, :cond_0

    .line 12845
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12846
    :cond_0
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 12847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 12848
    return-void
.end method

.method public onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 12849
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/55;->A01:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 12850
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/55;->A00:Lcom/facebook/ads/internal/api/AdComponentView;

    .line 12851
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 12852
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 12853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onAttachedToWindow()V

    .line 12854
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 12855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onDetachedFromWindow()V

    .line 12856
    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    .line 12857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onMeasure(II)V

    .line 12858
    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 12859
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onVisibilityChanged(Landroid/view/View;I)V

    .line 12860
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 12861
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->onWindowFocusChanged(Z)V

    .line 12862
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 12863
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12864
    return-void
.end method

.method public final setMeasuredDimension(II)V
    .locals 1

    .line 12865
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/55;->A02:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->setMeasuredDimension(II)V

    .line 12866
    return-void
.end method
