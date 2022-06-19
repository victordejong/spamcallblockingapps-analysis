.class Landroidx/recyclerview/widget/e;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "FastScroller.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/e$b;,
        Landroidx/recyclerview/widget/e$a;
    }
.end annotation


# static fields
.field private static final k:[I

.field private static final l:[I


# instance fields
.field private A:I

.field private final B:[I

.field private final C:[I

.field private final D:Ljava/lang/Runnable;

.field private final E:Landroidx/recyclerview/widget/RecyclerView$n;

.field final a:Landroid/graphics/drawable/StateListDrawable;

.field final b:Landroid/graphics/drawable/Drawable;

.field c:I

.field d:I

.field e:F

.field f:I

.field g:I

.field h:F

.field final i:Landroid/animation/ValueAnimator;

.field j:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private final q:Landroid/graphics/drawable/StateListDrawable;

.field private final r:Landroid/graphics/drawable/Drawable;

.field private final s:I

.field private final t:I

.field private u:I

.field private v:I

.field private w:Landroidx/recyclerview/widget/RecyclerView;

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroidx/recyclerview/widget/e;->k:[I

    .line 75
    new-array v0, v2, [I

    sput-object v0, Landroidx/recyclerview/widget/e;->l:[I

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 4

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    .line 104
    iput v1, p0, Landroidx/recyclerview/widget/e;->u:I

    .line 105
    iput v1, p0, Landroidx/recyclerview/widget/e;->v:I

    .line 112
    iput-boolean v1, p0, Landroidx/recyclerview/widget/e;->x:Z

    .line 113
    iput-boolean v1, p0, Landroidx/recyclerview/widget/e;->y:Z

    .line 114
    iput v1, p0, Landroidx/recyclerview/widget/e;->z:I

    .line 115
    iput v1, p0, Landroidx/recyclerview/widget/e;->A:I

    .line 117
    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->B:[I

    .line 118
    new-array v0, v2, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->C:[I

    .line 119
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    .line 120
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    .line 121
    iput v1, p0, Landroidx/recyclerview/widget/e;->j:I

    .line 123
    new-instance v0, Landroidx/recyclerview/widget/e$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/e$1;-><init>(Landroidx/recyclerview/widget/e;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->D:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Landroidx/recyclerview/widget/e$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/e$2;-><init>(Landroidx/recyclerview/widget/e;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->E:Landroidx/recyclerview/widget/RecyclerView$n;

    .line 142
    iput-object p2, p0, Landroidx/recyclerview/widget/e;->a:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    iput-object p3, p0, Landroidx/recyclerview/widget/e;->b:Landroid/graphics/drawable/Drawable;

    .line 144
    iput-object p4, p0, Landroidx/recyclerview/widget/e;->q:Landroid/graphics/drawable/StateListDrawable;

    .line 145
    iput-object p5, p0, Landroidx/recyclerview/widget/e;->r:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->o:I

    .line 147
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->p:I

    .line 149
    invoke-virtual {p4}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->s:I

    .line 151
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->t:I

    .line 152
    iput p7, p0, Landroidx/recyclerview/widget/e;->m:I

    .line 153
    iput p8, p0, Landroidx/recyclerview/widget/e;->n:I

    .line 154
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 155
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/recyclerview/widget/e$a;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/e$a;-><init>(Landroidx/recyclerview/widget/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    new-instance v1, Landroidx/recyclerview/widget/e$b;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/e$b;-><init>(Landroidx/recyclerview/widget/e;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/e;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 161
    return-void

    .line 119
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FF[IIII)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 479
    const/4 v1, 0x1

    aget v1, p3, v1

    aget v2, p3, v0

    sub-int/2addr v1, v2

    .line 480
    if-nez v1, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    sub-float v2, p2, p1

    int-to-float v1, v1

    div-float v1, v2, v1

    .line 484
    sub-int v2, p4, p6

    .line 485
    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 486
    add-int v3, p5, v1

    .line 487
    if-ge v3, v2, :cond_0

    if-ltz v3, :cond_0

    move v0, v1

    .line 488
    goto :goto_0
.end method

.method private a(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 446
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->g()[I

    move-result-object v3

    .line 447
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 448
    iget v0, p0, Landroidx/recyclerview/widget/e;->d:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 451
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/e;->e:F

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 452
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 453
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/e;->v:I

    move-object v0, p0

    .line 451
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/e;->a(FF[IIII)I

    move-result v0

    .line 454
    if-eqz v0, :cond_1

    .line 455
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 457
    :cond_1
    iput v2, p0, Landroidx/recyclerview/widget/e;->e:F

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 291
    iget v0, p0, Landroidx/recyclerview/widget/e;->u:I

    .line 293
    iget v1, p0, Landroidx/recyclerview/widget/e;->o:I

    sub-int/2addr v0, v1

    .line 294
    iget v1, p0, Landroidx/recyclerview/widget/e;->d:I

    iget v2, p0, Landroidx/recyclerview/widget/e;->c:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 295
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->a:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroidx/recyclerview/widget/e;->o:I

    iget v4, p0, Landroidx/recyclerview/widget/e;->c:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 296
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->b:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/recyclerview/widget/e;->p:I

    iget v4, p0, Landroidx/recyclerview/widget/e;->v:I

    .line 297
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    iget v0, p0, Landroidx/recyclerview/widget/e;->o:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 302
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 303
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 305
    iget v0, p0, Landroidx/recyclerview/widget/e;->o:I

    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_0
    int-to-float v2, v0

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 308
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 309
    int-to-float v2, v1

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 310
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->a:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    neg-int v0, v0

    int-to-float v0, v0

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private b(F)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 461
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->h()[I

    move-result-object v3

    .line 462
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 463
    iget v0, p0, Landroidx/recyclerview/widget/e;->g:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 467
    :cond_0
    iget v1, p0, Landroidx/recyclerview/widget/e;->h:F

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 468
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 469
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Landroidx/recyclerview/widget/e;->u:I

    move-object v0, p0

    .line 467
    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/e;->a(FF[IIII)I

    move-result v0

    .line 470
    if-eqz v0, :cond_1

    .line 471
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 474
    :cond_1
    iput v2, p0, Landroidx/recyclerview/widget/e;->h:F

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 316
    iget v0, p0, Landroidx/recyclerview/widget/e;->v:I

    .line 318
    iget v1, p0, Landroidx/recyclerview/widget/e;->s:I

    sub-int/2addr v0, v1

    .line 319
    iget v1, p0, Landroidx/recyclerview/widget/e;->g:I

    iget v2, p0, Landroidx/recyclerview/widget/e;->f:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 320
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->q:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Landroidx/recyclerview/widget/e;->f:I

    iget v4, p0, Landroidx/recyclerview/widget/e;->s:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 321
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->r:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/recyclerview/widget/e;->u:I

    iget v4, p0, Landroidx/recyclerview/widget/e;->t:I

    .line 322
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    int-to-float v2, v0

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    int-to-float v2, v1

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    iget-object v2, p0, Landroidx/recyclerview/widget/e;->q:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 329
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 178
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/e;->E:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 180
    return-void
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 262
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->f()V

    .line 263
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/e;->D:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 184
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 185
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/e;->E:Landroidx/recyclerview/widget/RecyclerView$n;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 186
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->f()V

    .line 187
    return-void
.end method

.method private e()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v1}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/e;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 259
    return-void
.end method

.method private g()[I
    .locals 4

    .prologue
    .line 533
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->B:[I

    const/4 v1, 0x0

    iget v2, p0, Landroidx/recyclerview/widget/e;->n:I

    aput v2, v0, v1

    .line 534
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->B:[I

    const/4 v1, 0x1

    iget v2, p0, Landroidx/recyclerview/widget/e;->v:I

    iget v3, p0, Landroidx/recyclerview/widget/e;->n:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 535
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->B:[I

    return-object v0
.end method

.method private h()[I
    .locals 4

    .prologue
    .line 542
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->C:[I

    const/4 v1, 0x0

    iget v2, p0, Landroidx/recyclerview/widget/e;->n:I

    aput v2, v0, v1

    .line 543
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->C:[I

    const/4 v1, 0x1

    iget v2, p0, Landroidx/recyclerview/widget/e;->u:I

    iget v3, p0, Landroidx/recyclerview/widget/e;->n:I

    sub-int/2addr v2, v3

    aput v2, v0, v1

    .line 544
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->C:[I

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 192
    return-void
.end method

.method a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 195
    if-ne p1, v2, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/e;->z:I

    if-eq v0, v2, :cond_0

    .line 196
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroidx/recyclerview/widget/e;->k:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 197
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->f()V

    .line 200
    :cond_0
    if-nez p1, :cond_2

    .line 201
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->a()V

    .line 206
    :goto_0
    iget v0, p0, Landroidx/recyclerview/widget/e;->z:I

    if-ne v0, v2, :cond_3

    if-eq p1, v2, :cond_3

    .line 207
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->a:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Landroidx/recyclerview/widget/e;->l:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 208
    const/16 v0, 0x4b0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/e;->c(I)V

    .line 212
    :cond_1
    :goto_1
    iput p1, p0, Landroidx/recyclerview/widget/e;->z:I

    .line 213
    return-void

    .line 203
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->b()V

    goto :goto_0

    .line 209
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 210
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/e;->c(I)V

    goto :goto_1
.end method

.method a(II)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 339
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v3

    .line 340
    iget v4, p0, Landroidx/recyclerview/widget/e;->v:I

    .line 341
    sub-int v0, v3, v4

    if-lez v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/e;->v:I

    iget v5, p0, Landroidx/recyclerview/widget/e;->m:I

    if-lt v0, v5, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/e;->x:Z

    .line 344
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v5

    .line 345
    iget v6, p0, Landroidx/recyclerview/widget/e;->u:I

    .line 346
    sub-int v0, v5, v6

    if-lez v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/e;->u:I

    iget v7, p0, Landroidx/recyclerview/widget/e;->m:I

    if-lt v0, v7, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/e;->y:Z

    .line 349
    iget-boolean v0, p0, Landroidx/recyclerview/widget/e;->x:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/e;->y:Z

    if-nez v0, :cond_3

    .line 350
    iget v0, p0, Landroidx/recyclerview/widget/e;->z:I

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/e;->a(I)V

    .line 375
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 341
    goto :goto_0

    :cond_2
    move v0, v2

    .line 346
    goto :goto_1

    .line 356
    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/e;->x:Z

    if-eqz v0, :cond_4

    .line 357
    int-to-float v0, p2

    int-to-float v2, v4

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    .line 358
    int-to-float v2, v4

    mul-float/2addr v0, v2

    int-to-float v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->d:I

    .line 360
    mul-int v0, v4, v4

    div-int/2addr v0, v3

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->c:I

    .line 364
    :cond_4
    iget-boolean v0, p0, Landroidx/recyclerview/widget/e;->y:Z

    if-eqz v0, :cond_5

    .line 365
    int-to-float v0, p1

    int-to-float v2, v6

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    .line 366
    int-to-float v2, v6

    mul-float/2addr v0, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->g:I

    .line 368
    mul-int v0, v6, v6

    div-int/2addr v0, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->f:I

    .line 372
    :cond_5
    iget v0, p0, Landroidx/recyclerview/widget/e;->z:I

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/recyclerview/widget/e;->z:I

    if-ne v0, v1, :cond_0

    .line 373
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/e;->a(I)V

    goto :goto_2
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 168
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->d()V

    .line 170
    :cond_2
    iput-object p1, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->c()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method a(FF)Z
    .locals 2

    .prologue
    .line 496
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/e;->o:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/e;->d:I

    iget v1, p0, Landroidx/recyclerview/widget/e;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    iget v0, p0, Landroidx/recyclerview/widget/e;->d:I

    iget v1, p0, Landroidx/recyclerview/widget/e;->c:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroidx/recyclerview/widget/e;->u:I

    iget v1, p0, Landroidx/recyclerview/widget/e;->o:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x1

    .line 381
    iget v2, p0, Landroidx/recyclerview/widget/e;->z:I

    if-ne v2, v0, :cond_5

    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/e;->a(FF)Z

    move-result v2

    .line 383
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroidx/recyclerview/widget/e;->b(FF)Z

    move-result v3

    .line 384
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    .line 386
    :cond_0
    if-eqz v3, :cond_3

    .line 387
    iput v0, p0, Landroidx/recyclerview/widget/e;->A:I

    .line 388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/e;->h:F

    .line 394
    :cond_1
    :goto_0
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/e;->a(I)V

    .line 404
    :cond_2
    :goto_1
    return v0

    .line 389
    :cond_3
    if-eqz v2, :cond_1

    .line 390
    iput v5, p0, Landroidx/recyclerview/widget/e;->A:I

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Landroidx/recyclerview/widget/e;->e:F

    goto :goto_0

    :cond_4
    move v0, v1

    .line 397
    goto :goto_1

    .line 399
    :cond_5
    iget v2, p0, Landroidx/recyclerview/widget/e;->z:I

    if-eq v2, v5, :cond_2

    move v0, v1

    .line 402
    goto :goto_1
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 228
    iget v0, p0, Landroidx/recyclerview/widget/e;->j:I

    packed-switch v0, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    return-void

    .line 230
    :pswitch_1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 233
    :pswitch_2
    iput v4, p0, Landroidx/recyclerview/widget/e;->j:I

    .line 234
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 235
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 237
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method b(I)V
    .locals 4

    .prologue
    .line 244
    iget v0, p0, Landroidx/recyclerview/widget/e;->j:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 246
    :pswitch_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 249
    :pswitch_1
    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/e;->j:I

    .line 250
    iget-object v1, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v2, v3

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 251
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 252
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Landroidx/recyclerview/widget/e;->u:I

    iget-object v1, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/e;->v:I

    iget-object v1, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    .line 269
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 270
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->u:I

    .line 271
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->w:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->v:I

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/e;->a(I)V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    iget v0, p0, Landroidx/recyclerview/widget/e;->j:I

    if-eqz v0, :cond_1

    .line 281
    iget-boolean v0, p0, Landroidx/recyclerview/widget/e;->x:Z

    if-eqz v0, :cond_3

    .line 282
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/e;->a(Landroid/graphics/Canvas;)V

    .line 284
    :cond_3
    iget-boolean v0, p0, Landroidx/recyclerview/widget/e;->y:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/e;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 409
    iget v0, p0, Landroidx/recyclerview/widget/e;->z:I

    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/e;->a(FF)Z

    move-result v0

    .line 415
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/e;->b(FF)Z

    move-result v1

    .line 416
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 417
    :cond_2
    if-eqz v1, :cond_4

    .line 418
    iput v4, p0, Landroidx/recyclerview/widget/e;->A:I

    .line 419
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->h:F

    .line 424
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/e;->a(I)V

    goto :goto_0

    .line 420
    :cond_4
    if-eqz v0, :cond_3

    .line 421
    iput v3, p0, Landroidx/recyclerview/widget/e;->A:I

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/recyclerview/widget/e;->e:F

    goto :goto_1

    .line 426
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroidx/recyclerview/widget/e;->z:I

    if-ne v0, v3, :cond_6

    .line 427
    iput v1, p0, Landroidx/recyclerview/widget/e;->e:F

    .line 428
    iput v1, p0, Landroidx/recyclerview/widget/e;->h:F

    .line 429
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/e;->a(I)V

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/e;->A:I

    goto :goto_0

    .line 431
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/e;->z:I

    if-ne v0, v3, :cond_0

    .line 432
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->b()V

    .line 433
    iget v0, p0, Landroidx/recyclerview/widget/e;->A:I

    if-ne v0, v4, :cond_7

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/e;->b(F)V

    .line 436
    :cond_7
    iget v0, p0, Landroidx/recyclerview/widget/e;->A:I

    if-ne v0, v3, :cond_0

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/e;->a(F)V

    goto :goto_0
.end method

.method b(FF)Z
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Landroidx/recyclerview/widget/e;->v:I

    iget v1, p0, Landroidx/recyclerview/widget/e;->s:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/e;->g:I

    iget v1, p0, Landroidx/recyclerview/widget/e;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/e;->g:I

    iget v1, p0, Landroidx/recyclerview/widget/e;->f:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
