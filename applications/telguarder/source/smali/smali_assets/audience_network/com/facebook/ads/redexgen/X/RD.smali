.class public Lcom/facebook/ads/redexgen/X/RD;
.super Lcom/facebook/ads/redexgen/X/4P;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/O6;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/O8;

.field public A04:Lcom/facebook/ads/redexgen/X/Q9;

.field public A05:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;"
        }
    .end annotation
.end field

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:I

.field public final A0B:Landroid/content/Context;

.field public final A0C:Lcom/facebook/ads/redexgen/X/at;

.field public final A0D:Lcom/facebook/ads/redexgen/X/4X;

.field public final A0E:Lcom/facebook/ads/redexgen/X/O9;

.field public final A0F:Lcom/facebook/ads/redexgen/X/OA;

.field public final A0G:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RD;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RD;->A09()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/Q9;Landroid/os/Bundle;)V
    .locals 2
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

    .line 49784
    .local p5, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4P;-><init>()V

    .line 49785
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0G:Ljava/util/Set;

    .line 49786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A08:Z

    .line 49787
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A06:Z

    .line 49788
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A07:Z

    .line 49789
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    .line 49790
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:F

    .line 49791
    new-instance v0, Lcom/facebook/ads/redexgen/X/RG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RG;-><init>(Lcom/facebook/ads/redexgen/X/RD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    .line 49792
    new-instance v0, Lcom/facebook/ads/redexgen/X/RF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RF;-><init>(Lcom/facebook/ads/redexgen/X/RD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/O8;

    .line 49793
    new-instance v0, Lcom/facebook/ads/redexgen/X/RE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RE;-><init>(Lcom/facebook/ads/redexgen/X/RD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0E:Lcom/facebook/ads/redexgen/X/O9;

    .line 49794
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2m;->getLayoutManager()Lcom/facebook/ads/redexgen/X/at;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    .line 49795
    iput p2, p0, Lcom/facebook/ads/redexgen/X/RD;->A0A:I

    .line 49796
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RD;->A05:Ljava/util/List;

    .line 49797
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RD;->A04:Lcom/facebook/ads/redexgen/X/Q9;

    .line 49798
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2m;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/as;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/as;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0D:Lcom/facebook/ads/redexgen/X/4X;

    .line 49799
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2m;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0B:Landroid/content/Context;

    .line 49800
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/El;->A1k(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 49801
    invoke-direct {p0, p5}, Lcom/facebook/ads/redexgen/X/RD;->A0F(Landroid/os/Bundle;)V

    .line 49802
    return-void
.end method

.method private A04(II)Lcom/facebook/ads/redexgen/X/Rj;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49803
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RD;->A05(IIZ)Lcom/facebook/ads/redexgen/X/Rj;

    move-result-object v0

    return-object v0
.end method

.method private A05(IIZ)Lcom/facebook/ads/redexgen/X/Rj;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49804
    const/4 v4, 0x0

    .line 49805
    .local p0, "foundVideo":Lcom/facebook/ads/redexgen/X/Rj;
    .local p1, "i":I
    :goto_0
    if-gt p1, p2, :cond_5

    .line 49806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Rj;

    .line 49807
    .local p2, "curCard":Lcom/facebook/ads/redexgen/X/Rj;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rj;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49808
    .restart local p2    # "curCard":Lcom/facebook/ads/redexgen/X/Rj;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 49809
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/RD;->A0d(Landroid/view/View;)Z

    move-result v2

    .line 49810
    .local p3, "isCompletelyVisible":Z
    if-nez v4, :cond_3

    .line 49811
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rj;->A0g()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A0G:Ljava/util/Set;

    .line 49812
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_2

    .line 49813
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/RD;->A0K(Lcom/facebook/ads/redexgen/X/Ns;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49814
    :cond_2
    move-object v4, v3

    .line 49815
    :cond_3
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rj;->A0g()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 49816
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0E(IZ)V

    .line 49817
    .end local p2    # "curCard":Lcom/facebook/ads/redexgen/X/Rj;
    .end local p3    # "isCompletelyVisible":Z
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49818
    .end local p1    # "i":I
    .end local p2
    :cond_5
    return-object v4
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RD;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A07()V
    .locals 2

    .line 49819
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A07:Z

    if-nez v0, :cond_0

    .line 49820
    return-void

    .line 49821
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A29()I

    move-result v1

    .line 49822
    .local p0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A2A()I

    move-result v0

    .line 49823
    .local v0, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A04(II)Lcom/facebook/ads/redexgen/X/Rj;

    move-result-object v0

    .line 49824
    .local v0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/Rj;
    if-eqz v0, :cond_1

    .line 49825
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rj;->A0d()V

    .line 49826
    :cond_1
    return-void
.end method

.method private A08()V
    .locals 2

    .line 49827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A28()I

    move-result v1

    .line 49828
    .local p0, "curPos":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 49829
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0X(I)V

    .line 49830
    :cond_0
    return-void
.end method

.method public static A09()V
    .locals 4

    const/16 v3, 0x3d

    sget-object v2, Lcom/facebook/ads/redexgen/X/RD;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/RD;->A0I:[Ljava/lang/String;

    const-string v1, "Cbp585p0FHy9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "QC7w158vCCR5KGktiGCBodiqPhNZq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RD;->A0H:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x7at
        -0x66t
        -0x67t
        -0x6ct
        -0x5ct
        -0x6bt
        -0x6ft
        -0x7at
        -0x62t
        -0x5ct
        -0x76t
        -0x6dt
        -0x7at
        -0x79t
        -0x6ft
        -0x76t
        -0x77t
        -0x5ct
        -0x6bt
        -0x7at
        -0x69t
        -0x7at
        -0x6et
        0x51t
        0x5bt
        0x67t
        0x4et
        0x51t
        0x5at
        0x5bt
        0x5ct
        0x67t
        0x5et
        0x51t
        0x4ct
        0x4dt
        0x57t
        0x67t
        0x58t
        0x49t
        0x5at
        0x49t
        0x55t
        -0x33t
        -0x3at
        -0x3dt
        -0x34t
        -0x3ct
        -0x44t
        -0x2at
        -0x3dt
        -0x44t
        -0x33t
        -0x44t
        -0x3dt
        -0x2at
        -0x39t
        -0x48t
        -0x37t
        -0x48t
        -0x3ct
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oHxG"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "w7XeyG7wcXlBDThCLG4YobF5JePdGcu8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IQ8LgqWvoXOpUTXgnww89j6rU6uuZ1nj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "WKMwHhIum9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0nm7H4VWCUBWNiJwCQAonSVvBZFyt"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "hLsDwSpuFLAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RD;->A0I:[Ljava/lang/String;

    return-void
.end method

.method private A0B(I)V
    .locals 3

    .line 49831
    add-int/lit8 v2, p1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    .line 49832
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A2A()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A05(IIZ)Lcom/facebook/ads/redexgen/X/Rj;

    move-result-object v1

    .line 49833
    .local p0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/Rj;
    if-eqz v1, :cond_0

    .line 49834
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A0d()V

    .line 49835
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rj;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0X(I)V

    .line 49836
    :cond_0
    return-void
.end method

.method private A0C(II)V
    .locals 0

    .line 49837
    .local p0, "i":I
    :goto_0
    if-gt p1, p2, :cond_0

    .line 49838
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/RD;->A0V(I)V

    .line 49839
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49840
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method private final A0D(II)V
    .locals 0

    .line 49841
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/RD;->A0U(I)V

    .line 49842
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/RD;->A0U(I)V

    .line 49843
    return-void
.end method

.method private A0E(IZ)V
    .locals 2

    .line 49844
    if-eqz p2, :cond_0

    .line 49845
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49846
    :goto_0
    return-void

    .line 49847
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private A0F(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49848
    if-nez p1, :cond_0

    .line 49849
    return-void

    .line 49850
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:F

    .line 49851
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A07:Z

    .line 49852
    const/16 v2, 0x17

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A08:Z

    .line 49853
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/RD;)V
    .locals 0

    .line 49854
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RD;->A08()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/RD;I)V
    .locals 0

    .line 49855
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RD;->A0B(I)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/RD;IZ)V
    .locals 0

    .line 49856
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RD;->A0E(IZ)V

    return-void
.end method

.method private A0J()Z
    .locals 2

    .line 49857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0B:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1m(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0A:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static A0K(Lcom/facebook/ads/redexgen/X/Ns;)Z
    .locals 5

    .line 49858
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getWidth()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v2, v1

    .line 49859
    .local p0, "allowedAreaMaxX":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lj;->A03:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49860
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    div-float/2addr v1, v3

    float-to-int v4, v1

    .line 49861
    .local v1, "allowedAreaMinX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 49862
    .local v0, "furthestX":I
    if-gt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getX()F

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/RD;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/RD;->A0I:[Ljava/lang/String;

    const-string v1, "2Mfe"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "y3ruBiM20K"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-float v0, v4

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/Rj;)Z
    .locals 2

    .line 49863
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A08:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49864
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A08:Z

    .line 49865
    const/4 v0, 0x1

    return v0

    .line 49866
    :cond_0
    return v1
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/RD;)Z
    .locals 0

    .line 49867
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RD;->A0J()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A0N(Lcom/facebook/ads/redexgen/X/El;I)V
    .locals 1

    .line 49868
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4P;->A0N(Lcom/facebook/ads/redexgen/X/El;I)V

    .line 49869
    if-nez p2, :cond_0

    .line 49870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A09:Z

    .line 49871
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RD;->A07()V

    .line 49872
    :cond_0
    return-void
.end method

.method public A0O(Lcom/facebook/ads/redexgen/X/El;II)V
    .locals 2

    .line 49873
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4P;->A0O(Lcom/facebook/ads/redexgen/X/El;II)V

    .line 49874
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A09:Z

    .line 49875
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A06:Z

    if-eqz v0, :cond_0

    .line 49876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A09:Z

    .line 49877
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RD;->A07()V

    .line 49878
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A06:Z

    .line 49879
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A29()I

    move-result v1

    .line 49880
    .local p0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A2A()I

    move-result v0

    .line 49881
    .local p1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0D(II)V

    .line 49882
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0C(II)V

    .line 49883
    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/RD;->A0Y(III)V

    .line 49884
    return-void
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/O8;
    .locals 1

    .line 49885
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A03:Lcom/facebook/ads/redexgen/X/O8;

    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/O9;
    .locals 1

    .line 49886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0E:Lcom/facebook/ads/redexgen/X/O9;

    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/OA;
    .locals 1

    .line 49887
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    return-object v0
.end method

.method public final A0S()V
    .locals 6

    .line 49888
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    .line 49889
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A29()I

    move-result v5

    .line 49890
    .local p0, "firstPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A2A()I

    move-result v4

    .line 49891
    .local v0, "lastPos":I
    .local v0, "i":I
    :goto_0
    if-gt v5, v4, :cond_1

    if-ltz v5, :cond_1

    .line 49892
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Rj;

    sget-object v2, Lcom/facebook/ads/redexgen/X/RD;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49893
    .local v5, "card":Lcom/facebook/ads/redexgen/X/Rj;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/RD;->A0I:[Ljava/lang/String;

    const-string v1, "4n0r"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "UAml839wpr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rj;->A0f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49894
    iput v5, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    .line 49895
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Rj;->A0c()V

    .line 49896
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 49897
    .end local v5    # "card":Lcom/facebook/ads/redexgen/X/Rj;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public final A0T()V
    .locals 2

    .line 49898
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    .line 49899
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rj;

    .line 49900
    .local p0, "card":Lcom/facebook/ads/redexgen/X/Rj;
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A01:I

    if-ltz v0, :cond_0

    .line 49901
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Rj;->A0d()V

    .line 49902
    :cond_0
    return-void
.end method

.method public final A0U(I)V
    .locals 2

    .line 49903
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    .line 49904
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Rj;

    .line 49905
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/Rj;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/RD;->A0d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49906
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0c(Lcom/facebook/ads/redexgen/X/Rj;Z)V

    .line 49907
    :cond_0
    return-void
.end method

.method public final A0V(I)V
    .locals 3

    .line 49908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    .line 49909
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/at;->A1r(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Rj;

    .line 49910
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/Rj;
    if-nez v2, :cond_0

    .line 49911
    return-void

    .line 49912
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/RD;->A0d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49913
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0c(Lcom/facebook/ads/redexgen/X/Rj;Z)V

    .line 49914
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/RD;->A0L(Lcom/facebook/ads/redexgen/X/Rj;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A05:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 49915
    const v0, -0x5f000010

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Rj;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Oo;

    .line 49916
    .local p1, "cardInfo":Lcom/facebook/ads/redexgen/X/Oo;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A0F:Lcom/facebook/ads/redexgen/X/OA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A09()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OA;->setVolume(F)V

    .line 49917
    .end local p1    # "cardInfo":Lcom/facebook/ads/redexgen/X/Oo;
    :cond_2
    return-void

    .line 49918
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final A0W(I)V
    .locals 0

    .line 49919
    invoke-direct {p0, p1, p1}, Lcom/facebook/ads/redexgen/X/RD;->A0C(II)V

    .line 49920
    return-void
.end method

.method public final A0X(I)V
    .locals 2

    .line 49921
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0D:Lcom/facebook/ads/redexgen/X/4X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4X;->A0A(I)V

    .line 49922
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0D:Lcom/facebook/ads/redexgen/X/4X;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1M(Lcom/facebook/ads/redexgen/X/4X;)V

    .line 49923
    return-void
.end method

.method public final A0Y(III)V
    .locals 2

    .line 49924
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RD;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/O6;

    if-nez v0, :cond_1

    .line 49925
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RD;
    .end local p1    # null:I
    :cond_0
    return-void

    .line 49926
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A0C:Lcom/facebook/ads/redexgen/X/at;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/at;->A28()I

    move-result v1

    .line 49927
    .local p0, "firstCompletelyVisible":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 49928
    .local p1, "recomputeFrom":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/O6;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/O6;->AEU(I)V

    .line 49929
    return-void

    .line 49930
    :cond_2
    if-gez p3, :cond_3

    move v1, p1

    goto :goto_0

    :cond_3
    move v1, p2

    goto :goto_0
.end method

.method public final A0Z(Landroid/os/Bundle;)V
    .locals 4

    .line 49931
    iget v3, p0, Lcom/facebook/ads/redexgen/X/RD;->A00:F

    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 49932
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/RD;->A07:Z

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49933
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/RD;->A08:Z

    const/16 v2, 0x17

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49934
    return-void
.end method

.method public A0a(Landroid/view/View;Z)V
    .locals 1

    .line 49935
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 49936
    return-void

    .line 49937
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/O6;)V
    .locals 0

    .line 49938
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RD;->A02:Lcom/facebook/ads/redexgen/X/O6;

    .line 49939
    return-void
.end method

.method public A0c(Lcom/facebook/ads/redexgen/X/Rj;Z)V
    .locals 1

    .line 49940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RD;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49941
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RD;->A0a(Landroid/view/View;Z)V

    .line 49942
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49943
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0c()V

    .line 49944
    :cond_1
    return-void
.end method

.method public A0d(Landroid/view/View;)Z
    .locals 2

    .line 49945
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 49946
    .local p0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 49947
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const v0, 0x3e19999a    # 0.15f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
