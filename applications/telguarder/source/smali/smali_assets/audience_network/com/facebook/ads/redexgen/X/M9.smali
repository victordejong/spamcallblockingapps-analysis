.class public final Lcom/facebook/ads/redexgen/X/M9;
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

.field public final A06:Lcom/facebook/ads/redexgen/X/Jc;

.field public final A07:Lcom/facebook/ads/redexgen/X/SJ;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 43665
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M9;->A0E()V

    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    float-to-int v0, v0

    mul-int/lit16 v0, v0, 0x1f4

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A09:I

    .line 43666
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x43fa0000    # 500.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A0H:I

    .line 43667
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A0D:I

    .line 43668
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A0B:I

    .line 43669
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A0G:I

    .line 43670
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A0E:I

    .line 43671
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A0C:I

    .line 43672
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A0F:I

    .line 43673
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    float-to-double v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    double-to-int v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/M9;->A0A:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Jc;)V
    .locals 1

    .line 43674
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/api/AdNativeComponentView;-><init>(Landroid/content/Context;)V

    .line 43675
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M9;->A06:Lcom/facebook/ads/redexgen/X/Jc;

    .line 43676
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    .line 43677
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    .line 43678
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    .line 43679
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    .line 43680
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Landroid/widget/LinearLayout;

    .line 43681
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A01:Landroid/widget/RelativeLayout;

    .line 43682
    new-instance v0, Lcom/facebook/ads/redexgen/X/SJ;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/SJ;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    .line 43683
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A09()V

    .line 43684
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A0D()V

    .line 43685
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A05()V

    .line 43686
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A0A()V

    .line 43687
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A00()V

    .line 43688
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A0B()V

    .line 43689
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A03()V

    .line 43690
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A0A()V

    .line 43691
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A08()V

    .line 43692
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A0C()V

    .line 43693
    return-void
.end method

.method private A00()V
    .locals 3

    .line 43694
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43695
    .local p0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 43696
    const/4 v0, 0x1

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43697
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43698
    return-void
.end method

.method private A01()V
    .locals 4

    .line 43699
    const/4 v3, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43700
    .local p0, "ctaParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 43702
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43703
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43704
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43705
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/M9;->A0G:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 43706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 43707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43708
    return-void
.end method

.method private A02()V
    .locals 3

    .line 43709
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43710
    .local p0, "ctaParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/M9;->A0B:I

    sget v0, Lcom/facebook/ads/redexgen/X/M9;->A0D:I

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 43711
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 43712
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43713
    return-void
.end method

.method private A03()V
    .locals 3

    .line 43714
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43715
    .local p0, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43716
    return-void
.end method

