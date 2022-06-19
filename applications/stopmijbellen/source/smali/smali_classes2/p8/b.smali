.class public Lp8/b;
.super Lp8/d;
.source "SourceFile"


# instance fields
.field public e:F

.field public f:F

.field public g:F

.field public h:Z


# direct methods
.method public varargs constructor <init>([Lp8/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp8/d;-><init>([Lp8/c;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lp8/b;->h:Z

    return-void
.end method


# virtual methods
.method public a()Lp8/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lp8/d;->c:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3
    new-array v2, v1, [Lp8/c$a;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp8/c;

    invoke-virtual {v4}, Lp8/c;->a()Lp8/c;

    move-result-object v4

    check-cast v4, Lp8/c$a;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lp8/b;

    invoke-direct {v0, v2}, Lp8/b;-><init>([Lp8/c$a;)V

    return-object v0
.end method

.method public b(F)F
    .locals 5

    .line 1
    iget v0, p0, Lp8/d;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 2
    iget-boolean v0, p0, Lp8/b;->h:Z

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lp8/b;->h:Z

    .line 4
    iget-object v0, p0, Lp8/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/c$a;

    .line 5
    iget v0, v0, Lp8/c$a;->d:F

    .line 6
    iput v0, p0, Lp8/b;->e:F

    .line 7
    iget-object v0, p0, Lp8/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/c$a;

    .line 8
    iget v0, v0, Lp8/c$a;->d:F

    .line 9
    iput v0, p0, Lp8/b;->f:F

    .line 10
    iget v1, p0, Lp8/b;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lp8/b;->g:F

    .line 11
    :cond_0
    iget-object v0, p0, Lp8/d;->b:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    .line 12
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 13
    :cond_1
    iget-object v0, p0, Lp8/d;->d:Lp8/h;

    if-nez v0, :cond_2

    .line 14
    iget v0, p0, Lp8/b;->e:F

    iget v1, p0, Lp8/b;->g:F

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    return p1

    .line 15
    :cond_2
    iget v1, p0, Lp8/b;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lp8/b;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lp8/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_3
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_6

    .line 16
    iget-object v0, p0, Lp8/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/c$a;

    .line 17
    iget-object v1, p0, Lp8/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp8/c$a;

    .line 18
    iget v2, v0, Lp8/c$a;->d:F

    .line 19
    iget v3, v1, Lp8/c$a;->d:F

    .line 20
    iget v0, v0, Lp8/c;->a:F

    .line 21
    iget v4, v1, Lp8/c;->a:F

    .line 22
    iget-object v1, v1, Lp8/c;->b:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_4

    .line 23
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_4
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 24
    iget-object v0, p0, Lp8/d;->d:Lp8/h;

    if-nez v0, :cond_5

    invoke-static {v3, v2, p1, v2}, Landroidx/recyclerview/widget/b;->n(FFFF)F

    move-result p1

    goto :goto_0

    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lp8/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :goto_0
    return p1

    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_9

    .line 25
    iget-object v2, p0, Lp8/d;->c:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/c$a;

    .line 26
    iget-object v1, p0, Lp8/d;->c:Ljava/util/ArrayList;

    iget v2, p0, Lp8/d;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp8/c$a;

    .line 27
    iget v2, v0, Lp8/c$a;->d:F

    .line 28
    iget v3, v1, Lp8/c$a;->d:F

    .line 29
    iget v0, v0, Lp8/c;->a:F

    .line 30
    iget v4, v1, Lp8/c;->a:F

    .line 31
    iget-object v1, v1, Lp8/c;->b:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_7

    .line 32
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_7
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 33
    iget-object v0, p0, Lp8/d;->d:Lp8/h;

    if-nez v0, :cond_8

    invoke-static {v3, v2, p1, v2}, Landroidx/recyclerview/widget/b;->n(FFFF)F

    move-result p1

    goto :goto_1

    :cond_8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lp8/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :goto_1
    return p1

    .line 34
    :cond_9
    iget-object v0, p0, Lp8/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/c$a;

    const/4 v1, 0x1

    .line 35
    :goto_2
    iget v2, p0, Lp8/d;->a:I

    if-ge v1, v2, :cond_d

    .line 36
    iget-object v2, p0, Lp8/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp8/c$a;

    .line 37
    iget v4, v2, Lp8/c;->a:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_c

    .line 38
    iget-object v1, v2, Lp8/c;->b:Landroid/view/animation/Interpolator;

    if-eqz v1, :cond_a

    .line 39
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 40
    :cond_a
    iget v1, v0, Lp8/c;->a:F

    sub-float/2addr p1, v1

    iget v3, v2, Lp8/c;->a:F

    sub-float/2addr v3, v1

    div-float/2addr p1, v3

    .line 41
    iget v0, v0, Lp8/c$a;->d:F

    .line 42
    iget v1, v2, Lp8/c$a;->d:F

    .line 43
    iget-object v2, p0, Lp8/d;->d:Lp8/h;

    if-nez v2, :cond_b

    invoke-static {v1, v0, p1, v0}, Landroidx/recyclerview/widget/b;->n(FFFF)F

    move-result p1

    goto :goto_3

    :cond_b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lp8/h;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    :goto_3
    return p1

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_2

    .line 44
    :cond_d
    iget-object p1, p0, Lp8/d;->c:Ljava/util/ArrayList;

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp8/c;

    invoke-virtual {p1}, Lp8/c;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp8/b;->a()Lp8/b;

    move-result-object v0

    return-object v0
.end method
