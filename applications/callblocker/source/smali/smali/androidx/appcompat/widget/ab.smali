.class public abstract Landroidx/appcompat/widget/ab;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ab$b;,
        Landroidx/appcompat/widget/ab$a;
    }
.end annotation


# instance fields
.field private final a:F

.field private final b:I

.field final c:Landroid/view/View;

.field private final d:I

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;

.field private g:Z

.field private h:I

.field private final i:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/appcompat/widget/ab;->i:[I

    .line 69
    iput-object p1, p0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLongClickable(Z)V

    .line 71
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroidx/appcompat/widget/ab;->a:F

    .line 74
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/ab;->b:I

    .line 77
    iget v0, p0, Landroidx/appcompat/widget/ab;->b:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/ab;->d:I

    .line 78
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 170
    iget-object v2, p0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    .line 171
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 176
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ab;->h:I

    .line 180
    iget-object v1, p0, Landroidx/appcompat/widget/ab;->e:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 181
    new-instance v1, Landroidx/appcompat/widget/ab$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ab$a;-><init>(Landroidx/appcompat/widget/ab;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ab;->e:Ljava/lang/Runnable;

    .line 183
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/widget/ab;->e:Ljava/lang/Runnable;

    iget v3, p0, Landroidx/appcompat/widget/ab;->b:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    iget-object v1, p0, Landroidx/appcompat/widget/ab;->f:Ljava/lang/Runnable;

    if-nez v1, :cond_3

    .line 186
    new-instance v1, Landroidx/appcompat/widget/ab$b;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ab$b;-><init>(Landroidx/appcompat/widget/ab;)V

    iput-object v1, p0, Landroidx/appcompat/widget/ab;->f:Ljava/lang/Runnable;

    .line 188
    :cond_3
    iget-object v1, p0, Landroidx/appcompat/widget/ab;->f:Ljava/lang/Runnable;

    iget v3, p0, Landroidx/appcompat/widget/ab;->d:I

    int-to-long v4, v3

    invoke-virtual {v2, v1, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 191
    :pswitch_1
    iget v3, p0, Landroidx/appcompat/widget/ab;->h:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 192
    if-ltz v3, :cond_0

    .line 193
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 194
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 197
    iget v5, p0, Landroidx/appcompat/widget/ab;->a:F

    invoke-static {v2, v4, v3, v5}, Landroidx/appcompat/widget/ab;->a(Landroid/view/View;FFF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 198
    invoke-direct {p0}, Landroidx/appcompat/widget/ab;->e()V

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v0, v1

    .line 202
    goto :goto_0

    .line 208
    :pswitch_2
    invoke-direct {p0}, Landroidx/appcompat/widget/ab;->e()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/view/View;FFF)Z
    .locals 2

    .prologue
    .line 288
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 288
    :goto_0
    return v0

    .line 290
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 298
    iget-object v0, p0, Landroidx/appcompat/widget/ab;->i:[I

    .line 299
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 300
    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    aget v0, v0, v2

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 301
    return v2
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    iget-object v3, p0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    .line 260
    invoke-virtual {p0}, Landroidx/appcompat/widget/ab;->a()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->e()Z

    move-result v4

    if-nez v4, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v2

    .line 265
    :cond_1
    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->g()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/z;

    .line 266
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/widget/z;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 272
    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/ab;->b(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 273
    invoke-direct {p0, v0, v4}, Landroidx/appcompat/widget/ab;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 276
    iget v3, p0, Landroidx/appcompat/widget/ab;->h:I

    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/widget/z;->a(Landroid/view/MotionEvent;I)Z

    move-result v3

    .line 277
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 281
    if-eq v0, v1, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    move v0, v1

    .line 284
    :goto_1
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 281
    goto :goto_1

    :cond_3
    move v0, v2

    .line 284
    goto :goto_2
.end method

.method private b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 309
    iget-object v0, p0, Landroidx/appcompat/widget/ab;->i:[I

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 311
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 312
    return v2
.end method

.method private e()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Landroidx/appcompat/widget/ab;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ab;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 220
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ab;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ab;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 223
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a()Landroidx/appcompat/view/menu/p;
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Landroidx/appcompat/widget/ab;->a()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->a_()V

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected c()Z
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Landroidx/appcompat/widget/ab;->a()Landroidx/appcompat/view/menu/p;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {v0}, Landroidx/appcompat/view/menu/p;->d()V

    .line 160
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method d()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 226
    invoke-direct {p0}, Landroidx/appcompat/widget/ab;->e()V

    .line 228
    iget-object v8, p0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    .line 229
    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 244
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 245
    invoke-virtual {v8, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 248
    iput-boolean v9, p0, Landroidx/appcompat/widget/ab;->g:Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 94
    iget-boolean v10, p0, Landroidx/appcompat/widget/ab;->g:Z

    .line 96
    if-eqz v10, :cond_4

    .line 97
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ab;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/ab;->c()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v8

    .line 111
    :goto_0
    iput-boolean v0, p0, Landroidx/appcompat/widget/ab;->g:Z

    .line 112
    if-nez v0, :cond_1

    if-eqz v10, :cond_2

    :cond_1
    move v7, v8

    :cond_2
    return v7

    :cond_3
    move v0, v7

    .line 97
    goto :goto_0

    .line 99
    :cond_4
    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ab;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/widget/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    move v9, v8

    .line 101
    :goto_1
    if-eqz v9, :cond_5

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 104
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 106
    iget-object v1, p0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_5
    move v0, v9

    goto :goto_0

    :cond_6
    move v9, v7

    .line 99
    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/ab;->g:Z

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/widget/ab;->h:I

    .line 124
    iget-object v0, p0, Landroidx/appcompat/widget/ab;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Landroidx/appcompat/widget/ab;->c:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/ab;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    :cond_0
    return-void
.end method
