.class public final Lcom/facebook/ads/redexgen/X/Hk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pg;


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Pf;

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 36769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36770
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36771
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    .line 36772
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hk;->A03:I

    .line 36773
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Hk;->A00:I

    .line 36774
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Hk;->A04:I

    .line 36775
    return-void
.end method

.method private A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 36776
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p1, v1, v0

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 36777
    .local p0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A03:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36778
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pj;

    invoke-direct {v0, p0, p3}, Lcom/facebook/ads/redexgen/X/Pj;-><init>(Lcom/facebook/ads/redexgen/X/Hk;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36779
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36780
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hk;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36781
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hk;)Landroid/view/View;
    .locals 0

    .line 36782
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Hk;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;
    .locals 0

    .line 36783
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hk;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Hk;Z)V
    .locals 0

    .line 36784
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hk;->A07(Z)V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Hk;Z)V
    .locals 0

    .line 36785
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hk;->A08(Z)V

    return-void
.end method

.method private A07(Z)V
    .locals 3

    .line 36786
    if-eqz p1, :cond_0

    .line 36787
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A05:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36788
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hk;->A00:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hk;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    .line 36789
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pi;-><init>(Lcom/facebook/ads/redexgen/X/Hk;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 36791
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Hk;
    :goto_0
    return-void

    .line 36792
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 36793
    .local p0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A04:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36795
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 36796
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method

.method private A08(Z)V
    .locals 3

    .line 36797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0N(Landroid/view/View;)V

    .line 36798
    if-eqz p1, :cond_0

    .line 36799
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36800
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Hk;->A04:I

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hk;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hk;->A00(IILandroid/view/View;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    .line 36801
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ph;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ph;-><init>(Lcom/facebook/ads/redexgen/X/Hk;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 36803
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Hk;
    :goto_0
    return-void

    .line 36804
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 36805
    .local p0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A00:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 36806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A05:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36807
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method


# virtual methods
.method public final A3L(ZZ)V
    .locals 0

    .line 36808
    if-eqz p2, :cond_0

    .line 36809
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hk;->A07(Z)V

    .line 36810
    :goto_0
    return-void

    .line 36811
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hk;->A08(Z)V

    goto :goto_0
.end method

.method public final A7I()Lcom/facebook/ads/redexgen/X/Pf;
    .locals 1

    .line 36812
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 36813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hk;->A01:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 36814
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 36815
    :cond_0
    return-void
.end method
