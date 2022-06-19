.class public abstract Lcom/facebook/ads/redexgen/X/Rs;
.super Lcom/facebook/ads/redexgen/X/Ns;
.source ""


# static fields
.field public static A06:[B

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/JG;

.field public A01:Lcom/facebook/ads/redexgen/X/Hk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Hb;

.field public final A03:Lcom/facebook/ads/redexgen/X/16;

.field public final A04:Lcom/facebook/ads/redexgen/X/19;

.field public final A05:Lcom/facebook/ads/redexgen/X/Na;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 50744
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rs;->A0K()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A0A:I

    .line 50745
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A0E:I

    .line 50746
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A07:I

    .line 50747
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A0D:I

    .line 50748
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A0B:I

    .line 50749
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A0C:I

    .line 50750
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A0G:I

    .line 50751
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A0F:I

    .line 50752
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A08:I

    .line 50753
    sget v1, Lcom/facebook/ads/redexgen/X/Rs;->A08:I

    .line 50754
    const/16 v0, 0x5a

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2L;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Rs;->A09:I

    .line 50755
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V
    .locals 4

    .line 50756
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/Nw;Z)V

    .line 50757
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 50758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A04:Lcom/facebook/ads/redexgen/X/19;

    .line 50759
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Rs;->A0I(Lcom/facebook/ads/redexgen/X/Nw;)Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A05:Lcom/facebook/ads/redexgen/X/Na;

    .line 50760
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nw;->A08()Lcom/facebook/ads/redexgen/X/M6;

    move-result-object v3

    .line 50761
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/M6;
    if-eqz v3, :cond_0

    .line 50762
    const/4 v2, -0x1

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M6;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50763
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/M6;->setPageDetailsVisible(Z)V

    .line 50764
    :cond_0
    return-void
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/Nw;)Lcom/facebook/ads/redexgen/X/Na;
    .locals 15

    .line 50765
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50766
    .local p0, "adDetailsParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50767
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Nw;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x25

    const/16 v1, 0xe

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50768
    sget-object v0, Lcom/facebook/ads/redexgen/X/PM;->A04:Lcom/facebook/ads/redexgen/X/PM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PM;->A02()Ljava/lang/String;

    move-result-object v10

    .line 50769
    .local v4, "clickEvent":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/Rt;

    .line 50770
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Nw;->A05()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v6

    sget v7, Lcom/facebook/ads/redexgen/X/Rs;->A0A:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A04:Lcom/facebook/ads/redexgen/X/19;

    .line 50771
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A00()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1E;->A05:Lcom/facebook/ads/redexgen/X/1E;

    const/4 v4, 0x0

    if-ne v1, v0, :cond_0

    const/4 v8, 0x1

    .line 50772
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ns;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v9

    .line 50773
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Nw;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v11

    .line 50774
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Nw;->A09()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v12

    .line 50775
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Nw;->A0B()Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v13

    .line 50776
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Nw;->A07()Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v14

    invoke-direct/range {v5 .. v14}, Lcom/facebook/ads/redexgen/X/Rt;-><init>(Lcom/facebook/ads/redexgen/X/Wm;IZLcom/facebook/ads/redexgen/X/1I;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    .line 50777
    .local p1, "detailsView":Lcom/facebook/ads/redexgen/X/Na;
    const/16 v2, 0x190

    const/16 v1, 0x64

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hb;

    invoke-direct {v0, v5, v2, v1, v4}, Lcom/facebook/ads/redexgen/X/Hb;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/Hb;

    .line 50778
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 50779
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/ads/redexgen/X/Nw;->A00()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Rt;->A0B(I)V

    .line 50780
    invoke-virtual {p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Rs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50781
    return-object v5

    .line 50782
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 50783
    :cond_1
    const/4 v2, 0x0

    const/16 v1, 0x25

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rs;->A0J(III)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rs;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x62

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0K()V
    .locals 1

    const/16 v0, 0x33

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rs;->A06:[B

    return-void

    :array_0
    .array-data 1
        -0x35t
        -0x29t
        -0x2bt
        -0x6at
        -0x32t
        -0x37t
        -0x35t
        -0x33t
        -0x36t
        -0x29t
        -0x29t
        -0x2dt
        -0x6at
        -0x37t
        -0x34t
        -0x25t
        -0x6at
        -0x2ft
        -0x2at
        -0x24t
        -0x33t
        -0x26t
        -0x25t
        -0x24t
        -0x2ft
        -0x24t
        -0x2ft
        -0x37t
        -0x2ct
        -0x6at
        -0x35t
        -0x2ct
        -0x2ft
        -0x35t
        -0x2dt
        -0x33t
        -0x34t
        0x4bt
        0x3et
        0x50t
        0x3at
        0x4bt
        0x3dt
        0x3et
        0x3dt
        0x38t
        0x4ft
        0x42t
        0x3dt
        0x3et
        0x48t
    .end array-data
.end method


# virtual methods
.method public A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 7
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50784
    move-object v4, p2

    move-object p2, v4

    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ns;->A0Z(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 50785
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A05:Lcom/facebook/ads/redexgen/X/Na;

    .line 50786
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    .line 50787
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/16;

    .line 50788
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0O()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v5

    .line 50789
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Na;->setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Nd;)V

    .line 50790
    return-void
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/M6;)I
    .locals 1
    .param p1    # Lcom/facebook/ads/redexgen/X/M6;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 50791
    if-nez p1, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/M6;->A00:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method public A0d()V
    .locals 9

    .line 50792
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->getExpandableLayout()Landroid/view/View;

    move-result-object v5

    .line 50793
    .local p0, "expandableLayout":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 50794
    const/4 v8, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/JG;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    .line 50795
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Hk;

    if-eqz v1, :cond_0

    .line 50796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/JG;->A0J(Lcom/facebook/ads/redexgen/X/Pg;)V

    .line 50797
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v7

    .line 50798
    .local v0, "colors":Lcom/facebook/ads/redexgen/X/1I;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    .line 50799
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->getCTAButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v3

    const/4 v2, -0x1

    .line 50800
    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/1I;->A09(Z)I

    move-result v1

    const/16 v6, 0x12c

    new-instance v0, Lcom/facebook/ads/redexgen/X/He;

    invoke-direct {v0, v3, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/He;-><init>(Landroid/view/View;III)V

    .line 50801
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0J(Lcom/facebook/ads/redexgen/X/Pg;)V

    .line 50802
    sget v2, Lcom/facebook/ads/redexgen/X/Rs;->A08:I

    sget v1, Lcom/facebook/ads/redexgen/X/Rs;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rs;->A07:I

    .line 50803
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A08(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 50804
    .local v8, "startDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v8}, Lcom/facebook/ads/redexgen/X/1I;->A08(Z)I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/Rs;->A07:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A05(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 50805
    .local v5, "endDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    .line 50806
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->getCTAButton()Lcom/facebook/ads/redexgen/X/Ry;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hq;

    invoke-direct {v0, v1, v6, v4, v3}, Lcom/facebook/ads/redexgen/X/Hq;-><init>(Landroid/view/View;ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 50807
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0J(Lcom/facebook/ads/redexgen/X/Pg;)V

    .line 50808
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    const/16 v2, 0x96

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hi;

    invoke-direct {v0, v5, v2, v1}, Lcom/facebook/ads/redexgen/X/Hi;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0J(Lcom/facebook/ads/redexgen/X/Pg;)V

    .line 50809
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    const/16 v0, 0x8fc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0I(I)V

    .line 50810
    .end local v0    # "colors":Lcom/facebook/ads/redexgen/X/1I;
    .end local v5    # "endDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "startDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public getAdDataBundle()Lcom/facebook/ads/redexgen/X/16;
    .locals 1

    .line 50811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A03:Lcom/facebook/ads/redexgen/X/16;

    return-object v0
.end method

.method public getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/Hb;
    .locals 1

    .line 50812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A02:Lcom/facebook/ads/redexgen/X/Hb;

    return-object v0
.end method

.method public getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;
    .locals 1

    .line 50813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A05:Lcom/facebook/ads/redexgen/X/Na;

    return-object v0
.end method

.method public getAdInfo()Lcom/facebook/ads/redexgen/X/19;
    .locals 1

    .line 50814
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A04:Lcom/facebook/ads/redexgen/X/19;

    return-object v0
.end method

.method public getAnimationPlugin()Lcom/facebook/ads/redexgen/X/JG;
    .locals 1

    .line 50815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 50816
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ns;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 50817
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Na;->A0B(I)V

    .line 50818
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 5

    .line 50819
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ns;->onLayout(ZIIII)V

    .line 50820
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rs;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->getExpandableLayout()Landroid/view/View;

    move-result-object v4

    .line 50821
    .local p0, "expandableLayout":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 50822
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Hk;

    if-nez v0, :cond_0

    .line 50823
    const/16 v3, 0x12c

    .line 50824
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hk;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Hk;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Hk;

    .line 50825
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A01:Lcom/facebook/ads/redexgen/X/Hk;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0J(Lcom/facebook/ads/redexgen/X/Pg;)V

    .line 50826
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JG;->A0H()V

    .line 50827
    :cond_0
    return-void
.end method
