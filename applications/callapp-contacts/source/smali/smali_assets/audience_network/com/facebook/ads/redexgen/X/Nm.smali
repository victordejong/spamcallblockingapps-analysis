.class public Lcom/facebook/ads/redexgen/X/Nm;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static final A0B:I

.field public static final A0C:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/1I;

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:F

.field public final A07:I

.field public final A08:Ljava/lang/Runnable;

.field public final A09:Ljava/lang/Runnable;

.field public final A0A:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45652
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nm;->A0B:I

    .line 45653
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nm;->A0C:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1I;)V
    .locals 2

    .line 45654
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 45655
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A03:Z

    .line 45656
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A01:I

    .line 45657
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A00:I

    .line 45658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A04:Z

    .line 45659
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A05:Z

    .line 45660
    new-instance v0, Lcom/facebook/ads/redexgen/X/a6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a6;-><init>(Lcom/facebook/ads/redexgen/X/Nm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A08:Ljava/lang/Runnable;

    .line 45661
    new-instance v0, Lcom/facebook/ads/redexgen/X/a5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/a5;-><init>(Lcom/facebook/ads/redexgen/X/Nm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A0A:Ljava/lang/Runnable;

    .line 45662
    new-instance v0, Lcom/facebook/ads/redexgen/X/Zx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Zx;-><init>(Lcom/facebook/ads/redexgen/X/Nm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A09:Ljava/lang/Runnable;

    .line 45663
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Nm;->A02:Lcom/facebook/ads/redexgen/X/1I;

    .line 45664
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A03(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A07:I

    .line 45665
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A00(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A06:F

    .line 45666
    const/16 v0, 0x10

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 45667
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nm;->setGravity(I)V

    .line 45668
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()V

    .line 45669
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Nm;)F
    .locals 0

    .line 45670
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A06:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Nm;)I
    .locals 0

    .line 45671
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A07:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Nm;)Ljava/lang/Runnable;
    .locals 0

    .line 45672
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A0A:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Nm;)Ljava/lang/Runnable;
    .locals 0

    .line 45673
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A08:Ljava/lang/Runnable;

    return-object p0
.end method

.method private A04()V
    .locals 2

    .line 45674
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A02:Lcom/facebook/ads/redexgen/X/1I;

    if-eqz v1, :cond_0

    .line 45675
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A08(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A00:I

    .line 45676
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A02:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A09(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A01:I

    .line 45677
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A00:I

    .line 45678
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A04:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Nm;->A0C:I

    .line 45679
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0S(Landroid/view/View;II)V

    .line 45680
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nm;->setTextColor(I)V

    .line 45681
    return-void

    .line 45682
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A05()V
    .locals 3

    .line 45683
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A07:I

    if-ltz v0, :cond_0

    .line 45684
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A03:Z

    if-eqz v0, :cond_1

    .line 45685
    :cond_0
    return-void

    .line 45686
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A03:Z

    .line 45687
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45688
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_2

    .line 45689
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nm;->A08:Ljava/lang/Runnable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nm;->A07:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Nm;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45690
    :cond_2
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 45691
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 45692
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A05()V

    .line 45693
    return-void
.end method

.method public setRoundedCornersEnabled(Z)V
    .locals 0

    .line 45694
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A04:Z

    .line 45695
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()V

    .line 45696
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 45697
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45698
    return-void
.end method

.method public setUpButtonColors(Lcom/facebook/ads/redexgen/X/1I;)V
    .locals 0

    .line 45699
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A02:Lcom/facebook/ads/redexgen/X/1I;

    .line 45700
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()V

    .line 45701
    return-void
.end method

.method public setViewShowsOverMedia(Z)V
    .locals 0

    .line 45702
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Nm;->A05:Z

    .line 45703
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nm;->A04()V

    .line 45704
    return-void
.end method
