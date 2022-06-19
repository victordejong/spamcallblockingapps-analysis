.class Lcom/a/a/a/a/c/g;
.super Lcom/a/a/a/a/c/a;
.source "DraggingItemDecorator.java"


# instance fields
.field private A:F

.field private B:Landroid/view/animation/Interpolator;

.field private C:Landroid/view/animation/Interpolator;

.field private D:Landroid/view/animation/Interpolator;

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Bitmap;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/graphics/drawable/NinePatchDrawable;

.field private final m:Landroid/graphics/Rect;

.field private n:Z

.field private o:Z

.field private p:Lcom/a/a/a/a/c/j;

.field private q:I

.field private r:I

.field private s:Lcom/a/a/a/a/c/i;

.field private t:Landroid/graphics/Paint;

.field private u:J

.field private v:J

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;Lcom/a/a/a/a/c/j;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/a/a/a/a/c/a;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;)V

    .line 45
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    const-wide/16 p1, 0x0

    .line 55
    iput-wide p1, p0, Lcom/a/a/a/a/c/g;->v:J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 56
    iput p1, p0, Lcom/a/a/a/a/c/g;->w:F

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/a/a/a/a/c/g;->x:F

    .line 58
    iput p1, p0, Lcom/a/a/a/a/c/g;->y:F

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->B:Landroid/view/animation/Interpolator;

    .line 62
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->C:Landroid/view/animation/Interpolator;

    .line 63
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->D:Landroid/view/animation/Interpolator;

    .line 72
    iput-object p3, p0, Lcom/a/a/a/a/c/g;->p:Lcom/a/a/a/a/c/j;

    .line 73
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/a/c/g;->t:Landroid/graphics/Paint;

    return-void
.end method

.method private static a(Landroid/view/animation/Interpolator;F)F
    .locals 0

    if-eqz p0, :cond_0

    .line 511
    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_0
    return p1
.end method

.method private static a(III)I
    .locals 0

    .line 77
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/View;Landroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;
    .locals 8

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 427
    iget-object v4, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    .line 428
    iget-object v5, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    .line 431
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 432
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 430
    invoke-virtual {p1, v7, v6}, Landroid/view/View;->measure(II)V

    add-int/2addr v2, v1

    add-int/2addr v3, v0

    .line 434
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 436
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 438
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    .line 441
    invoke-virtual {p2, v2, v2, v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 442
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 445
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result p2

    .line 447
    iget-object v2, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 448
    iget-object v2, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 449
    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 450
    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-object v0
.end method

.method private static a(Landroidx/recyclerview/widget/RecyclerView;Lcom/a/a/a/a/c/j;II)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    if-ne p3, v1, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 89
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 90
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 93
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v4

    if-lt v4, p2, :cond_1

    if-gt v4, p3, :cond_1

    .line 97
    invoke-virtual {p1, v4}, Lcom/a/a/a/a/c/j;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private a(FI)V
    .locals 3

    .line 457
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v2, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 460
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 461
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr p2, v2

    int-to-float p2, p2

    .line 458
    invoke-static {v0, v1, p1, p2}, Lcom/a/a/a/a/c/g;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;FF)V

    :cond_0
    return-void
.end method

