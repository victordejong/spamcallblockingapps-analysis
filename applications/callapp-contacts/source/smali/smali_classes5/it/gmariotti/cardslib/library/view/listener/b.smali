.class public final Lit/gmariotti/cardslib/library/view/listener/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/listener/b$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/view/View;

.field private f:Lit/gmariotti/cardslib/library/view/listener/b$a;

.field private g:I

.field private h:F

.field private i:F

.field private j:Z

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:Landroid/view/VelocityTracker;

.field private n:F

.field private o:F


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lit/gmariotti/cardslib/library/view/listener/b$a;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->g:I

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->a:I

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->b:I

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->c:I

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->d:J

    .line 115
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    .line 116
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->l:Ljava/lang/Object;

    .line 117
    iput-object p3, p0, Lit/gmariotti/cardslib/library/view/listener/b;->f:Lit/gmariotti/cardslib/library/view/listener/b$a;

    return-void
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/listener/b;)V
    .locals 5

    .line 1258
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1259
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    .line 1261
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lit/gmariotti/cardslib/library/view/listener/b;->d:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1263
    new-instance v3, Lit/gmariotti/cardslib/library/view/listener/b$2;

    invoke-direct {v3, p0, v0, v1}, Lit/gmariotti/cardslib/library/view/listener/b$2;-><init>(Lit/gmariotti/cardslib/library/view/listener/b;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1275
    new-instance v1, Lit/gmariotti/cardslib/library/view/listener/b$3;

    invoke-direct {v1, p0, v0}, Lit/gmariotti/cardslib/library/view/listener/b$3;-><init>(Lit/gmariotti/cardslib/library/view/listener/b;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1283
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lit/gmariotti/cardslib/library/view/listener/b;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lit/gmariotti/cardslib/library/view/listener/b;)Ljava/lang/Object;
    .locals 0

    .line 58
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lit/gmariotti/cardslib/library/view/listener/b;)Lit/gmariotti/cardslib/library/view/listener/b$a;
    .locals 0

    .line 58
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->f:Lit/gmariotti/cardslib/library/view/listener/b$a;

    return-object p0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 123
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->n:F

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 125
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->g:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 126
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->g:I

    .line 129
    :cond_0
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->o:F

    .line 133
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_17

    const/4 p1, 0x3

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eq v0, v3, :cond_b

    if-eq v0, v2, :cond_3

    if-eq v0, p1, :cond_2

    goto/16 :goto_c

    .line 199
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_16

    .line 203
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 204
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->d:J

    .line 206
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 207
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 208
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 209
    iput-object v4, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    .line 210
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->n:F

    .line 211
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->h:F

    .line 212
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->i:F

    .line 213
    iput-boolean v6, p0, Lit/gmariotti/cardslib/library/view/listener/b;->j:Z

    goto/16 :goto_c

    .line 218
    :cond_3
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    .line 222
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->h:F

    sub-float/2addr v0, v2

    .line 224
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v4, p0, Lit/gmariotti/cardslib/library/view/listener/b;->i:F

    sub-float/2addr v2, v4

    .line 225
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v7, p0, Lit/gmariotti/cardslib/library/view/listener/b;->a:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    cmpl-float v4, v2, v1

    if-lez v4, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    :goto_1
    and-int/2addr v0, v7

    if-eqz v0, :cond_7

    .line 226
    iput-boolean v3, p0, Lit/gmariotti/cardslib/library/view/listener/b;->j:Z

    if-lez v4, :cond_6

    .line 227
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->a:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->k:I

    .line 228
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 231
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 233
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p1, p2

    .line 232
    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 235
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 239
    :cond_7
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->j:Z

    if-eqz p1, :cond_16

    cmpl-float p1, v2, v1

    if-ltz p1, :cond_8

    move p2, v2

    goto :goto_3

    :cond_8
    const/4 p2, 0x0

    .line 240
    :goto_3
    iput p2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->n:F

    .line 241
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    if-ltz p1, :cond_9

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->k:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 243
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    if-ltz p1, :cond_a

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 244
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v0, v0, p1

    iget p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->g:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    sub-float p1, v5, v0

    .line 243
    invoke-static {v5, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    :cond_a
    invoke-virtual {p2, v5}, Landroid/view/View;->setAlpha(F)V

    return v3

    .line 147
    :cond_b
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v7, p0, Lit/gmariotti/cardslib/library/view/listener/b;->i:F

    sub-float/2addr v0, v7

    .line 152
    iget-object v7, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 153
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {p2, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 154
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 155
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 156
    iget-object v8, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 159
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lit/gmariotti/cardslib/library/view/listener/b;->g:I

    mul-int/lit8 v10, v10, 0x2

    div-int/2addr v10, p1

    int-to-float p1, v10

    cmpl-float p1, v9, p1

    if-lez p1, :cond_d

    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->j:Z

    if-eqz p1, :cond_d

    cmpl-float p1, v0, v1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_9

    :cond_c
    const/4 p1, 0x0

    goto :goto_9

    .line 162
    :cond_d
    iget p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->b:I

    int-to-float p1, p1

    cmpg-float p1, p1, v7

    if-gtz p1, :cond_12

    iget p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->c:I

    int-to-float p1, p1

    cmpg-float p1, v7, p1

    if-gtz p1, :cond_12

    cmpg-float p1, v8, v7

    if-gez p1, :cond_12

    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->j:Z

    if-eqz p1, :cond_12

    cmpg-float p1, p2, v1

    if-gez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_5

    :cond_e
    const/4 p1, 0x0

    :goto_5
    cmpg-float p2, v0, v1

    if-gez p2, :cond_f

    const/4 p2, 0x1

    goto :goto_6

    :cond_f
    const/4 p2, 0x0

    :goto_6
    if-ne p1, p2, :cond_10

    const/4 p1, 0x1

    goto :goto_7

    :cond_10
    const/4 p1, 0x0

    .line 167
    :goto_7
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_11

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    :goto_8
    move v11, v3

    move v3, p1

    move p1, v11

    goto :goto_9

    :cond_12
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_9
    if-eqz v3, :cond_14

    .line 171
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    if-eqz p1, :cond_13

    iget p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->g:I

    goto :goto_a

    :cond_13
    iget p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->g:I

    neg-int p1, p1

    :goto_a
    int-to-float p1, p1

    .line 172
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 173
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->d:J

    .line 174
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lit/gmariotti/cardslib/library/view/listener/b$1;

    invoke-direct {p2, p0}, Lit/gmariotti/cardslib/library/view/listener/b$1;-><init>(Lit/gmariotti/cardslib/library/view/listener/b;)V

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_b

    .line 181
    :cond_14
    iget-boolean p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->j:Z

    if-eqz p1, :cond_15

    .line 183
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 184
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 185
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-wide v2, p0, Lit/gmariotti/cardslib/library/view/listener/b;->d:J

    .line 186
    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 187
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 189
    :cond_15
    :goto_b
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 190
    iput-object v4, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    .line 191
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->n:F

    .line 192
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->h:F

    .line 193
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/b;->i:F

    .line 194
    iput-boolean v6, p0, Lit/gmariotti/cardslib/library/view/listener/b;->j:Z

    :cond_16
    :goto_c
    return v6

    .line 136
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->h:F

    .line 137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->i:F

    .line 138
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->f:Lit/gmariotti/cardslib/library/view/listener/b$a;

    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/listener/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 139
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/b;->m:Landroid/view/VelocityTracker;

    .line 140
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 142
    :cond_18
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method
