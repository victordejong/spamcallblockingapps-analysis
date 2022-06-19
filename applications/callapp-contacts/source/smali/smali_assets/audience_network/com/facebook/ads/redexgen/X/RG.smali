.class public final Lcom/facebook/ads/redexgen/X/RG;
.super Lcom/facebook/ads/redexgen/X/48;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/48<",
        "Lcom/facebook/ads/redexgen/X/RA;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/M9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Ljava/lang/String;

.field public A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Landroid/util/SparseBooleanArray;

.field public final A07:Lcom/facebook/ads/redexgen/X/16;

.field public final A08:Lcom/facebook/ads/redexgen/X/7D;

.field public final A09:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0B:Lcom/facebook/ads/redexgen/X/La;

.field public final A0C:Lcom/facebook/ads/redexgen/X/RH;

.field public final A0D:Lcom/facebook/ads/redexgen/X/IB;

.field public final A0E:Lcom/facebook/ads/redexgen/X/QE;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;Lcom/facebook/ads/redexgen/X/M9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RH;Lcom/facebook/ads/redexgen/X/IB;)V
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
            "Lcom/facebook/ads/redexgen/X/RH;",
            "Lcom/facebook/ads/redexgen/X/IB;",
            ")V"
        }
    .end annotation

    .line 49881
    .local p3, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/48;-><init>()V

    .line 49882
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A06:Landroid/util/SparseBooleanArray;

    .line 49883
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RG;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    .line 49884
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RG;->A0A:Lcom/facebook/ads/redexgen/X/JC;

    .line 49885
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RG;->A08:Lcom/facebook/ads/redexgen/X/7D;

    .line 49886
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/RG;->A0E:Lcom/facebook/ads/redexgen/X/QE;

    .line 49887
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/RG;->A0B:Lcom/facebook/ads/redexgen/X/La;

    .line 49888
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/RG;->A03:Lcom/facebook/ads/redexgen/X/M9;

    .line 49889
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RG;->A07:Lcom/facebook/ads/redexgen/X/16;

    .line 49890
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RG;->A05:Ljava/util/List;

    .line 49891
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/RG;->A04:Ljava/lang/String;

    .line 49892
    iput-object p10, p0, Lcom/facebook/ads/redexgen/X/RG;->A0C:Lcom/facebook/ads/redexgen/X/RH;

    .line 49893
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/RG;->A0D:Lcom/facebook/ads/redexgen/X/IB;

    .line 49894
    return-void
.end method

.method private final A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RA;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49895
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RG;->A03:Lcom/facebook/ads/redexgen/X/M9;

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A00:I

    if-nez v0, :cond_1

    .line 49896
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RG;
    .end local p1    # null:Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 49897
    :cond_1
    new-instance v1, Lcom/facebook/ads/redexgen/X/O0;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RG;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RG;->A0A:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RG;->A07:Lcom/facebook/ads/redexgen/X/16;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/RG;->A0E:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/RG;->A0B:Lcom/facebook/ads/redexgen/X/La;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/O0;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A0D:Lcom/facebook/ads/redexgen/X/IB;

    .line 49898
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O0;->A0I(Lcom/facebook/ads/redexgen/X/IB;)Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v0

    .line 49899
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A0J()Lcom/facebook/ads/redexgen/X/O1;

    move-result-object v2

    .line 49900
    .local p0, "params":Lcom/facebook/ads/redexgen/X/O1;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RG;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A0C:Lcom/facebook/ads/redexgen/X/RH;

    .line 49901
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nk;->A01(Lcom/facebook/ads/redexgen/X/O1;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/RH;)Lcom/facebook/ads/redexgen/X/9o;

    move-result-object v2

    .line 49902
    .local p1, "cardLayout":Lcom/facebook/ads/redexgen/X/9o;
    new-instance v1, Lcom/facebook/ads/redexgen/X/RA;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RG;->A06:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RG;->A0E:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A05:Ljava/util/List;

    .line 49903
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/RG;->A09:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/RA;-><init>(Lcom/facebook/ads/redexgen/X/9o;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QE;ILcom/facebook/ads/redexgen/X/XJ;)V

    .line 49904
    return-object v1
.end method

.method private final A02(Lcom/facebook/ads/redexgen/X/RA;I)V
    .locals 9

    .line 49905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A05:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Ot;

    .line 49906
    .local p0, "cardInfo":Lcom/facebook/ads/redexgen/X/Ot;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RG;->A0A:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RG;->A08:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RG;->A0B:Lcom/facebook/ads/redexgen/X/La;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RG;->A04:Ljava/lang/String;

    iget v6, p0, Lcom/facebook/ads/redexgen/X/RG;->A00:I

    iget v7, p0, Lcom/facebook/ads/redexgen/X/RG;->A02:I

    iget v8, p0, Lcom/facebook/ads/redexgen/X/RG;->A01:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/RA;->A0m(Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;III)V

    .line 49907
    return-void
.end method


# virtual methods
.method public final bridge synthetic A07(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/4c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49908
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RG;->A01(Landroid/view/ViewGroup;I)Lcom/facebook/ads/redexgen/X/RA;

    move-result-object v0

    return-object v0
.end method

.method public final A0E()I
    .locals 1

    .line 49909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RG;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic A0F(Lcom/facebook/ads/redexgen/X/4c;I)V
    .locals 0

    .line 49910
    check-cast p1, Lcom/facebook/ads/redexgen/X/RA;

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RG;->A02(Lcom/facebook/ads/redexgen/X/RA;I)V

    return-void
.end method

.method public final A0G(III)V
    .locals 0

    .line 49911
    iput p1, p0, Lcom/facebook/ads/redexgen/X/RG;->A00:I

    .line 49912
    iput p2, p0, Lcom/facebook/ads/redexgen/X/RG;->A02:I

    .line 49913
    iput p3, p0, Lcom/facebook/ads/redexgen/X/RG;->A01:I

    .line 49914
    return-void
.end method