.method private static b(Landroidx/recyclerview/widget/RecyclerView;Lcom/a/a/a/a/c/j;II)Landroid/view/View;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    if-ne p3, v1, :cond_0

    goto :goto_1

    .line 115
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 117
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 118
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$w;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 121
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$w;->getLayoutPosition()I

    move-result v3

    if-lt v3, p2, :cond_1

    if-gt v3, p3, :cond_1

    .line 125
    invoke-virtual {p1, v3}, Lcom/a/a/a/a/c/j;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private n()V
    .locals 7

    .line 322
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 323
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x0

    .line 326
    iput v1, p0, Lcom/a/a/a/a/c/g;->f:I

    .line 327
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v3, v3, Lcom/a/a/a/a/c/i;->a:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/a/a/c/g;->g:I

    .line 329
    iput v1, p0, Lcom/a/a/a/a/c/g;->h:I

    .line 330
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v3, v3, Lcom/a/a/a/a/c/i;->b:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/a/a/a/a/c/g;->i:I

    .line 332
    iget v2, p0, Lcom/a/a/a/a/c/g;->q:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v2, v2, Lcom/a/a/a/a/c/i;->b:I

    neg-int v2, v2

    iput v2, p0, Lcom/a/a/a/a/c/g;->h:I

    .line 335
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/a/a/a/a/c/g;->i:I

    .line 336
    iget v2, p0, Lcom/a/a/a/a/c/g;->f:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/a/a/a/a/c/g;->f:I

    .line 337
    iget v2, p0, Lcom/a/a/a/a/c/g;->g:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/a/a/a/a/c/g;->g:I

    goto :goto_0

    .line 341
    :cond_1
    iget v2, p0, Lcom/a/a/a/a/c/g;->h:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    iput v2, p0, Lcom/a/a/a/a/c/g;->h:I

    .line 342
    iget v2, p0, Lcom/a/a/a/a/c/g;->i:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/a/a/a/a/c/g;->i:I

    .line 343
    iget-object v2, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v2, v2, Lcom/a/a/a/a/c/i;->a:I

    neg-int v2, v2

    iput v2, p0, Lcom/a/a/a/a/c/g;->f:I

    .line 344
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/a/a/a/a/c/g;->g:I

    .line 349
    :goto_0
    iget v2, p0, Lcom/a/a/a/a/c/g;->f:I

    iget v4, p0, Lcom/a/a/a/a/c/g;->g:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/a/a/a/a/c/g;->g:I

    .line 350
    iget v2, p0, Lcom/a/a/a/a/c/g;->h:I

    iget v4, p0, Lcom/a/a/a/a/c/g;->i:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/a/a/a/a/c/g;->i:I

    .line 352
    iget-boolean v2, p0, Lcom/a/a/a/a/c/g;->o:Z

    if-nez v2, :cond_7

    .line 353
    invoke-static {v0, v3}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;Z)I

    move-result v2

    .line 354
    invoke-static {v0, v3}, Lcom/a/a/a/a/d/a;->b(Landroidx/recyclerview/widget/RecyclerView;Z)I

    move-result v4

    .line 355
    iget-object v5, p0, Lcom/a/a/a/a/c/g;->p:Lcom/a/a/a/a/c/j;

    invoke-static {v0, v5, v2, v4}, Lcom/a/a/a/a/c/g;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/a/a/a/a/c/j;II)Landroid/view/View;

    move-result-object v5

    .line 356
    iget-object v6, p0, Lcom/a/a/a/a/c/g;->p:Lcom/a/a/a/a/c/j;

    invoke-static {v0, v6, v2, v4}, Lcom/a/a/a/a/c/g;->b(Landroidx/recyclerview/widget/RecyclerView;Lcom/a/a/a/a/c/j;II)Landroid/view/View;

    move-result-object v0

    .line 358
    iget v2, p0, Lcom/a/a/a/a/c/g;->q:I

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 362
    iget v2, p0, Lcom/a/a/a/a/c/g;->i:I

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/a/a/a/a/c/g;->h:I

    :cond_3
    if-eqz v0, :cond_7

    .line 366
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v2, v2, Lcom/a/a/a/a/c/i;->b:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 367
    iget v1, p0, Lcom/a/a/a/a/c/g;->i:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/g;->i:I

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    .line 373
    iget v2, p0, Lcom/a/a/a/a/c/g;->f:I

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/a/a/a/a/c/g;->f:I

    :cond_5
    if-eqz v0, :cond_7

    .line 377
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v2, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v2, v2, Lcom/a/a/a/a/c/i;->a:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 378
    iget v1, p0, Lcom/a/a/a/a/c/g;->g:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/g;->g:I

    goto :goto_1

    .line 385
    :cond_6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/a/a/a/a/c/g;->f:I

    iput v1, p0, Lcom/a/a/a/a/c/g;->g:I

    .line 386
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/g;->h:I

    iput v0, p0, Lcom/a/a/a/a/c/g;->i:I

    .line 389
    :cond_7
    :goto_1
    iget v0, p0, Lcom/a/a/a/a/c/g;->j:I

    iget-object v1, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v1, v1, Lcom/a/a/a/a/c/i;->f:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/a/a/c/g;->c:I

    .line 390
    iget v0, p0, Lcom/a/a/a/a/c/g;->k:I

    iget-object v1, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v1, v1, Lcom/a/a/a/a/c/i;->g:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/a/a/c/g;->d:I

    .line 392
    iget v0, p0, Lcom/a/a/a/a/c/g;->r:I

    invoke-static {v0}, Lcom/a/a/a/a/d/a;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 393
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    iget v1, p0, Lcom/a/a/a/a/c/g;->f:I

    iget v2, p0, Lcom/a/a/a/a/c/g;->g:I

    invoke-static {v0, v1, v2}, Lcom/a/a/a/a/c/g;->a(III)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/g;->c:I

    .line 394
    iget v0, p0, Lcom/a/a/a/a/c/g;->d:I

    iget v1, p0, Lcom/a/a/a/a/c/g;->h:I

    iget v2, p0, Lcom/a/a/a/a/c/g;->i:I

    invoke-static {v0, v1, v2}, Lcom/a/a/a/a/c/g;->a(III)I

    move-result v0

    iput v0, p0, Lcom/a/a/a/a/c/g;->d:I

    :cond_8
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/a/a/a/a/c/g;->d:I

    return v0
