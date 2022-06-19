.class public Lcom/facebook/ads/redexgen/X/Nh;
.super Landroid/widget/Button;
.source ""


# static fields
.field public static A0B:[Ljava/lang/String;

.field public static final A0C:I

.field public static final A0D:I


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

    .line 45654
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Nh;->A06()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nh;->A0C:I

    .line 45655
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nh;->A0D:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/1I;)V
    .locals 2

    .line 45656
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 45657
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A03:Z

    .line 45658
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A01:I

    .line 45659
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A00:I

    .line 45660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A04:Z

    .line 45661
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A05:Z

    .line 45662
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rx;-><init>(Lcom/facebook/ads/redexgen/X/Nh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A08:Ljava/lang/Runnable;

    .line 45663
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rw;-><init>(Lcom/facebook/ads/redexgen/X/Nh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A0A:Ljava/lang/Runnable;

    .line 45664
    new-instance v0, Lcom/facebook/ads/redexgen/X/Rv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Rv;-><init>(Lcom/facebook/ads/redexgen/X/Nh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A09:Ljava/lang/Runnable;

    .line 45665
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Nh;->A02:Lcom/facebook/ads/redexgen/X/1I;

    .line 45666
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A03(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:I

    .line 45667
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J4;->A00(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:F

    .line 45668
    const/16 v0, 0x10

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 45669
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nh;->setGravity(I)V

    .line 45670
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A04()V

    .line 45671
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Nh;)F
    .locals 0

    .line 45672
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A06:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Nh;)I
    .locals 0

    .line 45673
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Nh;)Ljava/lang/Runnable;
    .locals 0

    .line 45674
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A0A:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Nh;)Ljava/lang/Runnable;
    .locals 0

    .line 45675
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A08:Ljava/lang/Runnable;

    return-object p0
.end method

.method private A04()V
    .locals 2

    .line 45676
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A02:Lcom/facebook/ads/redexgen/X/1I;

    if-eqz v1, :cond_0

    .line 45677
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A08(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A00:I

    .line 45678
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A02:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1I;->A09(Z)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A01:I

    .line 45679
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A00:I

    .line 45680
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A04:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Nh;->A0D:I

    .line 45681
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Q(Landroid/view/View;II)V

    .line 45682
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A01:I

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nh;->setTextColor(I)V

    .line 45683
    return-void

    .line 45684
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A05()V
    .locals 3

    .line 45685
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A03:Z

    if-eqz v0, :cond_1

    .line 45686
    :cond_0
    return-void

    .line 45687
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A03:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Nh;->A0B:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 45688
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Nh;->A0B:[Ljava/lang/String;

    const-string v1, "QVGWsKZ9hUXhPHMuZeCIqAcU"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "lfolaSZCl8ASaScD6QDCGzAz"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nh;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45689
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_3

    .line 45690
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nh;->A08:Ljava/lang/Runnable;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nh;->A07:I

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Nh;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45691
    :cond_3
    return-void
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AuzWZ8osEfq4z249PYqxDxnd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GmaNjpajnwuNMOpMTnafkSdm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "IXSwi1vel7aGkSvKIjHlp"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5xYCukR2VNv2y0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9gt7y21mjsR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "XkvVk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YCgMHGcNxR5BY"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3lMWF0VDfBsAiU48Gpk3b"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Nh;->A0B:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 0

    .line 45692
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 45693
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A05()V

    .line 45694
    return-void
.end method

.method public setRoundedCornersEnabled(Z)V
    .locals 0

    .line 45695
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A04:Z

    .line 45696
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A04()V

    .line 45697
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 45698
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 45699
    return-void
.end method

.method public setUpButtonColors(Lcom/facebook/ads/redexgen/X/1I;)V
    .locals 0

    .line 45700
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A02:Lcom/facebook/ads/redexgen/X/1I;

    .line 45701
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A04()V

    .line 45702
    return-void
.end method

.method public setViewShowsOverMedia(Z)V
    .locals 0

    .line 45703
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Nh;->A05:Z

    .line 45704
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nh;->A04()V

    .line 45705
    return-void
.end method
