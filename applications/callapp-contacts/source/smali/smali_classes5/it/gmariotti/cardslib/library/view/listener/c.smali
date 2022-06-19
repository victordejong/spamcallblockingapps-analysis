.class public final Lit/gmariotti/cardslib/library/view/listener/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/gmariotti/cardslib/library/view/listener/c$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Landroid/view/View;

.field private f:Lit/gmariotti/cardslib/library/view/listener/c$a;

.field private g:I

.field private h:F

.field private i:F

.field private j:Z

.field private k:I

.field private l:Ljava/lang/Object;

.field private m:Landroid/view/VelocityTracker;

.field private n:F


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lit/gmariotti/cardslib/library/view/listener/c$a;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->g:I

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->a:I

    .line 114
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->b:I

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->c:I

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->d:J

    .line 118
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    .line 119
    iput-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->l:Ljava/lang/Object;

    .line 120
    iput-object p3, p0, Lit/gmariotti/cardslib/library/view/listener/c;->f:Lit/gmariotti/cardslib/library/view/listener/c$a;

    return-void
.end method

.method static synthetic a(Lit/gmariotti/cardslib/library/view/listener/c;)V
    .locals 5

    .line 1257
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1258
    iget-object v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    .line 1260
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-wide v3, p0, Lit/gmariotti/cardslib/library/view/listener/c;->d:J

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1262
    new-instance v3, Lit/gmariotti/cardslib/library/view/listener/c$2;

    invoke-direct {v3, p0, v0, v1}, Lit/gmariotti/cardslib/library/view/listener/c$2;-><init>(Lit/gmariotti/cardslib/library/view/listener/c;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1274
    new-instance v1, Lit/gmariotti/cardslib/library/view/listener/c$3;

    invoke-direct {v1, p0, v0}, Lit/gmariotti/cardslib/library/view/listener/c$3;-><init>(Lit/gmariotti/cardslib/library/view/listener/c;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1282
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic b(Lit/gmariotti/cardslib/library/view/listener/c;)Landroid/view/View;
    .locals 0

    .line 62
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lit/gmariotti/cardslib/library/view/listener/c;)Ljava/lang/Object;
    .locals 0

    .line 62
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lit/gmariotti/cardslib/library/view/listener/c;)Lit/gmariotti/cardslib/library/view/listener/c$a;
    .locals 0

    .line 62
    iget-object p0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->f:Lit/gmariotti/cardslib/library/view/listener/c$a;

    return-object p0
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 126
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->n:F

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 128
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->g:I

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->g:I

    .line 132
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eq v0, v3, :cond_5

    const/4 v6, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v6, :cond_1

    goto/16 :goto_8

    .line 198
    :cond_1
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_10

    .line 202
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 203
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 204
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->d:J

    .line 205
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 206
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 207
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 208
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    .line 209
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->n:F

    .line 210
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->h:F

    .line 211
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->i:F

    .line 212
    iput-boolean v5, p0, Lit/gmariotti/cardslib/library/view/listener/c;->j:Z

    goto/16 :goto_8

    .line 217
    :cond_2
    iget-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 222
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->h:F

    sub-float/2addr p1, v0

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->i:F

    sub-float/2addr v0, v2

    .line 224
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v7, p0, Lit/gmariotti/cardslib/library/view/listener/c;->a:I

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

    .line 225
    iput-boolean v3, p0, Lit/gmariotti/cardslib/library/view/listener/c;->j:Z

    cmpl-float v0, p1, v1

    if-lez v0, :cond_3

    .line 226
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->a:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->a:I

    neg-int v0, v0

    :goto_0
    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->k:I

    .line 227
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 230
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p2

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v6

    .line 231
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 234
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 235
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 238
    :cond_4
    iget-boolean p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->j:Z

    if-eqz p2, :cond_10

    .line 239
    iput p1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->n:F

    .line 240
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->k:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 242
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    .line 243
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    mul-float p1, p1, v8

    iget v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->g:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    sub-float p1, v4, p1

    .line 242
    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return v3

    .line 146
    :cond_5
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v6, p0, Lit/gmariotti/cardslib/library/view/listener/c;->h:F

    sub-float/2addr v0, v6

    .line 151
    iget-object v6, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 152
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {p2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 153
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p2

    .line 154
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 155
    iget-object v7, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 158
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lit/gmariotti/cardslib/library/view/listener/c;->g:I

    div-int/2addr v9, v2

    int-to-float v2, v9

    cmpl-float v2, v8, v2

    if-lez v2, :cond_7

    iget-boolean v2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->j:Z

    if-eqz v2, :cond_7

    cmpl-float p2, v0, v1

    if-lez p2, :cond_6

    const/4 p2, 0x1

    goto :goto_5

    :cond_6
    const/4 p2, 0x0

    goto :goto_5

    .line 161
    :cond_7
    iget v2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->b:I

    int-to-float v2, v2

    cmpg-float v2, v2, v6

    if-gtz v2, :cond_c

    iget v2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->c:I

    int-to-float v2, v2

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_c

    cmpg-float v2, v7, v6

    if-gez v2, :cond_c

    iget-boolean v2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->j:Z

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

    .line 166
    :goto_3
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    goto :goto_4

    :cond_b
    const/4 v3, 0x0

    :goto_4
    move v10, v3

    move v3, p2

    move p2, v10

    goto :goto_5

    :cond_c
    const/4 p2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_e

    .line 170
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p2, :cond_d

    iget p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->g:I

    goto :goto_6

    :cond_d
    iget p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->g:I

    neg-int p2, p2

    :goto_6
    int-to-float p2, p2

    .line 171
    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 172
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->d:J

    .line 173
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lit/gmariotti/cardslib/library/view/listener/c$1;

    invoke-direct {v0, p0}, Lit/gmariotti/cardslib/library/view/listener/c$1;-><init>(Lit/gmariotti/cardslib/library/view/listener/c;)V

    .line 174
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_7

    .line 180
    :cond_e
    iget-boolean p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->j:Z

    if-eqz p2, :cond_f

    .line 182
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 183
    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 184
    invoke-virtual {p2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget-wide v2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->d:J

    .line 185
    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 186
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 188
    :cond_f
    :goto_7
    iget-object p2, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    .line 189
    iput-object p1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    .line 190
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->n:F

    .line 191
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->h:F

    .line 192
    iput v1, p0, Lit/gmariotti/cardslib/library/view/listener/c;->i:F

    .line 193
    iput-boolean v5, p0, Lit/gmariotti/cardslib/library/view/listener/c;->j:Z

    :cond_10
    :goto_8
    return v5

    .line 135
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->h:F

    .line 136
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->i:F

    .line 137
    iget-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->f:Lit/gmariotti/cardslib/library/view/listener/c$a;

    invoke-interface {v0}, Lit/gmariotti/cardslib/library/view/listener/c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 138
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lit/gmariotti/cardslib/library/view/listener/c;->m:Landroid/view/VelocityTracker;

    .line 139
    invoke-virtual {v0, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 141
    :cond_12
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method
