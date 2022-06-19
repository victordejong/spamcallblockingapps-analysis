.class public final Lcom/facebook/ads/redexgen/X/NL;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static A05:Lcom/facebook/ads/redexgen/X/M7;

.field public static A06:[B

.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/ad;

.field public A01:Lcom/facebook/ads/redexgen/X/Wm;

.field public A02:Lcom/facebook/ads/redexgen/X/18;

.field public A03:Lcom/facebook/ads/redexgen/X/S8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Lcom/facebook/ads/redexgen/X/Ni;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 44997
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NL;->A02()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NL;->A07:I

    .line 44998
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/NL;->A08:I

    .line 44999
    new-instance v0, Lcom/facebook/ads/redexgen/X/S7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/S7;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NL;->A05:Lcom/facebook/ads/redexgen/X/M7;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 2

    .line 45000
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 45001
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NL;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45002
    new-instance v0, Lcom/facebook/ads/redexgen/X/18;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/18;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    .line 45003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 45004
    new-instance v0, Lcom/facebook/ads/redexgen/X/Em;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Em;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/ad;

    .line 45005
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NL;->A00:Lcom/facebook/ads/redexgen/X/ad;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ad;->A0H(Lcom/facebook/ads/redexgen/X/El;)V

    .line 45006
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45007
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 45008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/NL;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45009
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/NL;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/16;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/16;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;"
        }
    .end annotation

    .line 45010
    if-nez p1, :cond_0

    .line 45011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 45012
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/util/List;

    move-result-object v5

    .line 45013
    .local p0, "adInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/datamodels/AdInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 45014
    .local p1, "mCarouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 45015
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/19;

    .line 45016
    .local v5, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oo;

    invoke-direct {v0, v3, v1, v2}, Lcom/facebook/ads/redexgen/X/Oo;-><init>(IILcom/facebook/ads/redexgen/X/19;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45017
    .end local v5    # "adInfo":Lcom/facebook/ads/redexgen/X/19;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45018
    .end local v0    # "i":I
    :cond_1
    return-object v4
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NL;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x20t
        0x33t
        0x2et
        0x34t
        0x32t
        0x24t
        0x2dt
        0x61t
        0xft
        0x20t
        0x35t
        0x28t
        0x37t
        0x24t
        0x61t
        0x37t
        0x28t
        0x24t
        0x36t
        0x61t
        0x20t
        0x25t
        0x24t
        0x31t
        0x35t
        0x24t
        0x33t
        0x61t
        0x28t
        0x32t
        0x2ft
        0x66t
        0x35t
        0x61t
        0x22t
        0x33t
        0x24t
        0x20t
        0x35t
        0x24t
        0x25t
        0x61t
        0x31t
        0x33t
        0x2et
        0x31t
        0x24t
        0x33t
        0x2dt
        0x38t
        0x43t
        0x41t
        0x4at
        0x41t
        0x56t
        0x4dt
        0x47t
    .end array-data
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/NL;I)V
    .locals 0

    .line 45019
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NL;->setUpLayoutForCardAtIndex(I)V

    return-void
.end method

.method public static getDummyListener()Lcom/facebook/ads/redexgen/X/M7;
    .locals 1

    .line 45043
    sget-object v0, Lcom/facebook/ads/redexgen/X/NL;->A05:Lcom/facebook/ads/redexgen/X/M7;

    return-object v0
.end method

.method private setUpLayoutForCardAtIndex(I)V
    .locals 1

    .line 45044
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A04:Lcom/facebook/ads/redexgen/X/Ni;

    if-eqz v0, :cond_0

    .line 45045
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ni;->A00(I)V

    .line 45046
    :cond_0
    return-void
.end method

.method private setupDotsLayout(Lcom/facebook/ads/redexgen/X/T6;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/T6;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Oo;",
            ">;)V"
        }
    .end annotation

    .line 45047
    .local v3, "carouselCardInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/internal/view/interstitial/carousel/CarouselCardInfo;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    .line 45048
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/9v;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/S6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S6;-><init>(Lcom/facebook/ads/redexgen/X/NL;)V

    .line 45049
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RD;->A0b(Lcom/facebook/ads/redexgen/X/O6;)V

    .line 45050
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/NL;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45051
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/T6;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    .line 45052
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ni;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Ni;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A04:Lcom/facebook/ads/redexgen/X/Ni;

    .line 45053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A04:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 45054
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45055
    .local p0, "positionDotsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 45056
    sget v1, Lcom/facebook/ads/redexgen/X/NL;->A08:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 45057
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A04:Lcom/facebook/ads/redexgen/X/Ni;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/NL;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45058
    return-void
.end method


# virtual methods
.method public final A04()V
    .locals 2

    .line 45020
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 45021
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/T6;I)V
    .locals 11

    .line 45022
    move-object v6, p1

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T6;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/NL;->A01(Lcom/facebook/ads/redexgen/X/16;)Ljava/util/ArrayList;

    move-result-object v3

    .line 45023
    .local p0, "carouselCardInfo":Ljava/util/ArrayList;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/18;->setCardsInfo(Ljava/util/ArrayList;)V

    .line 45024
    new-instance v1, Lcom/facebook/ads/redexgen/X/S8;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/NL;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45025
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T6;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45026
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v5

    sget-object v7, Lcom/facebook/ads/redexgen/X/NL;->A05:Lcom/facebook/ads/redexgen/X/M7;

    .line 45027
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/T6;->A0z()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    .line 45028
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->getCarouselCardBehaviorHelper()Lcom/facebook/ads/redexgen/X/9v;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/util/List;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/M7;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/9v;Lcom/facebook/ads/redexgen/X/I6;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/NL;->A03:Lcom/facebook/ads/redexgen/X/S8;

    .line 45029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A03:Lcom/facebook/ads/redexgen/X/S8;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/El;->setAdapter(Lcom/facebook/ads/redexgen/X/48;)V

    .line 45030
    sget v0, Lcom/facebook/ads/redexgen/X/NL;->A07:I

    mul-int/lit8 v0, v0, 0xa

    sub-int/2addr p2, v0

    .line 45031
    .local v6, "childWidth":I
    const/16 v2, 0x10

    .line 45032
    .local p2, "childSpacing":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NL;->A03:Lcom/facebook/ads/redexgen/X/S8;

    const/4 v0, 0x0

    invoke-virtual {v1, p2, v2, v0}, Lcom/facebook/ads/redexgen/X/S8;->A0G(III)V

    .line 45033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A03:Lcom/facebook/ads/redexgen/X/S8;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A08()V

    .line 45034
    invoke-direct {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/NL;->setupDotsLayout(Lcom/facebook/ads/redexgen/X/T6;Ljava/util/ArrayList;)V

    .line 45035
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 6

    .line 45036
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A03:Lcom/facebook/ads/redexgen/X/S8;

    if-eqz v0, :cond_0

    .line 45037
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/S8;->A0H(Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 45038
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A02:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/18;->A23(Lcom/facebook/ads/redexgen/X/Q9;)V

    .line 45039
    return-void

    .line 45040
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NL;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45041
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1e:I

    const/4 v2, 0x0

    const/16 v1, 0x33

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 45042
    const/16 v2, 0x33

    const/4 v1, 0x7

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0
.end method
