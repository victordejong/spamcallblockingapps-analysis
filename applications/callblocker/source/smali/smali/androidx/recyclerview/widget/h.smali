.class public Landroidx/recyclerview/widget/h;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "LinearSmoothScroller.java"


# instance fields
.field protected final a:Landroid/view/animation/LinearInterpolator;

.field protected final b:Landroid/view/animation/DecelerateInterpolator;

.field protected c:Landroid/graphics/PointF;

.field protected d:I

.field protected e:I

.field private final f:Landroid/util/DisplayMetrics;

.field private g:Z

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    .line 79
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/h;->a:Landroid/view/animation/LinearInterpolator;

    .line 81
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/h;->b:Landroid/view/animation/DecelerateInterpolator;

    .line 86
    iput-boolean v1, p0, Landroidx/recyclerview/widget/h;->g:Z

    .line 91
    iput v1, p0, Landroidx/recyclerview/widget/h;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/h;->e:I

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/h;->f:Landroid/util/DisplayMetrics;

    .line 95
    return-void
.end method

.method private b(II)I
    .locals 2

    .prologue
    .line 266
    .line 267
    sub-int v0, p1, p2

    .line 268
    mul-int v1, p1, v0

    if-gtz v1, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :cond_0
    return v0
.end method

.method private k()F
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Landroidx/recyclerview/widget/h;->g:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->f:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/h;->a(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/h;->h:F

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/h;->g:Z

    .line 174
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/h;->h:F

    return v0
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 2

    .prologue
    .line 166
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method protected a(I)I
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/h;->b(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public a(IIIII)I
    .locals 2

    .prologue
    .line 280
    packed-switch p5, :pswitch_data_0

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :pswitch_0
    sub-int v0, p3, p1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 284
    :pswitch_1
    sub-int v0, p4, p2

    goto :goto_0

    .line 286
    :pswitch_2
    sub-int v0, p3, p1

    .line 287
    if-gtz v0, :cond_0

    .line 290
    sub-int v0, p4, p2

    .line 291
    if-ltz v0, :cond_0

    .line 299
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;I)I
    .locals 6

    .prologue
    .line 314
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->e()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v4

    .line 315
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    .line 319
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 320
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->i(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->topMargin:I

    sub-int/2addr v1, v2

    .line 321
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->k(Landroid/view/View;)I

    move-result v2

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    add-int/2addr v2, v0

    .line 322
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->E()I

    move-result v3

    .line 323
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->C()I

    move-result v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->G()I

    move-result v4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p2

    .line 324
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/h;->a(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected a(IILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$t$a;)V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->j()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->f()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/h;->d:I

    invoke-direct {p0, v0, p1}, Landroidx/recyclerview/widget/h;->b(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/h;->d:I

    .line 138
    iget v0, p0, Landroidx/recyclerview/widget/h;->e:I

    invoke-direct {p0, v0, p2}, Landroidx/recyclerview/widget/h;->b(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/h;->e:I

    .line 140
    iget v0, p0, Landroidx/recyclerview/widget/h;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/h;->e:I

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0, p4}, Landroidx/recyclerview/widget/h;->a(Landroidx/recyclerview/widget/RecyclerView$t$a;)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$t$a;)V
    .locals 4

    .prologue
    .line 110
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->c()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/h;->b(Landroid/view/View;I)I

    move-result v0

    .line 111
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->d()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/h;->a(Landroid/view/View;I)I

    move-result v1

    .line 112
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 113
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/h;->a(I)I

    move-result v2

    .line 114
    if-lez v2, :cond_0

    .line 115
    neg-int v0, v0

    neg-int v1, v1

    iget-object v3, p0, Landroidx/recyclerview/widget/h;->b:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    .line 117
    :cond_0
    return-void
.end method

.method protected a(Landroidx/recyclerview/widget/RecyclerView$t$a;)V
    .locals 5

    .prologue
    const v4, 0x461c4000    # 10000.0f

    const/4 v2, 0x0

    const v3, 0x3f99999a    # 1.2f

    .line 244
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/h;->d(I)Landroid/graphics/PointF;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 246
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->i()I

    move-result v0

    .line 247
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$t$a;->a(I)V

    .line 248
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->f()V

    .line 263
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/h;->a(Landroid/graphics/PointF;)V

    .line 252
    iput-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/PointF;

    .line 254
    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/h;->d:I

    .line 255
    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/h;->e:I

    .line 256
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/h;->b(I)I

    move-result v0

    .line 260
    iget v1, p0, Landroidx/recyclerview/widget/h;->d:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, p0, Landroidx/recyclerview/widget/h;->e:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Landroidx/recyclerview/widget/h;->a:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$t$a;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method protected b(I)I
    .locals 2

    .prologue
    .line 205
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroidx/recyclerview/widget/h;->k()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public b(Landroid/view/View;I)I
    .locals 6

    .prologue
    .line 339
    invoke-virtual {p0}, Landroidx/recyclerview/widget/h;->e()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object v4

    .line 340
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$j;

    .line 345
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->h(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroidx/recyclerview/widget/RecyclerView$j;->leftMargin:I

    sub-int/2addr v1, v2

    .line 346
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView$i;->j(Landroid/view/View;)I

    move-result v2

    iget v0, v0, Landroidx/recyclerview/widget/RecyclerView$j;->rightMargin:I

    add-int/2addr v2, v0

    .line 347
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->D()I

    move-result v3

    .line 348
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->B()I

    move-result v0

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$i;->F()I

    move-result v4

    sub-int v4, v0, v4

    move-object v0, p0

    move v5, p2

    .line 349
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/h;->a(IIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/h;->e:I

    iput v0, p0, Landroidx/recyclerview/widget/h;->d:I

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/PointF;

    .line 153
    return-void
.end method

.method protected c()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected d()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/h;->c:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
