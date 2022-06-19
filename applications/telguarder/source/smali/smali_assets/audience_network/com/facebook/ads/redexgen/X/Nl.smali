.class public final Lcom/facebook/ads/redexgen/X/Nl;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A06:I


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A05:[Lcom/facebook/ads/redexgen/X/Nm;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 45802
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Nl;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;IIII)V
    .locals 3

    .line 45803
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45804
    sget v0, Lcom/facebook/ads/redexgen/X/Nl;->A06:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:I

    .line 45805
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    .line 45806
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nl;->setOrientation(I)V

    .line 45807
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Nl;->A03:I

    .line 45808
    iput p4, p0, Lcom/facebook/ads/redexgen/X/Nl;->A01:I

    .line 45809
    iput p5, p0, Lcom/facebook/ads/redexgen/X/Nl;->A02:I

    .line 45810
    new-array v0, p3, [Lcom/facebook/ads/redexgen/X/Nm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A05:[Lcom/facebook/ads/redexgen/X/Nm;

    .line 45811
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 45812
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A05:[Lcom/facebook/ads/redexgen/X/Nm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nl;->A00()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    aput-object v0, v1, v2

    .line 45813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A05:[Lcom/facebook/ads/redexgen/X/Nm;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Nl;->addView(Landroid/view/View;)V

    .line 45814
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45815
    .end local p0    # "i":I
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nl;->A01()V

    .line 45816
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/Nm;
    .locals 4

    .line 45817
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Nl;->A04:Lcom/facebook/ads/redexgen/X/Wm;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A01:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A02:I

    new-instance v2, Lcom/facebook/ads/redexgen/X/Nm;

    invoke-direct {v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Nm;-><init>(Lcom/facebook/ads/redexgen/X/Wm;II)V

    .line 45818
    .local p0, "starRatingView":Lcom/facebook/ads/redexgen/X/Nm;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A03:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45819
    .local v3, "starRatingViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 45820
    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Nm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45821
    return-object v2
.end method

.method private A01()V
    .locals 3

    .line 45822
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A05:[Lcom/facebook/ads/redexgen/X/Nm;

    array-length v0, v1

    if-ge v2, v0, :cond_1

    .line 45823
    aget-object v0, v1, v2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 45824
    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 45825
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45826
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:I

    goto :goto_1

    .line 45827
    .end local p0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nl;->requestLayout()V

    .line 45828
    return-void
.end method

.method private A02(F)V
    .locals 3

    .line 45829
    const/4 v2, 0x0

    .local p0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A05:[Lcom/facebook/ads/redexgen/X/Nm;

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 45830
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v2

    sub-float v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 45831
    .local p1, "fillRatio":F
    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_0

    .line 45832
    const/4 v1, 0x0

    .line 45833
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nl;->A05:[Lcom/facebook/ads/redexgen/X/Nm;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Nm;->setFillRatio(F)V

    .line 45834
    .end local p1    # "fillRatio":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45835
    .end local p0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public setItemSpacing(I)V
    .locals 0

    .line 45836
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Nl;->A00:I

    .line 45837
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Nl;->A01()V

    .line 45838
    return-void
.end method

.method public setRating(F)V
    .locals 0

    .line 45839
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Nl;->A02(F)V

    .line 45840
    return-void
.end method
