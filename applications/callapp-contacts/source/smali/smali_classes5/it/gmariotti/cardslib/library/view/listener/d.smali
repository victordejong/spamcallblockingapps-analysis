.class public final Lit/gmariotti/cardslib/library/view/listener/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/listener/d$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Lit/gmariotti/cardslib/library/view/a/a;

.field private f:Lit/gmariotti/cardslib/library/view/listener/d$a;

.field private g:I

.field private h:F

.field private i:F

.field private j:Lit/gmariotti/cardslib/library/a/b;

.field private k:Z

.field private l:I

.field private m:Landroid/view/VelocityTracker;

.field private n:Z

.field private o:F

.field private p:I


# direct methods
.method public constructor <init>(Lit/gmariotti/cardslib/library/view/a/a;Lit/gmariotti/cardslib/library/a/b;Lit/gmariotti/cardslib/library/view/listener/d$a;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->g:I

    const/4 v0, 0x2

    .line 70
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->p:I

    .line 100
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->a:I

    .line 102
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->b:I

    .line 103
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->c:I

    .line 104
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->d:J

    .line 106
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    .line 107
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->j:Lit/gmariotti/cardslib/library/a/b;

    .line 108
    iput-object p3, p0, Lit/gmariotti/cardslib/library/view/listener/d;->f:Lit/gmariotti/cardslib/library/view/listener/d$a;

    .line 109
    invoke-interface {p1}, Lit/gmariotti/cardslib/library/view/a/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lit/gmariotti/cardslib/library/a$d;->list_card_swipe_distance_divisor:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->p:I

    return-void
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/listener/d;)V
    .locals 5

    .line 1261
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1262
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    .line 1264
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lit/gmariotti/cardslib/library/view/listener/d;->d:J

    .line 1265
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1267
    new-instance v3, Lit/gmariotti/cardslib/library/view/listener/d$2;

    invoke-direct {v3, p0, v0, v1}, Lit/gmariotti/cardslib/library/view/listener/d$2;-><init>(Lit/gmariotti/cardslib/library/view/listener/d;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1281
    new-instance v1, Lit/gmariotti/cardslib/library/view/listener/d$3;

    invoke-direct {v1, p0, v0}, Lit/gmariotti/cardslib/library/view/listener/d$3;-><init>(Lit/gmariotti/cardslib/library/view/listener/d;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1289
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/view/a/a;
    .locals 0

    .line 47
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    return-object p0
.end method

.method static synthetic c(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/a/b;
    .locals 0

    .line 47
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->j:Lit/gmariotti/cardslib/library/a/b;

    return-object p0
.end method

.method static synthetic d(Lit/gmariotti/cardslib/library/view/listener/d;)Lit/gmariotti/cardslib/library/view/listener/d$a;
    .locals 0

    .line 47
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->f:Lit/gmariotti/cardslib/library/view/listener/d$a;

    return-object p0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 126
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->o:F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 128
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->g:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->g:I

    .line 132
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eq v0, v4, :cond_5

    const/4 v6, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v6, :cond_1

    goto/16 :goto_8

    .line 201
    :cond_1
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_10

    .line 205
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 206
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 207
    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v4, p0, Lit/gmariotti/cardslib/library/view/listener/d;->d:J

    .line 208
    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 209
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 210
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 211
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    .line 212
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->o:F

    .line 213
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->h:F

    .line 214
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->i:F

    .line 215
    iput-boolean v3, p0, Lit/gmariotti/cardslib/library/view/listener/d;->k:Z

    goto/16 :goto_8

    .line 220
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->n:Z

    if-nez v0, :cond_10

    .line 224
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 225
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->h:F

    sub-float/2addr p1, v0

    .line 226
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->i:F

    sub-float/2addr v0, v2

    .line 227
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v7, p0, Lit/gmariotti/cardslib/library/view/listener/d;->a:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v2, v2, v7

    if-lez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v8

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    .line 228
    iput-boolean v4, p0, Lit/gmariotti/cardslib/library/view/listener/d;->k:Z

    .line 229
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    .line 230
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->a:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->a:I

    neg-int v0, v0

    :goto_0
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->l:I

    .line 233
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 236
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v6

    .line 235
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 237
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 241
    :cond_4
    iget-boolean p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->k:Z

    if-eqz p2, :cond_10

    .line 242
    iput p1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->o:F

    .line 244
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast p2, Landroid/view/View;

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->l:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 245
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast p2, Landroid/view/View;

    .line 246
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v8

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->g:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float p1, v5, p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 245
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return v4

    .line 152
    :cond_5
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 156
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->h:F

    sub-float/2addr v0, v2

    .line 157
    iget-object v2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 158
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {p2, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 159
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 160
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 161
    iget-object v6, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 164
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lit/gmariotti/cardslib/library/view/listener/d;->g:I

    iget v9, p0, Lit/gmariotti/cardslib/library/view/listener/d;->p:I

    div-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    iget-boolean v7, p0, Lit/gmariotti/cardslib/library/view/listener/d;->k:Z

    if-eqz v7, :cond_7

    cmpl-float p2, v0, v1

    if-lez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    goto :goto_5

    .line 167
    :cond_7
    iget v7, p0, Lit/gmariotti/cardslib/library/view/listener/d;->b:I

    int-to-float v7, v7

    cmpg-float v7, v7, v2

    if-gtz v7, :cond_c

    iget v7, p0, Lit/gmariotti/cardslib/library/view/listener/d;->c:I

    int-to-float v7, v7

    cmpg-float v7, v2, v7

    if-gtz v7, :cond_c

    cmpg-float v2, v6, v2

    if-gez v2, :cond_c

    iget-boolean v2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->k:Z

    if-eqz v2, :cond_c

    cmpg-float p2, p2, v1

    if-gez p2, :cond_8

    const/4 p2, 0x1

    goto :goto_1

    :cond_8
    const/4 p2, 0x0

    :goto_1
    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    :goto_2
    if-ne p2, v0, :cond_a

    const/4 p2, 0x1

    goto :goto_3

    :cond_a
    const/4 p2, 0x0

    .line 172
    :goto_3
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    move v10, v4

    move v4, p2

    move p2, v10

    goto :goto_5

    :cond_c
    const/4 p2, 0x0

    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_e

    .line 177
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p2, :cond_d

    iget p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->g:I

    goto :goto_6

    :cond_d
    iget p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->g:I

    neg-int p2, p2

    :goto_6
    int-to-float p2, p2

    .line 178
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 179
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v4, p0, Lit/gmariotti/cardslib/library/view/listener/d;->d:J

    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/d$1;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/listener/d$1;-><init>(Lit/gmariotti/cardslib/library/view/listener/d;)V

    .line 180
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    .line 186
    :cond_e
    iget-boolean p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->k:Z

    if-eqz p2, :cond_f

    .line 188
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->e:Lit/gmariotti/cardslib/library/view/a/a;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v4, p0, Lit/gmariotti/cardslib/library/view/listener/d;->d:J

    .line 189
    invoke-virtual {p2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 191
    :cond_f
    :goto_7
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 192
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    .line 193
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->o:F

    .line 194
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->h:F

    .line 195
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->i:F

    .line 196
    iput-boolean v3, p0, Lit/gmariotti/cardslib/library/view/listener/d;->k:Z

    :cond_10
    :goto_8
    return v3

    .line 134
    :cond_11
    iget-boolean v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->n:Z

    if-eqz v0, :cond_12

    return v3

    .line 140
    :cond_12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->h:F

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->i:F

    .line 142
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->f:Lit/gmariotti/cardslib/library/view/listener/d$a;

    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/d;->j:Lit/gmariotti/cardslib/library/a/b;

    invoke-interface {v0, v1}, Lit/gmariotti/cardslib/library/view/listener/d$a;->a(Lit/gmariotti/cardslib/library/a/b;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 143
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/d;->m:Landroid/view/VelocityTracker;

    .line 144
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 146
    :cond_13
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4
.end method
