.class public Lx/d;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lm0/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/d$c;,
        Lx/d$b;,
        Lx/d$d;
    }
.end annotation


# static fields
.field public static final synthetic O:I


# instance fields
.field public A:F

.field public B:Lx/d$c;

.field public C:Lx/b;

.field public D:Z

.field public E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx/c;",
            ">;"
        }
    .end annotation
.end field

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lx/c;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lx/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public H:I

.field public I:F

.field public J:Z

.field public K:Lx/d$b;

.field public L:Z

.field public M:Lx/d$d;

.field public N:Z

.field public s:F

.field public t:I

.field public u:I

.field public v:I

.field public w:F

.field public x:F

.field public y:F

.field public z:J


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lx/d;->s(Z)V

    .line 2
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lx/d;->u:I

    return v0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lx/e$a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDesignTool()Lx/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lx/d;->C:Lx/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lx/b;

    invoke-direct {v0, p0}, Lx/b;-><init>(Lx/d;)V

    iput-object v0, p0, Lx/d;->C:Lx/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lx/d;->C:Lx/b;

    return-object v0
.end method

.method public getEndState()I
    .locals 1

    .line 1
    iget v0, p0, Lx/d;->v:I

    return v0
.end method

.method public getNanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lx/d;->y:F

    return v0
.end method

.method public getScene()Lx/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartState()I
    .locals 1

    .line 1
    iget v0, p0, Lx/d;->t:I

    return v0
.end method

.method public getTargetPosition()F
    .locals 1

    .line 1
    iget v0, p0, Lx/d;->A:F

    return v0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 4

    .line 1
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lx/d$b;

    invoke-direct {v0, p0}, Lx/d$b;-><init>(Lx/d;)V

    iput-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 4
    iget-object v1, v0, Lx/d$b;->e:Lx/d;

    .line 5
    iget v2, v1, Lx/d;->v:I

    .line 6
    iput v2, v0, Lx/d$b;->d:I

    .line 7
    iget v2, v1, Lx/d;->t:I

    .line 8
    iput v2, v0, Lx/d$b;->c:I

    .line 9
    invoke-virtual {v1}, Lx/d;->getVelocity()F

    move-result v1

    iput v1, v0, Lx/d$b;->b:F

    .line 10
    iget-object v1, v0, Lx/d$b;->e:Lx/d;

    invoke-virtual {v1}, Lx/d;->getProgress()F

    move-result v1

    iput v1, v0, Lx/d$b;->a:F

    .line 11
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 13
    iget v2, v0, Lx/d$b;->a:F

    const-string v3, "motion.progress"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 14
    iget v2, v0, Lx/d$b;->b:F

    const-string v3, "motion.velocity"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 15
    iget v2, v0, Lx/d$b;->c:I

    const-string v3, "motion.StartState"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget v0, v0, Lx/d$b;->d:I

    const-string v2, "motion.EndState"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v1
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 1
    iget v0, p0, Lx/d;->w:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Lx/d;->s:F

    return v0
.end method

