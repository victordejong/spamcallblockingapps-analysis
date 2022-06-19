.class public final Lcom/facebook/ads/redexgen/X/F2;
.super Lcom/facebook/ads/redexgen/X/bz;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1W;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/T6;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ")V"
        }
    .end annotation

    .line 32228
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bz;-><init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 32229
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    .line 32230
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/SX;
    .locals 2

    .line 32231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Lcom/facebook/ads/redexgen/X/MD;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/MD;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 32232
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F2;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 32233
    check-cast p1, Lcom/facebook/ads/redexgen/X/SX;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F2;->A0I(Lcom/facebook/ads/redexgen/X/SX;I)V

    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/SX;I)V
    .locals 4

    .line 32234
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bz;->A0I(Lcom/facebook/ads/redexgen/X/SX;I)V

    .line 32235
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SX;->A0m()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/MD;

    .line 32236
    .local p0, "cardView":Lcom/facebook/ads/redexgen/X/MD;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/MD;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/MP;

    .line 32237
    .local p1, "imageView":Lcom/facebook/ads/redexgen/X/MP;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MP;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32238
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/bz;->A0G(Landroid/widget/ImageView;I)V

    .line 32239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/T6;

    .line 32240
    .local p2, "childAd":Lcom/facebook/ads/redexgen/X/T6;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F2;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0E(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 32241
    invoke-virtual {v2, v3, v3}, Lcom/facebook/ads/redexgen/X/T6;->A1N(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    .line 32242
    return-void
.end method
