.class public final Lcom/facebook/ads/redexgen/X/Hv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pl;


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Pk;

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 37047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37048
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    .line 37049
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    .line 37050
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hv;->A03:I

    .line 37051
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Hv;->A00:I

    .line 37052
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Hv;->A04:I

    .line 37053
    return-void
.end method

.method private A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 37054
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 37055
    .local p0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A03:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 37056
    new-instance v0, Lcom/facebook/ads/redexgen/X/Po;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Po;-><init>(Lcom/facebook/ads/redexgen/X/Hv;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 37057
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hv;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 37058
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hv;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 37059
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hv;)Landroid/view/View;
    .locals 0

    .line 37060
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Hv;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;
    .locals 0

    .line 37061
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hv;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Hv;Z)V
    .locals 0

    .line 37062
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hv;->A07(Z)V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Hv;Z)V
    .locals 0

    .line 37063
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hv;->A08(Z)V

    return-void
.end method

.method private A07(Z)V
    .locals 3

    .line 37064
    if-eqz p1, :cond_0

    .line 37065
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A06:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    .line 37066
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hv;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hv;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hv;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    .line 37067
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pn;-><init>(Lcom/facebook/ads/redexgen/X/Hv;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37068
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37069
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Hv;
    :goto_0
    return-void

    .line 37070
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 37071
    .local p0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A04:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37072
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 37074
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method

.method private A08(Z)V
    .locals 3

    .line 37075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 37076
    if-eqz p1, :cond_0

    .line 37077
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A04:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    .line 37078
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hv;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hv;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hv;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    .line 37079
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pm;-><init>(Lcom/facebook/ads/redexgen/X/Hv;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 37081
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Hv;
    :goto_0
    return-void

    .line 37082
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 37083
    .local p0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A00:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37085
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method


# virtual methods
.method public final A09(I)V
    .locals 0

    .line 37086
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Hv;->A00:I

    .line 37087
    return-void
.end method

.method public final A3P(ZZ)V
    .locals 0

    .line 37088
    if-eqz p2, :cond_0

    .line 37089
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hv;->A07(Z)V

    .line 37090
    :goto_0
    return-void

    .line 37091
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hv;->A08(Z)V

    goto :goto_0
.end method

.method public final A7G()Lcom/facebook/ads/redexgen/X/Pk;
    .locals 1

    .line 37092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A02:Lcom/facebook/ads/redexgen/X/Pk;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 37093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hv;->A01:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 37094
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37095
    :cond_0
    return-void
.end method
