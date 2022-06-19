.class public final Lcom/google/android/material/tabs/TabLayout$h;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/tabs/TabLayout;

.field private b:Lcom/google/android/material/tabs/TabLayout$f;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;

.field private f:Lcom/google/android/material/b/a;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2171
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    .line 2172
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2169
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->k:I

    .line 2173
    invoke-direct {p0, p2}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/content/Context;)V

    .line 2174
    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->a:I

    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->b:I

    iget v3, p1, Lcom/google/android/material/tabs/TabLayout;->c:I

    iget v4, p1, Lcom/google/android/material/tabs/TabLayout;->d:I

    invoke-static {p0, v0, v2, v3, v4}, Landroidx/core/h/u;->a(Landroid/view/View;IIII)V

    .line 2176
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->setGravity(I)V

    .line 2177
    iget-boolean v0, p1, Lcom/google/android/material/tabs/TabLayout;->s:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->setOrientation(I)V

    .line 2178
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setClickable(Z)V

    .line 2180
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroidx/core/h/s;->a(Landroid/content/Context;I)Landroidx/core/h/s;

    move-result-object v0

    .line 2179
    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/s;)V

    .line 2181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroidx/core/h/a;)V

    .line 2182
    return-void

    :cond_0
    move v0, v1

    .line 2177
    goto :goto_0
.end method

