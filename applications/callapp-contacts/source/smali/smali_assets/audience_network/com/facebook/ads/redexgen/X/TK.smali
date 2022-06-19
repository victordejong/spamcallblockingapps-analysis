.class public final Lcom/facebook/ads/redexgen/X/TK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 54705
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5r(I)Landroid/view/View;
    .locals 1

    .line 54706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A5t(Landroid/view/View;)I
    .locals 3

    .line 54707
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 54708
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0k(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A5u(Landroid/view/View;)I
    .locals 3

    .line 54709
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 54710
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0p(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A6t()I
    .locals 2

    .line 54711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0Y()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/4K;

    .line 54712
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0e()I

    move-result v0

    sub-int/2addr v1, v0

    .line 54713
    return v1
.end method

.method public final A6u()I
    .locals 1

    .line 54714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0h()I

    move-result v0

    return v0
.end method
