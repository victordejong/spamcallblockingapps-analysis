.class public final Lcom/facebook/ads/redexgen/X/O8;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field public final A00:Landroid/view/View;

.field public final A01:Lcom/facebook/ads/redexgen/X/Np;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Landroid/view/View;)V
    .locals 1

    .line 46167
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46168
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Landroid/view/View;

    .line 46169
    new-instance v0, Lcom/facebook/ads/redexgen/X/Np;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Np;-><init>(Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/Np;

    .line 46170
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/Np;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N(Landroid/view/View;)V

    .line 46171
    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 3

    .line 46172
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Landroid/view/View;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46173
    return-void
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/Nu;Z)V
    .locals 11
    .param p1    # Lcom/facebook/ads/redexgen/X/Nu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46174
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/Np;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Landroid/view/View;

    const/4 v3, -0x2

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Np;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46175
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/O8;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46176
    .local p0, "insideLayout":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46177
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46178
    .local p1, "insideLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46179
    if-eqz p1, :cond_0

    .line 46180
    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz p2, :cond_1

    .line 46181
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46182
    .local v2, "titleDescParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/Nu;->setAlignment(I)V

    .line 46183
    sget v9, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    const/4 v8, 0x2

    div-int/2addr v9, v8

    sget v6, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    div-int/2addr v6, v8

    sget v1, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    div-int/2addr v1, v8

    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    div-int/2addr v0, v8

    invoke-virtual {v10, v9, v6, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 46184
    invoke-virtual {v5, p1, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46185
    sget-object v6, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    new-array v0, v8, [I

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1, v6, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 46186
    .local p2, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 46187
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 46188
    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0X(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 46189
    .end local p2    # "gd":Landroid/graphics/drawable/GradientDrawable;
    .end local v2    # "titleDescParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/Np;

    invoke-virtual {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/Np;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46190
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/Np;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/O8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46191
    return-void

    .line 46192
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46193
    .local v2, "titleDescParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/O8;->A01:Lcom/facebook/ads/redexgen/X/Np;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Np;->getId()I

    move-result v0

    invoke-virtual {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46194
    sget v0, Lcom/facebook/ads/redexgen/X/Nx;->A08:I

    invoke-virtual {v1, v7, v0, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46195
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->setAlignment(I)V

    .line 46196
    invoke-virtual {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/O8;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :array_0
    .array-data 4
        -0x6a000000
        0x0
    .end array-data
.end method
