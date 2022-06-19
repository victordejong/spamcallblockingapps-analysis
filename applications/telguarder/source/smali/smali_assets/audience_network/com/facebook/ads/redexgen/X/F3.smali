.class public final Lcom/facebook/ads/redexgen/X/F3;
.super Lcom/facebook/ads/redexgen/X/bz;
.source ""


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A01:Lcom/facebook/ads/redexgen/X/Jc;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/F3;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Jc;)V
    .locals 0
    .param p4    # Lcom/facebook/ads/redexgen/X/Jc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/1W;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/T6;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Jc;",
            ")V"
        }
    .end annotation

    .line 32243
    .local p4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0, p2, p3, p1}, Lcom/facebook/ads/redexgen/X/bz;-><init>(Lcom/facebook/ads/redexgen/X/1W;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 32244
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    .line 32245
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/F3;->A01:Lcom/facebook/ads/redexgen/X/Jc;

    .line 32246
    return-void

    .line 32247
    :cond_0
    new-instance p4, Lcom/facebook/ads/redexgen/X/Jc;

    invoke-direct {p4}, Lcom/facebook/ads/redexgen/X/Jc;-><init>()V

    goto :goto_0
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/SX;
    .locals 3

    .line 32248
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/F3;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/F3;->A01:Lcom/facebook/ads/redexgen/X/Jc;

    new-instance v1, Lcom/facebook/ads/redexgen/X/M9;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/M9;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Jc;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/SX;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/SX;-><init>(Lcom/facebook/ads/internal/api/AdNativeComponentView;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/F3;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/F3;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x54t
        -0x56t
        -0x4bt
        -0x4bt
        -0x58t
        -0x43t
        -0x48t
        -0x58t
        -0x56t
        -0x54t
        -0x43t
        -0x4et
        -0x48t
        -0x49t
        0x3t
        0x0t
        -0x4t
        -0x1t
        0x7t
        0x4t
        0x9t
        0x0t
        -0x50t
        -0x53t
        -0x4et
        -0x51t
        -0x5dt
        -0x58t
        -0x57t
        -0x49t
        -0x59t
        -0x4at
        -0x53t
        -0x4ct
        -0x48t
        -0x53t
        -0x4dt
        -0x4et
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 32249
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F3;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 32250
    check-cast p1, Lcom/facebook/ads/redexgen/X/SX;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/F3;->A0I(Lcom/facebook/ads/redexgen/X/SX;I)V

    return-void
.end method

.method public final A0I(Lcom/facebook/ads/redexgen/X/SX;I)V
    .locals 5

    .line 32251
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/bz;->A0I(Lcom/facebook/ads/redexgen/X/SX;I)V

    .line 32252
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SX;->A0m()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/M9;

    .line 32253
    .local p0, "cardView":Lcom/facebook/ads/redexgen/X/M9;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/M9;->getImageCardView()Landroid/widget/ImageView;

    move-result-object v0

    .line 32254
    .local p1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/bz;->A0G(Landroid/widget/ImageView;I)V

    .line 32255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/T6;

    const/16 v2, 0xe

    const/16 v1, 0x8

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F3;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/M9;->setTitle(Ljava/lang/String;)V

    .line 32256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/T6;

    const/16 v2, 0x16

    const/16 v1, 0x10

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F3;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/M9;->setSubtitle(Ljava/lang/String;)V

    .line 32257
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/T6;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/F3;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/M9;->setButtonText(Ljava/lang/String;)V

    .line 32258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bz;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/T6;

    .line 32259
    .local p2, "childAd":Lcom/facebook/ads/redexgen/X/T6;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32260
    .local v4, "clickableViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32261
    invoke-virtual {v1, v4, v4, v0}, Lcom/facebook/ads/redexgen/X/T6;->A1O(Landroid/view/View;Lcom/facebook/ads/internal/api/AdNativeComponentView;Ljava/util/List;)V

    .line 32262
    return-void
.end method
