.class public final Lcom/facebook/ads/redexgen/X/Hi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pl;


# static fields
.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Pk;

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hi;->A05()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;III)V
    .locals 1

    .line 36559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36560
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    .line 36561
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A05:Landroid/view/View;

    .line 36562
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    .line 36563
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A04:I

    .line 36564
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:I

    .line 36565
    return-void
.end method

.method private A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;
    .locals 3

    .line 36566
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v0, 0x0

    aput p2, v1, v0

    const/4 v0, 0x1

    aput p3, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 36567
    .local p0, "slideAnimator":Landroid/animation/ValueAnimator;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A02:I

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 36568
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pu;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pu;-><init>(Lcom/facebook/ads/redexgen/X/Hi;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36569
    return-object v2
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Hi;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 36570
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Hi;)Landroid/view/View;
    .locals 0

    .line 36571
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A05:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Hi;Lcom/facebook/ads/redexgen/X/Pk;)Lcom/facebook/ads/redexgen/X/Pk;
    .locals 0

    .line 36572
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    return-object p1
.end method

.method private A04()V
    .locals 3

    .line 36573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 36574
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hi;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 36575
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A06:[Ljava/lang/String;

    const-string v1, "75AaLozsvbqC7RPKNa9MBDOQqsQ1eQ5U"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "oWQ9IgFva7oIaP1s8z2NxAvwjcynmKEe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    .line 36576
    :cond_1
    return-void
.end method

.method public static A05()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Zp1jBMTXyTngXAjRlLP1q6RZbaUI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "nHljDkT3i8Wirocu51jroGsoJHOhv1cR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sP6X6aS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "KZL6M4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KoOjzqZIxieUbLbPf8D"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "B1jmqrSafv9jI6Lw73IRSYcL6IlnF6YH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FLN3m70EKIfdw8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ppmNyXlbfQKy53gkSU0tUatt7Y3PBdXb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A06:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Hi;)V
    .locals 0

    .line 36577
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Hi;->A04()V

    return-void
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Hi;Z)V
    .locals 0

    .line 36578
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hi;->A09(Z)V

    return-void
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Hi;Z)V
    .locals 0

    .line 36579
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hi;->A0A(Z)V

    return-void
.end method

.method private A09(Z)V
    .locals 3

    .line 36580
    if-eqz p1, :cond_0

    .line 36581
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A06:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    .line 36582
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hi;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A04:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    .line 36583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pt;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 36585
    :goto_0
    return-void

    .line 36586
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A05:Landroid/view/View;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A04:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 36587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Landroid/view/View;)V

    .line 36588
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A05:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method

.method private A0A(Z)V
    .locals 4

    .line 36589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A05:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 36590
    if-eqz p1, :cond_0

    .line 36591
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A04:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    .line 36592
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Hi;->A05:Landroid/view/View;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A04:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:I

    invoke-direct {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Hi;->A00(Landroid/view/View;II)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    .line 36593
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ps;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ps;-><init>(Lcom/facebook/ads/redexgen/X/Hi;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 36594
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 36595
    :goto_0
    return-void

    .line 36596
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Hi;->A05:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hi;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hi;->A06:[Ljava/lang/String;

    const-string v1, "CRQ3If4kF9c"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A03:I

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 36597
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pk;->A03:Lcom/facebook/ads/redexgen/X/Pk;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    goto :goto_0
.end method


# virtual methods
.method public final A3P(ZZ)V
    .locals 0

    .line 36598
    if-eqz p2, :cond_0

    .line 36599
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hi;->A09(Z)V

    .line 36600
    :goto_0
    return-void

    .line 36601
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Hi;->A0A(Z)V

    goto :goto_0
.end method

.method public final A7G()Lcom/facebook/ads/redexgen/X/Pk;
    .locals 1

    .line 36602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A01:Lcom/facebook/ads/redexgen/X/Pk;

    return-object v0
.end method

.method public final cancel()V
    .locals 1

    .line 36603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hi;->A00:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 36604
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 36605
    :cond_0
    return-void
.end method
