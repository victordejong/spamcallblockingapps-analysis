.class public final Lcom/facebook/ads/redexgen/X/Jc;
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

    .line 40203
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Jc;->A08:I

    .line 40204
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Jc;->A07:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40206
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A06:Landroid/graphics/Typeface;

    .line 40207
    const/4 v1, -0x1

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A00:I

    .line 40208
    const v0, -0xe2ded7

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A04:I

    .line 40209
    const v0, -0x9e9890

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A05:I

    .line 40210
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:I

    .line 40211
    const v0, -0xbd8719

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A03:I

    .line 40212
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A02:I

    .line 40213
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 40214
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 40215
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 40216
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A02:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 40217
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A03:I

    return v0
.end method

.method public final A04(F)I
    .locals 4

    .line 40218
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v3

    xor-int/lit8 v1, v3, -0x1

    const v0, 0xffffff

    and-int/2addr v1, v0

    or-int/2addr v2, v1

    .line 40219
    .local p1, "textColor":I
    invoke-static {v2, v3, p1}, Lcom/facebook/ads/redexgen/X/2L;->A02(IIF)I

    move-result v0

    return v0
.end method

.method public final A05(Landroid/widget/TextView;)V
    .locals 8

    .line 40220
    const/4 v5, 0x2

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A06:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40222
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 40223
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 40224
    .local p1, "buttonBackgroundUnpressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:I

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40225
    sget v0, Lcom/facebook/ads/redexgen/X/Jc;->A08:I

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40226
    sget v1, Lcom/facebook/ads/redexgen/X/Jc;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A02:I

    invoke-virtual {v7, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 40227
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 40228
    .local v0, "buttonBackgroundPressed":Landroid/graphics/drawable/GradientDrawable;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A03:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 40229
    sget v0, Lcom/facebook/ads/redexgen/X/Jc;->A08:I

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 40230
    sget v1, Lcom/facebook/ads/redexgen/X/Jc;->A07:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A02:I

    invoke-virtual {v6, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 40231
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 40232
    .local v0, "bgSld":Landroid/graphics/drawable/StateListDrawable;
    new-array v0, v4, [I

    const v1, 0x10100a7

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {v2, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40233
    new-array v0, v3, [I

    invoke-virtual {v2, v0, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 40234
    invoke-static {p1, v2}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 40235
    new-array v2, v5, [[I

    new-array v0, v4, [I

    aput v1, v0, v3

    aput-object v0, v2, v3

    new-array v0, v3, [I

    aput-object v0, v2, v4

    new-array v1, v5, [I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:I

    aput v0, v1, v3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A03:I

    aput v0, v1, v4

    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 40236
    .local p0, "textColors":Landroid/content/res/ColorStateList;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 40237
    return-void
.end method

.method public final A06(Landroid/widget/TextView;)V
    .locals 1

    .line 40238
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A05:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40239
    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A06:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40241
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40242
    return-void
.end method

.method public final A07(Landroid/widget/TextView;)V
    .locals 2

    .line 40243
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40244
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40245
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40246
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40247
    return-void
.end method

.method public final A08(Landroid/widget/TextView;)V
    .locals 2

    .line 40248
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A04:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40249
    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40250
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A06:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 40251
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 40252
    return-void
.end method

.method public final A09(Lcom/facebook/ads/AdOptionsView;I)V
    .locals 1

    .line 40253
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Jc;->A04:I

    invoke-virtual {p1, v0}, Lcom/facebook/ads/AdOptionsView;->setIconColor(I)V

    .line 40254
    invoke-virtual {p1, p2}, Lcom/facebook/ads/AdOptionsView;->setIconSizeDp(I)V

    .line 40255
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 40256
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A00:I

    .line 40257
    return-void
.end method

.method public final setCTABackgroundColor(I)V
    .locals 0

    .line 40258
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A01:I

    .line 40259
    return-void
.end method

.method public final setCTABorderColor(I)V
    .locals 0

    .line 40260
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A02:I

    .line 40261
    return-void
.end method

.method public final setCTATextColor(I)V
    .locals 0

    .line 40262
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A03:I

    .line 40263
    return-void
.end method

.method public final setPrimaryTextColor(I)V
    .locals 0

    .line 40264
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A04:I

    .line 40265
    return-void
.end method

.method public final setSecondaryTextColor(I)V
    .locals 0

    .line 40266
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A05:I

    .line 40267
    return-void
.end method

.method public final setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 40268
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jc;->A06:Landroid/graphics/Typeface;

    .line 40269
    return-void
.end method
