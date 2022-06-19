.class abstract Lcom/google/android/material/appbar/a;
.super Lcom/google/android/material/appbar/c;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/google/android/material/appbar/c",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Landroid/widget/OverScroller;

.field private b:Ljava/lang/Runnable;

.field private c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/appbar/c;-><init>()V

    .line 45
    iput v0, p0, Lcom/google/android/material/appbar/a;->d:I

    .line 47
    iput v0, p0, Lcom/google/android/material/appbar/a;->f:I

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput v0, p0, Lcom/google/android/material/appbar/a;->d:I

    .line 47
    iput v0, p0, Lcom/google/android/material/appbar/a;->f:I

    .line 54
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->c()I

    move-result v1

    .line 210
    const/4 v0, 0x0

    .line 212
    if-eqz p4, :cond_0

    if-lt v1, p4, :cond_0

    if-gt v1, p5, :cond_0

    .line 215
    invoke-static {p3, p4, p5}, Landroidx/core/c/a;->a(III)I

    move-result v2

    .line 217
    if-eq v1, v2, :cond_0

    .line 218
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/a;->a(I)Z

    .line 220
    sub-int v0, v1, v2

    .line 224
    :cond_0
    return v0
.end method

.method final a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->b:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->b:Ljava/lang/Runnable;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Landroid/widget/OverScroller;

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->a:Landroid/widget/OverScroller;

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Landroid/widget/OverScroller;

    .line 258
    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->c()I

    move-result v2

    .line 260
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v4

    move v3, v1

    move v5, v1

    move v6, v1

    move v7, p3

    move v8, p4

    .line 256
    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 266
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->a:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    new-instance v0, Lcom/google/android/material/appbar/a$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/material/appbar/a$a;-><init>(Lcom/google/android/material/appbar/a;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->b:Ljava/lang/Runnable;

    .line 268
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->b:Ljava/lang/Runnable;

    invoke-static {p2, v0}, Landroidx/core/h/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 269
    const/4 v1, 0x1

    .line 272
    :goto_0
    return v1

    .line 271
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/a;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 59
    iget v1, p0, Lcom/google/android/material/appbar/a;->f:I

    if-gez v1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/appbar/a;->f:I

    .line 63
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 66
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/google/android/material/appbar/a;->c:Z

    if-eqz v1, :cond_1

    .line 122
    :goto_0
    return v0

    .line 70
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 122
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/appbar/a;->c:Z

    goto :goto_0

    .line 73
    :pswitch_0
    iput-boolean v4, p0, Lcom/google/android/material/appbar/a;->c:Z

    .line 74
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 75
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 76
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/a;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iput v1, p0, Lcom/google/android/material/appbar/a;->e:I

    .line 78
    invoke-virtual {p3, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/a;->d:I

    .line 79
    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->d()V

    goto :goto_1

    .line 86
    :pswitch_1
    iget v1, p0, Lcom/google/android/material/appbar/a;->d:I

    .line 87
    if-eq v1, v3, :cond_2

    .line 91
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 92
    if-eq v1, v3, :cond_2

    .line 96
    invoke-virtual {p3, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 97
    iget v2, p0, Lcom/google/android/material/appbar/a;->e:I

    sub-int v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 98
    iget v3, p0, Lcom/google/android/material/appbar/a;->f:I

    if-le v2, v3, :cond_2

    .line 99
    iput-boolean v0, p0, Lcom/google/android/material/appbar/a;->c:Z

    .line 100
    iput v1, p0, Lcom/google/android/material/appbar/a;->e:I

    goto :goto_1

    .line 108
    :pswitch_2
    iput-boolean v4, p0, Lcom/google/android/material/appbar/a;->c:Z

    .line 109
    iput v3, p0, Lcom/google/android/material/appbar/a;->d:I

    .line 110
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method a_(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .prologue
    .line 203
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/a;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method b()I
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->c()I

    move-result v0

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method final b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .prologue
    .line 233
    .line 236
    invoke-virtual {p0}, Lcom/google/android/material/appbar/a;->b()I

    move-result v0

    sub-int v3, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 233
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/a;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    return v0
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 128
    iget v0, p0, Lcom/google/android/material/appbar/a;->f:I

    if-gez v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/a;->f:I

    .line 132
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2
    move v5, v7

    .line 199
    :cond_3
    return v5

    .line 135
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 136
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 138
    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/a;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    iput v1, p0, Lcom/google/android/material/appbar/a;->e:I

    .line 140
    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/a;->d:I

    .line 141
    invoke-direct {p0}, Lcom/google/android/material/appbar/a;->d()V

    goto :goto_0

    .line 150
    :pswitch_1
    iget v0, p0, Lcom/google/android/material/appbar/a;->d:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 151
    if-eq v0, v8, :cond_3

    .line 155
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 156
    iget v1, p0, Lcom/google/android/material/appbar/a;->e:I

    sub-int v3, v1, v0

    .line 158
    iget-boolean v1, p0, Lcom/google/android/material/appbar/a;->c:Z

    if-nez v1, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/appbar/a;->f:I

    if-le v1, v2, :cond_4

    .line 159
    iput-boolean v7, p0, Lcom/google/android/material/appbar/a;->c:Z

    .line 160
    if-lez v3, :cond_5

    .line 161
    iget v1, p0, Lcom/google/android/material/appbar/a;->f:I

    sub-int/2addr v3, v1

    .line 167
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/material/appbar/a;->c:Z

    if-eqz v1, :cond_1

    .line 168
    iput v0, p0, Lcom/google/android/material/appbar/a;->e:I

    .line 170
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/a;->b(Landroid/view/View;)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/appbar/a;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_0

    .line 163
    :cond_5
    iget v1, p0, Lcom/google/android/material/appbar/a;->f:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 176
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 179
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/appbar/a;->d:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    .line 180
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/a;->a(Landroid/view/View;)I

    move-result v0

    neg-int v4, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/appbar/a;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 185
    :cond_6
    :pswitch_3
    iput-boolean v5, p0, Lcom/google/android/material/appbar/a;->c:Z

    .line 186
    iput v8, p0, Lcom/google/android/material/appbar/a;->d:I

    .line 187
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/appbar/a;->g:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method c(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 282
    return-void
.end method
