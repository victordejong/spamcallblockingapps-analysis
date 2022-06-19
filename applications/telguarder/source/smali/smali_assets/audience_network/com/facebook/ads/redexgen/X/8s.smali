.class public final Lcom/facebook/ads/redexgen/X/8s;
.super Lcom/facebook/ads/redexgen/X/RQ;
.source ""


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ns;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Landroid/widget/ImageView;

.field public final A02:Lcom/facebook/ads/redexgen/X/4y;

.field public final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A04:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8s;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;)V
    .locals 3

    .line 19063
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/RQ;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/MZ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/M7;)V

    .line 19064
    new-instance v0, Lcom/facebook/ads/redexgen/X/RP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RP;-><init>(Lcom/facebook/ads/redexgen/X/8s;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Lcom/facebook/ads/redexgen/X/4y;

    .line 19065
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19066
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19067
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19068
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8s;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Landroid/widget/ImageView;

    .line 19069
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 19071
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 19072
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A00()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 19073
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A01()I

    move-result v0

    .line 19074
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A06(II)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/RO;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RO;-><init>(Lcom/facebook/ads/redexgen/X/8s;)V

    .line 19075
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A07(Lcom/facebook/ads/redexgen/X/NW;)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 19076
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 19077
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/8s;)I
    .locals 0

    .line 19078
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->getCloseButtonStyle()I

    move-result p0

    return p0
.end method

.method private A01(I)Lcom/facebook/ads/redexgen/X/Ns;
    .locals 9

    .line 19079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 19081
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Nv;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RQ;->A04:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/RQ;->A08:Lcom/facebook/ads/redexgen/X/M7;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/8s;->A01:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/RQ;->A0A:Lcom/facebook/ads/redexgen/X/Q9;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/RQ;->A06:Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/Nv;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/M7;Lcom/facebook/ads/redexgen/X/16;Landroid/view/View;Lcom/facebook/ads/redexgen/X/Q9;Lcom/facebook/ads/redexgen/X/Lc;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    .line 19082
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0E(I)Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    .line 19083
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0H(Lcom/facebook/ads/redexgen/X/M6;)Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v0

    .line 19084
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Nv;->A0D(I)Lcom/facebook/ads/redexgen/X/Nv;

    move-result-object v0

    .line 19085
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0J()Lcom/facebook/ads/redexgen/X/Nw;

    move-result-object v2

    .line 19086
    .local p0, "params":Lcom/facebook/ads/redexgen/X/Nw;
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Nt;->A00(Lcom/facebook/ads/redexgen/X/Nw;Landroid/os/Bundle;Z)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/8s;)Lcom/facebook/ads/redexgen/X/Ns;
    .locals 0

    .line 19087
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 19088
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8s;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/8s;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 19089
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/8s;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A05()V
    .locals 1

    .line 19090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A04:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19091
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/RQ;->A0Q()V

    .line 19092
    :cond_0
    return-void
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "opNTFb7MfNeLnBf1OFt8H8u3IMVbRu1d"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IWQCWQwp5ID5RPcOdaIzYqbwlbVDrClG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "KvkPuVSJhScWrt17epNc"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "F0ODCmRg5uMMagWpVfR8fmvJ1OUGt5pq"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F5r"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wG3QjEZJL94bFBL8PiZK"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "A8E1xGSXICDDUeWE8x490gS0hcqgXwJC"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "2T9PYA9x4VF1QbksNYikemvLXt0jGXOu"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8s;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A07(I)V
    .locals 5

    .line 19093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 19094
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8s;->A01(I)Lcom/facebook/ads/redexgen/X/Ns;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    .line 19095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->getColors()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v4

    .line 19096
    .local p0, "colors":Lcom/facebook/ads/redexgen/X/1I;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 19097
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Rs;

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 19098
    .local p1, "fullScreenColors":Z
    :goto_0
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/1I;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0O(Landroid/view/View;I)V

    .line 19099
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0a()Z

    move-result v0

    invoke-virtual {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/M6;->A05(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 19100
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    sget-object v0, Lcom/facebook/ads/redexgen/X/RQ;->A0D:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/8s;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 19101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0a()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/RQ;->setUpFullscreenMode(Z)V

    .line 19102
    return-void

    .line 19103
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 19104
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/8s;)V
    .locals 0

    .line 19105
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->A05()V

    return-void
.end method

.method private getCloseButtonStyle()I
    .locals 1

    .line 19128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->getCloseButtonStyle()I

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

    .line 19106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0N(Landroid/view/View;)V

    .line 19107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0N(Landroid/view/View;)V

    .line 19108
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19109
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->A05()V

    .line 19110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A03()I

    move-result v1

    .line 19111
    .local p0, "unskippableSeconds":I
    if-lez v1, :cond_1

    .line 19112
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    if-eqz v0, :cond_0

    .line 19113
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0Y()V

    .line 19114
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/RN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RN;-><init>(Lcom/facebook/ads/redexgen/X/8s;)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/RQ;->A0S(ILcom/facebook/ads/redexgen/X/Kd;)V

    .line 19115
    :goto_0
    return-void

    .line 19116
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19117
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8s;->getCloseButtonStyle()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final A0T(Lcom/facebook/ads/redexgen/X/50;)V
    .locals 4

    .line 19118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A02:Lcom/facebook/ads/redexgen/X/4y;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/50;->A0L(Lcom/facebook/ads/redexgen/X/4y;)V

    .line 19119
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/50;->A0I()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 19120
    .local p0, "orientation":I
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8s;->A07(I)V

    .line 19121
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getToolbarHeight()I

    move-result v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/8s;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 19123
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A07:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 19124
    return-void
.end method

.method public final A0U()Z
    .locals 5

    .line 19125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Ns;->A0b(Z)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/8s;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8s;->A06:[Ljava/lang/String;

    const-string v1, "kMg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method public final AB2(Z)V
    .locals 0

    .line 19126
    return-void
.end method

.method public final ABR(Z)V
    .locals 0

    .line 19127
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 19129
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/RQ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 19130
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 19131
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/8s;->A07(I)V

    .line 19132
    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 19133
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RQ;->A03:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A07()Lcom/facebook/ads/redexgen/X/JO;

    .line 19134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/Ns;

    if-eqz v0, :cond_0

    .line 19135
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0U()V

    .line 19136
    :cond_0
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/RQ;->onDestroy()V

    .line 19137
    return-void
.end method
