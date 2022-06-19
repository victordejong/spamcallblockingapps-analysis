.class public final Lcom/facebook/ads/redexgen/X/FM;
.super Lcom/facebook/ads/redexgen/X/Rz;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/XJ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1W;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cD;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            ")V"
        }
    .end annotation

    .line 32279
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 32280
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    .line 32281
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/cq;
    .locals 2

    .line 32282
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/MF;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/cq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/cq;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 32283
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FM;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/cq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 32284
    check-cast p1, Lcom/facebook/ads/redexgen/X/cq;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FM;->A0I(Lcom/facebook/ads/redexgen/X/cq;I)V

    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/cq;I)V
    .locals 4

    .line 32285
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rz;->A0I(Lcom/facebook/ads/redexgen/X/cq;I)V

    .line 32286
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cq;->A0m()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/MF;

    .line 32287
    .local p0, "cardView":Lcom/facebook/ads/redexgen/X/MF;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/MF;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/MU;

    .line 32288
    .local p1, "imageView":Lcom/facebook/ads/redexgen/X/MU;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32289
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/Rz;->A0G(Landroid/widget/ImageView;I)V

    .line 32290
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/cD;

    .line 32291
    .local p2, "childAd":Lcom/facebook/ads/redexgen/X/cD;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/cD;->A11()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FM;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0D(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 32292
    invoke-virtual {v2, v3, v3}, Lcom/facebook/ads/redexgen/X/cD;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    .line 32293
    return-void
.end method
