.class public final Lcom/facebook/ads/redexgen/X/R0;
.super Lcom/facebook/ads/redexgen/X/4c;
.source ""


# static fields
.field public static A0A:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/QD;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/QE;

.field public A02:Lcom/facebook/ads/redexgen/X/QE;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A09:Lcom/facebook/ads/redexgen/X/9g;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/R0;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9g;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/QE;IIIILcom/facebook/ads/redexgen/X/XJ;)V
    .locals 0

    .line 49642
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4c;-><init>(Landroid/view/View;)V

    .line 49643
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 49644
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    .line 49645
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Landroid/util/SparseBooleanArray;

    .line 49646
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/R0;->A01:Lcom/facebook/ads/redexgen/X/QE;

    .line 49647
    iput p4, p0, Lcom/facebook/ads/redexgen/X/R0;->A03:I

    .line 49648
    iput p5, p0, Lcom/facebook/ads/redexgen/X/R0;->A04:I

    .line 49649
    iput p6, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:I

    .line 49650
    iput p7, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:I

    .line 49651
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/R0;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 49652
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/R0;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 0

    .line 49653
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/R0;->A01:Lcom/facebook/ads/redexgen/X/QE;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/R0;)Lcom/facebook/ads/redexgen/X/QE;
    .locals 0

    .line 49654
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:Lcom/facebook/ads/redexgen/X/QE;

    return-object p0
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "av2tITPhYKbVn20ukUfJR25ELbcgjHbj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MLeLe181lhP7dC21QqjxU1VDKV9lNkzJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XUmY4VBJ2tlJWKlPJ7YkBdCsKtcC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bK6oHsXedskfaWsjnVeS6YyvP0sRA20b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BhCeFQN4dHt9z3MLE3p7bnIzhrf86Cw8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mLW9T0fP2Q5Hob07hRXsv0QUH1fN4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pNzPXZ5fcby2PvmlRsfUzns43oHDF5Mi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3YktW7BrcDIc4Xw2f2zdWv5xFETbHIAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0A:[Ljava/lang/String;

    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;)V
    .locals 9

    .line 49655
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A07:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ot;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49656
    return-void

    .line 49657
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:Lcom/facebook/ads/redexgen/X/QE;

    if-eqz v0, :cond_2

    .line 49658
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0W()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/R0;->A0A:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 49659
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/R0;->A0A:[Ljava/lang/String;

    const-string v1, "iteeE4SnfkkyQnEAEqI0za4snrHpWaXy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:Lcom/facebook/ads/redexgen/X/QE;

    .line 49660
    :cond_2
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Ot;->A04()Ljava/util/Map;

    move-result-object v7

    .line 49661
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/facebook/ads/redexgen/X/R5;

    move-object v3, p0

    move-object v8, p2

    move-object v6, p1

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/R5;-><init>(Lcom/facebook/ads/redexgen/X/R0;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/JC;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/La;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A00:Lcom/facebook/ads/redexgen/X/QD;

    .line 49662
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A00:Lcom/facebook/ads/redexgen/X/QD;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/QE;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/QE;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:Lcom/facebook/ads/redexgen/X/QE;

    .line 49663
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:Lcom/facebook/ads/redexgen/X/QE;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QE;->A0Z(Z)V

    .line 49664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:Lcom/facebook/ads/redexgen/X/QE;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QE;->A0X(I)V

    .line 49665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A02:Lcom/facebook/ads/redexgen/X/QE;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/QE;->A0Y(I)V

    .line 49666
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    new-instance v0, Lcom/facebook/ads/redexgen/X/R4;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/R4;-><init>(Lcom/facebook/ads/redexgen/X/R0;Lcom/facebook/ads/redexgen/X/Ot;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/OC;)V

    .line 49667
    return-void
.end method


# virtual methods
.method public final A0m(Lcom/facebook/ads/redexgen/X/Ot;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;)V
    .locals 5

    .line 49668
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A02()I

    move-result v4

    .line 49669
    .local p0, "position":I
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v0, -0x5f000010

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9g;->setTag(ILjava/lang/Object;)V

    .line 49670
    iget v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A03:I

    const/4 v0, -0x2

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 49671
    .local p1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v4, :cond_2

    iget v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A04:I

    .line 49672
    .local p2, "leftMargin":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A06:I

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A04:I

    .line 49673
    .local p3, "rightMargin":I
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 49674
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v4

    .line 49675
    .local p4, "imageUrl":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v3

    .line 49676
    .local p5, "videoUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setIsVideo(Z)V

    .line 49677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9g;->A0g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49678
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9g;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    .line 49679
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/7D;->A0O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setVideoUrl(Ljava/lang/String;)V

    .line 49680
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49681
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    .line 49682
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A06()Ljava/lang/String;

    move-result-object v1

    .line 49683
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v0

    .line 49684
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 49685
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A03()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0G()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->setCTAInfo(Lcom/facebook/ads/redexgen/X/1J;Ljava/util/Map;)V

    .line 49686
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ot;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9g;->A0i(Ljava/util/Map;)V

    .line 49687
    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/R0;->A09(Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/La;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ot;)V

    .line 49688
    return-void

    .line 49689
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/R0;->A09:Lcom/facebook/ads/redexgen/X/9g;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/9g;->setImageUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 49690
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:I

    goto/16 :goto_1

    .line 49691
    :cond_2
    iget v3, p0, Lcom/facebook/ads/redexgen/X/R0;->A05:I

    goto/16 :goto_0
.end method