.end method

.method public a(Landroid/graphics/drawable/NinePatchDrawable;)V
    .locals 1

    .line 298
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->l:Landroid/graphics/drawable/NinePatchDrawable;

    .line 300
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->l:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-nez v0, :cond_0

    .line 505
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 507
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 502
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A new view holder is attempt to be assigned before invalidating the older one"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/a/a/a/a/c/h;)V
    .locals 2

    .line 174
    iget v0, p1, Lcom/a/a/a/a/c/h;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/a/a/a/a/c/g;->v:J

    .line 175
    iget v0, p1, Lcom/a/a/a/a/c/h;->b:F

    iput v0, p0, Lcom/a/a/a/a/c/g;->w:F

    .line 176
    iget-object v0, p1, Lcom/a/a/a/a/c/h;->e:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/a/a/a/a/c/g;->B:Landroid/view/animation/Interpolator;

    .line 177
    iget v0, p1, Lcom/a/a/a/a/c/h;->c:F

    iput v0, p0, Lcom/a/a/a/a/c/g;->x:F

    .line 178
    iget-object v0, p1, Lcom/a/a/a/a/c/h;->f:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/a/a/a/a/c/g;->C:Landroid/view/animation/Interpolator;

    .line 179
    iget v0, p1, Lcom/a/a/a/a/c/h;->d:F

    iput v0, p0, Lcom/a/a/a/a/c/g;->y:F

    .line 180
    iget-object p1, p1, Lcom/a/a/a/a/c/h;->g:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/a/a/a/a/c/g;->D:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public a(Lcom/a/a/a/a/c/i;II)V
    .locals 2

    .line 184
    iget-boolean v0, p0, Lcom/a/a/a/a/c/g;->n:Z

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    .line 190
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    .line 191
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->l:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {p0, v0, p1}, Lcom/a/a/a/a/c/g;->a(Landroid/view/View;Landroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/a/a/a/a/c/g;->e:Landroid/graphics/Bitmap;

    .line 193
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/g;->f:I

    .line 194
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/g;->h:I

    .line 195
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/a/a/a/a/d/a;->e(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/g;->q:I

    .line 196
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Lcom/a/a/a/a/d/a;->a(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/g;->r:I

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/g;->z:F

    .line 199
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result p1

    iput p1, p0, Lcom/a/a/a/a/c/g;->A:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 201
    iput p1, p0, Lcom/a/a/a/a/c/g;->E:F

    .line 202
    iput p1, p0, Lcom/a/a/a/a/c/g;->F:F

    const/4 v1, 0x0

    .line 203
    iput v1, p0, Lcom/a/a/a/a/c/g;->G:F

    .line 204
    iput p1, p0, Lcom/a/a/a/a/c/g;->H:F

    const/4 p1, 0x4

    .line 207
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 209
    invoke-virtual {p0, p2, p3, p1}, Lcom/a/a/a/a/c/g;->a(IIZ)Z

    .line 211
    iget-object p2, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/a/a/a/a/c/g;->u:J

    .line 214
    iput-boolean p1, p0, Lcom/a/a/a/a/c/g;->n:Z

    return-void
.end method

.method public a(Lcom/a/a/a/a/c/i;Landroidx/recyclerview/widget/RecyclerView$w;)V
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/a/a/a/a/c/g;->n:Z

    if-nez v0, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eq v0, p2, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/a/a/a/a/c/g;->m()V

    .line 223
    iput-object p2, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 225
    :cond_1
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/a/a/a/a/c/g;->l:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {p0, p2, v0}, Lcom/a/a/a/a/c/g;->a(Landroid/view/View;Landroid/graphics/drawable/NinePatchDrawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/a/a/a/a/c/g;->e:Landroid/graphics/Bitmap;

    .line 226
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    const/4 p1, 0x1

    .line 227
    invoke-virtual {p0, p1}, Lcom/a/a/a/a/c/g;->b(Z)Z

    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 231
    iget-boolean v0, p0, Lcom/a/a/a/a/c/g;->n:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$f;->d()V

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 242
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/a/a/a/a/c/g;->d:I

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/a/c/g;->a(FI)V

    .line 243
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    iget v3, p0, Lcom/a/a/a/a/c/g;->E:F

    iget v4, p0, Lcom/a/a/a/a/c/g;->F:F

    iget v5, p0, Lcom/a/a/a/a/c/g;->G:F

    iget v6, p0, Lcom/a/a/a/a/c/g;->H:F

    move-object v1, p0

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/a/a/a/a/c/g;->a(Landroid/view/View;FFFFZ)V

    .line 252
    :cond_2
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 253
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 p1, 0x0

    .line 255
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    .line 257
    iget-object v1, p0, Lcom/a/a/a/a/c/g;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->e:Landroid/graphics/Bitmap;

    .line 262
    :cond_4
    iput-object p1, p0, Lcom/a/a/a/a/c/g;->p:Lcom/a/a/a/a/c/j;

    .line 263
    iput v0, p0, Lcom/a/a/a/a/c/g;->c:I

    .line 264
    iput v0, p0, Lcom/a/a/a/a/c/g;->d:I

    .line 265
    iput v0, p0, Lcom/a/a/a/a/c/g;->f:I

    .line 266
    iput v0, p0, Lcom/a/a/a/a/c/g;->g:I

    .line 267
    iput v0, p0, Lcom/a/a/a/a/c/g;->h:I

    .line 268
    iput v0, p0, Lcom/a/a/a/a/c/g;->i:I

    .line 269
    iput v0, p0, Lcom/a/a/a/a/c/g;->j:I

    .line 270
    iput v0, p0, Lcom/a/a/a/a/c/g;->k:I

    .line 271
    iput-boolean v0, p0, Lcom/a/a/a/a/c/g;->n:Z

    return-void
.end method

.method public a(IIZ)Z
    .locals 0

    .line 275
    iput p1, p0, Lcom/a/a/a/a/c/g;->j:I

    .line 276
    iput p2, p0, Lcom/a/a/a/a/c/g;->k:I

    .line 278
    invoke-virtual {p0, p3}, Lcom/a/a/a/a/c/g;->b(Z)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 1

    .line 310
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    return v0
.end method

.method public b(Z)Z
    .locals 3

    .line 282
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    .line 283
    iget v1, p0, Lcom/a/a/a/a/c/g;->d:I

    .line 285
    invoke-direct {p0}, Lcom/a/a/a/a/c/g;->n()V

    .line 287
    iget v2, p0, Lcom/a/a/a/a/c/g;->c:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/a/a/a/a/c/g;->d:I

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    .line 290
    :cond_2
    iget p1, p0, Lcom/a/a/a/a/c/g;->c:I

    int-to-float p1, p1

    iget v1, p0, Lcom/a/a/a/a/c/g;->d:I

    invoke-direct {p0, p1, v1}, Lcom/a/a/a/a/c/g;->a(FI)V

    .line 291
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/core/g/u;->d(Landroid/view/View;)V

    :cond_3
    return v0
.end method

.method public c()I
    .locals 2

    .line 314
    iget v0, p0, Lcom/a/a/a/a/c/g;->d:I

    iget-object v1, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v1, v1, Lcom/a/a/a/a/c/i;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c(Z)V
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/a/a/a/a/c/g;->o:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 470
    :cond_0
    iput-boolean p1, p0, Lcom/a/a/a/a/c/g;->o:Z

    return-void
.end method

.method public d()I
    .locals 2

    .line 318
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    iget-object v1, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v1, v1, Lcom/a/a/a/a/c/i;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e()Z
    .locals 2

    .line 406
    iget v0, p0, Lcom/a/a/a/a/c/g;->d:I

    iget v1, p0, Lcom/a/a/a/a/c/g;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 410
    iget v0, p0, Lcom/a/a/a/a/c/g;->d:I

    iget v1, p0, Lcom/a/a/a/a/c/g;->i:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    .line 414
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    iget v1, p0, Lcom/a/a/a/a/c/g;->f:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 418
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    iget v1, p0, Lcom/a/a/a/a/c/g;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/a/a/a/a/c/g;->d:I

    return v0
.end method

.method public j()I
    .locals 2

    .line 479
    iget v0, p0, Lcom/a/a/a/a/c/g;->d:I

    iget-object v1, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v1, v1, Lcom/a/a/a/a/c/i;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public k()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    return v0
.end method

.method public l()I
    .locals 2

    .line 487
    iget v0, p0, Lcom/a/a/a/a/c/g;->c:I

    iget-object v1, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v1, v1, Lcom/a/a/a/a/c/i;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public m()V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 493
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 494
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$w;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 497
    iput-object v0, p0, Lcom/a/a/a/a/c/g;->b:Landroidx/recyclerview/widget/RecyclerView$w;

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 9

    .line 137
    iget-object p2, p0, Lcom/a/a/a/a/c/g;->e:Landroid/graphics/Bitmap;

    if-nez p2, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/a/a/a/a/c/g;->u:J

    sub-long/2addr p2, v0

    iget-wide v0, p0, Lcom/a/a/a/a/c/g;->v:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    long-to-int p2, p2

    .line 142
    iget-wide v0, p0, Lcom/a/a/a/a/c/g;->v:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez p3, :cond_1

    int-to-float p2, p2

    long-to-float p3, v0

    div-float/2addr p2, p3

    goto :goto_0

    :cond_1
    move p2, v2

    .line 143
    :goto_0
    iget-object p3, p0, Lcom/a/a/a/a/c/g;->B:Landroid/view/animation/Interpolator;

    invoke-static {p3, p2}, Lcom/a/a/a/a/c/g;->a(Landroid/view/animation/Interpolator;F)F

    move-result p3

    .line 144
    iget v0, p0, Lcom/a/a/a/a/c/g;->w:F

    iget v1, p0, Lcom/a/a/a/a/c/g;->z:F

    sub-float v3, v0, v1

    mul-float/2addr v3, p3

    add-float/2addr v3, v1

    .line 145
    iget v1, p0, Lcom/a/a/a/a/c/g;->A:F

    sub-float/2addr v0, v1

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    .line 146
    iget-object v0, p0, Lcom/a/a/a/a/c/g;->D:Landroid/view/animation/Interpolator;

    invoke-static {v0, p2}, Lcom/a/a/a/a/c/g;->a(Landroid/view/animation/Interpolator;F)F

    move-result v0

    iget v1, p0, Lcom/a/a/a/a/c/g;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    .line 147
    iget-object v1, p0, Lcom/a/a/a/a/c/g;->C:Landroid/view/animation/Interpolator;

    invoke-static {v1, p2}, Lcom/a/a/a/a/c/g;->a(Landroid/view/animation/Interpolator;F)F

    move-result v1

    iget v4, p0, Lcom/a/a/a/a/c/g;->x:F

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_2

    cmpl-float v5, p3, v4

    if-lez v5, :cond_2

    cmpl-float v5, v0, v4

    if-lez v5, :cond_2

    .line 150
    iget-object v5, p0, Lcom/a/a/a/a/c/g;->t:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 154
    iget v6, p0, Lcom/a/a/a/a/c/g;->c:I

    iget-object v7, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v7, v7, Lcom/a/a/a/a/c/i;->f:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/a/a/a/a/c/g;->d:I

    iget-object v8, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v8, v8, Lcom/a/a/a/a/c/i;->g:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 156
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 157
    iget-object v6, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v7, v7, Lcom/a/a/a/a/c/i;->f:I

    add-int/2addr v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/a/a/a/a/c/g;->m:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/a/a/a/a/c/g;->s:Lcom/a/a/a/a/c/i;

    iget v8, v8, Lcom/a/a/a/a/c/i;->g:I

    add-int/2addr v7, v8

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    iget-object v6, p0, Lcom/a/a/a/a/c/g;->e:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/a/a/a/a/c/g;->t:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 160
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    cmpg-float p1, p2, v2

    if-gez p1, :cond_3

    .line 164
    iget-object p1, p0, Lcom/a/a/a/a/c/g;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1}, Landroidx/core/g/u;->d(Landroid/view/View;)V

    .line 167
    :cond_3
    iput v3, p0, Lcom/a/a/a/a/c/g;->E:F

    .line 168
    iput p3, p0, Lcom/a/a/a/a/c/g;->F:F

    .line 169
    iput v1, p0, Lcom/a/a/a/a/c/g;->G:F

    .line 170
    iput v0, p0, Lcom/a/a/a/a/c/g;->H:F

    return-void
.end method
