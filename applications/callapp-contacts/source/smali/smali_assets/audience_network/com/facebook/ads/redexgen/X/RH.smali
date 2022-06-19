.class public Lcom/facebook/ads/redexgen/X/RH;
.super Lcom/facebook/ads/redexgen/X/4P;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;


# instance fields
.field public A00:F

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/OB;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/OD;

.field public A04:Lcom/facebook/ads/redexgen/X/QE;

.field public A05:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
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

.field public final A0C:Lcom/facebook/ads/redexgen/X/TB;

.field public final A0D:Lcom/facebook/ads/redexgen/X/4X;

.field public final A0E:Lcom/facebook/ads/redexgen/X/OE;

.field public final A0F:Lcom/facebook/ads/redexgen/X/OF;

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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RH;->A0A()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RH;->A09()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2m;ILjava/util/List;Lcom/facebook/ads/redexgen/X/QE;Landroid/os/Bundle;)V
    .locals 2
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

    .line 49915
    .local p5, "carouselItems":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4P;-><init>()V

    .line 49916
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0G:Ljava/util/Set;

    .line 49917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Z

    .line 49918
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:Z

    .line 49919
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A07:Z

    .line 49920
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:I

    .line 49921
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:F

    .line 49922
    new-instance v0, Lcom/facebook/ads/redexgen/X/RK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RK;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:Lcom/facebook/ads/redexgen/X/OF;

    .line 49923
    new-instance v0, Lcom/facebook/ads/redexgen/X/RJ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RJ;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:Lcom/facebook/ads/redexgen/X/OD;

    .line 49924
    new-instance v0, Lcom/facebook/ads/redexgen/X/RI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RI;-><init>(Lcom/facebook/ads/redexgen/X/RH;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    .line 49925
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2m;->getLayoutManager()Lcom/facebook/ads/redexgen/X/TB;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    .line 49926
    iput p2, p0, Lcom/facebook/ads/redexgen/X/RH;->A0A:I

    .line 49927
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Ljava/util/List;

    .line 49928
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:Lcom/facebook/ads/redexgen/X/QE;

    .line 49929
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2m;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TC;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/TC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Lcom/facebook/ads/redexgen/X/4X;

    .line 49930
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2m;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Landroid/content/Context;

    .line 49931
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/Eq;->A1k(Lcom/facebook/ads/redexgen/X/4P;)V

    .line 49932
    invoke-direct {p0, p5}, Lcom/facebook/ads/redexgen/X/RH;->A0F(Landroid/os/Bundle;)V

    .line 49933
    return-void
.end method

.method private A04(II)Lcom/facebook/ads/redexgen/X/YM;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49934
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/RH;->A05(IIZ)Lcom/facebook/ads/redexgen/X/YM;

    move-result-object v0

    return-object v0
.end method

.method private A05(IIZ)Lcom/facebook/ads/redexgen/X/YM;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 49935
    const/4 v5, 0x0

    .line 49936
    .local p0, "foundVideo":Lcom/facebook/ads/redexgen/X/YM;
    .local p1, "i":I
    :goto_0
    if-gt p1, p2, :cond_6

    .line 49937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/YM;

    .line 49938
    .local p2, "curCard":Lcom/facebook/ads/redexgen/X/YM;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/YM;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49939
    .restart local p2    # "curCard":Lcom/facebook/ads/redexgen/X/YM;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 49940
    :cond_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/RH;->A0d(Landroid/view/View;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0I:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x10

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49941
    .local p3, "isCompletelyVisible":Z
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0I:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v5, :cond_4

    .line 49942
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/YM;->A0g()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0G:Ljava/util/Set;

    .line 49943
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_3

    .line 49944
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/RH;->A0K(Lcom/facebook/ads/redexgen/X/Nx;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49945
    :cond_3
    move-object v5, v3

    .line 49946
    :cond_4
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/YM;->A0g()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v4, :cond_5

    .line 49947
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0E(IZ)V

    .line 49948
    .end local p2    # "curCard":Lcom/facebook/ads/redexgen/X/YM;
    .end local p3    # "isCompletelyVisible":Z
    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49949
    .end local p1    # "i":I
    .end local p2
    :cond_6
    return-object v5
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x7e

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

    .line 49950
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A07:Z

    if-nez v0, :cond_0

    .line 49951
    return-void

    .line 49952
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A29()I

    move-result v1

    .line 49953
    .local p0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A2A()I

    move-result v0

    .line 49954
    .local v0, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A04(II)Lcom/facebook/ads/redexgen/X/YM;

    move-result-object v0

    .line 49955
    .local v0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/YM;
    if-eqz v0, :cond_1

    .line 49956
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YM;->A0d()V

    .line 49957
    :cond_1
    return-void
.end method

.method private A08()V
    .locals 2

    .line 49958
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A28()I

    move-result v1

    .line 49959
    .local p0, "curPos":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 49960
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0X(I)V

    .line 49961
    :cond_0
    return-void
.end method

.method public static A09()V
    .locals 1

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RH;->A0H:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        -0x6t
        -0x7t
        -0xct
        0x4t
        -0xbt
        -0xft
        -0x1at
        -0x2t
        0x4t
        -0x16t
        -0xdt
        -0x1at
        -0x19t
        -0xft
        -0x16t
        -0x17t
        0x4t
        -0xbt
        -0x1at
        -0x9t
        -0x1at
        -0xet
        0x7t
        0x11t
        0x1dt
        0x4t
        0x7t
        0x10t
        0x11t
        0x12t
        0x1dt
        0x14t
        0x7t
        0x2t
        0x3t
        0xdt
        0x1dt
        0xet
        -0x1t
        0x10t
        -0x1t
        0xbt
        -0x5t
        -0xct
        -0xft
        -0x6t
        -0xet
        -0x16t
        0x4t
        -0xft
        -0x16t
        -0x5t
        -0x16t
        -0xft
        0x4t
        -0xbt
        -0x1at
        -0x9t
        -0x1at
        -0xet
    .end array-data
.end method

.method public static A0A()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "vVts3290hN8iYOphvTtUHsw8p"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QXZRYfiopoOIgyOb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "uRY3EBcOhcPzIFCW"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1yhQGC5wOot73mjsntHrCCOy6H7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ngPHprqJPXgJBcmGEhNrmzVf2B4dA5Oh"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DCeBbFrEMIUsiq6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "addqTveDrmk"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0I:[Ljava/lang/String;

    return-void
.end method

.method private A0B(I)V
    .locals 3

    .line 49962
    add-int/lit8 v2, p1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    .line 49963
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A2A()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A05(IIZ)Lcom/facebook/ads/redexgen/X/YM;

    move-result-object v1

    .line 49964
    .local p0, "firstAutoplayableVideo":Lcom/facebook/ads/redexgen/X/YM;
    if-eqz v1, :cond_0

    .line 49965
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YM;->A0d()V

    .line 49966
    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/YM;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0X(I)V

    .line 49967
    :cond_0
    return-void
.end method

.method private A0C(II)V
    .locals 0

    .line 49968
    .local p0, "i":I
    :goto_0
    if-gt p1, p2, :cond_0

    .line 49969
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/RH;->A0V(I)V

    .line 49970
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49971
    .end local p0    # "i":I
    :cond_0
    return-void
.end method

.method private final A0D(II)V
    .locals 0

    .line 49972
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/RH;->A0U(I)V

    .line 49973
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/RH;->A0U(I)V

    .line 49974
    return-void
.end method

.method private A0E(IZ)V
    .locals 2

    .line 49975
    if-eqz p2, :cond_0

    .line 49976
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0G:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49977
    :goto_0
    return-void

    .line 49978
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0G:Ljava/util/Set;

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

    .line 49979
    if-nez p1, :cond_0

    .line 49980
    return-void

    .line 49981
    :cond_0
    const/4 v3, 0x0

    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:F

    .line 49982
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A07:Z

    .line 49983
    const/16 v2, 0x17

    const/16 v1, 0x14

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Z

    .line 49984
    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/RH;)V
    .locals 0

    .line 49985
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RH;->A08()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/RH;I)V
    .locals 0

    .line 49986
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/RH;->A0B(I)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/RH;IZ)V
    .locals 0

    .line 49987
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RH;->A0E(IZ)V

    return-void
