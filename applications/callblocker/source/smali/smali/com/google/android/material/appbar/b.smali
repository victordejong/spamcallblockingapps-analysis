.class abstract Lcom/google/android/material/appbar/b;
.super Lcom/google/android/material/appbar/c;
.source "HeaderScrollingViewBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/appbar/c",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/graphics/Rect;

.field final b:Landroid/graphics/Rect;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/material/appbar/c;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/b;->a:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/b;->b:Landroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/b;->c:I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/b;->a:Landroid/graphics/Rect;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/b;->b:Landroid/graphics/Rect;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/b;->c:I

    .line 51
    return-void
.end method

.method private static c(I)I
    .locals 0

    .prologue
    .line 172
    if-nez p0, :cond_0

    const p0, 0x800033

    :cond_0
    return p0
.end method


# virtual methods
.method a(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 162
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 61
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    if-eq v2, v5, :cond_0

    const/4 v0, -0x2

    if-ne v2, v0, :cond_5

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/b;->b(Ljava/util/List;)Landroid/view/View;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_5

    .line 70
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 71
    if-lez v0, :cond_2

    .line 72
    invoke-static {v1}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/h/ac;

    move-result-object v3

    .line 74
    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v3}, Landroidx/core/h/ac;->b()I

    move-result v4

    .line 76
    invoke-virtual {v3}, Landroidx/core/h/ac;->d()I

    move-result v3

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 84
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/b;->b(Landroid/view/View;)I

    move-result v3

    add-int/2addr v0, v3

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 86
    invoke-virtual {p0}, Lcom/google/android/material/appbar/b;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTranslationY(F)V

    move v1, v0

    .line 91
    :goto_1
    if-ne v2, v5, :cond_4

    const/high16 v0, 0x40000000    # 2.0f

    .line 92
    :goto_2
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_3
    return v0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    goto :goto_0

    .line 89
    :cond_3
    sub-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 91
    :cond_4
    const/high16 v0, -0x80000000

    goto :goto_2

    .line 105
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method b(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method abstract b(Ljava/util/List;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Lcom/google/android/material/appbar/b;->d:I

    .line 197
    return-void
.end method

.method protected b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    .prologue
    .line 113
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/b;->b(Ljava/util/List;)Landroid/view/View;

    move-result-object v6

    .line 116
    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 119
    iget-object v3, p0, Lcom/google/android/material/appbar/b;->a:Landroid/graphics/Rect;

    .line 121
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->leftMargin:I

    add-int/2addr v1, v2

    .line 122
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v4, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->topMargin:I

    add-int/2addr v2, v4

    .line 123
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->rightMargin:I

    sub-int/2addr v4, v5

    .line 124
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v5, v7

    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->bottomMargin:I

    sub-int/2addr v5, v7

    .line 120
    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 126
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getLastWindowInsets()Landroidx/core/h/ac;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-static {p1}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    invoke-static {p2}, Landroidx/core/h/u;->r(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 133
    iget v2, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroidx/core/h/ac;->a()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, v3, Landroid/graphics/Rect;->left:I

    .line 134
    iget v2, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroidx/core/h/ac;->c()I

    move-result v1

    sub-int v1, v2, v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 137
    :cond_0
    iget-object v4, p0, Lcom/google/android/material/appbar/b;->b:Landroid/graphics/Rect;

    .line 138
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 139
    invoke-static {v0}, Lcom/google/android/material/appbar/b;->c(I)I

    move-result v0

    .line 140
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p3

    .line 138
    invoke-static/range {v0 .. v5}, Landroidx/core/h/c;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 146
    invoke-virtual {p0, v6}, Lcom/google/android/material/appbar/b;->c(Landroid/view/View;)I

    move-result v0

    .line 148
    iget v1, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iget v3, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v5, v0

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 149
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/material/appbar/b;->c:I

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/c;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/b;->c:I

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method final c(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 166
    iget v1, p0, Lcom/google/android/material/appbar/b;->d:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/b;->a(Landroid/view/View;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/appbar/b;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/google/android/material/appbar/b;->d:I

    invoke-static {v1, v0, v2}, Landroidx/core/c/a;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/material/appbar/b;->c:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/google/android/material/appbar/b;->d:I

    return v0
.end method
