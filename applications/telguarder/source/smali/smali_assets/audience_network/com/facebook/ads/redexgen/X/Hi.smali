.class public final Lcom/facebook/ads/redexgen/X/Hi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pg;


# instance fields
.field public A00:Landroid/view/ViewPropertyAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Pf;

.field public final A02:I

.field public final A03:Landroid/view/View;

.field public final A04:Z


# direct methods
.method public constructor <init>(Landroid/view/View;IZ)V
    .locals 1

    .line 36727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36728
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36729
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    .line 36730
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Landroid/view/View;

    .line 36731
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A04:Z

    .line 36732
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/View;
    .locals 0

    .line 36733
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 36734
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hi;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    .line 36735
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/Pf;)Lcom/facebook/ads/redexgen/X/Pf;
    .locals 0

    .line 36736
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    return-object p1
.end method

.method private A04(Z)V
    .locals 3

    .line 36737
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A03:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36738
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A04:Z

    if-eqz v0, :cond_0

    .line 36739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0N(Landroid/view/View;)V

    .line 36740
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    .line 36741
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Landroid/view/View;

    .line 36742
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 36743
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    int-to-long v0, v0

    .line 36744
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pk;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pk;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    .line 36745
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/view/ViewPropertyAnimator;

    .line 36746
    :goto_0
    return-void

    .line 36747
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 36748
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A02:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method

.method private A05(Z)V
    .locals 3

    .line 36749
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A05:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    .line 36750
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 36751
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Landroid/view/View;

    .line 36752
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 36753
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    int-to-long v0, v0

    .line 36754
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pl;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pl;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    .line 36755
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/view/ViewPropertyAnimator;

    .line 36756
    :goto_0
    return-void

    .line 36757
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 36758
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    goto :goto_0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Hi;)Z
    .locals 0

    .line 36759
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A04:Z

    return p0
.end method


# virtual methods
.method public final A3L(ZZ)V
    .locals 0

    .line 36760
    if-eqz p2, :cond_0

    .line 36761
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hi;->A05(Z)V

    .line 36762
    :goto_0
    return-void

    .line 36763
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hi;->A04(Z)V

    goto :goto_0
.end method

.method public final A7I()Lcom/facebook/ads/redexgen/X/Pf;
    .locals 1

    .line 36764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pf;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 36765
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 36766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 36767
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 36768
    :cond_0
    return-void
.end method
