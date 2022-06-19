.class Lcom/google/android/material/timepicker/RadialViewGroup;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:I

.field private c:Lcom/google/android/material/k/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/RadialViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$h;->material_radial_view_group:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1080
    new-instance v0, Lcom/google/android/material/k/h;

    invoke-direct {v0}, Lcom/google/android/material/k/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->c:Lcom/google/android/material/k/h;

    .line 1081
    new-instance v1, Lcom/google/android/material/k/k;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v2}, Lcom/google/android/material/k/k;-><init>(F)V

    .line 1484
    iget-object v2, v0, Lcom/google/android/material/k/h;->t:Lcom/google/android/material/k/h$a;

    iget-object v2, v2, Lcom/google/android/material/k/h$a;->a:Lcom/google/android/material/k/m;

    .line 1752
    invoke-virtual {v2}, Lcom/google/android/material/k/m;->b()Lcom/google/android/material/k/m$a;

    move-result-object v2

    .line 2147
    iput-object v1, v2, Lcom/google/android/material/k/m$a;->e:Lcom/google/android/material/k/c;

    .line 2161
    iput-object v1, v2, Lcom/google/android/material/k/m$a;->f:Lcom/google/android/material/k/c;

    .line 2175
    iput-object v1, v2, Lcom/google/android/material/k/m$a;->g:Lcom/google/android/material/k/c;

    .line 2189
    iput-object v1, v2, Lcom/google/android/material/k/m$a;->h:Lcom/google/android/material/k/c;

    .line 1752
    invoke-virtual {v2}, Lcom/google/android/material/k/m$a;->a()Lcom/google/android/material/k/m;

    move-result-object v1

    .line 1484
    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->setShapeAppearanceModel(Lcom/google/android/material/k/m;)V

    .line 1082
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->c:Lcom/google/android/material/k/h;

    const/4 v1, -0x1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    .line 1083
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->c:Lcom/google/android/material/k/h;

    .line 65
    invoke-static {p0, v0}, Landroidx/core/view/v;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 67
    sget-object v0, Lcom/google/android/material/a$l;->RadialViewGroup:[I

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 69
    sget p2, Lcom/google/android/material/a$l;->RadialViewGroup_materialCircleRadius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->b:I

    .line 70
    new-instance p2, Lcom/google/android/material/timepicker/RadialViewGroup$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/timepicker/RadialViewGroup$1;-><init>(Lcom/google/android/material/timepicker/RadialViewGroup;)V

    iput-object p2, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->a:Ljava/lang/Runnable;

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static b(Landroid/view/View;)Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "skip"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 128
    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 130
    invoke-static {v4}, Lcom/google/android/material/timepicker/RadialViewGroup;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_1
    new-instance v3, Landroidx/constraintlayout/widget/c;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/c;-><init>()V

    .line 136
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 139
    invoke-virtual {p0, v1}, Lcom/google/android/material/timepicker/RadialViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/google/android/material/a$f;->circle_center:I

    if-eq v6, v7, :cond_2

    invoke-static {v5}, Lcom/google/android/material/timepicker/RadialViewGroup;->b(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 144
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    sget v6, Lcom/google/android/material/a$f;->circle_center:I

    iget v7, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->b:I

    invoke-virtual {v3, v5, v6, v7, v4}, Landroidx/constraintlayout/widget/c;->a(IIIF)V

    const/high16 v5, 0x43b40000    # 360.0f

    sub-int v6, v0, v2

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->b:I

    .line 153
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->a()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 94
    invoke-super {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 96
    invoke-static {}, Landroidx/core/view/v;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->d()V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->b:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 119
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->a()V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 105
    invoke-direct {p0}, Lcom/google/android/material/timepicker/RadialViewGroup;->d()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/android/material/timepicker/RadialViewGroup;->c:Lcom/google/android/material/k/h;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/k/h;->g(Landroid/content/res/ColorStateList;)V

    return-void
.end method