.method private A04()V
    .locals 4

    .line 43717
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43718
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->getId()I

    move-result v1

    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SJ;->getId()I

    move-result v1

    const/4 v0, 0x7

    invoke-virtual {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43721
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    sget v1, Lcom/facebook/ads/redexgen/X/M9;->A0G:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0, v1, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 43722
    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 43723
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43724
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0L(Landroid/view/View;)V

    .line 43725
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43726
    return-void

    :array_0
    .array-data 4
        -0x34000000    # -3.3554432E7f
        0x0
    .end array-data
.end method

.method private A05()V
    .locals 2

    .line 43727
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 43728
    .local p0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/M9;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43729
    return-void
.end method

.method private A06()V
    .locals 2

    .line 43730
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43732
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A06:Lcom/facebook/ads/redexgen/X/Jc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jc;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43733
    return-void
.end method

.method private A07()V
    .locals 3

    .line 43734
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    sget v0, Lcom/facebook/ads/redexgen/X/M9;->A0H:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->setMaxWidth(I)V

    .line 43735
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A06:Lcom/facebook/ads/redexgen/X/Jc;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jc;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43736
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A06:Lcom/facebook/ads/redexgen/X/Jc;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Jc;->A04(F)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43737
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A06:Lcom/facebook/ads/redexgen/X/Jc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jc;->A03()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43738
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 43739
    return-void
.end method

.method private A08()V
    .locals 2

    .line 43740
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    sget v0, Lcom/facebook/ads/redexgen/X/M9;->A0C:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43741
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 43743
    return-void
.end method

.method private A09()V
    .locals 3

    .line 43744
    const/4 v2, -0x2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M9;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43745
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 43746
    .local p0, "shape":Landroid/graphics/drawable/GradientDrawable;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A06:Lcom/facebook/ads/redexgen/X/Jc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jc;->A01()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 43747
    sget v0, Lcom/facebook/ads/redexgen/X/M9;->A0F:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 43748
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A06:Lcom/facebook/ads/redexgen/X/Jc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Jc;->A02()I

    move-result v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 43749
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/M9;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43750
    sget v0, Lcom/facebook/ads/redexgen/X/M9;->A0A:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/M9;->setPadding(IIII)V

    .line 43751
    return-void
.end method

.method private A0A()V
    .locals 1

    .line 43752
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 43753
    return-void
.end method

.method private A0B()V
    .locals 6

    .line 43754
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43755
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    const/16 v0, 0x8

    new-array v3, v0, [F

    sget v5, Lcom/facebook/ads/redexgen/X/M9;->A0F:I

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

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Nj;->setRadius([F)V

    .line 43756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/SJ;->setAdjustViewBounds(Z)V

    .line 43757
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A0B:Lcom/facebook/ads/redexgen/X/LH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/LH;->A05(Landroid/view/View;Lcom/facebook/ads/redexgen/X/LH;)V

    .line 43758
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 43759
    return-void
.end method

.method private A0C()V
    .locals 6

    .line 43760
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 43761
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43762
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 43763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 43764
    const/4 v4, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43765
    .local p0, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/M9;->A0E:I

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 43766
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43767
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43768
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 43769
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 43770
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43771
    .local v0, "subTitleParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43772
    sget v0, Lcom/facebook/ads/redexgen/X/M9;->A0E:I

    invoke-virtual {v2, v3, v3, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 43773
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A02:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43774
    return-void
.end method

.method private A0D()V
    .locals 2

    .line 43775
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 43777
    return-void
.end method

.method public static A0E()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cqqrkZtRQb88kyLB6Q2uvm01R0QnuoNK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Nq3CfSfg25oVaXc5kCSSNTYEBmLkWVpQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Ug05W3SKca0ZbWrt9dtmEm51Q"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "w8D7pTd1AENWsOJ7Gbtv6zmPYShcD12"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Jz7rkQN0I2l0GA78AAlVWxdn72"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "N7yF5pKoWcUwU52GLomX8fL4MB9AuJQz"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7uQymxnuKPwGh5iPF3bNh6uz1YyZJI6b"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "PV6rNOTmS7sV6l09QwDyTUKdw7Zl10tb"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M9;->A08:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdContentsView()Landroid/view/View;
    .locals 1

    .line 43778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    return-object v0
.end method

.method public getImageCardView()Landroid/widget/ImageView;
    .locals 1

    .line 43779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A07:Lcom/facebook/ads/redexgen/X/SJ;

    return-object v0
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 43780
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    float-to-int v1, v0

    .line 43781
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/M9;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0C(Landroid/content/Context;)I

    move-result v0

    mul-int/2addr v1, v0

    .line 43782
    .local p0, "heightThreshold":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 43783
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 43784
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A01()V

    .line 43785
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A07()V

    .line 43786
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->onMeasure(II)V

    .line 43787
    return-void

    .line 43788
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A02()V

    .line 43789
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A04()V

    .line 43790
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/M9;->A06()V

    goto :goto_0
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 4

    .line 43791
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43792
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/M9;
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43793
    return-void

    .line 43794
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 43795
    .local p0, "spanString":Landroid/text/SpannableString;
    const/4 v0, 0x1

    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v0}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 43796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A03:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43797
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 3

    .line 43798
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43799
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43800
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/M9;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 43801
    sget-object v2, Lcom/facebook/ads/redexgen/X/M9;->A08:[Ljava/lang/String;

    const-string v1, "tjmDQp9WMGCYDxrOu8tbgj2JMnaMPXF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .line 43802
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43803
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43804
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43805
    return-void
.end method
