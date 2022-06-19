.class public final Lcom/google/android/material/internal/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/r$b;,
        Lcom/google/android/material/internal/r$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)F
    .locals 1

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    int-to-float p1, p1

    .line 82
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    .line 70
    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 68
    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 66
    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 64
    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 62
    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 60
    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/view/View;Lcom/google/android/material/internal/r$a;)V
    .locals 5

    .line 218
    new-instance v0, Lcom/google/android/material/internal/r$b;

    .line 220
    invoke-static {p0}, Landroidx/core/view/v;->i(Landroid/view/View;)I

    move-result v1

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 222
    invoke-static {p0}, Landroidx/core/view/v;->j(Landroid/view/View;)I

    move-result v3

    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/internal/r$b;-><init>(IIII)V

    .line 226
    new-instance v1, Lcom/google/android/material/internal/r$3;

    invoke-direct {v1, p1, v0}, Lcom/google/android/material/internal/r$3;-><init>(Lcom/google/android/material/internal/r$a;Lcom/google/android/material/internal/r$b;)V

    invoke-static {p0, v1}, Landroidx/core/view/v;->a(Landroid/view/View;Landroidx/core/view/r;)V

    .line 235
    invoke-static {p0}, Lcom/google/android/material/internal/r;->f(Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 1

    .line 77
    invoke-static {p0}, Landroidx/core/view/v;->f(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 87
    new-instance v0, Lcom/google/android/material/internal/r$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/r$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static c(Landroid/view/View;)F
    .locals 2

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    .line 266
    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 267
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/v;->n(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    .line 268
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static d(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    .line 296
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    if-eq v1, p0, :cond_2

    .line 305
    instance-of p0, v1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    .line 306
    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static e(Landroid/view/View;)Lcom/google/android/material/internal/q;
    .locals 5

    .line 317
    invoke-static {p0}, Lcom/google/android/material/internal/r;->d(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1282
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 1283
    new-instance v0, Lcom/google/android/material/internal/p;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/p;-><init>(Landroid/view/View;)V

    return-object v0

    .line 2050
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/r;->d(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2052
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2054
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2055
    instance-of v4, v3, Lcom/google/android/material/internal/o$a;

    if-eqz v4, :cond_1

    .line 2056
    check-cast v3, Lcom/google/android/material/internal/o$a;

    iget-object p0, v3, Lcom/google/android/material/internal/o$a;->e:Lcom/google/android/material/internal/o;

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2059
    :cond_2
    new-instance v1, Lcom/google/android/material/internal/m;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/internal/m;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Landroid/view/View;)V
    .locals 1

    .line 240
    invoke-static {p0}, Landroidx/core/view/v;->E(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-static {p0}, Landroidx/core/view/v;->r(Landroid/view/View;)V

    return-void

    .line 245
    :cond_0
    new-instance v0, Lcom/google/android/material/internal/r$4;

    invoke-direct {v0}, Lcom/google/android/material/internal/r$4;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method