.method public h(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx/d;->getNanoTime()J

    return-void
.end method

.method public i(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public j(Landroid/view/View;II[II)V
    .locals 0

    return-void
.end method

.method public k(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:Ly/b;

    return-void
.end method

.method public m(Landroid/view/View;IIIII[I)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 1
    aget p2, p7, p1

    add-int/2addr p2, p4

    aput p2, p7, p1

    const/4 p1, 0x1

    .line 2
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    :cond_1
    return-void
.end method

.method public n(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public o(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 4
    :cond_0
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Lx/d;->L:Z

    if-eqz v1, :cond_1

    .line 6
    new-instance v0, Lx/d$a;

    invoke-direct {v0, p0}, Lx/d$a;-><init>(Lx/d;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lx/d$b;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lx/d;->J:Z

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-boolean v0, p0, Lx/d;->J:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lx/d;->J:Z

    .line 4
    throw p1
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    instance-of v0, p1, Lx/c;

    if-eqz v0, :cond_4

    .line 3
    check-cast p1, Lx/c;

    .line 4
    iget-object v0, p0, Lx/d;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lx/d;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    :cond_0
    iget-object v0, p0, Lx/d;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-boolean v0, p1, Lx/c;->i:Z

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lx/d;->E:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/d;->E:Ljava/util/ArrayList;

    .line 10
    :cond_1
    iget-object v0, p0, Lx/d;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-boolean v0, p1, Lx/c;->j:Z

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lx/d;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx/d;->F:Ljava/util/ArrayList;

    .line 14
    :cond_3
    iget-object v0, p0, Lx/d;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lx/d;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lx/d;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 1
    iget v0, p0, Lx/d;->u:I

    const/4 v1, -0x1

    .line 2
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public s(Z)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lx/d$d;->c:Lx/d$d;

    iget-wide v2, v0, Lx/d;->z:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lx/d;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lx/d;->z:J

    .line 3
    :cond_0
    iget v2, v0, Lx/d;->y:F

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpl-float v6, v2, v5

    if-lez v6, :cond_1

    cmpg-float v6, v2, v4

    if-gez v6, :cond_1

    .line 4
    iput v3, v0, Lx/d;->u:I

    .line 5
    :cond_1
    iget-boolean v6, v0, Lx/d;->D:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    iget v6, v0, Lx/d;->A:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lx/d;->getNanoTime()J

    move-result-wide v9

    .line 8
    iget-wide v11, v0, Lx/d;->z:J

    sub-long v11, v9, v11

    long-to-float v6, v11

    mul-float v6, v6, v2

    const v11, 0x3089705f    # 1.0E-9f

    mul-float v6, v6, v11

    iget v11, v0, Lx/d;->w:F

    div-float/2addr v6, v11

    .line 9
    iget v11, v0, Lx/d;->y:F

    add-float/2addr v11, v6

    cmpl-float v12, v2, v5

    if-lez v12, :cond_3

    .line 10
    iget v13, v0, Lx/d;->A:F

    cmpl-float v13, v11, v13

    if-gez v13, :cond_4

    :cond_3
    cmpg-float v13, v2, v5

    if-gtz v13, :cond_5

    iget v13, v0, Lx/d;->A:F

    cmpg-float v13, v11, v13

    if-gtz v13, :cond_5

    .line 11
    :cond_4
    iget v11, v0, Lx/d;->A:F

    .line 12
    :cond_5
    iput v11, v0, Lx/d;->y:F

    .line 13
    iput v11, v0, Lx/d;->x:F

    .line 14
    iput-wide v9, v0, Lx/d;->z:J

    .line 15
    iput v6, v0, Lx/d;->s:F

    .line 16
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v9, 0x3727c5ac    # 1.0E-5f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_6

    .line 17
    sget-object v6, Lx/d$d;->b:Lx/d$d;

    invoke-virtual {v0, v6}, Lx/d;->setState(Lx/d$d;)V

    :cond_6
    if-lez v12, :cond_7

    .line 18
    iget v6, v0, Lx/d;->A:F

    cmpl-float v6, v11, v6

    if-gez v6, :cond_8

    :cond_7
    cmpg-float v6, v2, v5

    if-gtz v6, :cond_9

    iget v6, v0, Lx/d;->A:F

    cmpg-float v6, v11, v6

    if-gtz v6, :cond_9

    .line 19
    :cond_8
    iget v11, v0, Lx/d;->A:F

    :cond_9
    cmpl-float v6, v11, v4

    if-gez v6, :cond_a

    cmpg-float v9, v11, v5

    if-gtz v9, :cond_b

    .line 20
    :cond_a
    invoke-virtual {v0, v1}, Lx/d;->setState(Lx/d$d;)V

    .line 21
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 22
    iput-boolean v8, v0, Lx/d;->D:Z

    .line 23
    invoke-virtual/range {p0 .. p0}, Lx/d;->getNanoTime()J

    const/4 v10, 0x0

    if-gtz v9, :cond_1d

    if-lez v12, :cond_c

    .line 24
    iget v9, v0, Lx/d;->A:F

    cmpl-float v9, v11, v9

    if-gez v9, :cond_d

    :cond_c
    cmpg-float v9, v2, v5

    if-gtz v9, :cond_e

    iget v9, v0, Lx/d;->A:F

    cmpg-float v9, v11, v9

    if-gtz v9, :cond_e

    :cond_d
    const/4 v9, 0x1

    goto :goto_0

    :cond_e
    const/4 v9, 0x0

    .line 25
    :goto_0
    iget-boolean v13, v0, Lx/d;->D:Z

    if-nez v13, :cond_f

    if-eqz v9, :cond_f

    .line 26
    invoke-virtual {v0, v1}, Lx/d;->setState(Lx/d$d;)V

    .line 27
    :cond_f
    iget-boolean v13, v0, Lx/d;->D:Z

    xor-int/2addr v9, v7

    or-int/2addr v9, v13

    iput-boolean v9, v0, Lx/d;->D:Z

    cmpg-float v13, v11, v5

    if-gtz v13, :cond_11

    .line 28
    iget v13, v0, Lx/d;->t:I

    if-eq v13, v3, :cond_11

    .line 29
    iget v3, v0, Lx/d;->u:I

    if-ne v3, v13, :cond_10

    goto :goto_1

    .line 30
    :cond_10
    iput v13, v0, Lx/d;->u:I

    .line 31
    throw v10

    :cond_11
    :goto_1
    float-to-double v13, v11

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v13, v15

    if-ltz v3, :cond_13

    .line 32
    iget v3, v0, Lx/d;->u:I

    iget v13, v0, Lx/d;->v:I

    if-ne v3, v13, :cond_12

    goto :goto_2

    .line 33
    :cond_12
    iput v13, v0, Lx/d;->u:I

    .line 34
    throw v10

    :cond_13
    :goto_2
    if-nez v9, :cond_16

    if-lez v12, :cond_14

    if-eqz v6, :cond_15

    :cond_14
    cmpg-float v2, v2, v5

    if-gez v2, :cond_17

    cmpl-float v2, v11, v5

    if-nez v2, :cond_17

    .line 35
    :cond_15
    invoke-virtual {v0, v1}, Lx/d;->setState(Lx/d$d;)V

    goto :goto_3

    .line 36
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 37
    :cond_17
    :goto_3
    iget-boolean v1, v0, Lx/d;->D:Z

    .line 38
    :goto_4
    iget v1, v0, Lx/d;->y:F

    cmpl-float v2, v1, v4

    if-ltz v2, :cond_19

    .line 39
    iget v1, v0, Lx/d;->u:I

    iget v2, v0, Lx/d;->v:I

    if-eq v1, v2, :cond_18

    goto :goto_5

    :cond_18
    const/4 v7, 0x0

    .line 40
    :goto_5
    iput v2, v0, Lx/d;->u:I

    :goto_6
    move v8, v7

    goto :goto_8

    :cond_19
    cmpg-float v1, v1, v5

    if-gtz v1, :cond_1b

    .line 41
    iget v1, v0, Lx/d;->u:I

    iget v2, v0, Lx/d;->t:I

    if-eq v1, v2, :cond_1a

    goto :goto_7

    :cond_1a
    const/4 v7, 0x0

    .line 42
    :goto_7
    iput v2, v0, Lx/d;->u:I

    goto :goto_6

    .line 43
    :cond_1b
    :goto_8
    iget-boolean v1, v0, Lx/d;->N:Z

    or-int/2addr v1, v8

    iput-boolean v1, v0, Lx/d;->N:Z

    if-eqz v8, :cond_1c

    .line 44
    iget-boolean v1, v0, Lx/d;->J:Z

    if-nez v1, :cond_1c

    .line 45
    invoke-virtual/range {p0 .. p0}, Lx/d;->requestLayout()V

    .line 46
    :cond_1c
    iget v1, v0, Lx/d;->y:F

    iput v1, v0, Lx/d;->x:F

    return-void

    .line 47
    :cond_1d
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 48
    throw v10
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setDelayedApplicationOfInitialState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lx/d;->L:Z

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lx/d;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx/d;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lx/d;->F:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/c;

    .line 4
    invoke-virtual {v2, p1}, Lx/c;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx/d;->E:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lx/d;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/c;

    .line 4
    invoke-virtual {v2, p1}, Lx/c;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 7

    .line 1
    sget-object v0, Lx/d$d;->c:Lx/d$d;

    sget-object v1, Lx/d$d;->b:Lx/d$d;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v2

    if-ltz v4, :cond_0

    cmpl-float v5, p1, v3

    if-lez v5, :cond_1

    :cond_0
    const-string v5, "MotionLayout"

    const-string v6, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 2
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lx/d$b;

    invoke-direct {v0, p0}, Lx/d$b;-><init>(Lx/d;)V

    iput-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 6
    :cond_2
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 7
    iput p1, v0, Lx/d$b;->a:F

    return-void

    :cond_3
    if-gtz v4, :cond_5

    .line 8
    iget p1, p0, Lx/d;->y:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_4

    iget p1, p0, Lx/d;->u:I

    iget v3, p0, Lx/d;->v:I

    if-ne p1, v3, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Lx/d;->setState(Lx/d$d;)V

    .line 10
    :cond_4
    iget p1, p0, Lx/d;->t:I

    iput p1, p0, Lx/d;->u:I

    .line 11
    iget p1, p0, Lx/d;->y:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_8

    .line 12
    invoke-virtual {p0, v0}, Lx/d;->setState(Lx/d$d;)V

    goto :goto_0

    :cond_5
    cmpl-float p1, p1, v3

    if-ltz p1, :cond_7

    .line 13
    iget p1, p0, Lx/d;->y:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_6

    iget p1, p0, Lx/d;->u:I

    iget v2, p0, Lx/d;->t:I

    if-ne p1, v2, :cond_6

    .line 14
    invoke-virtual {p0, v1}, Lx/d;->setState(Lx/d$d;)V

    .line 15
    :cond_6
    iget p1, p0, Lx/d;->v:I

    iput p1, p0, Lx/d;->u:I

    .line 16
    iget p1, p0, Lx/d;->y:F

    cmpl-float p1, p1, v3

    if-nez p1, :cond_8

    .line 17
    invoke-virtual {p0, v0}, Lx/d;->setState(Lx/d$d;)V

    goto :goto_0

    :cond_7
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lx/d;->u:I

    .line 19
    invoke-virtual {p0, v1}, Lx/d;->setState(Lx/d$d;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public setScene(Lx/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Z

    const/4 p1, 0x0

    throw p1
.end method

.method public setStartState(I)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lx/d$b;

    invoke-direct {v0, p0}, Lx/d$b;-><init>(Lx/d;)V

    iput-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 5
    iput p1, v0, Lx/d$b;->c:I

    .line 6
    iput p1, v0, Lx/d$b;->d:I

    return-void

    .line 7
    :cond_1
    iput p1, p0, Lx/d;->u:I

    return-void
.end method

.method public setState(Lx/d$d;)V
    .locals 4

    .line 1
    sget-object v0, Lx/d$d;->c:Lx/d$d;

    if-ne p1, v0, :cond_0

    iget v1, p0, Lx/d;->u:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lx/d;->M:Lx/d$d;

    .line 3
    iput-object p1, p0, Lx/d;->M:Lx/d$d;

    .line 4
    sget-object v2, Lx/d$d;->b:Lx/d$d;

    if-ne v1, v2, :cond_1

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lx/d;->t()V

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_5

    .line 7
    invoke-virtual {p0}, Lx/d;->u()V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lx/d;->t()V

    :cond_4
    if-ne p1, v0, :cond_5

    .line 9
    invoke-virtual {p0}, Lx/d;->u()V

    :cond_5
    :goto_0
    return-void
.end method

.method public setTransition(I)V
    .locals 0

    return-void
.end method

.method public setTransition(Lx/e$a;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method

.method public setTransitionDuration(I)V
    .locals 0

    return-void
.end method

.method public setTransitionListener(Lx/d$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx/d;->B:Lx/d$c;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lx/d$b;

    invoke-direct {v0, p0}, Lx/d$b;-><init>(Lx/d;)V

    iput-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 3
    :cond_0
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "motion.progress"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lx/d$b;->a:F

    const-string v1, "motion.velocity"

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lx/d$b;->b:F

    const-string v1, "motion.StartState"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lx/d$b;->c:I

    const-string v1, "motion.EndState"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lx/d$b;->d:I

    .line 8
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lx/d;->K:Lx/d$b;

    invoke-virtual {p1}, Lx/d$b;->a()V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lx/d;->B:Lx/d$c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lx/d;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    :cond_0
    iget v0, p0, Lx/d;->I:F

    iget v1, p0, Lx/d;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 3
    iget v0, p0, Lx/d;->H:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lx/d;->B:Lx/d$c;

    if-eqz v0, :cond_1

    .line 5
    iget v2, p0, Lx/d;->t:I

    iget v3, p0, Lx/d;->v:I

    invoke-interface {v0, p0, v2, v3}, Lx/d$c;->a(Lx/d;II)V

    .line 6
    :cond_1
    iget-object v0, p0, Lx/d;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx/d$c;

    .line 8
    iget v3, p0, Lx/d;->t:I

    iget v4, p0, Lx/d;->v:I

    invoke-interface {v2, p0, v3, v4}, Lx/d$c;->a(Lx/d;II)V

    goto :goto_0

    .line 9
    :cond_2
    iput v1, p0, Lx/d;->H:I

    .line 10
    iget v0, p0, Lx/d;->x:F

    iput v0, p0, Lx/d;->I:F

    .line 11
    iget-object v1, p0, Lx/d;->B:Lx/d$c;

    if-eqz v1, :cond_3

    .line 12
    iget v2, p0, Lx/d;->t:I

    iget v3, p0, Lx/d;->v:I

    invoke-interface {v1, p0, v2, v3, v0}, Lx/d$c;->b(Lx/d;IIF)V

    .line 13
    :cond_3
    iget-object v0, p0, Lx/d;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/d$c;

    .line 15
    iget v2, p0, Lx/d;->t:I

    iget v3, p0, Lx/d;->v:I

    iget v4, p0, Lx/d;->x:F

    invoke-interface {v1, p0, v2, v3, v4}, Lx/d$c;->b(Lx/d;IIF)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lx/d;->t:I

    invoke-static {v0, v2}, Lx/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lx/d;->v:I

    .line 3
    invoke-static {v0, v2}, Lx/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx/d;->y:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lx/d;->s:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx/d;->B:Lx/d$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lx/d;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Lx/d;->H:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 3
    :cond_1
    iget-object v0, p0, Lx/d;->B:Lx/d$c;

    if-nez v0, :cond_3

    iget-object v0, p0, Lx/d;->G:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return-void

    .line 4
    :cond_3
    throw v1

    .line 5
    :cond_4
    iget v0, p0, Lx/d;->u:I

    iput v0, p0, Lx/d;->H:I

    .line 6
    throw v1
.end method

.method public v(FF)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lx/d$b;

    invoke-direct {v0, p0}, Lx/d$b;-><init>(Lx/d;)V

    iput-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 5
    iput p1, v0, Lx/d$b;->a:F

    .line 6
    iput p2, v0, Lx/d$b;->b:F

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Lx/d;->setProgress(F)V

    .line 8
    sget-object p1, Lx/d$d;->b:Lx/d$d;

    invoke-virtual {p0, p1}, Lx/d;->setState(Lx/d$d;)V

    .line 9
    iput p2, p0, Lx/d;->s:F

    return-void
.end method

.method public w(II)V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lx/d$b;

    invoke-direct {v0, p0}, Lx/d$b;-><init>(Lx/d;)V

    iput-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 5
    iput p1, v0, Lx/d$b;->c:I

    .line 6
    iput p2, v0, Lx/d$b;->d:I

    :cond_1
    return-void
.end method

.method public x(I)V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lx/d$b;

    invoke-direct {v0, p0}, Lx/d$b;-><init>(Lx/d;)V

    iput-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 4
    :cond_0
    iget-object v0, p0, Lx/d;->K:Lx/d$b;

    .line 5
    iput p1, v0, Lx/d$b;->d:I

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lx/d;->u:I

    if-ne v0, p1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget v1, p0, Lx/d;->t:I

    if-ne v1, p1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget v1, p0, Lx/d;->v:I

    if-ne v1, p1, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    iput p1, p0, Lx/d;->v:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    .line 10
    invoke-virtual {p0, v0, p1}, Lx/d;->w(II)V

    .line 11
    iput v1, p0, Lx/d;->y:F

    :goto_0
    return-void

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    .line 12
    iput p1, p0, Lx/d;->A:F

    .line 13
    iput v1, p0, Lx/d;->x:F

    .line 14
    iput v1, p0, Lx/d;->y:F

    .line 15
    invoke-virtual {p0}, Lx/d;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lx/d;->z:J

    .line 16
    invoke-virtual {p0}, Lx/d;->getNanoTime()J

    .line 17
    throw v3
.end method
