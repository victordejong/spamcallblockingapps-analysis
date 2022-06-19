.class public final Lcom/facebook/ads/redexgen/X/I6;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PK;


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;

.field public static final A0A:I


# instance fields
.field public A00:I

.field public A01:Landroid/animation/ObjectAnimator;

.field public A02:Landroid/widget/ProgressBar;

.field public A03:Lcom/facebook/ads/redexgen/X/9G;

.field public A04:Lcom/facebook/ads/redexgen/X/9G;

.field public A05:Lcom/facebook/ads/redexgen/X/9G;

.field public A06:Lcom/facebook/ads/redexgen/X/9G;

.field public A07:Lcom/facebook/ads/redexgen/X/Oj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 37581
    invoke-static {}, Lcom/facebook/ads/redexgen/X/I6;->A04()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/I6;->A03()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/I6;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 37582
    sget v2, Lcom/facebook/ads/redexgen/X/I6;->A0A:I

    const v1, -0xbf7f01

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I6;-><init>(Lcom/facebook/ads/redexgen/X/Wm;III)V

    .line 37583
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;III)V
    .locals 4

    .line 37584
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37585
    const/4 v3, -0x1

    iput v3, p0, Lcom/facebook/ads/redexgen/X/I6;->A00:I

    .line 37586
    new-instance v0, Lcom/facebook/ads/redexgen/X/7K;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7K;-><init>(Lcom/facebook/ads/redexgen/X/I6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A06:Lcom/facebook/ads/redexgen/X/9G;

    .line 37587
    new-instance v0, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/I6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A04:Lcom/facebook/ads/redexgen/X/9G;

    .line 37588
    new-instance v0, Lcom/facebook/ads/redexgen/X/77;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/77;-><init>(Lcom/facebook/ads/redexgen/X/I6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A05:Lcom/facebook/ads/redexgen/X/9G;

    .line 37589
    new-instance v0, Lcom/facebook/ads/redexgen/X/6Y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/6Y;-><init>(Lcom/facebook/ads/redexgen/X/I6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A03:Lcom/facebook/ads/redexgen/X/9G;

    .line 37590
    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A02:Landroid/widget/ProgressBar;

    .line 37591
    invoke-virtual {p0, p3, p4}, Lcom/facebook/ads/redexgen/X/I6;->A07(II)V

    .line 37592
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A02:Landroid/widget/ProgressBar;

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 37593
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37594
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/I6;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37595
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/I6;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 0

    .line 37596
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/I6;->A07:Lcom/facebook/ads/redexgen/X/Oj;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/I6;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x53

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 37597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 37598
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 37599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 37600
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    .line 37601
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 37602
    :cond_0
    return-void
.end method

.method public static A03()V
    .locals 4

    const/16 v3, 0x8

    sget-object v2, Lcom/facebook/ads/redexgen/X/I6;->A09:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/I6;->A09:[Ljava/lang/String;

    const-string v1, "F3xM2b87YXaGRbor1WnSFNsn05JfW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/I6;->A08:[B

    return-void

    :array_0
    .array-data 1
        -0x5t
        -0x3t
        -0x6t
        -0xet
        -0x3t
        -0x10t
        -0x2t
        -0x2t
    .end array-data
.end method

.method public static A04()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QrML4Ecz92sfYCeCtaSnFCosFmipGlTz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "VhmrcYjsqpOA7Iy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ZK9HRS350jRidth"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ZjYoflRzQYTDfI0m0JAvuVl9vp7GlkSu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MmC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZvQ3uBw3DQ7M1xesozkO3pU9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "XD5i8EmzP8U96tjWoOsk6YaJBmNCgDM7"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "cjtQcAKtxYCLU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/I6;->A09:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/I6;)V
    .locals 0

    .line 37603
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/I6;->A02()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 5

    .line 37604
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/I6;->A02()V

    .line 37605
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/I6;->A02:Landroid/widget/ProgressBar;

    const/4 v0, 0x2

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    .line 37606
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37607
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37609
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A00:I

    .line 37610
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public final A07(II)V
    .locals 7

    .line 37611
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37612
    .local p0, "bckgrndDr":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 37613
    .local p1, "secProgressDr":Landroid/graphics/drawable/Drawable;
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const v3, 0x800003

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    new-instance v1, Landroid/graphics/drawable/ScaleDrawable;

    invoke-direct {v1, v4, v3, v2, v0}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    .line 37614
    .local p2, "progressDr":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v6, v0, v4

    const/4 v3, 0x1

    aput-object v5, v0, v3

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 37615
    .local v6, "resultDr":Landroid/graphics/drawable/LayerDrawable;
    const/high16 v0, 0x1020000

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 37616
    const v0, 0x102000f

    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 37617
    const v0, 0x102000d

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 37618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37619
    return-void
.end method

.method public final A08(Z)V
    .locals 8

    .line 37620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A07:Lcom/facebook/ads/redexgen/X/Oj;

    if-nez v0, :cond_0

    .line 37621
    return-void

    .line 37622
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/I6;->A02()V

    .line 37623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A07:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getCurrentPositionInMillis()I

    move-result v7

    .line 37624
    .local p0, "position":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A07:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getDuration()I

    move-result v6

    .line 37625
    .local p1, "duration":I
    const/4 v2, 0x0

    if-lez v6, :cond_2

    mul-int/lit16 v3, v7, 0x2710

    div-int/2addr v3, v6

    .line 37626
    .local v0, "progress":I
    :goto_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A00:I

    if-ge v1, v3, :cond_1

    if-gt v6, v7, :cond_3

    .line 37627
    :cond_1
    return-void

    .line 37628
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 37629
    :cond_3
    if-eqz p1, :cond_4

    .line 37630
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/I6;->A02:Landroid/widget/ProgressBar;

    const/4 v0, 0x2

    new-array v4, v0, [I

    aput v1, v4, v2

    const/4 v0, 0x1

    aput v3, v4, v0

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/I6;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    .line 37631
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    const/16 v0, 0xfa

    sub-int/2addr v6, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 37632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37633
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A01:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37634
    :goto_1
    iput v3, p0, Lcom/facebook/ads/redexgen/X/I6;->A00:I

    .line 37635
    return-void

    .line 37636
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A02:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1
.end method

.method public final A8M(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 4

    .line 37637
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/I6;->A07:Lcom/facebook/ads/redexgen/X/Oj;

    .line 37638
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A04:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A05:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A06:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A03:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 37639
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A03([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 37640
    return-void
.end method

.method public final AEQ(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 4

    .line 37641
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Oj;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A06:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A05:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A04:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/I6;->A03:Lcom/facebook/ads/redexgen/X/9G;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 37642
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 37643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/I6;->A07:Lcom/facebook/ads/redexgen/X/Oj;

    .line 37644
    return-void
.end method
