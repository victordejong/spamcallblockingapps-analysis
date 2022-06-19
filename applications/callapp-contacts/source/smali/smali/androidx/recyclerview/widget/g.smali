.class public Landroidx/recyclerview/widget/g;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/view/animation/LinearInterpolator;

.field protected final b:Landroid/view/animation/DecelerateInterpolator;

.field protected c:Landroid/graphics/PointF;

.field protected d:I

.field protected e:I

.field private final f:Landroid/util/DisplayMetrics;

.field private n:Z

.field private o:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 79
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroid/view/animation/LinearInterpolator;

    .line 81
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/g;->b:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Landroidx/recyclerview/widget/g;->n:Z

    .line 91
    iput v0, p0, Landroidx/recyclerview/widget/g;->d:I

    iput v0, p0, Landroidx/recyclerview/widget/g;->e:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/g;->f:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private static a(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p4, v0, :cond_4

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    if-ne p4, p0, :cond_0

    sub-int/2addr p3, p1

    return p3

    .line 296
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sub-int/2addr p2, p0

    if-lez p2, :cond_2

    return p2

    :cond_2
    sub-int/2addr p3, p1

    if-gez p3, :cond_3

    return p3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    sub-int/2addr p2, p0

    return p2
.end method

.method private static b(II)I
    .locals 0

    sub-int p1, p0, p1

    mul-int p0, p0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method private getSpeedPerPixel()F
    .locals 1

    .line 170
    iget-boolean v0, p0, Landroidx/recyclerview/widget/g;->n:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/g;->a(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/g;->o:F

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Landroidx/recyclerview/widget/g;->n:Z

    .line 174
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/g;->o:F

    return v0
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 166
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected final a(I)I
    .locals 4

    .line 191
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->b(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput v0, p0, Landroidx/recyclerview/widget/g;->e:I

    iput v0, p0, Landroidx/recyclerview/widget/g;->d:I

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Landroidx/recyclerview/widget/g;->c:Landroid/graphics/PointF;

    return-void
.end method

.method protected final a(IILandroidx/recyclerview/widget/RecyclerView$r$a;)V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->b()V

    return-void

    .line 137
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/g;->d:I

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/g;->b(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->d:I

    .line 138
    iget p1, p0, Landroidx/recyclerview/widget/g;->e:I

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/g;->b(II)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->e:I

    .line 140
    iget p2, p0, Landroidx/recyclerview/widget/g;->d:I

    if-nez p2, :cond_3

    if-nez p1, :cond_3

    .line 15244
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->getTargetPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->c(I)Landroid/graphics/PointF;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 15245
    iget p2, p1, Landroid/graphics/PointF;->x:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    iget p2, p1, Landroid/graphics/PointF;->y:F

    cmpl-float p2, p2, v0

    if-nez p2, :cond_1

    goto :goto_0

    .line 16395
    :cond_1
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget v0, p1, Landroid/graphics/PointF;->x:F

    mul-float p2, p2, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, v1

    add-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 16397
    iget v0, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 16398
    iget v0, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    .line 15252
    iput-object p1, p0, Landroidx/recyclerview/widget/g;->c:Landroid/graphics/PointF;

    .line 15254
    iget p2, p1, Landroid/graphics/PointF;->x:F

    const v0, 0x461c4000    # 10000.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p0, Landroidx/recyclerview/widget/g;->d:I

    .line 15255
    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Landroidx/recyclerview/widget/g;->e:I

    const/16 p1, 0x2710

    .line 15256
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->b(I)I

    move-result p1

    .line 15260
    iget p2, p0, Landroidx/recyclerview/widget/g;->d:I

    int-to-float p2, p2

    const v0, 0x3f99999a    # 1.2f

    mul-float p2, p2, v0

    float-to-int p2, p2

    iget v1, p0, Landroidx/recyclerview/widget/g;->e:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float p1, p1

    mul-float p1, p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/recyclerview/widget/g;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p3, p2, v1, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$r$a;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 15246
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->getTargetPosition()I

    move-result p1

    .line 15512
    iput p1, p3, Landroidx/recyclerview/widget/RecyclerView$r$a;->a:I

    .line 15248
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->b()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$s;Landroidx/recyclerview/widget/RecyclerView$r$a;)V
    .locals 6

    .line 110
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->getHorizontalSnapPreference()I

    move-result p2

    .line 13339
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 13340
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->e()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 13344
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 13345
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->g(Landroid/view/View;)I

    move-result v3

    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    .line 13346
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(Landroid/view/View;)I

    move-result v4

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v2

    .line 13347
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingLeft()I

    move-result v2

    .line 13348
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingRight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 13349
    invoke-static {v3, v4, v2, v5, p2}, Landroidx/recyclerview/widget/g;->a(IIIII)I

    move-result p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 111
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->getVerticalSnapPreference()I

    move-result v0

    .line 14314
    invoke-virtual {p0}, Landroidx/recyclerview/widget/g;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 14315
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 14319
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 14320
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->h(Landroid/view/View;)I

    move-result v3

    iget v4, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 14321
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->j(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v1

    .line 14322
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingTop()I

    move-result v1

    .line 14323
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$i;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v4, v2

    .line 14324
    invoke-static {v3, p1, v1, v4, v0}, Landroidx/recyclerview/widget/g;->a(IIIII)I

    move-result v1

    :cond_3
    :goto_2
    mul-int p1, p2, p2

    mul-int v0, v1, v1

    add-int/2addr p1, v0

    int-to-double v2, p1

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 113
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/g;->a(I)I

    move-result p1

    if-lez p1, :cond_4

    neg-int p2, p2

    neg-int v0, v1

    .line 115
    iget-object v1, p0, Landroidx/recyclerview/widget/g;->b:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$r$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_4
    return-void
.end method

.method protected b(I)I
    .locals 2

    .line 205
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Landroidx/recyclerview/widget/g;->getSpeedPerPixel()F

    move-result v0

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected getHorizontalSnapPreference()I
    .locals 2

    .line 218
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->c:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getVerticalSnapPreference()I
    .locals 2

    .line 232
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->c:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/g;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
