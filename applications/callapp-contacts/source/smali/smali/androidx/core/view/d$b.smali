.class final Landroidx/core/view/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/d$b$a;
    }
.end annotation


# static fields
.field private static final l:I

.field private static final m:I

.field private static final n:I


# instance fields
.field final a:Landroid/os/Handler;

.field final b:Landroid/view/GestureDetector$OnGestureListener;

.field c:Landroid/view/GestureDetector$OnDoubleTapListener;

.field d:Z

.field e:Z

.field f:Z

.field g:Landroid/view/MotionEvent;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private o:Z

.field private p:Z

.field private q:Landroid/view/MotionEvent;

.field private r:Z

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:Z

.field private x:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroidx/core/view/d$b;->l:I

    .line 63
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/view/d$b;->m:I

    .line 64
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroidx/core/view/d$b;->n:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    .line 154
    new-instance v0, Landroidx/core/view/d$b$a;

    invoke-direct {v0, p0, p3}, Landroidx/core/view/d$b$a;-><init>(Landroidx/core/view/d$b;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    goto :goto_0

    .line 156
    :cond_0
    new-instance p3, Landroidx/core/view/d$b$a;

    invoke-direct {p3, p0}, Landroidx/core/view/d$b$a;-><init>(Landroidx/core/view/d$b;)V

    iput-object p3, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    .line 158
    :goto_0
    iput-object p2, p0, Landroidx/core/view/d$b;->b:Landroid/view/GestureDetector$OnGestureListener;

    .line 159
    instance-of p3, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz p3, :cond_1

    .line 160
    move-object p3, p2

    check-cast p3, Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 1193
    iput-object p3, p0, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 2172
    iput-boolean p2, p0, Landroidx/core/view/d$b;->w:Z

    .line 2174
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 2175
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    .line 2176
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p3

    .line 2177
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidx/core/view/d$b;->j:I

    .line 2178
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/core/view/d$b;->k:I

    mul-int p2, p2, p2

    .line 2180
    iput p2, p0, Landroidx/core/view/d$b;->h:I

    mul-int p3, p3, p3

    .line 2181
    iput p3, p0, Landroidx/core/view/d$b;->i:I

    return-void

    .line 2170
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "OnGestureListener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2167
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 230
    iget-object v1, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 231
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    .line 233
    :cond_0
    iget-object v1, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    .line 241
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v6, :cond_4

    if-eq v5, v8, :cond_3

    .line 244
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    add-float/2addr v9, v11

    .line 245
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v10, v11

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    add-int/lit8 v4, v6, -0x1

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    int-to-float v4, v4

    div-float/2addr v9, v4

    div-float/2addr v10, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v0, :cond_19

    const/16 v8, 0x3e8

    const/4 v11, 0x0

    if-eq v0, v2, :cond_f

    if-eq v0, v4, :cond_a

    if-eq v0, v5, :cond_9

    const/4 v11, 0x5

    if-eq v0, v11, :cond_8

    if-eq v0, v1, :cond_6

    goto/16 :goto_c

    .line 262
    :cond_6
    iput v9, p0, Landroidx/core/view/d$b;->s:F

    iput v9, p0, Landroidx/core/view/d$b;->u:F

    .line 263
    iput v10, p0, Landroidx/core/view/d$b;->t:F

    iput v10, p0, Landroidx/core/view/d$b;->v:F

    .line 267
    iget-object v0, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    iget v1, p0, Landroidx/core/view/d$b;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 270
    iget-object v2, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    .line 271
    iget-object v4, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_20

    if-eq v4, v0, :cond_7

    .line 275
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 276
    iget-object v8, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    mul-float v8, v8, v2

    .line 277
    iget-object v9, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    mul-float v5, v5, v1

    add-float/2addr v8, v5

    cmpg-float v5, v8, v7

    if-gez v5, :cond_7

    .line 281
    iget-object p1, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_c

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 255
    :cond_8
    iput v9, p0, Landroidx/core/view/d$b;->s:F

    iput v9, p0, Landroidx/core/view/d$b;->u:F

    .line 256
    iput v10, p0, Landroidx/core/view/d$b;->t:F

    iput v10, p0, Landroidx/core/view/d$b;->v:F

    .line 2430
    iget-object p1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2431
    iget-object p1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2432
    iget-object p1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2433
    iput-boolean v3, p0, Landroidx/core/view/d$b;->r:Z

    .line 2434
    iput-boolean v3, p0, Landroidx/core/view/d$b;->o:Z

    .line 2435
    iput-boolean v3, p0, Landroidx/core/view/d$b;->p:Z

    .line 2436
    iput-boolean v3, p0, Landroidx/core/view/d$b;->e:Z

    .line 2437
    iget-boolean p1, p0, Landroidx/core/view/d$b;->f:Z

    if-eqz p1, :cond_20

    .line 2438
    iput-boolean v3, p0, Landroidx/core/view/d$b;->f:Z

    goto/16 :goto_c

    .line 3414
    :cond_9
    iget-object p1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3415
    iget-object p1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 3416
    iget-object p1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3417
    iget-object p1, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 3418
    iput-object v11, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    .line 3419
    iput-boolean v3, p0, Landroidx/core/view/d$b;->r:Z

    .line 3420
    iput-boolean v3, p0, Landroidx/core/view/d$b;->d:Z

    .line 3421
    iput-boolean v3, p0, Landroidx/core/view/d$b;->o:Z

    .line 3422
    iput-boolean v3, p0, Landroidx/core/view/d$b;->p:Z

    .line 3423
    iput-boolean v3, p0, Landroidx/core/view/d$b;->e:Z

    .line 3424
    iget-boolean p1, p0, Landroidx/core/view/d$b;->f:Z

    if-eqz p1, :cond_20

    .line 3425
    iput-boolean v3, p0, Landroidx/core/view/d$b;->f:Z

    goto/16 :goto_c

    .line 329
    :cond_a
    iget-boolean v0, p0, Landroidx/core/view/d$b;->f:Z

    if-nez v0, :cond_20

    .line 332
    iget v0, p0, Landroidx/core/view/d$b;->s:F

    sub-float/2addr v0, v9

    .line 333
    iget v1, p0, Landroidx/core/view/d$b;->t:F

    sub-float/2addr v1, v10

    .line 334
    iget-boolean v6, p0, Landroidx/core/view/d$b;->r:Z

    if-eqz v6, :cond_b

    .line 336
    iget-object v0, p0, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr v3, p1

    goto/16 :goto_c

    .line 337
    :cond_b
    iget-boolean v6, p0, Landroidx/core/view/d$b;->o:Z

    if-eqz v6, :cond_d

    .line 338
    iget v6, p0, Landroidx/core/view/d$b;->u:F

    sub-float v6, v9, v6

    float-to-int v6, v6

    .line 339
    iget v7, p0, Landroidx/core/view/d$b;->v:F

    sub-float v7, v10, v7

    float-to-int v7, v7

    mul-int v6, v6, v6

    mul-int v7, v7, v7

    add-int/2addr v6, v7

    .line 341
    iget v7, p0, Landroidx/core/view/d$b;->h:I

    if-le v6, v7, :cond_c

    .line 342
    iget-object v7, p0, Landroidx/core/view/d$b;->b:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v8, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    invoke-interface {v7, v8, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    .line 343
    iput v9, p0, Landroidx/core/view/d$b;->s:F

    .line 344
    iput v10, p0, Landroidx/core/view/d$b;->t:F

    .line 345
    iput-boolean v3, p0, Landroidx/core/view/d$b;->o:Z

    .line 346
    iget-object v0, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v0, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    .line 350
    :goto_5
    iget v0, p0, Landroidx/core/view/d$b;->h:I

    if-le v6, v0, :cond_18

    .line 351
    iput-boolean v3, p0, Landroidx/core/view/d$b;->p:Z

    goto/16 :goto_9

    .line 353
    :cond_d
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-gez v2, :cond_e

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_20

    .line 354
    :cond_e
    iget-object v2, p0, Landroidx/core/view/d$b;->b:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v3, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    invoke-interface {v2, v3, p1, v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    .line 355
    iput v9, p0, Landroidx/core/view/d$b;->s:F

    .line 356
    iput v10, p0, Landroidx/core/view/d$b;->t:F

    goto/16 :goto_c

    .line 361
    :cond_f
    iput-boolean v3, p0, Landroidx/core/view/d$b;->d:Z

    .line 362
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 363
    iget-boolean v1, p0, Landroidx/core/view/d$b;->r:Z

    if-eqz v1, :cond_10

    .line 365
    iget-object v1, p0, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/2addr p1, v3

    goto :goto_8

    .line 366
    :cond_10
    iget-boolean v1, p0, Landroidx/core/view/d$b;->f:Z

    if-eqz v1, :cond_11

    .line 367
    iget-object p1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iput-boolean v3, p0, Landroidx/core/view/d$b;->f:Z

    goto :goto_6

    .line 369
    :cond_11
    iget-boolean v1, p0, Landroidx/core/view/d$b;->o:Z

    if-eqz v1, :cond_13

    .line 370
    iget-object v1, p0, Landroidx/core/view/d$b;->b:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 371
    iget-boolean v5, p0, Landroidx/core/view/d$b;->e:Z

    if-eqz v5, :cond_12

    iget-object v5, p0, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v5, :cond_12

    .line 372
    invoke-interface {v5, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    :cond_12
    move p1, v1

    goto :goto_8

    .line 376
    :cond_13
    iget-object v1, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    .line 377
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 378
    iget v6, p0, Landroidx/core/view/d$b;->k:I

    int-to-float v6, v6

    invoke-virtual {v1, v8, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 379
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 380
    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    .line 382
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Landroidx/core/view/d$b;->j:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_15

    .line 383
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v7, p0, Landroidx/core/view/d$b;->j:I

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_14

    goto :goto_7

    :cond_14
    :goto_6
    const/4 p1, 0x0

    goto :goto_8

    .line 384
    :cond_15
    :goto_7
    iget-object v5, p0, Landroidx/core/view/d$b;->b:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v7, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    invoke-interface {v5, v7, p1, v1, v6}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    .line 388
    :goto_8
    iget-object v1, p0, Landroidx/core/view/d$b;->q:Landroid/view/MotionEvent;

    if-eqz v1, :cond_16

    .line 389
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 392
    :cond_16
    iput-object v0, p0, Landroidx/core/view/d$b;->q:Landroid/view/MotionEvent;

    .line 393
    iget-object v0, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_17

    .line 396
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 397
    iput-object v11, p0, Landroidx/core/view/d$b;->x:Landroid/view/VelocityTracker;

    .line 399
    :cond_17
    iput-boolean v3, p0, Landroidx/core/view/d$b;->r:Z

    .line 400
    iput-boolean v3, p0, Landroidx/core/view/d$b;->e:Z

    .line 401
    iget-object v0, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_18
    :goto_9
    move v3, p1

    goto/16 :goto_c

    .line 288
    :cond_19
    iget-object v0, p0, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1d

    .line 289
    iget-object v0, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 290
    iget-object v1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 291
    :cond_1a
    iget-object v1, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1c

    iget-object v6, p0, Landroidx/core/view/d$b;->q:Landroid/view/MotionEvent;

    if-eqz v6, :cond_1c

    if-eqz v0, :cond_1c

    .line 2444
    iget-boolean v0, p0, Landroidx/core/view/d$b;->p:Z

    if-eqz v0, :cond_1b

    .line 2448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    sub-long/2addr v7, v11

    sget v0, Landroidx/core/view/d$b;->n:I

    int-to-long v11, v0

    cmp-long v0, v7, v11

    if-gtz v0, :cond_1b

    .line 2452
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v0, v6

    .line 2453
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v1, v6

    mul-int v0, v0, v0

    mul-int v1, v1, v1

    add-int/2addr v0, v1

    .line 2454
    iget v1, p0, Landroidx/core/view/d$b;->i:I

    if-ge v0, v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_a

    :cond_1b
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_1c

    .line 295
    iput-boolean v2, p0, Landroidx/core/view/d$b;->r:Z

    .line 297
    iget-object v0, p0, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    iget-object v1, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int/2addr v0, v3

    .line 299
    iget-object v1, p0, Landroidx/core/view/d$b;->c:Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_b

    .line 302
    :cond_1c
    iget-object v0, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    sget v1, Landroidx/core/view/d$b;->n:I

    int-to-long v6, v1

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1d
    const/4 v0, 0x0

    .line 306
    :goto_b
    iput v9, p0, Landroidx/core/view/d$b;->s:F

    iput v9, p0, Landroidx/core/view/d$b;->u:F

    .line 307
    iput v10, p0, Landroidx/core/view/d$b;->t:F

    iput v10, p0, Landroidx/core/view/d$b;->v:F

    .line 308
    iget-object v1, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    if-eqz v1, :cond_1e

    .line 309
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 311
    :cond_1e
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    .line 312
    iput-boolean v2, p0, Landroidx/core/view/d$b;->o:Z

    .line 313
    iput-boolean v2, p0, Landroidx/core/view/d$b;->p:Z

    .line 314
    iput-boolean v2, p0, Landroidx/core/view/d$b;->d:Z

    .line 315
    iput-boolean v3, p0, Landroidx/core/view/d$b;->f:Z

    .line 316
    iput-boolean v3, p0, Landroidx/core/view/d$b;->e:Z

    .line 318
    iget-boolean v1, p0, Landroidx/core/view/d$b;->w:Z

    if-eqz v1, :cond_1f

    .line 319
    iget-object v1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sget v3, Landroidx/core/view/d$b;->m:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    sget v3, Landroidx/core/view/d$b;->l:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 323
    :cond_1f
    iget-object v1, p0, Landroidx/core/view/d$b;->a:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/core/view/d$b;->g:Landroid/view/MotionEvent;

    .line 324
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Landroidx/core/view/d$b;->m:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 323
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 325
    iget-object v1, p0, Landroidx/core/view/d$b;->b:Landroid/view/GestureDetector$OnGestureListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int v3, v0, p1

    :cond_20
    :goto_c
    return v3
.end method
