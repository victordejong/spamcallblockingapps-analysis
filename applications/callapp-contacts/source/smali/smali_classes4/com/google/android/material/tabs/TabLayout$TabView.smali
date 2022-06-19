.class public final Lcom/google/android/material/tabs/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabView"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/ImageView;

.field final synthetic f:Lcom/google/android/material/tabs/TabLayout;

.field private g:Lcom/google/android/material/tabs/TabLayout$f;

.field private h:Landroid/view/View;

.field private i:Lcom/google/android/material/badge/BadgeDrawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 3

    .line 2341
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 2342
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 2339
    iput v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->k:I

    .line 2343
    invoke-direct {p0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Landroid/content/Context;)V

    .line 2344
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->c:I

    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->d:I

    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->e:I

    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->f:I

    invoke-static {p0, p2, v0, v1, v2}, Landroidx/core/view/v;->b(Landroid/view/View;IIII)V

    const/16 p2, 0x11

    .line 2346
    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setGravity(I)V

    .line 2347
    iget-boolean p1, p1, Lcom/google/android/material/tabs/TabLayout;->u:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setOrientation(I)V

    .line 2348
    invoke-virtual {p0, p2}, Lcom/google/android/material/tabs/TabLayout$TabView;->setClickable(Z)V

    .line 2350
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/t;->a(Landroid/content/Context;)Landroidx/core/view/t;

    move-result-object p1

    .line 2349
    invoke-static {p0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/t;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .line 2354
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->o:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2355
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->o:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 2356
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2357
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 2360
    :cond_0
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->j:Landroid/graphics/drawable/Drawable;

    .line 2364
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2365
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2367
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    .line 2368
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, 0x3727c5ac    # 1.0E-5f

    .line 2372
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, -0x1

    .line 2373
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2375
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, v3, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    .line 2376
    invoke-static {v3}, Lcom/google/android/material/i/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 2380
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 2381
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v4, v4, Lcom/google/android/material/tabs/TabLayout;->x:Z

    if-eqz v4, :cond_2

    move-object p1, v1

    :cond_2
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v4, v4, Lcom/google/android/material/tabs/TabLayout;->x:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    invoke-direct {v2, v3, p1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v2

    goto :goto_2

    .line 2387
    :cond_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2388
    invoke-static {v0, v3}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2389
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v2

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p1, v1

    .line 2394
    :cond_5
    :goto_2
    invoke-static {p0, p1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2395
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 2721
    :cond_0
    new-instance v0, Lcom/google/android/material/tabs/TabLayout$TabView$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView$1;-><init>(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/content/Context;)V
    .locals 0

    .line 2327
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V
    .locals 5

    .line 12409
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 12410
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12411
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$TabView;Landroid/view/View;)V
    .locals 0

    .line 2327
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->c(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 2799
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setClipChildren(Z)V

    .line 2800
    invoke-virtual {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setClipToPadding(Z)V

    .line 2801
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2803
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2804
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/tabs/TabLayout$TabView;)Z
    .locals 0

    .line 2327
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->g()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/tabs/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    .line 2327
    iget-object p0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->i:Lcom/google/android/material/badge/BadgeDrawable;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 2652
    sget-boolean v0, Lcom/google/android/material/badge/a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2653
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->d()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2654
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 2658
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/android/material/a$h;->design_layout_tab_icon:I

    .line 2659
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    .line 2660
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 2774
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2778
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Z)V

    .line 2779
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->i:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2780
    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 2779
    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/a;->a(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2781
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->h:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    .line 2665
    sget-boolean v0, Lcom/google/android/material/badge/a;->a:Z

    if-eqz v0, :cond_0

    .line 2666
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->d()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2667
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 2671
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$h;->design_layout_tab_text:I

    const/4 v3, 0x0

    .line 2672
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    .line 2673
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2

    .line 2884
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->h:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2885
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->i:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/tabs/TabLayout$TabView;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/badge/a;->b(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method private d()Landroid/widget/FrameLayout;
    .locals 3

    .line 2678
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2679
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2682
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private d(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2

    .line 2895
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    return-object v1

    .line 2898
    :cond_0
    sget-boolean v0, Lcom/google/android/material/badge/a;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    return-object p1

    :cond_1
    return-object v1
.end method

.method private e()V
    .locals 2

    .line 2742
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2745
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->c:Landroid/view/View;

    if-nez v0, :cond_4

    .line 2749
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_2

    .line 8077
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 2750
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    if-eq v0, v1, :cond_1

    .line 2751
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->f()V

    .line 2753
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->b(Landroid/view/View;)V

    return-void

    .line 2755
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->c(Landroid/view/View;)V

    return-void

    .line 2757
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v0, :cond_4

    .line 8241
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2760
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    if-eq v0, v1, :cond_3

    .line 2761
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->f()V

    .line 2763
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->b(Landroid/view/View;)V

    return-void

    .line 2765
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->c(Landroid/view/View;)V

    return-void

    .line 2768
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    .line 2786
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2789
    invoke-direct {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Z)V

    .line 2790
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2791
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->i:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-static {v1, v0}, Lcom/google/android/material/badge/a;->a(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    const/4 v0, 0x0

    .line 2792
    iput-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->h:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private g()Z
    .locals 1

    .line 2890
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->i:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 2571
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5031
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$f;->f:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 2574
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 2577
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2579
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->addView(Landroid/view/View;)V

    .line 2581
    :cond_2
    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->c:Landroid/view/View;

    .line 2582
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 2583
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2585
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 2586
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2587
    iget-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v3, 0x1020014

    .line 2590
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 2592
    invoke-static {v3}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->k:I

    :cond_5
    const v3, 0x1020006

    .line 2594
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->e:Landroid/widget/ImageView;

    goto :goto_1

    .line 2597
    :cond_6
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->c:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 2598
    invoke-virtual {p0, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->removeView(Landroid/view/View;)V

    .line 2599
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->c:Landroid/view/View;

    .line 2601
    :cond_7
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->d:Landroid/widget/TextView;

    .line 2602
    iput-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->e:Landroid/widget/ImageView;

    .line 2605
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->c:Landroid/view/View;

    if-nez v2, :cond_d

    .line 2607
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    .line 2608
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->b()V

    :cond_8
    if-eqz v0, :cond_9

    .line 5077
    iget-object v2, v0, Lcom/google/android/material/tabs/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    .line 6077
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    .line 2612
    invoke-static {v1}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    .line 2615
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->i:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2616
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_a

    .line 2617
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2621
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    if-nez v1, :cond_b

    .line 2622
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->c()V

    .line 2623
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->k:I

    .line 2625
    :cond_b
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->g:I

    invoke-static {v1, v2}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;I)V

    .line 2626
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_c

    .line 2627
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2629
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2631
    invoke-direct {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->e()V

    .line 2632
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Landroid/view/View;)V

    .line 2633
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Landroid/view/View;)V

    goto :goto_2

    .line 2636
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->d:Landroid/widget/TextView;

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->e:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    .line 2637
    :cond_e
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout$TabView;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_f
    :goto_2
    if-eqz v0, :cond_10

    .line 6953
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/CharSequence;

    .line 2641
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 7953
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/CharSequence;

    .line 2644
    invoke-virtual {p0, v1}, Lcom/google/android/material/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    if-eqz v0, :cond_11

    .line 2647
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_3

    :cond_11
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method final a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 7

    .line 2819
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9077
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2820
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    .line 10077
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$f;->b:Landroid/graphics/drawable/Drawable;

    .line 2821
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2823
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v2, :cond_1

    .line 10101
    iget-object v2, v2, Lcom/google/android/material/tabs/TabLayout$f;->c:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    .line 2827
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2828
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2829
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    goto :goto_2

    .line 2831
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2832
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2836
    :cond_3
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 2839
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2840
    iget-object v6, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    .line 10953
    iget v6, v6, Lcom/google/android/material/tabs/TabLayout$f;->g:I

    if-ne v6, v5, :cond_4

    .line 2841
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 2843
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2845
    :goto_3
    invoke-virtual {p0, v4}, Lcom/google/android/material/tabs/TabLayout$TabView;->setVisibility(I)V

    goto :goto_4

    .line 2847
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2848
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    if-eqz p2, :cond_9

    .line 2853
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 2855
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    .line 2857
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/google/android/material/internal/r;->a(Landroid/content/Context;I)F

    move-result v3

    float-to-int v3, v3

    goto :goto_5

    :cond_7
    const/4 v3, 0x0

    .line 2859
    :goto_5
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v5, v5, Lcom/google/android/material/tabs/TabLayout;->u:Z

    if-eqz v5, :cond_8

    .line 2860
    invoke-static {p1}, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v5

    if-eq v3, v5, :cond_9

    .line 2861
    invoke-static {p1, v3}, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2862
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2864
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2865
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_6

    .line 2868
    :cond_8
    iget v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v3, v5, :cond_9

    .line 2869
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2870
    invoke-static {p1, v4}, Landroidx/core/view/h;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2872
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2873
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2878
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz p1, :cond_a

    .line 11953
    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$f;->d:Ljava/lang/CharSequence;

    :cond_a
    if-eqz v0, :cond_b

    goto :goto_7

    :cond_b
    move-object v2, v1

    .line 2879
    :goto_7
    invoke-static {p0, v2}, Landroidx/appcompat/widget/ad;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method final a(Lcom/google/android/material/tabs/TabLayout$f;)V
    .locals 1

    .line 2559
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    if-eq p1, v0, :cond_0

    .line 2560
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    .line 2561
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->a()V

    :cond_0
    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 3

    .line 2417
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2419
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getDrawableState()[I

    move-result-object v0

    .line 2420
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->j:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2421
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 2425
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->invalidate()V

    .line 2426
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 2471
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2472
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->i:Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2473
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->i:Lcom/google/android/material/badge/BadgeDrawable;

    .line 2475
    invoke-virtual {v0}, Lcom/google/android/material/badge/BadgeDrawable;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2474
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2477
    :cond_0
    invoke-static {p1}, Landroidx/core/view/a/c;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/a/c;

    move-result-object p1

    .line 2478
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    .line 4087
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout$f;->e:I

    .line 2485
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2479
    invoke-static {v2, v3, v0, v3, v1}, Landroidx/core/view/a/c$c;->a(IIIIZ)Landroidx/core/view/a/c$c;

    move-result-object v0

    .line 2478
    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->b(Ljava/lang/Object;)V

    .line 2486
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2487
    invoke-virtual {p1, v2}, Landroidx/core/view/a/c;->g(Z)V

    .line 2488
    sget-object v0, Landroidx/core/view/a/c$a;->e:Landroidx/core/view/a/c$a;

    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->b(Landroidx/core/view/a/c$a;)Z

    .line 2490
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$j;->item_view_role_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/view/a/c;->g(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 2495
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2496
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2497
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 4319
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->p:I

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    .line 2505
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->p:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2512
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2515
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 2516
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->m:F

    .line 2517
    iget v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->k:I

    .line 2519
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 2522
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 2524
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->n:F

    .line 2527
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 2528
    iget-object v4, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 2529
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-static {v5}, Landroidx/core/widget/h;->a(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    if-ltz v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 2535
    :cond_4
    iget-object v5, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->f:Lcom/google/android/material/tabs/TabLayout;

    iget v5, v5, Lcom/google/android/material/tabs/TabLayout;->t:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_6

    if-lez v2, :cond_6

    if-ne v4, v3, :cond_6

    .line 2541
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4952
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    div-float v2, v0, v2

    mul-float v4, v4, v2

    .line 2544
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v2, v2

    cmpl-float v2, v4, v2

    if-lez v2, :cond_6

    :cond_5
    const/4 v3, 0x0

    :cond_6
    if-eqz v3, :cond_7

    .line 2550
    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2551
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2552
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method

.method public final performClick()Z
    .locals 2

    .line 2432
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2434
    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2436
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->playSoundEffect(I)V

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->g:Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$f;->a()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final setSelected(Z)V
    .locals 2

    .line 2447
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout$TabView;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2449
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2451
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    .line 2453
    invoke-virtual {p0, v0}, Lcom/google/android/material/tabs/TabLayout$TabView;->sendAccessibilityEvent(I)V

    .line 2458
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2459
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2461
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2462
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2464
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$TabView;->c:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2465
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    return-void
.end method
