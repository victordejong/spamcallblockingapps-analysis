.class public final Lcom/facebook/ads/redexgen/X/Mi;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Mh;
    }
.end annotation


# static fields
.field public static final A05:I

.field public static final A06:I

.field public static final A07:I

.field public static final A08:I

.field public static final A09:I

.field public static final A0A:I

.field public static final A0B:I

.field public static final A0C:I

.field public static final A0D:I

.field public static final A0E:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A03:Lcom/facebook/ads/redexgen/X/Ml;

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 44187
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A08:I

    .line 44188
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A09:I

    .line 44189
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A0C:I

    .line 44190
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A07:I

    .line 44191
    sget v1, Lcom/facebook/ads/redexgen/X/Mi;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A07:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/redexgen/X/Mi;->A06:I

    .line 44192
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A0D:I

    .line 44193
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A0A:I

    .line 44194
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x42340000    # 45.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A0E:I

    .line 44195
    sget v1, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A0B:I

    .line 44196
    sget v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Mi;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Mh;)V
    .locals 10

    .line 44197
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A01(Lcom/facebook/ads/redexgen/X/Mh;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44198
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A01(Lcom/facebook/ads/redexgen/X/Mh;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 44199
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A03(Lcom/facebook/ads/redexgen/X/Mh;)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A03:Lcom/facebook/ads/redexgen/X/Ml;

    .line 44200
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A09(Lcom/facebook/ads/redexgen/X/Mh;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A0D:I

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A01:I

    .line 44201
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A09(Lcom/facebook/ads/redexgen/X/Mh;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A0A:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A00:I

    .line 44202
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A0A(Lcom/facebook/ads/redexgen/X/Mh;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A04:Z

    .line 44203
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setFocusable(Z)V

    .line 44204
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mi;->A01(Lcom/facebook/ads/redexgen/X/Mh;)Landroid/view/View;

    move-result-object v7

    .line 44205
    .local p0, "headerView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mi;->A00(Lcom/facebook/ads/redexgen/X/Mh;)Landroid/view/View;

    move-result-object v6

    .line 44206
    .local p1, "contentView":Landroid/view/View;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getFooterView()Landroid/view/View;

    move-result-object v5

    .line 44207
    .local v0, "footerView":Landroid/view/View;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 44208
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 44209
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 44210
    const/4 v9, -0x2

    const/4 v8, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44211
    .local v0, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44212
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44213
    .local v0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44214
    const/4 v1, 0x3

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44215
    const/4 v1, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44216
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44217
    .local v0, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44218
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A08:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44219
    invoke-virtual {p0, v7, v4}, Lcom/facebook/ads/redexgen/X/Mi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44220
    invoke-virtual {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/Mi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44221
    invoke-virtual {p0, v5, v2}, Lcom/facebook/ads/redexgen/X/Mi;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44222
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A0B(Lcom/facebook/ads/redexgen/X/Mh;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44223
    return-void

    .line 44224
    :cond_0
    const/16 v1, 0x8

    goto :goto_2

    .line 44225
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A0B:I

    goto :goto_1

    .line 44226
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A0E:I

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Mh;Lcom/facebook/ads/redexgen/X/Mf;)V
    .locals 0

    .line 44227
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Mh;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Mh;)Landroid/view/View;
    .locals 13

    .line 44228
    move-object v8, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44229
    .local p1, "iconView":Landroid/widget/ImageView;
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Mi;->A00:I

    invoke-virtual {v12, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44230
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A02(Lcom/facebook/ads/redexgen/X/Mh;)Lcom/facebook/ads/redexgen/X/Lp;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44231
    const/4 v4, -0x1

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44232
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Mi;->A01:I

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44233
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44234
    .local v12, "iconDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 44235
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A00(Lcom/facebook/ads/redexgen/X/Mh;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 44236
    invoke-static {v12, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44237
    const/16 v9, 0x11

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44238
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A08:I

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44239
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44240
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v0, 0x14

    invoke-static {v10, v6, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 44241
    const v0, -0xe3e1df

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44242
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A04(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44243
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 44244
    const/4 v5, -0x2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44245
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A08:I

    invoke-virtual {v7, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44246
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44247
    .local v1, "subtitleView":Landroid/widget/TextView;
    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 44248
    const v0, -0x9f9890

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44249
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A05(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44250
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 44251
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44252
    .local v8, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A08:I

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44253
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44254
    .local v6, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44255
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44256
    invoke-virtual {v4, v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44257
    invoke-virtual {v4, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44258
    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44259
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A08(Lcom/facebook/ads/redexgen/X/Mh;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44260
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44261
    .local v0, "chipContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44262
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44263
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A06(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44264
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Mi;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v7, Lcom/facebook/ads/redexgen/X/No;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/No;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 44265
    .local v0, "logoView":Lcom/facebook/ads/redexgen/X/No;
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A0E:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44266
    .local v9, "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A09:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44267
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/No;->setFullCircleCorners(Z)V

    .line 44268
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Mi;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v1, Lcom/facebook/ads/redexgen/X/aA;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/aA;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XJ;)V

    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A0E:I

    .line 44269
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/aA;->A06(II)Lcom/facebook/ads/redexgen/X/aA;

    move-result-object v1

    .line 44270
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A06(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/aA;->A08(Ljava/lang/String;)V

    .line 44271
    invoke-virtual {v3, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44272
    .end local v0    # "logoView":Lcom/facebook/ads/redexgen/X/No;
    .end local v9    # "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Mi;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Mn;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Mn;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    .line 44273
    .local v0, "selectedOptionView":Lcom/facebook/ads/redexgen/X/Mn;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A07(Lcom/facebook/ads/redexgen/X/Mh;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0E:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mn;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lp;)V

    .line 44274
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Mn;->setSelected(Z)V

    .line 44275
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44276
    .local v0, "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44277
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44278
    .end local v0    # "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0
    .end local v0
    :cond_1
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Mh;)Landroid/view/View;
    .locals 4

    .line 44279
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44280
    .local p0, "headerView":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44281
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mh;->A0C(Lcom/facebook/ads/redexgen/X/Mh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44282
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44283
    .local p1, "closeButton":Landroid/widget/ImageView;
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A07:I

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44284
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44285
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0F:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44286
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mf;-><init>(Lcom/facebook/ads/redexgen/X/Mi;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44287
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A0C:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44288
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44289
    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44290
    .end local p1    # "closeButton":Landroid/widget/ImageView;
    .end local v0    # "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v3
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Mi;)Lcom/facebook/ads/redexgen/X/Ml;
    .locals 0

    .line 44291
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A03:Lcom/facebook/ads/redexgen/X/Ml;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Mi;)Z
    .locals 0

    .line 44292
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A04:Z

    return p0
.end method

.method private getFooterView()Landroid/view/View;
    .locals 8

    .line 44293
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44294
    .local p0, "settingsIcon":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lp;->A0S:Lcom/facebook/ads/redexgen/X/Lp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lq;->A01(Lcom/facebook/ads/redexgen/X/Lp;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44295
    const v1, -0xca871b

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44296
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A05:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44297
    .local v6, "settingsIconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44298
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44299
    .local v0, "managePrefsText":Landroid/widget/TextView;
    const/4 v3, 0x0

    const/16 v0, 0x10

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0c(Landroid/widget/TextView;ZI)V

    .line 44300
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44301
    sget v0, Lcom/facebook/ads/redexgen/X/Mi;->A09:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44302
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mi;->A02:Lcom/facebook/ads/redexgen/X/XJ;

    .line 44303
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/XK;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0D(Lcom/facebook/ads/redexgen/X/XK;)Ljava/lang/String;

    move-result-object v0

    .line 44304
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44305
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44306
    .local v0, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44307
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Mi;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44308
    .local v0, "bottomContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44309
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44310
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mg;-><init>(Lcom/facebook/ads/redexgen/X/Mi;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44311
    invoke-virtual {v1, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44312
    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44313
    return-object v1
.end method
