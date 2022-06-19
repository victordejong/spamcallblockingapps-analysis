.class public final Lcom/facebook/ads/redexgen/X/8s;
.super Lcom/facebook/ads/redexgen/X/XM;
.source ""


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Nx;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/4y;

.field public final A02:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A04:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 2

    .line 18946
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/XM;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Me;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M9;)V

    .line 18947
    new-instance v0, Lcom/facebook/ads/redexgen/X/XL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/XL;-><init>(Lcom/facebook/ads/redexgen/X/8s;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Lcom/facebook/ads/redexgen/X/4y;

    .line 18948
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18949
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18950
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18951
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8s;)I
    .locals 0

    .line 18952
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->getCloseButtonStyle()I

    move-result p0

    return p0
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/Nx;
    .locals 11

    .line 18953
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8s;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18954
    .local p0, "imageView":Landroid/widget/ImageView;
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18955
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 18956
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v3, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v3, v8, v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 18957
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A00()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 18958
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A01()I

    move-result v0

    .line 18959
    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(II)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TA;-><init>(Lcom/facebook/ads/redexgen/X/8s;)V

    .line 18960
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A07(Lcom/facebook/ads/redexgen/X/Nb;)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 18961
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 18962
    new-instance v3, Lcom/facebook/ads/redexgen/X/O0;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/XM;->A03:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/XM;->A04:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/XM;->A08:Lcom/facebook/ads/redexgen/X/M9;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/XM;->A0A:Lcom/facebook/ads/redexgen/X/QE;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/XM;->A06:Lcom/facebook/ads/redexgen/X/La;

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/O0;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M9;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/QE;Lcom/facebook/ads/redexgen/X/La;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    .line 18963
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/O0;->A0E(I)Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    .line 18964
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O0;->A0H(Lcom/facebook/ads/redexgen/X/M4;)Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v0

    .line 18965
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/O0;->A0D(I)Lcom/facebook/ads/redexgen/X/O0;

    move-result-object v0

    .line 18966
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O0;->A0J()Lcom/facebook/ads/redexgen/X/O1;

    move-result-object v1

    .line 18967
    .local v0, "params":Lcom/facebook/ads/redexgen/X/O1;
    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Ny;->A00(Lcom/facebook/ads/redexgen/X/O1;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8s;)Lcom/facebook/ads/redexgen/X/Nx;
    .locals 0

    .line 18968
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 18969
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8s;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 18970
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8s;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A05()V
    .locals 1

    .line 18971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18972
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/XM;->A0Q()V

    .line 18973
    :cond_0
    return-void
.end method

.method private A06(I)V
    .locals 5

    .line 18974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 18975
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8s;->A01(I)Lcom/facebook/ads/redexgen/X/Nx;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    .line 18976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    .line 18977
    .local p0, "colors":Lcom/facebook/ads/redexgen/X/1I;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 18978
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ym;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 18979
    .local p1, "fullScreenColors":Z
    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1I;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0P(Landroid/view/View;I)V

    .line 18980
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0a()Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/M4;->A05(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 18981
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/XM;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/8s;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 18982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0a()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/XM;->setUpFullscreenMode(Z)V

    .line 18983
    return-void

    .line 18984
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 18985
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/8s;)V
    .locals 0

    .line 18986
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->A05()V

    return-void
.end method

.method private getCloseButtonStyle()I
    .locals 1

    .line 19009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->getCloseButtonStyle()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0R()V
    .locals 3

    .line 18987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 18988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 18989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18990
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->A05()V

    .line 18991
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v1

    .line 18992
    .local p0, "unskippableSeconds":I
    if-lez v1, :cond_1

    .line 18993
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    if-eqz v0, :cond_0

    .line 18994
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0Y()V

    .line 18995
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/TN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TN;-><init>(Lcom/facebook/ads/redexgen/X/8s;)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/XM;->A0S(ILcom/facebook/ads/redexgen/X/Kb;)V

    .line 18996
    :goto_0
    return-void

    .line 18997
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18998
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M4;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 4

    .line 18999
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 19000
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 19001
    .local p0, "orientation":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8s;->A06(I)V

    .line 19002
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->getToolbarHeight()I

    move-result v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/8s;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19003
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 19004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A07:Lcom/facebook/ads/redexgen/X/M4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 19005
    return-void
.end method

.method public final A0U()Z
    .locals 2

    .line 19006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Nx;->A0b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final AB2(Z)V
    .locals 0

    .line 19007
    return-void
.end method

.method public final ABR(Z)V
    .locals 0

    .line 19008
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 19010
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/XM;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 19011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/XM;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0N()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19012
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8s;->A06(I)V

    .line 19013
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 19014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Nx;

    if-eqz v0, :cond_0

    .line 19015
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nx;->A0U()V

    .line 19016
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/XM;->onDestroy()V

    .line 19017
    return-void
.end method
