.class public final Lcom/facebook/ads/redexgen/X/NQ;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/M9;

.field public static A06:[B

.field public static A07:[Ljava/lang/String;

.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/TS;

.field public A01:Lcom/facebook/ads/redexgen/X/XJ;

.field public A02:Lcom/facebook/ads/redexgen/X/18;

.field public A03:Lcom/facebook/ads/redexgen/X/aM;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Nn;
    .annotation runtime Lcom/facebook/ads/internal/checkerframework/checker/nullness/qual/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45043
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NQ;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NQ;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NQ;->A08:I

    .line 45044
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NQ;->A09:I

    .line 45045
    new-instance v0, Lcom/facebook/ads/redexgen/X/aL;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/aL;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NQ;->A05:Lcom/facebook/ads/redexgen/X/M9;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;)V
    .locals 2

    .line 45046
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45047
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NQ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 45048
    new-instance v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    .line 45049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 45050
    new-instance v0, Lcom/facebook/ads/redexgen/X/Er;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Er;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A00:Lcom/facebook/ads/redexgen/X/TS;

    .line 45051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NQ;->A00:Lcom/facebook/ads/redexgen/X/TS;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/TS;->A0I(Lcom/facebook/ads/redexgen/X/Eq;)V

    .line 45052
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45053
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/NQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45055
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/NQ;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/NQ;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/NQ;->A07:[Ljava/lang/String;

    const-string v1, "hwjeWCnyrgrPOyFOaJyYR4Ki88uO9bQs"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "4m7NTkn57B9pIqsgccGzW0RoTzQfESBy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x77

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/16;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/16;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;"
        }
    .end annotation

    .line 45056
    if-nez p1, :cond_0

    .line 45057
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 45058
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0a()Ljava/util/List;

    move-result-object v5

    .line 45059
    .local p0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45060
    .local p1, "mCarouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 45061
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/19;

    .line 45062
    .local v5, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ot;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Ot;-><init>(IILcom/facebook/ads/redexgen/X/19;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45063
    .end local v5    # "adInfo":Lcom/facebook/ads/redexgen/X/19;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45064
    .end local v0    # "i":I
    :cond_1
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NQ;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x19t
        0x5t
        0x16t
        0x13t
        0x19t
        0x17t
        0x9t
        0x10t
        -0x3ct
        -0xet
        0x5t
        0x18t
        0xdt
        0x1at
        0x9t
        -0x3ct
        0x1at
        0xdt
        0x9t
        0x1bt
        -0x3ct
        0x5t
        0x8t
        0x9t
        0x14t
        0x18t
        0x9t
        0x16t
        -0x3ct
        0xdt
        0x17t
        0x12t
        -0x35t
        0x18t
        -0x3ct
        0x7t
        0x16t
        0x9t
        0x5t
        0x18t
        0x9t
        0x8t
        -0x3ct
        0x14t
        0x16t
        0x13t
        0x14t
        0x9t
        0x16t
        0x10t
        0x1dt
        -0x5t
        -0x7t
        0x2t
        -0x7t
        0x6t
        -0x3t
        -0x9t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "CT308ms2RTF49ixw7iITcI5DvAIGWMXZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "UVauKq3DlAHpB1vMyeeSD4Us6AaVXCYd"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "G3Ivv2DNtSsvdOlvNnw6jHI40eb4uyYL"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qur6nZLrhU9XJET37yOODnXWYcrj37IJ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OCLfHPrXkMpm02uq88EYR3Uw1JpI2kE3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KopKmjllEHptdGx3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mL4xXMXopKoNgp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1VwEGJcTQNgN7iTbFc9O"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NQ;->A07:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/NQ;I)V
    .locals 0

    .line 45065
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NQ;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static getDummyListener()Lcom/facebook/ads/redexgen/X/M9;
    .locals 1

    .line 45089
    sget-object v0, Lcom/facebook/ads/redexgen/X/NQ;->A05:Lcom/facebook/ads/redexgen/X/M9;

    return-object v0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 1

    .line 45090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A04:Lcom/facebook/ads/redexgen/X/Nn;

    if-eqz v0, :cond_0

    .line 45091
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nn;->A01(I)V

    .line 45092
    :cond_0
    return-void
.end method

.method private setupDotsLayout(Lcom/facebook/ads/redexgen/X/cD;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/cD;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Ot;",
            ">;)V"
        }
    .end annotation

    .line 45093
    .local v3, "carouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    .line 45094
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/9v;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/aK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/aK;-><init>(Lcom/facebook/ads/redexgen/X/NQ;)V

    .line 45095
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A0b(Lcom/facebook/ads/redexgen/X/OB;)V

    .line 45096
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NQ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 45097
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/cD;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0M()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    .line 45098
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nn;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Nn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A04:Lcom/facebook/ads/redexgen/X/Nn;

    .line 45099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A04:Lcom/facebook/ads/redexgen/X/Nn;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 45100
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45101
    .local p0, "positionDotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45102
    sget v1, Lcom/facebook/ads/redexgen/X/NQ;->A09:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A04:Lcom/facebook/ads/redexgen/X/Nn;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/NQ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45104
    return-void
.end method


# virtual methods
.method public final A05()V
    .locals 2

    .line 45066
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 45067
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/cD;I)V
    .locals 11

    .line 45068
    move-object v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cD;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A01(Lcom/facebook/ads/redexgen/X/16;)Ljava/util/ArrayList;

    move-result-object v3

    .line 45069
    .local p0, "carouselCardInfo":Ljava/util/ArrayList;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/18;->setCardsInfo(Ljava/util/ArrayList;)V

    .line 45070
    new-instance v1, Lcom/facebook/ads/redexgen/X/aM;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NQ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 45071
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cD;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 45072
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/br;->A01(Lcom/facebook/ads/redexgen/X/XK;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v5

    sget-object v7, Lcom/facebook/ads/redexgen/X/NQ;->A05:Lcom/facebook/ads/redexgen/X/M9;

    .line 45073
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/cD;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    .line 45074
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/9v;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/aM;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/cD;Lcom/facebook/ads/redexgen/X/M9;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/IB;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/NQ;->A03:Lcom/facebook/ads/redexgen/X/aM;

    .line 45075
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A03:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Eq;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 45076
    sget v0, Lcom/facebook/ads/redexgen/X/NQ;->A08:I

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr p2, v0

    .line 45077
    .local v6, "childWidth":I
    const/16 v2, 0x10

    .line 45078
    .local p2, "childSpacing":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NQ;->A03:Lcom/facebook/ads/redexgen/X/aM;

    const/4 v0, 0x0

    invoke-virtual {v1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/aM;->A0G(III)V

    .line 45079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A03:Lcom/facebook/ads/redexgen/X/aM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A08()V

    .line 45080
    invoke-direct {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/NQ;->setupDotsLayout(Lcom/facebook/ads/redexgen/X/cD;Ljava/util/ArrayList;)V

    .line 45081
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 6

    .line 45082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A03:Lcom/facebook/ads/redexgen/X/aM;

    if-eqz v0, :cond_0

    .line 45083
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/aM;->A0H(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 45084
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/18;->A23(Lcom/facebook/ads/redexgen/X/QE;)V

    .line 45085
    return-void

    .line 45086
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NQ;->A01:Lcom/facebook/ads/redexgen/X/XJ;

    .line 45087
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1d:I

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 45088
    const/16 v2, 0x33

    const/4 v1, 0x7

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NQ;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0
.end method