.end method

.method private A0J()Z
    .locals 2

    .line 49988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1l(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Landroid/content/Context;

    .line 49989
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1r(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0A:I

    if-ne v0, v1, :cond_1

    .line 49990
    :cond_0
    :goto_0
    return v1

    .line 49991
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static A0K(Lcom/facebook/ads/redexgen/X/Nx;)Z
    .locals 4

    .line 49992
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getWidth()I

    move-result v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v3, v1

    .line 49993
    .local p0, "allowedAreaMaxX":I
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49994
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getWidth()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v1, v1

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v1, v0

    div-float/2addr v1, v2

    float-to-int v2, v1

    .line 49995
    .local v1, "allowedAreaMinX":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 49996
    .local v0, "furthestX":I
    if-gt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nx;->getX()F

    move-result v1

    int-to-float v0, v2

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/YM;)Z
    .locals 2

    .line 49997
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YM;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49998
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Z

    .line 49999
    const/4 v0, 0x1

    return v0

    .line 50000
    :cond_0
    return v1
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/RH;)Z
    .locals 0

    .line 50001
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RH;->A0J()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A0N(Lcom/facebook/ads/redexgen/X/Eq;I)V
    .locals 1

    .line 50002
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/4P;->A0N(Lcom/facebook/ads/redexgen/X/Eq;I)V

    .line 50003
    if-nez p2, :cond_0

    .line 50004
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    .line 50005
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RH;->A07()V

    .line 50006
    :cond_0
    return-void
