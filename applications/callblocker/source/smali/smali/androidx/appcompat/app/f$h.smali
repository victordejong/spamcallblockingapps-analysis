.class public final Landroidx/appcompat/app/f$h;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "h"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Landroid/view/ViewGroup;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroidx/appcompat/view/menu/g;

.field k:Landroidx/appcompat/view/menu/e;

.field l:Landroid/content/Context;

.field m:Z

.field n:Z

.field o:Z

.field public p:Z

.field q:Z

.field r:Z

.field s:Landroid/os/Bundle;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 2604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2605
    iput p1, p0, Landroidx/appcompat/app/f$h;->a:I

    .line 2607
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/f$h;->q:Z

    .line 2608
    return-void
.end method


# virtual methods
.method a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;
    .locals 3

    .prologue
    .line 2672
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2683
    :goto_0
    return-object v0

    .line 2674
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    if-nez v0, :cond_1

    .line 2675
    new-instance v0, Landroidx/appcompat/view/menu/e;

    iget-object v1, p0, Landroidx/appcompat/app/f$h;->l:Landroid/content/Context;

    sget v2, Landroidx/appcompat/a$g;->abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    .line 2677
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/e;->a(Landroidx/appcompat/view/menu/m$a;)V

    .line 2678
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;)V

    .line 2681
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    iget-object v1, p0, Landroidx/appcompat/app/f$h;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/e;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/n;

    move-result-object v0

    goto :goto_0
.end method

.method a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2628
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2629
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2630
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2633
    sget v2, Landroidx/appcompat/a$a;->actionBarPopupTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2634
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    .line 2635
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2639
    :cond_0
    sget v2, Landroidx/appcompat/a$a;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2640
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    .line 2641
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2646
    :goto_0
    new-instance v0, Landroidx/appcompat/view/d;

    invoke-direct {v0, p1, v4}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 2647
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2649
    iput-object v0, p0, Landroidx/appcompat/app/f$h;->l:Landroid/content/Context;

    .line 2651
    sget-object v1, Landroidx/appcompat/a$j;->AppCompatTheme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2652
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_panelBackground:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/app/f$h;->b:I

    .line 2654
    sget v1, Landroidx/appcompat/a$j;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/app/f$h;->f:I

    .line 2656
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2657
    return-void

    .line 2643
    :cond_1
    sget v0, Landroidx/appcompat/a$i;->Theme_AppCompat_CompactMenu:I

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method a(Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .prologue
    .line 2660
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-ne p1, v0, :cond_1

    .line 2669
    :cond_0
    :goto_0
    return-void

    .line 2662
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_2

    .line 2663
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    iget-object v1, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/m;)V

    .line 2665
    :cond_2
    iput-object p1, p0, Landroidx/appcompat/app/f$h;->j:Landroidx/appcompat/view/menu/g;

    .line 2666
    if-eqz p1, :cond_0

    .line 2667
    iget-object v0, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/m;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2611
    iget-object v2, p0, Landroidx/appcompat/app/f$h;->h:Landroid/view/View;

    if-nez v2, :cond_1

    move v0, v1

    .line 2614
    :cond_0
    :goto_0
    return v0

    .line 2612
    :cond_1
    iget-object v2, p0, Landroidx/appcompat/app/f$h;->i:Landroid/view/View;

    if-nez v2, :cond_0

    .line 2614
    iget-object v2, p0, Landroidx/appcompat/app/f$h;->k:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/e;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
