.class public final Lcom/facebook/ads/redexgen/X/Ja;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/NativeAdViewAttributesApi;


# static fields
.field public static final A07:I

.field public static final A08:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/graphics/Typeface;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 40062
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ja;->A08:I

    .line 40063
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Ja;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40065
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A06:Landroid/graphics/Typeface;

    .line 40066
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A00:I

    .line 40067
    const v0, -0xe2ded7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A04:I

    .line 40068
    const v0, -0x9e9890

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A05:I

    .line 40069
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A01:I

    .line 40070
    const v0, -0xbd8719

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A03:I

    .line 40071
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A02:I

    .line 40072
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 40073
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 40074
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 40075
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 40076
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A03:I

    return v0
.end method

.method public final A04(F)I
    .locals 4

    .line 40077
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Ja;->A01:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v3

    xor-int/lit8 v1, v3, -0x1

    const v0, 0xffffff

    and-int/2addr v1, v0

    or-int/2addr v2, v1

    .line 40078
    .local p1, "textColor":I
    invoke-static {v2, v3, p1}, Lcom/facebook/ads/redexgen/X/2L;->A02(IIF)I

    move-result v0

    return v0
.end method

.method public final A05(Landroid/widget/TextView;)V
    .locals 8

    .line 40079
    const/4 v5, 0x2

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A06:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40081
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 40082
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 40083
    .local p1, "buttonBackgroundUnpressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A01:I

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40084
    sget v0, Lcom/facebook/ads/redexgen/X/Ja;->A08:I

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40085
    sget v1, Lcom/facebook/ads/redexgen/X/Ja;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A02:I

    invoke-virtual {v7, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 40086
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 40087
    .local v0, "buttonBackgroundPressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A03:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40088
    sget v0, Lcom/facebook/ads/redexgen/X/Ja;->A08:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40089
    sget v1, Lcom/facebook/ads/redexgen/X/Ja;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A02:I

    invoke-virtual {v6, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 40090
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 40091
    .local v0, "bgSld":Landroid/graphics/drawable/StateListDrawable;
    new-array v0, v4, [I

    const v1, 0x10100a7

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {v2, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40092
    new-array v0, v3, [I

    invoke-virtual {v2, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40093
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40094
    new-array v2, v5, [[I

    new-array v0, v4, [I

    aput v1, v0, v3

    aput-object v0, v2, v3

    new-array v0, v3, [I

    aput-object v0, v2, v4

    new-array v1, v5, [I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A01:I

    aput v0, v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A03:I

    aput v0, v1, v4

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 40095
    .local p0, "textColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 40096
    return-void
.end method

.method public final A06(Landroid/widget/TextView;)V
    .locals 1

    .line 40097
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A05:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40098
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A06:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40100
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40101
    return-void
.end method

.method public final A07(Landroid/widget/TextView;)V
    .locals 2

    .line 40102
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40103
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40104
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40105
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40106
    return-void
.end method

.method public final A08(Landroid/widget/TextView;)V
    .locals 2

    .line 40107
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40108
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40109
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40110
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40111
    return-void
.end method

.method public final A09(Lcom/facebook/ads/AdOptionsView;I)V
    .locals 1

    .line 40112
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ja;->A04:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AdOptionsView;->setIconColor(I)V

    .line 40113
    invoke-virtual {p1, p2}, Lcom/facebook/ads/AdOptionsView;->setIconSizeDp(I)V

    .line 40114
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 40115
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A00:I

    .line 40116
    return-void
.end method

.method public final setCTABackgroundColor(I)V
    .locals 0

    .line 40117
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A01:I

    .line 40118
    return-void
.end method

.method public final setCTABorderColor(I)V
    .locals 0

    .line 40119
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A02:I

    .line 40120
    return-void
.end method

.method public final setCTATextColor(I)V
    .locals 0

    .line 40121
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A03:I

    .line 40122
    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 0

    .line 40123
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A04:I

    .line 40124
    return-void
.end method

.method public final setSecondaryTextColor(I)V
    .locals 0

    .line 40125
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A05:I

    .line 40126
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 40127
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ja;->A06:Landroid/graphics/Typeface;

    .line 40128
    return-void
.end method
