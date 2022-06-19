.class public final Lit/gmariotti/cardslib/library/view/listener/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/listener/a$b;,
        Lit/gmariotti/cardslib/library/view/listener/a$a;
    }
.end annotation


# instance fields
.field a:Z

.field protected b:Lit/gmariotti/cardslib/library/view/listener/a/c;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Landroid/widget/ListView;

.field private h:Lit/gmariotti/cardslib/library/view/listener/a$a;

.field private i:I

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lit/gmariotti/cardslib/library/view/listener/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:F

.field private m:F

.field private n:Z

.field private o:I

.field private p:Landroid/view/VelocityTracker;

.field private q:I

.field private r:Landroid/view/View;

.field private s:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;Lit/gmariotti/cardslib/library/view/listener/a$a;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 95
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->i:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->k:I

    const/4 v0, 0x2

    .line 115
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->s:I

    .line 146
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->c:I

    .line 148
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->d:I

    .line 149
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->e:I

    .line 150
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->f:J

    .line 152
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    .line 153
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->h:Lit/gmariotti/cardslib/library/view/listener/a$a;

    .line 154
    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lit/gmariotti/cardslib/library/a$d;->list_card_swipe_distance_divisor:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->s:I

    return-void
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/listener/a;)I
    .locals 1

    .line 85
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->k:I

    return v0
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/listener/a;Landroid/view/View;I)V
    .locals 4

    .line 2403
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2404
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v1, v2, v1

    .line 2406
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-wide v2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->f:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 2408
    new-instance v2, Lit/gmariotti/cardslib/library/view/listener/a$2;

    invoke-direct {v2, p0}, Lit/gmariotti/cardslib/library/view/listener/a$2;-><init>(Lit/gmariotti/cardslib/library/view/listener/a;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2448
    new-instance v2, Lit/gmariotti/cardslib/library/view/listener/a$3;

    invoke-direct {v2, p0, v0, p1}, Lit/gmariotti/cardslib/library/view/listener/a$3;-><init>(Lit/gmariotti/cardslib/library/view/listener/a;Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2456
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->j:Ljava/util/List;

    new-instance v2, Lit/gmariotti/cardslib/library/view/listener/a$b;

    invoke-direct {v2, p0, p2, p1}, Lit/gmariotti/cardslib/library/view/listener/a$b;-><init>(Lit/gmariotti/cardslib/library/view/listener/a;ILandroid/view/View;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2457
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lit/gmariotti/cardslib/library/view/listener/a;)I
    .locals 0

    .line 85
    iget p0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->k:I

    return p0
.end method

.method static synthetic c(Lit/gmariotti/cardslib/library/view/listener/a;)Ljava/util/List;
    .locals 0

    .line 85
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lit/gmariotti/cardslib/library/view/listener/a;)Landroid/widget/ListView;
    .locals 0

    .line 85
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic e(Lit/gmariotti/cardslib/library/view/listener/a;)Lit/gmariotti/cardslib/library/view/listener/a$a;
    .locals 0

    .line 85
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->h:Lit/gmariotti/cardslib/library/view/listener/a$a;

    return-object p0
.end method

.method static synthetic f(Lit/gmariotti/cardslib/library/view/listener/a;)I
    .locals 1

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->q:I

    return v0
.end method


# virtual methods
.method public final a(Lit/gmariotti/cardslib/library/view/listener/a/c;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->b:Lit/gmariotti/cardslib/library/view/listener/a/c;

    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 191
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->i:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->i:I

    .line 195
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_17

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eq v0, v5, :cond_a

    const/4 v8, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v8, :cond_1

    goto/16 :goto_a

    .line 302
    :cond_1
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_16

    .line 306
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 309
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 310
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->f:J

    .line 311
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 312
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 314
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 315
    iput-object v3, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    .line 316
    iput v7, p0, Lit/gmariotti/cardslib/library/view/listener/a;->l:F

    .line 317
    iput v7, p0, Lit/gmariotti/cardslib/library/view/listener/a;->m:F

    .line 318
    iput-object v3, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    .line 319
    iput v2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->q:I

    .line 320
    iput-boolean v4, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    goto/16 :goto_a

    .line 325
    :cond_3
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    iget-boolean v2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->a:Z

    if-nez v2, :cond_16

    .line 329
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 330
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->l:F

    sub-float/2addr v0, v2

    .line 331
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lit/gmariotti/cardslib/library/view/listener/a;->m:F

    sub-float/2addr v2, v3

    .line 1461
    sget-object v3, Lit/gmariotti/cardslib/library/view/listener/a$4;->a:[I

    iget-object v9, p0, Lit/gmariotti/cardslib/library/view/listener/a;->b:Lit/gmariotti/cardslib/library/view/listener/a/c;

    invoke-interface {v9}, Lit/gmariotti/cardslib/library/view/listener/a/c;->a()Lit/gmariotti/cardslib/library/view/listener/a/c$a;

    move-result-object v9

    invoke-virtual {v9}, Lit/gmariotti/cardslib/library/view/listener/a/c$a;->ordinal()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v5, :cond_7

    if-eq v3, v1, :cond_6

    if-eq v3, v8, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    cmpg-float v1, v0, v7

    if-gez v1, :cond_4

    goto :goto_0

    :cond_6
    cmpl-float v1, v0, v7

    if-lez v1, :cond_4

    goto :goto_0

    .line 1463
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v7

    if-lez v1, :cond_4

    :goto_0
    const/4 v1, 0x1

    .line 333
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v9, p0, Lit/gmariotti/cardslib/library/view/listener/a;->c:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v3, v3, v9

    if-lez v3, :cond_9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v10

    cmpg-float v2, v2, v3

    if-gez v2, :cond_9

    if-eqz v1, :cond_9

    .line 334
    iput-boolean v5, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    cmpl-float v1, v0, v7

    if-lez v1, :cond_8

    .line 335
    iget v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->c:I

    goto :goto_2

    :cond_8
    iget v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->c:I

    neg-int v1, v1

    :goto_2
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->o:I

    .line 336
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 339
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 341
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v8

    .line 340
    invoke-virtual {v1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 343
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 344
    invoke-virtual {p1, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 345
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 348
    :cond_9
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    if-eqz p1, :cond_16

    .line 349
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    iget p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->o:I

    int-to-float p2, p2

    sub-float p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 350
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    .line 351
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float p2, p2, v10

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->i:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    sub-float p2, v6, p2

    .line 350
    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v7, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return v5

    .line 252
    :cond_a
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_16

    .line 256
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->l:F

    sub-float/2addr p1, v0

    .line 257
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 258
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 259
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 260
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 261
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 264
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lit/gmariotti/cardslib/library/view/listener/a;->i:I

    iget v10, p0, Lit/gmariotti/cardslib/library/view/listener/a;->s:I

    div-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    iget-boolean v8, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    if-eqz v8, :cond_c

    cmpl-float p1, p1, v7

    if-lez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    :goto_3
    move p2, p1

    const/4 p1, 0x1

    goto :goto_7

    .line 267
    :cond_c
    iget v8, p0, Lit/gmariotti/cardslib/library/view/listener/a;->d:I

    int-to-float v8, v8

    cmpg-float v8, v8, v0

    if-gtz v8, :cond_10

    iget v8, p0, Lit/gmariotti/cardslib/library/view/listener/a;->e:I

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_10

    cmpg-float v0, v1, v0

    if-gez v0, :cond_10

    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    if-eqz v0, :cond_10

    cmpg-float p2, p2, v7

    if-gez p2, :cond_d

    const/4 p2, 0x1

    goto :goto_4

    :cond_d
    const/4 p2, 0x0

    :goto_4
    cmpg-float p1, p1, v7

    if-gez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_5

    :cond_e
    const/4 p1, 0x0

    :goto_5
    if-ne p2, p1, :cond_f

    const/4 p1, 0x1

    goto :goto_6

    :cond_f
    const/4 p1, 0x0

    .line 271
    :goto_6
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v7

    if-lez p2, :cond_11

    const/4 p2, 0x1

    goto :goto_7

    :cond_10
    const/4 p1, 0x0

    :cond_11
    const/4 p2, 0x0

    :goto_7
    if-eqz p1, :cond_14

    .line 273
    iget p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->q:I

    if-eq p1, v2, :cond_14

    .line 275
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p1, v1

    .line 1361
    iget v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->k:I

    add-int/2addr v1, v5

    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->k:I

    if-nez v0, :cond_12

    .line 1365
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->h:Lit/gmariotti/cardslib/library/view/listener/a$a;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    new-array v1, v5, [I

    aput p1, v1, v4

    invoke-interface {p2, v0, v1}, Lit/gmariotti/cardslib/library/view/listener/a$a;->a(Landroid/widget/ListView;[I)V

    goto :goto_9

    .line 1369
    :cond_12
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p2, :cond_13

    iget p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->i:I

    goto :goto_8

    :cond_13
    iget p2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->i:I

    neg-int p2, p2

    :goto_8
    int-to-float p2, p2

    .line 1370
    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1371
    invoke-virtual {p2, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v8, p0, Lit/gmariotti/cardslib/library/view/listener/a;->f:J

    .line 1372
    invoke-virtual {p2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v1, Lit/gmariotti/cardslib/library/view/listener/a$1;

    invoke-direct {v1, p0, v0, p1}, Lit/gmariotti/cardslib/library/view/listener/a$1;-><init>(Lit/gmariotti/cardslib/library/view/listener/a;Landroid/view/View;I)V

    .line 1373
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_9

    .line 279
    :cond_14
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 280
    invoke-virtual {p1, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 281
    invoke-virtual {p1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->f:J

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 283
    invoke-virtual {p1, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 286
    :goto_9
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 287
    iput-object v3, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    .line 288
    iput v7, p0, Lit/gmariotti/cardslib/library/view/listener/a;->l:F

    .line 289
    iput v7, p0, Lit/gmariotti/cardslib/library/view/listener/a;->m:F

    .line 290
    iput-object v3, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    .line 291
    iput v2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->q:I

    .line 292
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    if-eqz p1, :cond_15

    .line 294
    iput-boolean v4, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    return v5

    .line 297
    :cond_15
    iput-boolean v4, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    :cond_16
    :goto_a
    return v4

    .line 197
    :cond_17
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->a:Z

    if-eqz v0, :cond_18

    return v4

    .line 201
    :cond_18
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->n:Z

    if-eqz v0, :cond_19

    return v5

    .line 208
    :cond_19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 209
    iget-object v6, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 210
    iget-object v7, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v7

    .line 211
    iget-object v8, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v8

    new-array v1, v1, [I

    .line 213
    iget-object v9, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v9, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v9, v9

    aget v4, v1, v4

    sub-int/2addr v9, v4

    .line 215
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    aget v1, v1, v5

    sub-int/2addr v4, v1

    :goto_b
    sub-int v1, v6, v8

    if-ge v7, v1, :cond_1b

    .line 218
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 219
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 220
    invoke-virtual {v0, v9, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 221
    iput-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    goto :goto_c

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 226
    :cond_1b
    :goto_c
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->l:F

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->m:F

    .line 230
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->q:I

    if-eq v0, v2, :cond_1e

    .line 231
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 232
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->q:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lit/gmariotti/cardslib/library/a/b;

    if-eqz v0, :cond_1d

    .line 233
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->h:Lit/gmariotti/cardslib/library/view/listener/a$a;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/a;->g:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget v2, p0, Lit/gmariotti/cardslib/library/view/listener/a;->q:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lit/gmariotti/cardslib/library/a/b;

    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/listener/a$a;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 234
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/a;->p:Landroid/view/VelocityTracker;

    .line 235
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_d

    .line 237
    :cond_1c
    iput-object v3, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    goto :goto_d

    .line 240
    :cond_1d
    iput-object v3, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    goto :goto_d

    .line 243
    :cond_1e
    iput-object v3, p0, Lit/gmariotti/cardslib/library/view/listener/a;->r:Landroid/view/View;

    .line 246
    :cond_1f
    :goto_d
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v5
.end method
