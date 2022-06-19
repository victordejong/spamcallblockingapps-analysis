.class public final Lcom/facebook/ads/redexgen/X/RC;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/R6;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/M7;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Landroid/util/SparseBooleanArray;

.field public final A07:Lcom/facebook/ads/redexgen/X/16;

.field public final A08:Lcom/facebook/ads/redexgen/X/7D;

.field public final A09:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A0A:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Lc;

.field public final A0C:Lcom/facebook/ads/redexgen/X/RD;

.field public final A0D:Lcom/facebook/ads/redexgen/X/I6;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Q9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;Lcom/facebook/ads/redexgen/X/M7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RD;Lcom/facebook/ads/redexgen/X/I6;)V
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
            "Lcom/facebook/ads/redexgen/X/RD;",
            "Lcom/facebook/ads/redexgen/X/I6;",
            ")V"
        }
    .end annotation

    .line 49750
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 49751
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RC;->A06:Landroid/util/SparseBooleanArray;

    .line 49752
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RC;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    .line 49753
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RC;->A0A:Lcom/facebook/ads/redexgen/X/JC;

    .line 49754
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RC;->A08:Lcom/facebook/ads/redexgen/X/7D;

    .line 49755
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/RC;->A0E:Lcom/facebook/ads/redexgen/X/Q9;

    .line 49756
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/RC;->A0B:Lcom/facebook/ads/redexgen/X/Lc;

    .line 49757
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/RC;->A03:Lcom/facebook/ads/redexgen/X/M7;

    .line 49758
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RC;->A07:Lcom/facebook/ads/redexgen/X/16;

    .line 49759
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RC;->A05:Ljava/util/List;

    .line 49760
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/RC;->A04:Ljava/lang/String;

    .line 49761
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/RC;->A0C:Lcom/facebook/ads/redexgen/X/RD;

    .line 49762
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/RC;->A0D:Lcom/facebook/ads/redexgen/X/I6;

    .line 49763
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/R6;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49764
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RC;->A03:Lcom/facebook/ads/redexgen/X/M7;

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RC;->A00:I

    if-nez v0, :cond_1

    .line 49765
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RC;
    .end local p1    # null:Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 49766
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nv;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RC;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RC;->A0A:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RC;->A07:Lcom/facebook/ads/redexgen/X/16;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/RC;->A0E:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/RC;->A0B:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Nv;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RC;->A0D:Lcom/facebook/ads/redexgen/X/I6;

    .line 49767
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0I(Lcom/facebook/ads/redexgen/X/I6;)Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v0

    .line 49768
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0J()Lcom/facebook/ads/redexgen/X/Nw;

    move-result-object v2

    .line 49769
    .local p0, "params":Lcom/facebook/ads/redexgen/X/Nw;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RC;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RC;->A0C:Lcom/facebook/ads/redexgen/X/RD;

    .line 49770
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nf;->A01(Lcom/facebook/ads/redexgen/X/Nw;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RD;)Lcom/facebook/ads/redexgen/X/9o;

    move-result-object v2

    .line 49771
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/9o;
    new-instance v1, Lcom/facebook/ads/redexgen/X/R6;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RC;->A06:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RC;->A0E:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RC;->A05:Ljava/util/List;

    .line 49772
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/RC;->A09:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/R6;-><init>(Lcom/facebook/ads/redexgen/X/9o;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/Q9;ILcom/facebook/ads/redexgen/X/Wm;)V

    .line 49773
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/R6;I)V
    .locals 9

    .line 49774
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RC;->A05:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Oo;

    .line 49775
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/Oo;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RC;->A0A:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RC;->A08:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RC;->A0B:Lcom/facebook/ads/redexgen/X/Lc;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RC;->A04:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/RC;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/RC;->A02:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/RC;->A01:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/R6;->A0m(Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;III)V

    .line 49776
    return-void
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49777
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RC;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/R6;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()I
    .locals 1

    .line 49778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RC;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 49779
    check-cast p1, Lcom/facebook/ads/redexgen/X/R6;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RC;->A02(Lcom/facebook/ads/redexgen/X/R6;I)V

    return-void
.end method

.method public final A0G(III)V
    .locals 0

    .line 49780
    iput p1, p0, Lcom/facebook/ads/redexgen/X/RC;->A00:I

    .line 49781
    iput p2, p0, Lcom/facebook/ads/redexgen/X/RC;->A02:I

    .line 49782
    iput p3, p0, Lcom/facebook/ads/redexgen/X/RC;->A01:I

    .line 49783
    return-void
.end method