.end method

.method public A0O(Lcom/facebook/ads/redexgen/X/Eq;II)V
    .locals 2

    .line 50007
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4P;->A0O(Lcom/facebook/ads/redexgen/X/Eq;II)V

    .line 50008
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    .line 50009
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:Z

    if-eqz v0, :cond_0

    .line 50010
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    .line 50011
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RH;->A07()V

    .line 50012
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A06:Z

    .line 50013
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A29()I

    move-result v1

    .line 50014
    .local p0, "firstVisibleItem":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A2A()I

    move-result v0

    .line 50015
    .local p1, "lastVisibleItem":I
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0D(II)V

    .line 50016
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0C(II)V

    .line 50017
    invoke-virtual {p0, v1, v0, p2}, Lcom/facebook/ads/redexgen/X/RH;->A0Y(III)V

    .line 50018
    return-void
.end method

.method public final A0P()Lcom/facebook/ads/redexgen/X/OD;
    .locals 1

    .line 50019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:Lcom/facebook/ads/redexgen/X/OD;

    return-object v0
.end method

.method public final A0Q()Lcom/facebook/ads/redexgen/X/OE;
    .locals 1

    .line 50020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0E:Lcom/facebook/ads/redexgen/X/OE;

    return-object v0
.end method

.method public final A0R()Lcom/facebook/ads/redexgen/X/OF;
    .locals 1

    .line 50021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:Lcom/facebook/ads/redexgen/X/OF;

    return-object v0
.end method

.method public final A0S()V
    .locals 4

    .line 50022
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:I

    .line 50023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A29()I

    move-result v3

    .line 50024
    .local p0, "firstPos":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A2A()I

    move-result v2

    .line 50025
    .local v0, "lastPos":I
    .local v0, "i":I
    :goto_0
    if-gt v3, v2, :cond_0

    if-ltz v3, :cond_0

    .line 50026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/YM;

    .line 50027
    .local v3, "card":Lcom/facebook/ads/redexgen/X/YM;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YM;->A0f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50028
    iput v3, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:I

    .line 50029
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YM;->A0c()V

    .line 50030
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 50031
    .end local v3    # "card":Lcom/facebook/ads/redexgen/X/YM;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final A0T()V
    .locals 2

    .line 50032
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:I

    .line 50033
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/YM;

    .line 50034
    .local p0, "card":Lcom/facebook/ads/redexgen/X/YM;
    if-eqz v1, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A01:I

    if-ltz v0, :cond_0

    .line 50035
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YM;->A0d()V

    .line 50036
    :cond_0
    return-void
