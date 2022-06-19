.class public final Lcom/facebook/ads/redexgen/X/PS;
.super Lcom/facebook/ads/redexgen/X/Nk;
.source ""


# instance fields
.field public final A00:Landroid/widget/ImageView;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 4

    .line 48341
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nk;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 48342
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/PS;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 48343
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/PS;->A00:Landroid/widget/ImageView;

    .line 48344
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PS;->A00:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 48345
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/PS;->A00:Landroid/widget/ImageView;

    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/PS;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48346
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)V
    .locals 3

    .line 48347
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/PS;->A00:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/PS;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 48348
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/Rz;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A05()Lcom/facebook/ads/redexgen/X/Rz;

    .line 48349
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 48350
    return-void
.end method
