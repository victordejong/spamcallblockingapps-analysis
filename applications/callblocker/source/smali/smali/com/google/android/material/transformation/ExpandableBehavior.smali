.class public abstract Lcom/google/android/material/transformation/ExpandableBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "ExpandableBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/transformation/ExpandableBehavior;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    return v0
.end method

.method private a(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 142
    if-eqz p1, :cond_2

    .line 144
    iget v2, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    .line 147
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    if-ne v2, v1, :cond_3

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected abstract a(Landroid/view/View;Landroid/view/View;ZZ)Z
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 4

    .prologue
    .line 90
    invoke-static {p2}, Landroidx/core/h/u;->y(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/transformation/ExpandableBehavior;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Lcom/google/android/material/k/b;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/material/k/b;->a()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v1}, Lcom/google/android/material/k/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    .line 94
    iget v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/transformation/ExpandableBehavior$1;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/google/android/material/transformation/ExpandableBehavior$1;-><init>(Lcom/google/android/material/transformation/ExpandableBehavior;Landroid/view/View;ILcom/google/android/material/k/b;)V

    .line 97
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 112
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public abstract a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 118
    check-cast p3, Lcom/google/android/material/k/b;

    .line 119
    invoke-interface {p3}, Lcom/google/android/material/k/b;->a()Z

    move-result v0

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-interface {p3}, Lcom/google/android/material/k/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/material/transformation/ExpandableBehavior;->a:I

    move-object v0, p3

    .line 122
    check-cast v0, Landroid/view/View;

    invoke-interface {p3}, Lcom/google/android/material/k/b;->a()Z

    move-result v2

    invoke-virtual {p0, v0, p2, v2, v1}, Lcom/google/android/material/transformation/ExpandableBehavior;->a(Landroid/view/View;Landroid/view/View;ZZ)Z

    move-result v0

    .line 125
    :goto_1
    return v0

    .line 121
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Lcom/google/android/material/k/b;
    .locals 5

    .prologue
    .line 131
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 132
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 133
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 134
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/transformation/ExpandableBehavior;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    check-cast v0, Lcom/google/android/material/k/b;

    .line 138
    :goto_1
    return-object v0

    .line 132
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
