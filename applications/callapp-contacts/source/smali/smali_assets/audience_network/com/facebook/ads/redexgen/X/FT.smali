.class public final Lcom/facebook/ads/redexgen/X/FT;
.super Lcom/facebook/ads/redexgen/X/Rz;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A01:Lcom/facebook/ads/redexgen/X/Ja;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/FT;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Ja;)V
    .locals 0
    .param p4    # Lcom/facebook/ads/redexgen/X/Ja;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Lcom/facebook/ads/redexgen/X/1W;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/cD;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Ja;",
            ")V"
        }
    .end annotation

    .line 32409
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 32410
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FT;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    .line 32411
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/FT;->A01:Lcom/facebook/ads/redexgen/X/Ja;

    .line 32412
    return-void

    .line 32413
    :cond_0
    new-instance p4, Lcom/facebook/ads/redexgen/X/Ja;

    invoke-direct {p4}, Lcom/facebook/ads/redexgen/X/Ja;-><init>()V

    goto :goto_0
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/cq;
    .locals 3

    .line 32414
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/FT;->A00:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/FT;->A01:Lcom/facebook/ads/redexgen/X/Ja;

    new-instance v1, Lcom/facebook/ads/redexgen/X/MB;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/MB;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Ja;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/cq;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/cq;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/FT;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/FT;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x21t
        -0x23t
        -0x18t
        -0x18t
        -0x25t
        -0x10t
        -0x15t
        -0x25t
        -0x23t
        -0x21t
        -0x10t
        -0x1bt
        -0x15t
        -0x16t
        0x3t
        0x0t
        -0x4t
        -0x1t
        0x7t
        0x4t
        0x9t
        0x0t
        -0x3dt
        -0x40t
        -0x3bt
        -0x3et
        -0x4at
        -0x45t
        -0x44t
        -0x36t
        -0x46t
        -0x37t
        -0x40t
        -0x39t
        -0x35t
        -0x40t
        -0x3at
        -0x3bt
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 32415
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FT;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/cq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 32416
    check-cast p1, Lcom/facebook/ads/redexgen/X/cq;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FT;->A0I(Lcom/facebook/ads/redexgen/X/cq;I)V

    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/cq;I)V
    .locals 5

    .line 32417
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Rz;->A0I(Lcom/facebook/ads/redexgen/X/cq;I)V

    .line 32418
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cq;->A0m()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/MB;

    .line 32419
    .local p0, "cardView":Lcom/facebook/ads/redexgen/X/MB;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/MB;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v0

    .line 32420
    .local p1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Rz;->A0G(Landroid/widget/ImageView;I)V

    .line 32421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/cD;

    const/16 v2, 0xe

    const/16 v1, 0x8

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/MB;->setTitle(Ljava/lang/String;)V

    .line 32422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/cD;

    const/16 v2, 0x16

    const/16 v1, 0x10

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/MB;->setSubtitle(Ljava/lang/String;)V

    .line 32423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/cD;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FT;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/MB;->setButtonText(Ljava/lang/String;)V

    .line 32424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/cD;

    .line 32425
    .local p2, "childAd":Lcom/facebook/ads/redexgen/X/cD;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32426
    .local v4, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32427
    invoke-virtual {v1, v4, v4, v0}, Lcom/facebook/ads/redexgen/X/cD;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 32428
    return-void
.end method
