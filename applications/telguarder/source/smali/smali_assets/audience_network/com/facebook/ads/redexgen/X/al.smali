.class public final Lcom/facebook/ads/redexgen/X/al;
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

    .line 67646
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5r(I)Landroid/view/View;
    .locals 1

    .line 67647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0u(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A5t(Landroid/view/View;)I
    .locals 3

    .line 67648
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 67649
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0o(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A5u(Landroid/view/View;)I
    .locals 3

    .line 67650
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4L;

    .line 67651
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4L;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4K;->A0l(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4L;->leftMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A6t()I
    .locals 2

    .line 67652
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0i()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A6u()I
    .locals 1

    .line 67653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/al;->A00:Lcom/facebook/ads/redexgen/X/4K;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4K;->A0f()I

    move-result v0

    return v0
.end method
