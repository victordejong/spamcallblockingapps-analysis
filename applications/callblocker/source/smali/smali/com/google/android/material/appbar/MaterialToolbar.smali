.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "MaterialToolbar.java"


# static fields
.field private static final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/google/android/material/a$k;->Widget_MaterialComponents_Toolbar:I

    sput v0, Lcom/google/android/material/appbar/MaterialToolbar;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/google/android/material/a$b;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/google/android/material/appbar/MaterialToolbar;->e:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->a(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v1, Lcom/google/android/material/q/g;

    invoke-direct {v1}, Lcom/google/android/material/q/g;-><init>()V

    .line 100
    if-eqz v0, :cond_1

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 101
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 102
    :goto_1
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/q/g;->f(Landroid/content/res/ColorStateList;)V

    .line 103
    invoke-virtual {v1, p1}, Lcom/google/android/material/q/g;->a(Landroid/content/Context;)V

    .line 104
    invoke-static {p0}, Landroidx/core/h/u;->n(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/q/g;->r(F)V

    .line 105
    invoke-static {p0, v1}, Landroidx/core/h/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 83
    invoke-static {p0}, Lcom/google/android/material/q/h;->a(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setElevation(F)V

    .line 91
    invoke-static {p0, p1}, Lcom/google/android/material/q/h;->a(Landroid/view/View;F)V

    .line 92
    return-void
.end method
