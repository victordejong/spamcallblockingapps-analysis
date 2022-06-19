.class public final Lcom/facebook/ads/redexgen/X/MB;
.super Lcom/facebook/ads/internal/api/AdNativeComponentView;
.source ""


# static fields
.field public static A08:[Ljava/lang/String;

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I

.field public static final A0F:I

.field public static final A0G:I

.field public static final A0H:I


# instance fields
.field public final A00:Landroid/widget/LinearLayout;

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Landroid/widget/RelativeLayout;

.field public final A03:Landroid/widget/TextView;

.field public final A04:Landroid/widget/TextView;

.field public final A05:Landroid/widget/TextView;

.field public final A06:Lcom/facebook/ads/redexgen/X/Ja;

.field public final A07:Lcom/facebook/ads/redexgen/X/ag;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 43562
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MB;->A0E()V

    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A09:I

    .line 43563
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A0H:I

    .line 43564
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A0D:I

    .line 43565
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A0B:I

    .line 43566
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A0G:I

    .line 43567
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A0E:I

    .line 43568
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A0C:I

    .line 43569
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A0F:I

    .line 43570
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/MB;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Ja;)V
    .locals 1

    .line 43571
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 43572
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MB;->A06:Lcom/facebook/ads/redexgen/X/Ja;

    .line 43573
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    .line 43574
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    .line 43575
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    .line 43576
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    .line 43577
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Landroid/widget/LinearLayout;

    .line 43578
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A01:Landroid/widget/RelativeLayout;

    .line 43579
    new-instance v0, Lcom/facebook/ads/redexgen/X/ag;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/ag;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    .line 43580
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A09()V

    .line 43581
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A0D()V

    .line 43582
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A05()V

    .line 43583
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A0A()V

    .line 43584
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A00()V

    .line 43585
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A0B()V

    .line 43586
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A03()V

    .line 43587
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A0A()V

    .line 43588
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A08()V

    .line 43589
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A0C()V

    .line 43590
    return-void
.end method

.method private A00()V
    .locals 3

    .line 43591
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43592
    .local p0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 43593
    const/4 v0, 0x1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43594
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43595
    return-void
.end method

.method private A01()V
    .locals 4

    .line 43596
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43597
    .local p0, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 43599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43600
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43601
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43602
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A0G:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 43603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 43604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43605
    return-void
.end method

.method private A02()V
    .locals 3

    .line 43606
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43607
    .local p0, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/MB;->A0B:I

    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A0D:I

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43608
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 43609
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43610
    return-void
.end method

.method private A03()V
    .locals 3

    .line 43611
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43612
    .local p0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43613
    return-void
.end method

.method private A04()V
    .locals 4

    .line 43614
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43615
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ag;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43616
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ag;->getId()I

    move-result v1

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ag;->getId()I

    move-result v1

    const/4 v0, 0x7

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43618
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/MB;->A0G:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 43619
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 43620
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 43622
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43623
    return-void

    :array_0
    .array-data 4
        -0x34000000    # -3.3554432E7f
        0x0
    .end array-data
.end method

.method private A05()V
    .locals 2

    .line 43624
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43625
    .local p0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/MB;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43626
    return-void
.end method

.method private A06()V
    .locals 2

    .line 43627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43628
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43629
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A06:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ja;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43630
    return-void
.end method

.method private A07()V
    .locals 3

    .line 43631
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A0H:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ag;->setMaxWidth(I)V

    .line 43632
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A06:Lcom/facebook/ads/redexgen/X/Ja;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ja;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43633
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A06:Lcom/facebook/ads/redexgen/X/Ja;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ja;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43634
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A06:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ja;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43636
    return-void
.end method

.method private A08()V
    .locals 2

    .line 43637
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A0C:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43638
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 43640
    return-void
.end method

.method private A09()V
    .locals 3

    .line 43641
    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/MB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43642
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43643
    .local p0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A06:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ja;->A01()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43644
    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A0F:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A06:Lcom/facebook/ads/redexgen/X/Ja;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ja;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 43646
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/MB;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43647
    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A0A:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/MB;->setPadding(IIII)V

    .line 43648
    return-void
.end method

.method private A0A()V
    .locals 1

    .line 43649
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 43650
    return-void
.end method

.method private A0B()V
    .locals 6

    .line 43651
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ag;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43652
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    const/16 v0, 0x8

    new-array v3, v0, [F

    sget v5, Lcom/facebook/ads/redexgen/X/MB;->A0F:I

    int-to-float v1, v5

    const/4 v0, 0x0

    aput v1, v3, v0

    int-to-float v0, v5

    const/4 v2, 0x1

    aput v0, v3, v2

    int-to-float v1, v5

    const/4 v0, 0x2

    aput v1, v3, v0

    int-to-float v1, v5

    const/4 v0, 0x3

    aput v1, v3, v0

    const/4 v1, 0x0

    const/4 v0, 0x4

    aput v1, v3, v0

    const/4 v0, 0x5

    aput v1, v3, v0

    const/4 v0, 0x6

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/No;->setRadius([F)V

    .line 43653
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/ag;->setAdjustViewBounds(Z)V

    .line 43654
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LF;->A0A:Lcom/facebook/ads/redexgen/X/LF;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LF;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LF;)V

    .line 43655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 43656
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 43657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 43658
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 43660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 43661
    const/4 v4, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43662
    .local p0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A0E:I

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 43663
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43664
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 43666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 43667
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43668
    .local v0, "subTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43669
    sget v0, Lcom/facebook/ads/redexgen/X/MB;->A0E:I

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 43670
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43671
    return-void
.end method

.method private A0D()V
    .locals 2

    .line 43672
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 43674
    return-void
.end method

.method public static A0E()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uC9D5qmNt6hBQ30WTqHbWjXyd7i1Eya7"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "gODvKHA4maP1ueedVTfLSKuHicNhKgsI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CsSG52h0mPiGpGKpZqt1sL51qY2PgKJk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "t8ZdPgNdDyW7PJ5OFmmKGTW0QKkF2iLl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "957CjoSzFmlmvQzAWdXFvCjH6Z48RGY7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Wj5TDMvsQRhldaVPvD6nNpKwpdYrUsC9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EcmINfrxIVIGvxUX8"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "04S0zAGn7nkSUB63PmP3o85Q9zROVkT0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/MB;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 43675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 43676
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A07:Lcom/facebook/ads/redexgen/X/ag;

    return-object v0
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 43677
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    float-to-int v1, v0

    .line 43678
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MB;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0C(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    .line 43679
    .local p0, "heightThreshold":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 43680
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/MB;->A08:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/MB;->A08:[Ljava/lang/String;

    const-string v1, "15DEnWMwGzueTnQFE8qATib1q5d5oHj9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "kyJeuSgnvxhO6LbcYzomu9S0GmVFz9Qa"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 43681
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A01()V

    .line 43682
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A07()V

    .line 43683
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->onMeasure(II)V

    .line 43684
    return-void

    .line 43685
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A02()V

    .line 43686
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A04()V

    .line 43687
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MB;->A06()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 4

    .line 43688
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43689
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/MB;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43690
    return-void

    .line 43691
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 43692
    .local p0, "spanString":Landroid/text/SpannableString;
    const/4 v0, 0x1

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43694
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 2

    .line 43695
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43696
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43697
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43698
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 43699
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43700
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43701
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MB;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43702
    return-void
.end method
