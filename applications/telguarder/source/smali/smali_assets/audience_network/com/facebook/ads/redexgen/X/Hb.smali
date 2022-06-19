.class public final Lcom/facebook/ads/redexgen/X/Hb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pg;


# instance fields
.field public A00:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Pf;

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 36637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36638
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36639
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A05:Landroid/view/View;

    .line 36640
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hb;->A02:I

    .line 36641
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Hb;->A04:I

    .line 36642
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Hb;->A03:I

    .line 36643
    return-void
.end method

.method private A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 3

    .line 36644
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    const/4 v0, 0x1

    aput p3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 36645
    .local p0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A02:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36646
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pp;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pp;-><init>(Lcom/facebook/ads/redexgen/X/Hb;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36647
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hb;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36648
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hb;)Landroid/view/View;
    .locals 0

    .line 36649
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hb;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;
    .locals 0

    .line 36650
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    return-object p1
.end method

.method private A04()V
    .locals 1

    .line 36651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 36652
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 36653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    .line 36654
    :cond_0
    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Hb;)V
    .locals 0

    .line 36655
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hb;->A04()V

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Hb;Z)V
    .locals 0

    .line 36656
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hb;->A08(Z)V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Hb;Z)V
    .locals 0

    .line 36657
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hb;->A09(Z)V

    return-void
.end method

.method private A08(Z)V
    .locals 3

    .line 36658
    if-eqz p1, :cond_0

    .line 36659
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A05:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36660
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hb;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A04:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    .line 36661
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Po;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Po;-><init>(Lcom/facebook/ads/redexgen/X/Hb;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 36663
    :goto_0
    return-void

    .line 36664
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A05:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A04:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 36665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0J(Landroid/view/View;)V

    .line 36666
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method

.method private A09(Z)V
    .locals 3

    .line 36667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0N(Landroid/view/View;)V

    .line 36668
    if-eqz p1, :cond_0

    .line 36669
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36670
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hb;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A03:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hb;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    .line 36671
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pn;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pn;-><init>(Lcom/facebook/ads/redexgen/X/Hb;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 36673
    :goto_0
    return-void

    .line 36674
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hb;->A05:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A03:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 36675
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method


# virtual methods
.method public final A3L(ZZ)V
    .locals 0

    .line 36676
    if-eqz p2, :cond_0

    .line 36677
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hb;->A08(Z)V

    .line 36678
    :goto_0
    return-void

    .line 36679
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hb;->A09(Z)V

    goto :goto_0
.end method

.method public final A7I()Lcom/facebook/ads/redexgen/X/Pf;
    .locals 1

    .line 36680
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 36681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hb;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 36682
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 36683
    :cond_0
    return-void
.end method
