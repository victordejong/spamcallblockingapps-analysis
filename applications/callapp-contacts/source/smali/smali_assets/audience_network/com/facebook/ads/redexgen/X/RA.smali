.class public final Lcom/facebook/ads/redexgen/X/RA;
.super Lcom/facebook/ads/redexgen/X/4c;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/QE;

.field public A02:Lcom/facebook/ads/redexgen/X/QE;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:I

.field public final A04:Landroid/util/SparseBooleanArray;

.field public final A05:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A06:Lcom/facebook/ads/redexgen/X/9o;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9o;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QE;ILcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 49791
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;-><init>(Landroid/view/View;)V

    .line 49792
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    .line 49793
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    .line 49794
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/RA;->A04:Landroid/util/SparseBooleanArray;

    .line 49795
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/QE;

    .line 49796
    iput p4, p0, Lcom/facebook/ads/redexgen/X/RA;->A03:I

    .line 49797
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/RA;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 49798
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RA;->A04:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 0

    .line 49799
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/QE;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/RA;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 0

    .line 49800
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/QE;

    return-object p0
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;)V
    .locals 9

    .line 49801
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A04:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ot;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49802
    return-void

    .line 49803
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/QE;

    if-eqz v0, :cond_1

    .line 49804
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0W()V

    .line 49805
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/QE;

    .line 49806
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ot;->A04()Ljava/util/Map;

    move-result-object v7

    .line 49807
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/RC;

    move-object v3, p0

    move-object v8, p2

    move-object v6, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/RC;-><init>(Lcom/facebook/ads/redexgen/X/RA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/La;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:Lcom/facebook/ads/redexgen/X/QD;

    .line 49808
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A00:Lcom/facebook/ads/redexgen/X/QD;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A05:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QE;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/QE;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/QE;

    .line 49809
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/QE;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0Z(Z)V

    .line 49810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/QE;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QE;->A0X(I)V

    .line 49811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RA;->A02:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QE;->A0Y(I)V

    .line 49812
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    new-instance v0, Lcom/facebook/ads/redexgen/X/RB;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/RB;-><init>(Lcom/facebook/ads/redexgen/X/RA;Lcom/facebook/ads/redexgen/X/Ot;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/OC;)V

    .line 49813
    return-void
.end method


# virtual methods
.method public final A0m(Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;III)V
    .locals 6

    .line 49814
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A02()I

    move-result v5

    .line 49815
    .local p2, "position":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x5f000010

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9o;->setTag(ILjava/lang/Object;)V

    .line 49816
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/YM;->setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/Ot;)V

    .line 49817
    const/4 v0, -0x2

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, p6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 49818
    .local p3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v5, :cond_2

    move v1, p8

    .line 49819
    .local p4, "leftMargin":I
    :goto_0
    iget v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A03:I

    add-int/lit8 v0, v0, -0x1

    if-lt v5, v0, :cond_1

    .line 49820
    .local p6, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v3, v1, v0, p8, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 49821
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v5

    .line 49822
    .local p7, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v2

    .line 49823
    .local p8, "videoUrl":Ljava/lang/String;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->setIsVideo(Z)V

    .line 49824
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49825
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9o;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 49826
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/7D;->A0O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->setVideoUrl(Ljava/lang/String;)V

    .line 49827
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49828
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->A0h(Ljava/util/Map;)V

    .line 49829
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/RA;->A08(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;)V

    .line 49830
    return-void

    .line 49831
    :cond_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/RA;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9o;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 49832
    :cond_1
    move p8, p7

    goto :goto_1

    .line 49833
    :cond_2
    move v1, p7

    goto :goto_0
.end method

.method public final A0n(Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 0

    .line 49834
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/RA;->A01:Lcom/facebook/ads/redexgen/X/QE;

    .line 49835
    return-void
.end method