.end method

.method public final A0U(I)V
    .locals 5

    .line 50037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    .line 50038
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/YM;

    .line 50039
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/YM;
    if-eqz v4, :cond_0

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/RH;->A0d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50040
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0I:[Ljava/lang/String;

    const-string v1, "Vxamqv9qm4zlsVVB8"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/RH;->A0c(Lcom/facebook/ads/redexgen/X/YM;Z)V

    .line 50041
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0V(I)V
    .locals 3

    .line 50042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    .line 50043
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TB;->A1r(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/YM;

    .line 50044
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/YM;
    if-nez v2, :cond_0

    .line 50045
    return-void

    .line 50046
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/RH;->A0d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50047
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0c(Lcom/facebook/ads/redexgen/X/YM;Z)V

    .line 50048
    :cond_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/RH;->A0L(Lcom/facebook/ads/redexgen/X/YM;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 50049
    const v0, -0x5f000010

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/YM;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ot;

    .line 50050
    .local p1, "cardInfo":Lcom/facebook/ads/redexgen/X/Ot;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:Lcom/facebook/ads/redexgen/X/OF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A09()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OF;->setVolume(F)V

    .line 50051
    .end local p1    # "cardInfo":Lcom/facebook/ads/redexgen/X/Ot;
    :cond_2
    return-void

    .line 50052
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final A0W(I)V
    .locals 0

    .line 50053
    invoke-direct {p0, p1, p1}, Lcom/facebook/ads/redexgen/X/RH;->A0C(II)V

    .line 50054
    return-void
.end method

.method public final A0X(I)V
    .locals 2

    .line 50055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Lcom/facebook/ads/redexgen/X/4X;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4X;->A0B(I)V

    .line 50056
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Lcom/facebook/ads/redexgen/X/4X;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1M(Lcom/facebook/ads/redexgen/X/4X;)V

    .line 50057
    return-void
.end method

.method public final A0Y(III)V
    .locals 2

    .line 50058
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RH;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A02:Lcom/facebook/ads/redexgen/X/OB;

    if-nez v0, :cond_1

    .line 50059
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/RH;
    .end local p1    # null:I
    :cond_0
    return-void

    .line 50060
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Lcom/facebook/ads/redexgen/X/TB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TB;->A28()I

    move-result v1

    .line 50061
    .local p0, "firstCompletelyVisible":I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 50062
    .local p1, "recomputeFrom":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A02:Lcom/facebook/ads/redexgen/X/OB;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/OB;->AES(I)V

    .line 50063
    return-void

    .line 50064
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

    .line 50065
    iget v3, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:F

    const/16 v2, 0x2b

    const/16 v1, 0x12

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 50066
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/RH;->A07:Z

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50067
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/RH;->A08:Z

    const/16 v2, 0x17

    const/16 v1, 0x14

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50068
    return-void
.end method

.method public A0a(Landroid/view/View;Z)V
    .locals 1

    .line 50069
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 50070
    return-void

    .line 50071
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/OB;)V
    .locals 0

    .line 50072
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RH;->A02:Lcom/facebook/ads/redexgen/X/OB;

    .line 50073
    return-void
.end method

.method public A0c(Lcom/facebook/ads/redexgen/X/YM;Z)V
    .locals 4

    .line 50074
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/RH;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50075
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/RH;->A0a(Landroid/view/View;Z)V

    .line 50076
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YM;->A0f()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/RH;->A0I:[Ljava/lang/String;

    const-string v1, "slnyAJQBNPORwedJ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 50077
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YM;->A0c()V

    .line 50078
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public A0d(Landroid/view/View;)Z
    .locals 2

    .line 50079
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50080
    .local p0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 50081
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
