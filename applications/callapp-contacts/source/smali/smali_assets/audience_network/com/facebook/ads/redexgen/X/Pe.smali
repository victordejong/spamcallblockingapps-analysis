.class public final Lcom/facebook/ads/redexgen/X/Pe;
.super Lcom/facebook/ads/redexgen/X/Np;
.source ""


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 4

    .line 48380
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Np;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 48381
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 48382
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:Landroid/widget/ImageView;

    .line 48383
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 48384
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Pe;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48385
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)V
    .locals 3

    .line 48386
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pe;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pe;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 48387
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/aA;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aA;->A05()Lcom/facebook/ads/redexgen/X/aA;

    .line 48388
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 48389
    return-void
.end method
