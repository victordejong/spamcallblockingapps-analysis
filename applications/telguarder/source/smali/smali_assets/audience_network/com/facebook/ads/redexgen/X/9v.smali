.class public final Lcom/facebook/ads/redexgen/X/9v;
.super Lcom/facebook/ads/redexgen/X/RD;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9v;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Q9;Landroid/os/Bundle;)V
    .locals 1
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/Q9;
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
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Q9;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 20701
    .local p4, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/RD;-><init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Q9;Landroid/os/Bundle;)V

    .line 20702
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/El;->A1k(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 20703
    new-instance v0, Lcom/facebook/ads/redexgen/X/S9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S9;-><init>(Lcom/facebook/ads/redexgen/X/9v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/O8;

    .line 20704
    return-void
.end method

.method private A00()V
    .locals 4

    .line 20705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A28()I

    move-result v1

    .line 20706
    .local p0, "curPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A05:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_1

    .line 20707
    add-int/lit8 v3, v1, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9v;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x52

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9v;->A00:[Ljava/lang/String;

    const-string v1, "QoZYEwWSRtnMYn7R6MgH1oBp1kGEXSrp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/RD;->A0X(I)V

    .line 20708
    :cond_1
    return-void
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "f1NrkMLFHAOxAk1WYXb4ZQBI9BQGMxNf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ieQbYkP9qXWhodiL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "FasCpRA2RHhykdlBGUblwYUAQMGKU0mS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "sjzKgK2sh59qhJK5Sm5NCXrbKyy"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "73hXtYSYooo4yypUFlMlXcqu25ITYI9G"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jFG3gQjXUuH0GALbmhZbm14pHMTfeDNL"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AB4YZhA3BNaHUCHwFjy4bae76Yz8EFa9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dMMrkYyDXzmdfTW8HhUzXkOm8W"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9v;->A00:[Ljava/lang/String;

    return-void
.end method

.method private A02(I)V
    .locals 3

    .line 20709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A29()I

    move-result v2

    .line 20710
    .local p0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A2A()I

    move-result v1

    .line 20711
    .local p1, "lastVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A28()I

    move-result v0

    .line 20712
    .local v0, "visibleItem":I
    if-eq v0, v2, :cond_0

    .line 20713
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/RD;->A0U(I)V

    .line 20714
    :cond_0
    if-eq v0, v1, :cond_1

    .line 20715
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/RD;->A0U(I)V

    .line 20716
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0V(I)V

    .line 20717
    invoke-virtual {p0, v2, v1, p1}, Lcom/facebook/ads/redexgen/X/RD;->A0Y(III)V

    .line 20718
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 0

    .line 20719
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9v;->A00()V

    return-void
.end method


# virtual methods
.method public final A0N(Lcom/facebook/ads/redexgen/X/El;I)V
    .locals 0

    .line 20720
    return-void
.end method

.method public final A0O(Lcom/facebook/ads/redexgen/X/El;II)V
    .locals 2

    .line 20721
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A28()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 20722
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A28()I

    move-result v1

    .line 20723
    .local p0, "shouldPlayPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    .line 20724
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rj;

    .line 20725
    .local p1, "curCard":Lcom/facebook/ads/redexgen/X/Rj;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A0f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20726
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A0d()V

    .line 20727
    :cond_0
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/9v;->A02(I)V

    .line 20728
    .end local p0    # "shouldPlayPosition":I
    .end local p1    # "curCard":Lcom/facebook/ads/redexgen/X/Rj;
    :cond_1
    return-void
.end method

.method public final A0a(Landroid/view/View;Z)V
    .locals 1

    .line 20729
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 20730
    return-void

    .line 20731
    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_0
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/Rj;Z)V
    .locals 1

    .line 20732
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9v;->A0a(Landroid/view/View;Z)V

    .line 20733
    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20734
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0c()V

    .line 20735
    :cond_0
    return-void
.end method

.method public final A0d(Landroid/view/View;)Z
    .locals 2

    .line 20736
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 20737
    .local p0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 20738
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

.method public final A0e()Lcom/facebook/ads/redexgen/X/Q9;
    .locals 1

    .line 20739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    return-object v0
.end method

.method public final A0f(Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 0

    .line 20740
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RD;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    .line 20741
    return-void
.end method

.method public final A0g(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;)V"
        }
    .end annotation

    .line 20742
    .local p1, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RD;->A05:Ljava/util/List;

    .line 20743
    return-void
.end method
