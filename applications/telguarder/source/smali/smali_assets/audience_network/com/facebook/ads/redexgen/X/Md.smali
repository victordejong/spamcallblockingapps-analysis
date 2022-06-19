.class public final Lcom/facebook/ads/redexgen/X/Md;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Mc;
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

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Lcom/facebook/ads/redexgen/X/Mg;

.field public final A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 44141
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A08:I

    .line 44142
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A09:I

    .line 44143
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42300000    # 44.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A0C:I

    .line 44144
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A07:I

    .line 44145
    sget v1, Lcom/facebook/ads/redexgen/X/Md;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A07:I

    sub-int/2addr v1, v0

    sput v1, Lcom/facebook/ads/redexgen/X/Md;->A06:I

    .line 44146
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A0D:I

    .line 44147
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A0A:I

    .line 44148
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x42340000    # 45.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A0E:I

    .line 44149
    sget v1, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    const/high16 v0, 0x41700000    # 15.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A0B:I

    .line 44150
    sget v0, Lcom/facebook/ads/redexgen/X/Lj;->A02:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/Md;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Mc;)V
    .locals 10

    .line 44151
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A01(Lcom/facebook/ads/redexgen/X/Mc;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44152
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A01(Lcom/facebook/ads/redexgen/X/Mc;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 44153
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A03(Lcom/facebook/ads/redexgen/X/Mc;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A03:Lcom/facebook/ads/redexgen/X/Mg;

    .line 44154
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A09(Lcom/facebook/ads/redexgen/X/Mc;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A0D:I

    :goto_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A01:I

    .line 44155
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A09(Lcom/facebook/ads/redexgen/X/Mc;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A0A:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A00:I

    .line 44156
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A0A(Lcom/facebook/ads/redexgen/X/Mc;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Z

    .line 44157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Md;->setFocusable(Z)V

    .line 44158
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Md;->A01(Lcom/facebook/ads/redexgen/X/Mc;)Landroid/view/View;

    move-result-object v7

    .line 44159
    .local p0, "headerView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Md;->A00(Lcom/facebook/ads/redexgen/X/Mc;)Landroid/view/View;

    move-result-object v6

    .line 44160
    .local p1, "contentView":Landroid/view/View;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Md;->getFooterView()Landroid/view/View;

    move-result-object v5

    .line 44161
    .local v0, "footerView":Landroid/view/View;
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 44162
    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 44163
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/Lj;->A0M(Landroid/view/View;)V

    .line 44164
    const/4 v9, -0x2

    const/4 v8, -0x1

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44165
    .local v0, "headerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44166
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44167
    .local v0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44168
    const/4 v1, 0x3

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44169
    const/4 v1, 0x2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 44170
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44171
    .local v0, "footerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44172
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A08:I

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 44173
    invoke-virtual {p0, v7, v4}, Lcom/facebook/ads/redexgen/X/Md;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44174
    invoke-virtual {p0, v6, v3}, Lcom/facebook/ads/redexgen/X/Md;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44175
    invoke-virtual {p0, v5, v2}, Lcom/facebook/ads/redexgen/X/Md;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44176
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A0B(Lcom/facebook/ads/redexgen/X/Mc;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44177
    return-void

    .line 44178
    :cond_0
    const/16 v1, 0x8

    goto :goto_2

    .line 44179
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A0B:I

    goto :goto_1

    .line 44180
    :cond_2
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A0E:I

    goto :goto_0
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Mc;Lcom/facebook/ads/redexgen/X/Ma;)V
    .locals 0

    .line 44181
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Md;-><init>(Lcom/facebook/ads/redexgen/X/Mc;)V

    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/Mc;)Landroid/view/View;
    .locals 13

    .line 44182
    move-object v8, p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44183
    .local p1, "iconView":Landroid/widget/ImageView;
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Md;->A00:I

    invoke-virtual {v12, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44184
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A02(Lcom/facebook/ads/redexgen/X/Mc;)Lcom/facebook/ads/redexgen/X/Lr;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44185
    const/4 v4, -0x1

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44186
    iget v0, v8, Lcom/facebook/ads/redexgen/X/Md;->A01:I

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44187
    .local v0, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 44188
    .local v12, "iconDrawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 44189
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A00(Lcom/facebook/ads/redexgen/X/Mc;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 44190
    invoke-static {v12, v1}, Lcom/facebook/ads/redexgen/X/Lj;->A0U(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 44191
    const/16 v9, 0x11

    iput v9, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44192
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A08:I

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44193
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v10, Landroid/widget/TextView;

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44194
    .local v0, "titleView":Landroid/widget/TextView;
    const/16 v0, 0x14

    invoke-static {v10, v6, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 44195
    const v0, -0xe3e1df

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44196
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A04(Lcom/facebook/ads/redexgen/X/Mc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44197
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 44198
    const/4 v5, -0x2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44199
    .local v0, "titleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A08:I

    invoke-virtual {v7, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44200
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44201
    .local v1, "subtitleView":Landroid/widget/TextView;
    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 44202
    const v0, -0x9f9890

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44203
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A05(Lcom/facebook/ads/redexgen/X/Mc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44204
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 44205
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44206
    .local v8, "subtitleParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A08:I

    invoke-virtual {v2, v0, v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44207
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44208
    .local v6, "contentView":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44209
    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44210
    invoke-virtual {v4, v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44211
    invoke-virtual {v4, v10, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44212
    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44213
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A08(Lcom/facebook/ads/redexgen/X/Mc;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44214
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44215
    .local v0, "chipContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44216
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44217
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A06(Lcom/facebook/ads/redexgen/X/Mc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44218
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Md;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v7, Lcom/facebook/ads/redexgen/X/Nj;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/Nj;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 44219
    .local v0, "logoView":Lcom/facebook/ads/redexgen/X/Nj;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A0E:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44220
    .local v9, "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A09:I

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44221
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/Nj;->setFullCircleCorners(Z)V

    .line 44222
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Md;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/Rz;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Wm;)V

    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A0E:I

    .line 44223
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A06(II)Lcom/facebook/ads/redexgen/X/Rz;

    move-result-object v1

    .line 44224
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A06(Lcom/facebook/ads/redexgen/X/Mc;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rz;->A08(Ljava/lang/String;)V

    .line 44225
    invoke-virtual {v3, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44226
    .end local v0    # "logoView":Lcom/facebook/ads/redexgen/X/Nj;
    .end local v9    # "iconLayoutParms":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/Md;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 44227
    .local v0, "selectedOptionView":Lcom/facebook/ads/redexgen/X/Mi;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A07(Lcom/facebook/ads/redexgen/X/Mc;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0D:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mi;->setData(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Lr;)V

    .line 44228
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/Mi;->setSelected(Z)V

    .line 44229
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44230
    .local v0, "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44231
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 44232
    .end local v0    # "selectedOptionParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0
    .end local v0
    :cond_1
    return-object v4
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Mc;)Landroid/view/View;
    .locals 4

    .line 44233
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44234
    .local p0, "headerView":Landroid/widget/LinearLayout;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44235
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Mc;->A0C(Lcom/facebook/ads/redexgen/X/Mc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44236
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44237
    .local p1, "closeButton":Landroid/widget/ImageView;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A07:I

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 44238
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44239
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0E:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44240
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ma;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ma;-><init>(Lcom/facebook/ads/redexgen/X/Md;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44241
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A0C:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44242
    .local v0, "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 44243
    invoke-virtual {v3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44244
    .end local p1    # "closeButton":Landroid/widget/ImageView;
    .end local v0    # "closeButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-object v3
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Md;)Lcom/facebook/ads/redexgen/X/Mg;
    .locals 0

    .line 44245
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Md;->A03:Lcom/facebook/ads/redexgen/X/Mg;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Md;)Z
    .locals 0

    .line 44246
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Md;->A04:Z

    return p0
.end method

.method private getFooterView()Landroid/view/View;
    .locals 8

    .line 44247
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 44248
    .local p0, "settingsIcon":Landroid/widget/ImageView;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lr;->A0R:Lcom/facebook/ads/redexgen/X/Lr;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A01(Lcom/facebook/ads/redexgen/X/Lr;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44249
    const v1, -0xca871b

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 44250
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A05:I

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44251
    .local v6, "settingsIconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44252
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44253
    .local v0, "managePrefsText":Landroid/widget/TextView;
    const/4 v3, 0x0

    const/16 v0, 0x10

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0Z(Landroid/widget/TextView;ZI)V

    .line 44254
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44255
    sget v0, Lcom/facebook/ads/redexgen/X/Md;->A09:I

    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 44256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Md;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 44257
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/28;->A0D(Lcom/facebook/ads/redexgen/X/Wl;)Ljava/lang/String;

    move-result-object v0

    .line 44258
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44259
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 44260
    .local v0, "textViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 44261
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Md;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44262
    .local v0, "bottomContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44263
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44264
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mb;-><init>(Lcom/facebook/ads/redexgen/X/Md;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44265
    invoke-virtual {v1, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44266
    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44267
    return-object v1
.end method
