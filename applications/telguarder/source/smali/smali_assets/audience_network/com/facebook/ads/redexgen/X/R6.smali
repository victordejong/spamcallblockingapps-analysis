.class public final Lcom/facebook/ads/redexgen/X/R6;
.super Lcom/facebook/ads/redexgen/X/4c;
.source ""


# static fields
.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Q8;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Q9;

.field public A02:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:I

.field public final A04:Landroid/util/SparseBooleanArray;

.field public final A05:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A06:Lcom/facebook/ads/redexgen/X/9o;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R6;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9o;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/Q9;ILcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 49660
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;-><init>(Landroid/view/View;)V

    .line 49661
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/R6;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    .line 49662
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    .line 49663
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R6;->A04:Landroid/util/SparseBooleanArray;

    .line 49664
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/R6;->A01:Lcom/facebook/ads/redexgen/X/Q9;

    .line 49665
    iput p4, p0, Lcom/facebook/ads/redexgen/X/R6;->A03:I

    .line 49666
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/R6;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 49667
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/R6;->A04:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/R6;)Lcom/facebook/ads/redexgen/X/Q9;
    .locals 0

    .line 49668
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/R6;->A01:Lcom/facebook/ads/redexgen/X/Q9;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/R6;)Lcom/facebook/ads/redexgen/X/Q9;
    .locals 0

    .line 49669
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/R6;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    return-object p0
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "biNTtjxa0xULALtZEUOcP"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rMVpYr4hwZgX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "y0rebd1hOaNR"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "snwXdVXwO66aPvNuuMD2"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "jxkMgVVp1g5"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Dcah1JX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lglxOXHbCZFpcLf1TWQPAMUDis4zLCZx"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "n80A5ryznQOlcAJIvKv7FeLq2ck19EHB"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R6;->A07:[Ljava/lang/String;

    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;)V
    .locals 9

    .line 49670
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R6;->A04:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49671
    return-void

    .line 49672
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    if-eqz v0, :cond_2

    .line 49673
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0W()V

    .line 49674
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/R6;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R6;->A07:[Ljava/lang/String;

    const-string v1, "sEemyGdXpNnP2WRBMWcD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "kawPFcVLuq3VyedHvbBIc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/R6;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    .line 49675
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Oo;->A04()Ljava/util/Map;

    move-result-object v7

    .line 49676
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/R8;

    move-object v3, p0

    move-object v4, p3

    move-object v8, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/R8;-><init>(Lcom/facebook/ads/redexgen/X/R6;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Lc;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/R6;->A00:Lcom/facebook/ads/redexgen/X/Q8;

    .line 49677
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A00:Lcom/facebook/ads/redexgen/X/Q8;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R6;->A05:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Q9;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Q9;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    .line 49678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R6;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0Z(Z)V

    .line 49679
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0X(I)V

    .line 49680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R6;->A02:Lcom/facebook/ads/redexgen/X/Q9;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Q9;->A0Y(I)V

    .line 49681
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    new-instance v0, Lcom/facebook/ads/redexgen/X/R7;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/R7;-><init>(Lcom/facebook/ads/redexgen/X/R6;Lcom/facebook/ads/redexgen/X/Oo;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/O7;)V

    .line 49682
    return-void
.end method


# virtual methods
.method public final A0m(Lcom/facebook/ads/redexgen/X/Oo;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;III)V
    .locals 7

    .line 49683
    move-object v4, p0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A02()I

    move-result v5

    .line 49684
    .local p2, "position":I
    iget-object v2, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x5f000010

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9o;->setTag(ILjava/lang/Object;)V

    .line 49685
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Rj;->setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/Oo;)V

    .line 49686
    const/4 v0, -0x2

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, p6, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 49687
    .local p3, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v5, :cond_1

    move v6, p8

    .line 49688
    .local p4, "leftMargin":I
    :goto_0
    iget v0, v4, Lcom/facebook/ads/redexgen/X/R6;->A03:I

    add-int/lit8 v0, v0, -0x1

    if-lt v5, v0, :cond_0

    .line 49689
    .local p6, "rightMargin":I
    :goto_1
    const/4 v5, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/R6;->A07:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49690
    :cond_0
    move p8, p7

    goto :goto_1

    .line 49691
    :cond_1
    move v6, p7

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/R6;->A07:[Ljava/lang/String;

    const-string v1, "ng4t5bAKqCWK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "n9xBZs9SEWUc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v6, v5, p8, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 49692
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v5

    .line 49693
    .local p7, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v2

    .line 49694
    .local p8, "videoUrl":Ljava/lang/String;
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->setIsVideo(Z)V

    .line 49695
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9o;->A0g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49696
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9o;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 49697
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/7D;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->setVideoUrl(Ljava/lang/String;)V

    .line 49698
    :goto_2
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/9o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49699
    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oo;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->A0h(Ljava/util/Map;)V

    .line 49700
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/R6;->A09(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/Lc;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Oo;)V

    .line 49701
    return-void

    .line 49702
    :cond_3
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/R6;->A06:Lcom/facebook/ads/redexgen/X/9o;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/9o;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final A0n(Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 0

    .line 49703
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R6;->A01:Lcom/facebook/ads/redexgen/X/Q9;

    .line 49704
    return-void
.end method
