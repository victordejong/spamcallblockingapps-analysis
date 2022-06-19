.class abstract Lcom/a/a/a/a/c/a;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "BaseDraggableItemDecorator.java"


# instance fields
.field protected final a:Landroidx/recyclerview/widget/RecyclerView;

.field protected b:Landroidx/recyclerview/widget/RecyclerView$w;

.field private c:I

.field private final d:I

.field private e:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/16 v0, 0xc8

    .line 31
    iput v0, p0, Lcom/a/a/a/a/c/a;->c:I

    .line 39
    iput-object p1, p0, Lcom/a/a/a/a/c/a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 40
    iput-object p2, p0, Lcom/a/a/a/a/c/a;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 42
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    .line 43
    iput p1, p0, Lcom/a/a/a/a/c/a;->d:I

    return-void
.end method

.method protected static a(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 135
    invoke-static {p0, p1}, Landroidx/core/g/u;->b(Landroid/view/View;F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 136
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    .line 138
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 139
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method protected static a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;FF)V
    .locals 0

    .line 143
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$f;->d(Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 147
    :cond_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 148
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;FFFF)F
    .locals 4

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 v3, 0x0

    if-lez v2, :cond_0

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 114
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-lez p1, :cond_1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 115
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v3

    .line 116
    :goto_1
    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const v1, 0x3d088889

    mul-float/2addr p4, v1

    .line 117
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    sub-float/2addr p5, p3

    .line 118
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    .line 122
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 123
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 125
    invoke-static {p1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 126
    invoke-static {p1, p5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 127
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/a/a/a/a/c/a;->c:I

    return-void
.end method

.method protected a(Landroid/view/View;FFFFZ)V
    .locals 3

    .line 55
    invoke-static {p1}, Landroidx/core/g/u;->p(Landroid/view/View;)F

    move-result v0

    .line 57
    invoke-virtual/range {p0 .. p5}, Lcom/a/a/a/a/c/a;->a(Landroid/view/View;FFFF)F

    move-result v1

    .line 59
    iget v2, p0, Lcom/a/a/a/a/c/a;->c:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    if-eqz p6, :cond_0

    const/16 p6, 0x14

    if-le v1, p6, :cond_0

    .line 62
    invoke-static {p1}, Landroidx/core/g/u;->n(Landroid/view/View;)Landroidx/core/g/y;

    move-result-object p6

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 65
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 66
    invoke-virtual {p1, p4}, Landroid/view/View;->setRotation(F)V

    .line 67
    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    add-float p3, v0, p2

    .line 68
    invoke-static {p1, p3}, Landroidx/core/g/u;->b(Landroid/view/View;F)V

    .line 70
    invoke-virtual {p6}, Landroidx/core/g/y;->b()V

    int-to-long p3, v1

    .line 71
    invoke-virtual {p6, p3, p4}, Landroidx/core/g/y;->a(J)Landroidx/core/g/y;

    .line 72
    iget-object p1, p0, Lcom/a/a/a/a/c/a;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {p6, p1}, Landroidx/core/g/y;->a(Landroid/view/animation/Interpolator;)Landroidx/core/g/y;

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p6, p1}, Landroidx/core/g/y;->b(F)Landroidx/core/g/y;

    .line 74
    invoke-virtual {p6, p1}, Landroidx/core/g/y;->c(F)Landroidx/core/g/y;

    .line 75
    invoke-virtual {p6, v0}, Landroidx/core/g/y;->g(F)Landroidx/core/g/y;

    .line 76
    invoke-virtual {p6, p2}, Landroidx/core/g/y;->a(F)Landroidx/core/g/y;

    .line 77
    invoke-virtual {p6, p1}, Landroidx/core/g/y;->d(F)Landroidx/core/g/y;

    .line 78
    invoke-virtual {p6, p2}, Landroidx/core/g/y;->e(F)Landroidx/core/g/y;

    .line 79
    invoke-virtual {p6, p2}, Landroidx/core/g/y;->f(F)Landroidx/core/g/y;

    .line 81
    new-instance p1, Lcom/a/a/a/a/c/a$1;

    invoke-direct {p1, p0, v0}, Lcom/a/a/a/a/c/a$1;-><init>(Lcom/a/a/a/a/c/a;F)V

    invoke-virtual {p6, p1}, Landroidx/core/g/y;->a(Landroidx/core/g/z;)Landroidx/core/g/y;

    .line 102
    invoke-virtual {p6}, Landroidx/core/g/y;->c()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {p1, v0}, Lcom/a/a/a/a/c/a;->a(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/a/a/a/a/c/a;->e:Landroid/view/animation/Interpolator;

    return-void
.end method
