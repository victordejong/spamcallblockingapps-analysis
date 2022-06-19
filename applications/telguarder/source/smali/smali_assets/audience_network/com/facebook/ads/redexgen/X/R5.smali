.class public final Lcom/facebook/ads/redexgen/X/R5;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/PZ;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/M7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Ljava/lang/String;

.field public A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/16;

.field public final A09:Lcom/facebook/ads/redexgen/X/7D;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0B:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Lc;

.field public final A0D:Lcom/facebook/ads/redexgen/X/RD;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Q9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/M7;Ljava/lang/String;IIIILcom/facebook/ads/redexgen/X/RD;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/16;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/7D;",
            "Lcom/facebook/ads/redexgen/X/Q9;",
            "Lcom/facebook/ads/redexgen/X/Lc;",
            "Lcom/facebook/ads/redexgen/X/M7;",
            "Ljava/lang/String;",
            "IIII",
            "Lcom/facebook/ads/redexgen/X/RD;",
            ")V"
        }
    .end annotation

    .line 49630
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 49631
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A07:Landroid/util/SparseBooleanArray;

    .line 49632
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R5;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    .line 49633
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/R5;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    .line 49634
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/R5;->A09:Lcom/facebook/ads/redexgen/X/7D;

    .line 49635
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/R5;->A0E:Lcom/facebook/ads/redexgen/X/Q9;

    .line 49636
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/R5;->A0C:Lcom/facebook/ads/redexgen/X/Lc;

    .line 49637
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/R5;->A04:Lcom/facebook/ads/redexgen/X/M7;

    .line 49638
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/R5;->A08:Lcom/facebook/ads/redexgen/X/16;

    .line 49639
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R5;->A06:Ljava/util/List;

    .line 49640
    iput p10, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:I

    .line 49641
    iput p13, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:I

    .line 49642
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/R5;->A05:Ljava/lang/String;

    .line 49643
    iput p12, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:I

    .line 49644
    iput p11, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:I

    .line 49645
    iput-object p14, p0, Lcom/facebook/ads/redexgen/X/R5;->A0D:Lcom/facebook/ads/redexgen/X/RD;

    .line 49646
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/PZ;
    .locals 10

    .line 49647
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nv;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A04:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R5;->A08:Lcom/facebook/ads/redexgen/X/16;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/R5;->A0E:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/R5;->A0C:Lcom/facebook/ads/redexgen/X/Lc;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Nv;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 49648
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0J()Lcom/facebook/ads/redexgen/X/Nw;

    move-result-object v3

    .line 49649
    .local p0, "params":Lcom/facebook/ads/redexgen/X/Nw;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A03:I

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R5;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A0D:Lcom/facebook/ads/redexgen/X/RD;

    .line 49650
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OB;->A00(Lcom/facebook/ads/redexgen/X/Nw;ILjava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)Lcom/facebook/ads/redexgen/X/9g;

    move-result-object v2

    .line 49651
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/9g;
    new-instance v1, Lcom/facebook/ads/redexgen/X/PZ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A07:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R5;->A0E:Lcom/facebook/ads/redexgen/X/Q9;

    iget v5, p0, Lcom/facebook/ads/redexgen/X/R5;->A00:I

    iget v6, p0, Lcom/facebook/ads/redexgen/X/R5;->A01:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/R5;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A06:Ljava/util/List;

    .line 49652
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/R5;->A0A:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/PZ;-><init>(Lcom/facebook/ads/redexgen/X/9g;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/Q9;IIIILcom/facebook/ads/redexgen/X/Wm;)V

    .line 49653
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/PZ;I)V
    .locals 6

    .line 49654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A06:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Oo;

    .line 49655
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/Oo;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R5;->A0B:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/R5;->A09:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R5;->A0C:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/R5;->A05:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/PZ;->A0m(Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;)V

    .line 49656
    return-void
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1

    .line 49657
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R5;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/PZ;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()I
    .locals 1

    .line 49658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R5;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 49659
    check-cast p1, Lcom/facebook/ads/redexgen/X/PZ;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/R5;->A02(Lcom/facebook/ads/redexgen/X/PZ;I)V

    return-void
.end method
