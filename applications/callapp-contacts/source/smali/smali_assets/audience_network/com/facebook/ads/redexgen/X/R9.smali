.class public final Lcom/facebook/ads/redexgen/X/R9;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/R0;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/M9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/16;

.field public final A09:Lcom/facebook/ads/redexgen/X/7D;

.field public final A0A:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0B:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0C:Lcom/facebook/ads/redexgen/X/La;

.field public final A0D:Lcom/facebook/ads/redexgen/X/RH;

.field public final A0E:Lcom/facebook/ads/redexgen/X/QE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/M9;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/RH;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/16;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/7D;",
            "Lcom/facebook/ads/redexgen/X/QE;",
            "Lcom/facebook/ads/redexgen/X/La;",
            "Lcom/facebook/ads/redexgen/X/M9;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/facebook/ads/redexgen/X/RH;",
            ")V"
        }
    .end annotation

    .line 49761
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 49762
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A07:Landroid/util/SparseBooleanArray;

    .line 49763
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R9;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    .line 49764
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/R9;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    .line 49765
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/R9;->A09:Lcom/facebook/ads/redexgen/X/7D;

    .line 49766
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/R9;->A0E:Lcom/facebook/ads/redexgen/X/QE;

    .line 49767
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/R9;->A0C:Lcom/facebook/ads/redexgen/X/La;

    .line 49768
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/R9;->A04:Lcom/facebook/ads/redexgen/X/M9;

    .line 49769
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/R9;->A08:Lcom/facebook/ads/redexgen/X/16;

    .line 49770
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R9;->A06:Ljava/util/List;

    .line 49771
    iput p10, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:I

    .line 49772
    iput p13, p0, Lcom/facebook/ads/redexgen/X/R9;->A03:I

    .line 49773
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/R9;->A05:Ljava/lang/String;

    .line 49774
    iput p12, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:I

    .line 49775
    iput p11, p0, Lcom/facebook/ads/redexgen/X/R9;->A02:I

    .line 49776
    iput-object p14, p0, Lcom/facebook/ads/redexgen/X/R9;->A0D:Lcom/facebook/ads/redexgen/X/RH;

    .line 49777
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/R0;
    .locals 10

    .line 49778
    new-instance v0, Lcom/facebook/ads/redexgen/X/O0;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R9;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R9;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R9;->A04:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R9;->A08:Lcom/facebook/ads/redexgen/X/16;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/R9;->A0E:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/R9;->A0C:Lcom/facebook/ads/redexgen/X/La;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/O0;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    .line 49779
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A0J()Lcom/facebook/ads/redexgen/X/O1;

    move-result-object v3

    .line 49780
    .local p0, "params":Lcom/facebook/ads/redexgen/X/O1;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/R9;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R9;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A0D:Lcom/facebook/ads/redexgen/X/RH;

    .line 49781
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A00(Lcom/facebook/ads/redexgen/X/O1;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)Lcom/facebook/ads/redexgen/X/9g;

    move-result-object v2

    .line 49782
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/9g;
    new-instance v1, Lcom/facebook/ads/redexgen/X/R0;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R9;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R9;->A0E:Lcom/facebook/ads/redexgen/X/QE;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/R9;->A00:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/R9;->A01:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/R9;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A06:Ljava/util/List;

    .line 49783
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/R9;->A0A:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/R0;-><init>(Lcom/facebook/ads/redexgen/X/9g;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QE;IIIILcom/facebook/ads/redexgen/X/XJ;)V

    .line 49784
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/R0;I)V
    .locals 6

    .line 49785
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ot;

    .line 49786
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/Ot;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R9;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R9;->A09:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R9;->A0C:Lcom/facebook/ads/redexgen/X/La;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/R9;->A05:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/R0;->A0m(Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;)V

    .line 49787
    return-void
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 49788
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R9;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/R0;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()I
    .locals 1

    .line 49789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R9;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 49790
    check-cast p1, Lcom/facebook/ads/redexgen/X/R0;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R9;->A02(Lcom/facebook/ads/redexgen/X/R0;I)V

    return-void
.end method
