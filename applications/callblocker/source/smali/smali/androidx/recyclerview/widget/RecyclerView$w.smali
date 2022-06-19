.class Landroidx/recyclerview/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "w"
.end annotation


# instance fields
.field a:Landroid/widget/OverScroller;

.field b:Landroid/view/animation/Interpolator;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 5246
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5238
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/animation/Interpolator;

    .line 5241
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Z

    .line 5244
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Z

    .line 5247
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    .line 5248
    return-void
.end method

.method private a(F)F
    .locals 2

    .prologue
    .line 5477
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 5478
    const v1, 0x3ef1463b

    mul-float/2addr v0, v1

    .line 5479
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(IIII)I
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 5483
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5484
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5485
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 5486
    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 5487
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 5488
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 5489
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 5490
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 5491
    int-to-float v7, v6

    int-to-float v6, v6

    .line 5492
    invoke-direct {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$w;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 5495
    if-lez v4, :cond_2

    .line 5496
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 5501
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 5485
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 5488
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 5498
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 5499
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 5498
    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 5411
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5412
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 5413
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 5403
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Z

    if-eqz v0, :cond_0

    .line 5404
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Z

    .line 5408
    :goto_0
    return-void

    .line 5406
    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->c()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 5416
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5417
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    .line 5421
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/animation/Interpolator;

    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    if-eq v0, v2, :cond_0

    .line 5422
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/animation/Interpolator;

    .line 5423
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    .line 5425
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 5427
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 5428
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 5445
    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_3

    .line 5446
    invoke-direct {p0, p1, p2, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$w;->a(IIII)I

    move-result v5

    .line 5448
    :goto_0
    if-nez p4, :cond_0

    .line 5449
    sget-object p4, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 5454
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_1

    .line 5455
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$w;->b:Landroid/view/animation/Interpolator;

    .line 5456
    new-instance v0, Landroid/widget/OverScroller;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p4}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    .line 5460
    :cond_1
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:I

    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    .line 5463
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5464
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    move v2, v1

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 5466
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    .line 5470
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 5473
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 5474
    return-void

    :cond_3
    move v5, p3

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 5505
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5506
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 5507
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    .line 5252
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    if-nez v0, :cond_0

    .line 5253
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->b()V

    .line 5400
    :goto_0
    return-void

    .line 5257
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Z

    .line 5258
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Z

    .line 5260
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 5272
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$w;->a:Landroid/widget/OverScroller;

    .line 5273
    invoke-virtual {v8}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5274
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    .line 5275
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    .line 5276
    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    sub-int v1, v0, v1

    .line 5277
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:I

    sub-int v2, v3, v2

    .line 5278
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    .line 5279
    iput v3, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:I

    .line 5280
    const/4 v7, 0x0

    .line 5281
    const/4 v6, 0x0

    .line 5284
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 5285
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v0, v3

    .line 5286
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5288
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int/2addr v1, v0

    .line 5289
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr v2, v0

    move v0, v2

    move v3, v1

    .line 5294
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 5295
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 5299
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v1, :cond_18

    .line 5300
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 5301
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v2, 0x1

    const/4 v4, 0x0

    aput v4, v1, v2

    .line 5302
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    invoke-virtual {v1, v3, v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 5303
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 5304
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    .line 5305
    sub-int/2addr v3, v1

    .line 5306
    sub-int v4, v0, v2

    .line 5310
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 5311
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->g()Z

    move-result v5

    if-nez v5, :cond_2

    .line 5312
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->h()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5313
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$u;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$u;->e()I

    move-result v5

    .line 5314
    if-nez v5, :cond_d

    .line 5315
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->f()V

    .line 5325
    :cond_2
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5326
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5330
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v0, v5

    .line 5331
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v0, v5

    .line 5332
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 5334
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v5, 0x0

    aget v0, v0, v5

    sub-int v5, v3, v0

    .line 5335
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr v4, v0

    .line 5337
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 5338
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5341
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5342
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 5350
    :cond_6
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v3

    if-ne v0, v3, :cond_f

    const/4 v0, 0x1

    .line 5351
    :goto_3
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v8}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v6

    if-ne v3, v6, :cond_10

    const/4 v3, 0x1

    .line 5352
    :goto_4
    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    if-nez v0, :cond_7

    if-eqz v5, :cond_11

    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_11

    :cond_8
    const/4 v0, 0x1

    .line 5359
    :goto_5
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 5360
    if-eqz v3, :cond_12

    .line 5361
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$t;->g()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x1

    .line 5363
    :goto_6
    if-nez v3, :cond_16

    if-eqz v0, :cond_16

    .line 5367
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    .line 5368
    invoke-virtual {v8}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 5369
    if-gez v5, :cond_13

    neg-int v1, v0

    .line 5370
    :goto_7
    if-gez v4, :cond_15

    neg-int v0, v0

    .line 5371
    :cond_9
    :goto_8
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 5374
    :cond_a
    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_b

    .line 5375
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/f$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/f$a;->a()V

    .line 5387
    :cond_b
    :goto_9
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$i;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$i;->t:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 5389
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->g()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 5390
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->a(II)V

    .line 5393
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:Z

    .line 5394
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:Z

    if-eqz v0, :cond_17

    .line 5395
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->c()V

    goto/16 :goto_0

    .line 5316
    :cond_d
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->i()I

    move-result v6

    if-lt v6, v5, :cond_e

    .line 5317
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView$t;->c(I)V

    .line 5318
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->a(II)V

    goto/16 :goto_2

    .line 5320
    :cond_e
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$t;->a(II)V

    goto/16 :goto_2

    .line 5350
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 5351
    :cond_10
    const/4 v3, 0x0

    goto :goto_4

    .line 5352
    :cond_11
    const/4 v0, 0x0

    goto :goto_5

    .line 5361
    :cond_12
    const/4 v3, 0x0

    goto :goto_6

    .line 5369
    :cond_13
    if-lez v5, :cond_14

    move v1, v0

    goto :goto_7

    :cond_14
    const/4 v1, 0x0

    goto :goto_7

    .line 5370
    :cond_15
    if-gtz v4, :cond_9

    const/4 v0, 0x0

    goto :goto_8

    .line 5380
    :cond_16
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$w;->a()V

    .line 5381
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/f;

    if-eqz v0, :cond_b

    .line 5382
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/f;

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3, v1, v2}, Landroidx/recyclerview/widget/f;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_9

    .line 5397
    :cond_17
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5398
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->c:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    goto/16 :goto_0

    :cond_18
    move v2, v6

    move v1, v7

    move v4, v0

    goto/16 :goto_2

    :cond_19
    move v0, v2

    move v3, v1

    goto/16 :goto_1
.end method
