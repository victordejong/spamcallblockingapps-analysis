.class public final Lcom/facebook/ads/redexgen/X/IR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PK;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/PW;
    }
.end annotation


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/Oj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/PW;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/L6;

.field public final A06:Lcom/facebook/ads/redexgen/X/KS;

.field public final A07:Lcom/facebook/ads/redexgen/X/KN;

.field public final A08:Lcom/facebook/ads/redexgen/X/K3;

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PW;Z)V
    .locals 1

    .line 38518
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/IR;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PW;ZZ)V

    .line 38519
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PW;ZZ)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/PW;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38521
    new-instance v0, Lcom/facebook/ads/redexgen/X/7h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7h;-><init>(Lcom/facebook/ads/redexgen/X/IR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A06:Lcom/facebook/ads/redexgen/X/KS;

    .line 38522
    new-instance v0, Lcom/facebook/ads/redexgen/X/7g;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7g;-><init>(Lcom/facebook/ads/redexgen/X/IR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A07:Lcom/facebook/ads/redexgen/X/KN;

    .line 38523
    new-instance v0, Lcom/facebook/ads/redexgen/X/7e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7e;-><init>(Lcom/facebook/ads/redexgen/X/IR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A05:Lcom/facebook/ads/redexgen/X/L6;

    .line 38524
    new-instance v0, Lcom/facebook/ads/redexgen/X/7d;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7d;-><init>(Lcom/facebook/ads/redexgen/X/IR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A08:Lcom/facebook/ads/redexgen/X/K3;

    .line 38525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A03:Z

    .line 38526
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A04:Landroid/os/Handler;

    .line 38527
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/IR;->A09:Z

    .line 38528
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/IR;->A0A:Z

    .line 38529
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/IR;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PW;)V

    .line 38530
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/IR;)Landroid/os/Handler;
    .locals 0

    .line 38531
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IR;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/IR;)Landroid/view/View;
    .locals 0

    .line 38532
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/IR;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 0

    .line 38533
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IR;->A01:Lcom/facebook/ads/redexgen/X/Oj;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/IR;)Lcom/facebook/ads/redexgen/X/PW;
    .locals 0

    .line 38534
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/IR;->A02:Lcom/facebook/ads/redexgen/X/PW;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/IR;Lcom/facebook/ads/redexgen/X/PW;)Lcom/facebook/ads/redexgen/X/PW;
    .locals 0

    .line 38535
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IR;->A02:Lcom/facebook/ads/redexgen/X/PW;

    return-object p1
.end method

.method private A05()V
    .locals 3

    .line 38536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    .line 38537
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 38538
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 38539
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/PV;-><init>(Lcom/facebook/ads/redexgen/X/IR;)V

    .line 38540
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 38541
    return-void
.end method

.method private A06(II)V
    .locals 2

    .line 38542
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 38544
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 38546
    return-void
.end method

.method private A07(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 38547
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38548
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 38549
    return-void
.end method

.method private final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/PW;)V
    .locals 2

    .line 38550
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/IR;->A02:Lcom/facebook/ads/redexgen/X/PW;

    .line 38551
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    .line 38552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 38553
    sget-object v0, Lcom/facebook/ads/redexgen/X/PW;->A03:Lcom/facebook/ads/redexgen/X/PW;

    if-ne p2, v0, :cond_0

    .line 38554
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38555
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38556
    :goto_0
    return-void

    .line 38557
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38558
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/IR;)V
    .locals 0

    .line 38559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/IR;->A05()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/IR;II)V
    .locals 0

    .line 38560
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/IR;->A06(II)V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/IR;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 38561
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/IR;->A07(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/IR;)Z
    .locals 0

    .line 38562
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/IR;->A03:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/IR;)Z
    .locals 0

    .line 38563
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/IR;->A09:Z

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/IR;)Z
    .locals 0

    .line 38564
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/IR;->A0A:Z

    return p0
.end method


# virtual methods
.method public final A8M(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 4

    .line 38565
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IR;->A01:Lcom/facebook/ads/redexgen/X/Oj;

    .line 38566
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A06:Lcom/facebook/ads/redexgen/X/KS;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A07:Lcom/facebook/ads/redexgen/X/KN;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A08:Lcom/facebook/ads/redexgen/X/K3;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A05:Lcom/facebook/ads/redexgen/X/L6;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 38567
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 38568
    return-void
.end method

.method public final AEQ(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 5

    .line 38569
    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v4}, Lcom/facebook/ads/redexgen/X/IR;->A06(II)V

    .line 38570
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A05:Lcom/facebook/ads/redexgen/X/L6;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A08:Lcom/facebook/ads/redexgen/X/K3;

    aput-object v0, v2, v1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A07:Lcom/facebook/ads/redexgen/X/KN;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/IR;->A06:Lcom/facebook/ads/redexgen/X/KS;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 38571
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 38572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/IR;->A01:Lcom/facebook/ads/redexgen/X/Oj;

    .line 38573
    return-void
.end method
