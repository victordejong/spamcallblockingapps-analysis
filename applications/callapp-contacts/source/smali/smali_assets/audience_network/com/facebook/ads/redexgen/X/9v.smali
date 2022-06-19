.class public final Lcom/facebook/ads/redexgen/X/9v;
.super Lcom/facebook/ads/redexgen/X/RH;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9v;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QE;Landroid/os/Bundle;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/QE;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/2m;",
            "I",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/QE;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 20635
    .local p4, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/RH;-><init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QE;Landroid/os/Bundle;)V

    .line 20636
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/Eq;->A1k(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 20637
    new-instance v0, Lcom/facebook/ads/redexgen/X/aN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aN;-><init>(Lcom/facebook/ads/redexgen/X/9v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:Lcom/facebook/ads/redexgen/X/OD;

    .line 20638
    return-void
.end method

.method private A00()V
    .locals 2

    .line 20639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A28()I

    move-result v1

    .line 20640
    .local p0, "curPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 20641
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0X(I)V

    .line 20642
    :cond_0
    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4DJOkXe9rib7uWc4nLa4kcuSPdxs7gf4"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Dyxr4XzeXsq4jjw5BU630cyoQdL32ISv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MScpZjpz"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3XC0FNsyX3k6WX9dbHhU9IwCEOagJZ1X"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "JEKgPGdFYfe9RoD8dW0t8x0Mvi1GtEmi"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N5tdloXdcly7PUtxD1ZshZXdUDk2Lr2A"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5elKCHWntj6O1Wqi1faAvLWvEV4yzp2T"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JBMx9492vmjOwkRP6"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9v;->A00:[Ljava/lang/String;

    return-void
.end method

.method private A02(I)V
    .locals 3

    .line 20643
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A29()I

    move-result v2

    .line 20644
    .local p0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A2A()I

    move-result v1

    .line 20645
    .local p1, "lastVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A28()I

    move-result v0

    .line 20646
    .local v0, "visibleItem":I
    if-eq v0, v2, :cond_0

    .line 20647
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/RH;->A0U(I)V

    .line 20648
    :cond_0
    if-eq v0, v1, :cond_1

    .line 20649
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/RH;->A0U(I)V

    .line 20650
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0V(I)V

    .line 20651
    invoke-virtual {p0, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/RH;->A0Y(III)V

    .line 20652
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 0

    .line 20653
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9v;->A00()V

    return-void
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/Eq;I)V
    .locals 0

    .line 20654
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/Eq;II)V
    .locals 4

    .line 20655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A28()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 20656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A28()I

    move-result v1

    .line 20657
    .local p0, "shouldPlayPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    .line 20658
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/YM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9v;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    .line 20659
    .local p1, "curCard":Lcom/facebook/ads/redexgen/X/YM;
    sget-object v2, Lcom/facebook/ads/redexgen/X/9v;->A00:[Ljava/lang/String;

    const-string v1, "IxYVUA16uQkbjXwNztolao4gyOA0tKzF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "jcO9EzcXxFOxyF2BSjZiD0vteRj0mA5y"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/YM;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/YM;->A0f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20660
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/YM;->A0d()V

    .line 20661
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/9v;->A02(I)V

    .line 20662
    .end local p0    # "shouldPlayPosition":I
    .end local p1    # "curCard":Lcom/facebook/ads/redexgen/X/YM;
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0a(Landroid/view/View;Z)V
    .locals 1

    .line 20663
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20664
    return-void

    .line 20665
    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/YM;Z)V
    .locals 1

    .line 20666
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9v;->A0a(Landroid/view/View;Z)V

    .line 20667
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YM;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20668
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YM;->A0c()V

    .line 20669
    :cond_0
    return-void
.end method

.method public final A0d(Landroid/view/View;)Z
    .locals 2

    .line 20670
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20671
    .local p0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 20672
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0e()Lcom/facebook/ads/redexgen/X/QE;
    .locals 1

    .line 20673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/QE;

    return-object v0
.end method

.method public final A0f(Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 0

    .line 20674
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/QE;

    .line 20675
    return-void
.end method

.method public final A0g(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;)V"
        }
    .end annotation

    .line 20676
    .local p1, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Ljava/util/List;

    .line 20677
    return-void
.end method