.method private a(Landroid/text/Layout;IF)F
    .locals 2

    .prologue
    .line 2750
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float v1, p3, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2185
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->m:I

    if-eqz v0, :cond_2

    .line 2186
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->m:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    .line 2187
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2188
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2195
    :cond_0
    :goto_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v0, v1

    .line 2196
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2198
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    .line 2199
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2203
    const v3, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 2204
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2206
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    .line 2207
    invoke-static {v3}, Lcom/google/android/material/o/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 2211
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v3, v5, :cond_4

    .line 2212
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v5, v5, Lcom/google/android/material/tabs/TabLayout;->u:Z

    if-eqz v5, :cond_1

    move-object v1, v2

    :cond_1
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v5, v5, Lcom/google/android/material/tabs/TabLayout;->u:Z

    if-eqz v5, :cond_3

    :goto_1
    invoke-direct {v3, v4, v1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v0, v3

    .line 2225
    :goto_2
    invoke-static {p0, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2226
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    .line 2227
    return-void

    .line 2191
    :cond_2
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    move-object v2, v0

    .line 2212
    goto :goto_1

    .line 2218
    :cond_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2219
    invoke-static {v2, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2220
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v3, v6

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 2223
    goto :goto_2
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2241
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2242
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2244
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2545
    if-nez p1, :cond_0

    .line 2566
    :goto_0
    return-void

    .line 2548
    :cond_0
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$h$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/tabs/TabLayout$h$1;-><init>(Lcom/google/android/material/tabs/TabLayout$h;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/16 v6, 0x8

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2639
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    .line 2640
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    .line 2641
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2643
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout$f;->d()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v5, v4

    .line 2645
    :goto_1
    if-eqz p2, :cond_0

    .line 2646
    if-eqz v0, :cond_5

    .line 2647
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2648
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2649
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout$h;->setVisibility(I)V

    .line 2656
    :cond_0
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v4, v2

    .line 2657
    :goto_3
    if-eqz p1, :cond_1

    .line 2658
    if-eqz v4, :cond_8

    .line 2659
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2660
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$f;->c(Lcom/google/android/material/tabs/TabLayout$f;)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 2661
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2665
    :goto_4
    invoke-virtual {p0, v3}, Lcom/google/android/material/tabs/TabLayout$h;->setVisibility(I)V

    .line 2672
    :cond_1
    :goto_5
    if-eqz p2, :cond_2

    .line 2673
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2675
    if-eqz v4, :cond_c

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    .line 2677
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/google/android/material/internal/j;->a(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    .line 2679
    :goto_6
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v5, v5, Lcom/google/android/material/tabs/TabLayout;->s:Z

    if-eqz v5, :cond_9

    .line 2680
    invoke-static {v0}, Landroidx/core/h/f;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    if-eq v2, v5, :cond_2

    .line 2681
    invoke-static {v0, v2}, Landroidx/core/h/f;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2682
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2684
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2685
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2698
    :cond_2
    :goto_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout$f;->a(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2699
    :goto_8
    if-eqz v4, :cond_b

    :goto_9
    invoke-static {p0, v1}, Landroidx/appcompat/widget/ar;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 2700
    return-void

    :cond_3
    move-object v0, v1

    .line 2641
    goto :goto_0

    :cond_4
    move-object v5, v1

    .line 2643
    goto :goto_1

    .line 2651
    :cond_5
    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2652
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    move v4, v3

    .line 2656
    goto :goto_3

    .line 2663
    :cond_7
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 2667
    :cond_8
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2668
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 2688
    :cond_9
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v5, :cond_2

    .line 2689
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2690
    invoke-static {v0, v3}, Landroidx/core/h/f;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2692
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2693
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_7

    :cond_a
    move-object v0, v1

    .line 2698
    goto :goto_8

    :cond_b
    move-object v1, v0

    .line 2699
    goto :goto_9

    :cond_c
    move v2, v3

    goto :goto_6
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2157
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 2157
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$h;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 2157
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->c(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$h;)Z
    .locals 1

    .prologue
    .line 2157
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/material/tabs/TabLayout$h;)Lcom/google/android/material/b/a;
    .locals 1

    .prologue
    .line 2157
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2601
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2612
    :cond_0
    :goto_0
    return-void

    .line 2604
    :cond_1
    if-eqz p1, :cond_0

    .line 2606
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setClipChildren(Z)V

    .line 2607
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setClipToPadding(Z)V

    .line 2608
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    .line 2609
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 2608
    invoke-static {v0, p1, v1}, Lcom/google/android/material/b/b;->a(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2610
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$h;->e:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/material/tabs/TabLayout$h;)I
    .locals 1

    .prologue
    .line 2157
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getContentWidth()I

    move-result v0

    return v0
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2704
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->e:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2705
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$h;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/b/b;->c(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2707
    :cond_0
    return-void
.end method

.method private d(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2715
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    if-eq p1, v1, :cond_1

    .line 2718
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-boolean v1, Lcom/google/android/material/b/b;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2478
    .line 2479
    sget-boolean v0, Lcom/google/android/material/b/b;->a:Z

    if-eqz v0, :cond_0

    .line 2480
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->f()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2481
    invoke-virtual {p0, v0, v3}, Lcom/google/android/material/tabs/TabLayout$h;->addView(Landroid/view/View;I)V

    move-object v1, v0

    .line 2485
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/google/android/material/a$h;->design_layout_tab_icon:I

    .line 2486
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    .line 2487
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2488
    return-void

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 2491
    .line 2492
    sget-boolean v0, Lcom/google/android/material/b/b;->a:Z

    if-eqz v0, :cond_0

    .line 2493
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->f()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2494
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->addView(Landroid/view/View;)V

    move-object v1, v0

    .line 2498
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/google/android/material/a$h;->design_layout_tab_text:I

    const/4 v3, 0x0

    .line 2499
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    .line 2500
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2501
    return-void

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method

.method private f()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 2505
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2506
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2509
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2510
    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 2569
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2598
    :goto_0
    return-void

    .line 2572
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2574
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->h()V

    goto :goto_0

    .line 2576
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2577
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    if-eq v0, v1, :cond_2

    .line 2578
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->h()V

    .line 2580
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->b(Landroid/view/View;)V

    goto :goto_0

    .line 2582
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->c(Landroid/view/View;)V

    goto :goto_0

    .line 2584
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    .line 2586
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2587
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    if-eq v0, v1, :cond_4

    .line 2588
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->h()V

    .line 2590
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->b(Landroid/view/View;)V

    goto :goto_0

    .line 2592
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->c(Landroid/view/View;)V

    goto :goto_0

    .line 2595
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->h()V

    goto :goto_0
.end method

.method private getBadge()Lcom/google/android/material/b/a;
    .locals 1

    .prologue
    .line 2534
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    return-object v0
.end method

.method private getContentWidth()I
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2728
    .line 2732
    const/4 v0, 0x3

    new-array v6, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    aput-object v0, v6, v5

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    aput-object v0, v6, v3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    aput-object v1, v6, v0

    array-length v7, v6

    move v4, v5

    move v0, v5

    move v1, v5

    move v2, v5

    :goto_0
    if-ge v4, v7, :cond_3

    aget-object v5, v6, v4

    .line 2733
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    .line 2734
    if-eqz v2, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2735
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    move v2, v3

    .line 2732
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2734
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    .line 2735
    :cond_2
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_2

    .line 2740
    :cond_3
    sub-int/2addr v0, v1

    return v0
.end method

.method private getOrCreateBadge()Lcom/google/android/material/b/a;
    .locals 2

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    if-nez v0, :cond_0

    .line 2523
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;)Lcom/google/android/material/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    .line 2525
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->g()V

    .line 2526
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    if-nez v0, :cond_1

    .line 2527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to create badge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2529
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2615
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2626
    :cond_0
    :goto_0
    return-void

    .line 2618
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2620
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setClipChildren(Z)V

    .line 2621
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->setClipToPadding(Z)V

    .line 2622
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$h;->e:Landroid/view/View;

    .line 2623
    invoke-direct {p0, v2}, Lcom/google/android/material/tabs/TabLayout$h;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 2622
    invoke-static {v0, v1, v2}, Lcom/google/android/material/b/b;->b(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->e:Landroid/view/View;

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 2393
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->setTab(Lcom/google/android/material/tabs/TabLayout$f;)V

    .line 2394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->setSelected(Z)V

    .line 2395
    return-void
.end method

.method final b()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 2398
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    .line 2399
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$f;->a()Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    .line 2400
    :goto_0
    if-eqz v2, :cond_c

    .line 2401
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2402
    if-eq v0, p0, :cond_1

    .line 2403
    if-eqz v0, :cond_0

    .line 2404
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2406
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$h;->addView(Landroid/view/View;)V

    .line 2408
    :cond_1
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    .line 2409
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2410
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2412
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2413
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2414
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2417
    :cond_3
    const v0, 0x1020014

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->h:Landroid/widget/TextView;

    .line 2418
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 2419
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->k:I

    .line 2421
    :cond_4
    const v0, 0x1020006

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->i:Landroid/widget/ImageView;

    .line 2432
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    if-nez v0, :cond_f

    .line 2434
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 2435
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->d()V

    .line 2437
    :cond_5
    if-eqz v3, :cond_e

    .line 2438
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2439
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$f;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2441
    :goto_2
    if-eqz v0, :cond_6

    .line 2442
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->g:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2443
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_6

    .line 2444
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2448
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    if-nez v0, :cond_7

    .line 2449
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->e()V

    .line 2450
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->k:I

    .line 2452
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->e:I

    invoke-static {v0, v1}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;I)V

    .line 2453
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    .line 2454
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2456
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2458
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$h;->g()V

    .line 2459
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/view/View;)V

    .line 2460
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/view/View;)V

    .line 2468
    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout$f;->a(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2471
    invoke-static {v3}, Lcom/google/android/material/tabs/TabLayout$f;->a(Lcom/google/android/material/tabs/TabLayout$f;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2474
    :cond_a
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$f;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->setSelected(Z)V

    .line 2475
    return-void

    :cond_b
    move-object v2, v1

    .line 2399
    goto/16 :goto_0

    .line 2424
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 2425
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->removeView(Landroid/view/View;)V

    .line 2426
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    .line 2428
    :cond_d
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->h:Landroid/widget/TextView;

    .line 2429
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->i:Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_e
    move-object v0, v1

    .line 2439
    goto/16 :goto_2

    .line 2463
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->h:Landroid/widget/TextView;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 2464
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_3

    .line 2474
    :cond_11
    const/4 v0, 0x0

    goto :goto_4
.end method

.method final c()V
    .locals 2

    .prologue
    .line 2629
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v0, v0, Lcom/google/android/material/tabs/TabLayout;->s:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->setOrientation(I)V

    .line 2630
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->h:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2631
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2635
    :goto_1
    return-void

    .line 2629
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2633
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 2248
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2249
    const/4 v0, 0x0

    .line 2250
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getDrawableState()[I

    move-result-object v1

    .line 2251
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2252
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$h;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2255
    :cond_0
    if-eqz v0, :cond_1

    .line 2256
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->invalidate()V

    .line 2257
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    .line 2259
    :cond_1
    return-void
.end method

.method public getTab()Lcom/google/android/material/tabs/TabLayout$f;
    .locals 1

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2302
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2304
    const-class v0, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2305
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 2310
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2312
    const-class v0, Landroidx/appcompat/app/a$c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2313
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    invoke-virtual {v0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2314
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->f:Lcom/google/android/material/b/a;

    .line 2316
    invoke-virtual {v1}, Lcom/google/android/material/b/a;->f()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2315
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2318
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 2322
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2323
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2324
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v4}, Lcom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    move-result v4

    .line 2329
    if-lez v4, :cond_1

    if-eqz v2, :cond_0

    if-le v0, v4, :cond_1

    .line 2332
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->n:I

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2339
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2342
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 2343
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v0, Lcom/google/android/material/tabs/TabLayout;->k:F

    .line 2344
    iget v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->k:I

    .line 2346
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    move v0, v1

    .line 2354
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    .line 2355
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    .line 2356
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-static {v6}, Landroidx/core/widget/i;->a(Landroid/widget/TextView;)I

    move-result v6

    .line 2358
    cmpl-float v7, v2, v4

    if-nez v7, :cond_3

    if-ltz v6, :cond_6

    if-eq v0, v6, :cond_6

    .line 2362
    :cond_3
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v6, v6, Lcom/google/android/material/tabs/TabLayout;->r:I

    if-ne v6, v1, :cond_5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_5

    if-ne v5, v1, :cond_5

    .line 2368
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 2369
    if-eqz v4, :cond_4

    .line 2370
    invoke-direct {p0, v4, v3, v2}, Lcom/google/android/material/tabs/TabLayout$h;->a(Landroid/text/Layout;IF)F

    move-result v4

    .line 2371
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    :cond_4
    move v1, v3

    .line 2376
    :cond_5
    if-eqz v1, :cond_6

    .line 2377
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2378
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2379
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2383
    :cond_6
    return-void

    .line 2349
    :cond_7
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 2351
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$h;->a:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->l:F

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 2263
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2265
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v1, :cond_1

    .line 2266
    if-nez v0, :cond_0

    .line 2267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->playSoundEffect(I)V

    .line 2269
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->f()V

    .line 2270
    const/4 v0, 0x1

    .line 2272
    :cond_1
    return v0
.end method

.method public setSelected(Z)V
    .locals 2

    .prologue
    .line 2278
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_4

    const/4 v0, 0x1

    .line 2280
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 2282
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 2284
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$h;->sendAccessibilityEvent(I)V

    .line 2289
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2290
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2292
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 2293
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2295
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2296
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 2298
    :cond_3
    return-void

    .line 2278
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setTab(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    if-eq p1, v0, :cond_0

    .line 2387
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$h;->b:Lcom/google/android/material/tabs/TabLayout$f;

    .line 2388
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$h;->b()V

    .line 2390
    :cond_0
    return-void
.end method
