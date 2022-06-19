.class Lcom/nineoldandroids/a/g;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field a:I

.field b:Lcom/nineoldandroids/a/f;

.field c:Lcom/nineoldandroids/a/f;

.field d:Landroid/view/animation/Interpolator;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/nineoldandroids/a/f;",
            ">;"
        }
    .end annotation
.end field

.field f:Lcom/nineoldandroids/a/k;


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/a/f;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lcom/nineoldandroids/a/g;->a:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object p1, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nineoldandroids/a/f;

    iput-object p1, p0, Lcom/nineoldandroids/a/g;->b:Lcom/nineoldandroids/a/f;

    .line 49
    iget-object p1, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    iget v0, p0, Lcom/nineoldandroids/a/g;->a:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nineoldandroids/a/f;

    iput-object p1, p0, Lcom/nineoldandroids/a/g;->c:Lcom/nineoldandroids/a/f;

    .line 50
    iget-object p1, p0, Lcom/nineoldandroids/a/g;->c:Lcom/nineoldandroids/a/f;

    invoke-virtual {p1}, Lcom/nineoldandroids/a/f;->d()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/nineoldandroids/a/g;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static varargs a([F)Lcom/nineoldandroids/a/g;
    .locals 6

    .line 69
    array-length v0, p0

    const/4 v1, 0x2

    .line 70
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lcom/nineoldandroids/a/f$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 72
    invoke-static {v2}, Lcom/nineoldandroids/a/f;->a(F)Lcom/nineoldandroids/a/f;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/f$a;

    aput-object v0, v1, v3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    aget p0, p0, v3

    invoke-static {v0, p0}, Lcom/nineoldandroids/a/f;->a(FF)Lcom/nineoldandroids/a/f;

    move-result-object p0

    check-cast p0, Lcom/nineoldandroids/a/f$a;

    aput-object p0, v1, v4

    goto :goto_1

    .line 75
    :cond_0
    aget v5, p0, v3

    invoke-static {v2, v5}, Lcom/nineoldandroids/a/f;->a(FF)Lcom/nineoldandroids/a/f;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/a/f$a;

    aput-object v2, v1, v3

    :goto_0
    if-ge v4, v0, :cond_1

    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 77
    aget v3, p0, v4

    invoke-static {v2, v3}, Lcom/nineoldandroids/a/f;->a(FF)Lcom/nineoldandroids/a/f;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/a/f$a;

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    :cond_1
    :goto_1
    new-instance p0, Lcom/nineoldandroids/a/d;

    invoke-direct {p0, v1}, Lcom/nineoldandroids/a/d;-><init>([Lcom/nineoldandroids/a/f$a;)V

    return-object p0
.end method


# virtual methods
.method public a(F)Ljava/lang/Object;
    .locals 4

    .line 169
    iget v0, p0, Lcom/nineoldandroids/a/g;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/nineoldandroids/a/g;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/k;

    iget-object v1, p0, Lcom/nineoldandroids/a/g;->b:Lcom/nineoldandroids/a/f;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/nineoldandroids/a/g;->c:Lcom/nineoldandroids/a/f;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/a/k;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_3

    .line 177
    iget-object v0, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/f;

    .line 178
    invoke-virtual {v0}, Lcom/nineoldandroids/a/f;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/nineoldandroids/a/g;->b:Lcom/nineoldandroids/a/f;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/f;->c()F

    move-result v1

    sub-float/2addr p1, v1

    .line 183
    invoke-virtual {v0}, Lcom/nineoldandroids/a/f;->c()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 185
    iget-object v1, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/k;

    iget-object v2, p0, Lcom/nineoldandroids/a/g;->b:Lcom/nineoldandroids/a/f;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, p1, v2, v0}, Lcom/nineoldandroids/a/k;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_5

    .line 188
    iget-object v2, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/f;

    .line 189
    iget-object v1, p0, Lcom/nineoldandroids/a/g;->c:Lcom/nineoldandroids/a/f;

    invoke-virtual {v1}, Lcom/nineoldandroids/a/f;->d()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 191
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 193
    :cond_4
    invoke-virtual {v0}, Lcom/nineoldandroids/a/f;->c()F

    move-result v1

    sub-float/2addr p1, v1

    .line 194
    iget-object v2, p0, Lcom/nineoldandroids/a/g;->c:Lcom/nineoldandroids/a/f;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/f;->c()F

    move-result v2

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 196
    iget-object v1, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/k;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/nineoldandroids/a/g;->c:Lcom/nineoldandroids/a/f;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Lcom/nineoldandroids/a/k;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/nineoldandroids/a/g;->b:Lcom/nineoldandroids/a/f;

    .line 200
    :goto_0
    iget v1, p0, Lcom/nineoldandroids/a/g;->a:I

    if-ge v3, v1, :cond_8

    .line 201
    iget-object v1, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/f;

    .line 202
    invoke-virtual {v1}, Lcom/nineoldandroids/a/f;->c()F

    move-result v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_7

    .line 203
    invoke-virtual {v1}, Lcom/nineoldandroids/a/f;->d()Landroid/view/animation/Interpolator;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 205
    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 207
    :cond_6
    invoke-virtual {v0}, Lcom/nineoldandroids/a/f;->c()F

    move-result v2

    sub-float/2addr p1, v2

    .line 208
    invoke-virtual {v1}, Lcom/nineoldandroids/a/f;->c()F

    move-result v3

    sub-float/2addr v3, v2

    div-float/2addr p1, v3

    .line 210
    iget-object v2, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/k;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lcom/nineoldandroids/a/k;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-object v0, v1

    goto :goto_0

    .line 216
    :cond_8
    iget-object p1, p0, Lcom/nineoldandroids/a/g;->c:Lcom/nineoldandroids/a/f;

    invoke-virtual {p1}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/nineoldandroids/a/k;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/nineoldandroids/a/g;->f:Lcom/nineoldandroids/a/k;

    return-void
.end method

.method public b()Lcom/nineoldandroids/a/g;
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 146
    new-array v2, v1, [Lcom/nineoldandroids/a/f;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 148
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/a/f;

    invoke-virtual {v4}, Lcom/nineoldandroids/a/f;->e()Lcom/nineoldandroids/a/f;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/nineoldandroids/a/g;

    invoke-direct {v0, v2}, Lcom/nineoldandroids/a/g;-><init>([Lcom/nineoldandroids/a/f;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/nineoldandroids/a/g;->b()Lcom/nineoldandroids/a/g;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, " "

    const/4 v1, 0x0

    .line 222
    :goto_0
    iget v2, p0, Lcom/nineoldandroids/a/g;->a:I

    if-ge v1, v2, :cond_0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nineoldandroids/a/g;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/f;

    invoke-virtual {v0}, Lcom/nineoldandroids/a/f;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
