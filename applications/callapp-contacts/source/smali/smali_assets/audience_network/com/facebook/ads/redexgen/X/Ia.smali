.class public final Lcom/facebook/ads/redexgen/X/Ia;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PP;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pb;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/PD;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Pb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/Le;

.field public final A06:Lcom/facebook/ads/redexgen/X/KW;

.field public final A07:Lcom/facebook/ads/redexgen/X/KQ;

.field public final A08:Lcom/facebook/ads/redexgen/X/K3;

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ia;->A06()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pb;Z)V
    .locals 1

    .line 38567
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/Ia;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pb;ZZ)V

    .line 38568
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pb;ZZ)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/Pb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38570
    new-instance v0, Lcom/facebook/ads/redexgen/X/7h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7h;-><init>(Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A06:Lcom/facebook/ads/redexgen/X/KW;

    .line 38571
    new-instance v0, Lcom/facebook/ads/redexgen/X/7g;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7g;-><init>(Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A07:Lcom/facebook/ads/redexgen/X/KQ;

    .line 38572
    new-instance v0, Lcom/facebook/ads/redexgen/X/7e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7e;-><init>(Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A05:Lcom/facebook/ads/redexgen/X/Le;

    .line 38573
    new-instance v0, Lcom/facebook/ads/redexgen/X/7d;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7d;-><init>(Lcom/facebook/ads/redexgen/X/Ia;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A08:Lcom/facebook/ads/redexgen/X/K3;

    .line 38574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A03:Z

    .line 38575
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A04:Landroid/os/Handler;

    .line 38576
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Ia;->A09:Z

    .line 38577
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/Ia;->A0A:Z

    .line 38578
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ia;->A09(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pb;)V

    .line 38579
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Ia;)Landroid/os/Handler;
    .locals 0

    .line 38580
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ia;)Landroid/view/View;
    .locals 0

    .line 38581
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ia;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 38582
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A01:Lcom/facebook/ads/redexgen/X/PD;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ia;)Lcom/facebook/ads/redexgen/X/Pb;
    .locals 0

    .line 38583
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/Pb;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Ia;Lcom/facebook/ads/redexgen/X/Pb;)Lcom/facebook/ads/redexgen/X/Pb;
    .locals 0

    .line 38584
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/Pb;

    return-object p1
.end method

.method private A05()V
    .locals 3

    .line 38585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    .line 38586
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 38587
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 38588
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pa;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pa;-><init>(Lcom/facebook/ads/redexgen/X/Ia;)V

    .line 38589
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 38590
    return-void
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "82Zz8oCZg8zkkbzw8opl2Yz4CtrF2SDp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9Qv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sj5N5SmrmBRQmWue5o8rJw6ys3alFtJa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lBA7odrZYL425"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CSSBUKaIJSWMhqfJuWGnuyX4cipoTk5I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IDQP5gLMbSSnC18VVbdsGZXvkzghwpNg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yf1MSxzKxHs57zUlY7hI2xykX4pHUq1P"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "T3bn0lMwtbok5v0PvXD6574OGDOrX6LS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ia;->A0B:[Ljava/lang/String;

    return-void
.end method

.method private A07(II)V
    .locals 2

    .line 38591
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 38592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 38593
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 38595
    return-void
.end method

.method private A08(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 38596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 38598
    return-void
.end method

.method private final A09(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pb;)V
    .locals 3

    .line 38599
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ia;->A02:Lcom/facebook/ads/redexgen/X/Pb;

    .line 38600
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    .line 38601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 38602
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pb;->A04:Lcom/facebook/ads/redexgen/X/Pb;

    if-ne p2, v0, :cond_0

    .line 38603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ia;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 38604
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ia;->A0B:[Ljava/lang/String;

    const-string v1, "3OWa54Sl5zOXBo6RskK22JrE4LW5JWKj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "lt7hksMEFpJVhV2333OBcIopOVPW9bfy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38605
    :goto_0
    return-void

    .line 38606
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 38607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Ia;)V
    .locals 0

    .line 38608
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ia;->A05()V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Ia;II)V
    .locals 0

    .line 38609
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ia;->A07(II)V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Ia;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 38610
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ia;->A08(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/Ia;)Z
    .locals 0

    .line 38611
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A03:Z

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Ia;)Z
    .locals 0

    .line 38612
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A09:Z

    return p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Ia;)Z
    .locals 0

    .line 38613
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A0A:Z

    return p0
.end method


# virtual methods
.method public final A0G()V
    .locals 1

    .line 38614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A03:Z

    .line 38615
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ia;->A08(Landroid/animation/AnimatorListenerAdapter;)V

    .line 38616
    return-void
.end method

.method public final A0H()Z
    .locals 1

    .line 38617
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A03:Z

    return v0
.end method

.method public final A8K(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 4

    .line 38618
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A01:Lcom/facebook/ads/redexgen/X/PD;

    .line 38619
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A06:Lcom/facebook/ads/redexgen/X/KW;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A07:Lcom/facebook/ads/redexgen/X/KQ;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A08:Lcom/facebook/ads/redexgen/X/K3;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A05:Lcom/facebook/ads/redexgen/X/Le;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 38620
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 38621
    return-void
.end method

.method public final AEO(Lcom/facebook/ads/redexgen/X/PD;)V
    .locals 5

    .line 38622
    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v4}, Lcom/facebook/ads/redexgen/X/Ia;->A07(II)V

    .line 38623
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A05:Lcom/facebook/ads/redexgen/X/Le;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A08:Lcom/facebook/ads/redexgen/X/K3;

    aput-object v0, v2, v1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A07:Lcom/facebook/ads/redexgen/X/KQ;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ia;->A06:Lcom/facebook/ads/redexgen/X/KW;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 38624
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A05([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 38625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ia;->A01:Lcom/facebook/ads/redexgen/X/PD;

    .line 38626
    return-void
.end method
