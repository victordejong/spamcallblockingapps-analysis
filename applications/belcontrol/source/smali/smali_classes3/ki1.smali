.class public Lki1;
.super Lni1;
.source ""


# instance fields
.field public f:F

.field public g:F

.field public h:F

.field public i:Z


# direct methods
.method public varargs constructor <init>([Lmi1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lni1;-><init>([Lmi1;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lki1;->i:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lni1;
    .locals 1

    invoke-virtual {p0}, Lki1;->e()Lki1;

    move-result-object v0

    return-object v0
.end method

.method public b(F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lki1;->f(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lki1;->e()Lki1;

    move-result-object v0

    return-object v0
.end method

.method public e()Lki1;
    .locals 5

    iget-object v0, p0, Lni1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Lmi1$a;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmi1;

    invoke-virtual {v4}, Lmi1;->b()Lmi1;

    move-result-object v4

    check-cast v4, Lmi1$a;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lki1;

    invoke-direct {v0, v2}, Lki1;-><init>([Lmi1$a;)V

    return-object v0
.end method

.method public f(F)F
    .locals 5

    iget v0, p0, Lni1;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lki1;->i:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lki1;->i:Z

    iget-object v0, p0, Lni1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi1$a;

    invoke-virtual {v0}, Lmi1$a;->k()F

    move-result v0

    iput v0, p0, Lki1;->f:F

    iget-object v0, p0, Lni1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi1$a;

    invoke-virtual {v0}, Lmi1$a;->k()F

    move-result v0

    iput v0, p0, Lki1;->g:F

    iget v1, p0, Lki1;->f:F

    sub-float/2addr v0, v1

    iput v0, p0, Lki1;->h:F

    :cond_0
    iget-object v0, p0, Lni1;->c:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_1
    iget-object v0, p0, Lni1;->e:Lpi1;

    if-nez v0, :cond_2

    iget v0, p0, Lki1;->f:F

    iget v1, p0, Lki1;->h:F

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0

    :cond_2
    iget v1, p0, Lki1;->f:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lki1;->g:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lpi1;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_3
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_6

    iget-object v0, p0, Lni1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi1$a;

    iget-object v1, p0, Lni1;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmi1$a;

    invoke-virtual {v0}, Lmi1$a;->k()F

    move-result v2

    invoke-virtual {v1}, Lmi1$a;->k()F

    move-result v3

    invoke-virtual {v0}, Lmi1;->c()F

    move-result v0

    invoke-virtual {v1}, Lmi1;->c()F

    move-result v4

    invoke-virtual {v1}, Lmi1;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_4
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    iget-object v0, p0, Lni1;->e:Lpi1;

    if-nez v0, :cond_5

    sub-float/2addr v3, v2

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    goto :goto_1

    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lpi1;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :goto_1
    return v2

    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_9

    iget-object v2, p0, Lni1;->d:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi1$a;

    iget-object v1, p0, Lni1;->d:Ljava/util/ArrayList;

    iget v2, p0, Lni1;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmi1$a;

    invoke-virtual {v0}, Lmi1$a;->k()F

    move-result v2

    invoke-virtual {v1}, Lmi1$a;->k()F

    move-result v3

    invoke-virtual {v0}, Lmi1;->c()F

    move-result v0

    invoke-virtual {v1}, Lmi1;->c()F

    move-result v4

    invoke-virtual {v1}, Lmi1;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_7
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    iget-object v0, p0, Lni1;->e:Lpi1;

    if-nez v0, :cond_8

    sub-float/2addr v3, v2

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    goto :goto_2

    :cond_8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lpi1;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v2

    :goto_2
    return v2

    :cond_9
    iget-object v0, p0, Lni1;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmi1$a;

    const/4 v1, 0x1

    :goto_3
    iget v2, p0, Lni1;->a:I

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lni1;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmi1$a;

    invoke-virtual {v2}, Lmi1;->c()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_c

    invoke-virtual {v2}, Lmi1;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_a
    invoke-virtual {v0}, Lmi1;->c()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-virtual {v2}, Lmi1;->c()F

    move-result v1

    invoke-virtual {v0}, Lmi1;->c()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr p1, v1

    invoke-virtual {v0}, Lmi1$a;->k()F

    move-result v0

    invoke-virtual {v2}, Lmi1$a;->k()F

    move-result v1

    iget-object v2, p0, Lni1;->e:Lpi1;

    if-nez v2, :cond_b

    sub-float/2addr v1, v0

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    goto :goto_4

    :cond_b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lpi1;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    :goto_4
    return v0

    :cond_c
    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lni1;->d:Ljava/util/ArrayList;

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmi1;

    invoke-virtual {p1}, Lmi1;->f()Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_0
.end method
