.class public Lv/f;
.super Lv/d;
.source "SourceFile"


# instance fields
.field public r0:F

.field public s0:I

.field public t0:I

.field public u0:Lv/c;

.field public v0:I

.field public w0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lv/d;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lv/f;->r0:F

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lv/f;->s0:I

    .line 4
    iput v0, p0, Lv/f;->t0:I

    .line 5
    iget-object v0, p0, Lv/d;->K:Lv/c;

    iput-object v0, p0, Lv/f;->u0:Lv/c;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lv/f;->v0:I

    .line 7
    iget-object v1, p0, Lv/d;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 8
    iget-object v1, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v2, p0, Lv/f;->u0:Lv/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lv/d;->R:[Lv/c;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v2, p0, Lv/d;->R:[Lv/c;

    iget-object v3, p0, Lv/f;->u0:Lv/c;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv/f;->w0:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv/f;->w0:Z

    return v0
.end method

.method public U(Lt/d;Z)V
    .locals 2

    .line 1
    iget-object p2, p0, Lv/d;->V:Lv/d;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lv/f;->u0:Lv/c;

    invoke-virtual {p1, p2}, Lt/d;->o(Ljava/lang/Object;)I

    move-result p1

    .line 3
    iget p2, p0, Lv/f;->v0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 4
    iput p1, p0, Lv/d;->a0:I

    .line 5
    iput v1, p0, Lv/d;->b0:I

    .line 6
    iget-object p1, p0, Lv/d;->V:Lv/d;

    .line 7
    invoke-virtual {p1}, Lv/d;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Lv/d;->N(I)V

    .line 8
    invoke-virtual {p0, v1}, Lv/d;->S(I)V

    goto :goto_0

    .line 9
    :cond_1
    iput v1, p0, Lv/d;->a0:I

    .line 10
    iput p1, p0, Lv/d;->b0:I

    .line 11
    iget-object p1, p0, Lv/d;->V:Lv/d;

    .line 12
    invoke-virtual {p1}, Lv/d;->u()I

    move-result p1

    invoke-virtual {p0, p1}, Lv/d;->S(I)V

    .line 13
    invoke-virtual {p0, v1}, Lv/d;->N(I)V

    :goto_0
    return-void
.end method

.method public V(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/f;->u0:Lv/c;

    .line 2
    iput p1, v0, Lv/c;->b:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lv/c;->c:Z

    .line 4
    iput-boolean p1, p0, Lv/f;->w0:Z

    return-void
.end method

.method public W(I)V
    .locals 3

    .line 1
    iget v0, p0, Lv/f;->v0:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lv/f;->v0:I

    .line 3
    iget-object p1, p0, Lv/d;->S:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 4
    iget p1, p0, Lv/f;->v0:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lv/d;->J:Lv/c;

    iput-object p1, p0, Lv/f;->u0:Lv/c;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lv/d;->K:Lv/c;

    iput-object p1, p0, Lv/f;->u0:Lv/c;

    .line 7
    :goto_0
    iget-object p1, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v0, p0, Lv/f;->u0:Lv/c;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Lv/d;->R:[Lv/c;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 9
    iget-object v1, p0, Lv/d;->R:[Lv/c;

    iget-object v2, p0, Lv/f;->u0:Lv/c;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public d(Lt/d;Z)V
    .locals 7

    .line 1
    iget-object p2, p0, Lv/d;->V:Lv/d;

    .line 2
    check-cast p2, Lv/e;

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lv/c$a;->a:Lv/c$a;

    invoke-virtual {p2, v0}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v0

    .line 4
    sget-object v1, Lv/c$a;->c:Lv/c$a;

    invoke-virtual {p2, v1}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lv/d;->V:Lv/d;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lv/d;->U:[I

    aget v2, v2, v4

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 6
    :goto_0
    iget v6, p0, Lv/f;->v0:I

    if-nez v6, :cond_3

    .line 7
    sget-object v0, Lv/c$a;->b:Lv/c$a;

    invoke-virtual {p2, v0}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v0

    .line 8
    sget-object v1, Lv/c$a;->d:Lv/c$a;

    invoke-virtual {p2, v1}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v1

    .line 9
    iget-object p2, p0, Lv/d;->V:Lv/d;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lv/d;->U:[I

    aget p2, p2, v3

    if-ne p2, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    move v2, v3

    .line 10
    :cond_3
    iget-boolean p2, p0, Lv/f;->w0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Lv/f;->u0:Lv/c;

    .line 11
    iget-boolean v6, p2, Lv/c;->c:Z

    if-eqz v6, :cond_6

    .line 12
    invoke-virtual {p1, p2}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object p2

    .line 13
    iget-object v6, p0, Lv/f;->u0:Lv/c;

    invoke-virtual {v6}, Lv/c;->c()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Lt/d;->e(Lt/h;I)V

    .line 14
    iget v6, p0, Lv/f;->s0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    .line 15
    invoke-virtual {p1, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto :goto_2

    .line 16
    :cond_4
    iget v6, p0, Lv/f;->t0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {p1, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v1

    .line 18
    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lt/d;->f(Lt/h;Lt/h;II)V

    .line 19
    invoke-virtual {p1, v1, p2, v4, v5}, Lt/d;->f(Lt/h;Lt/h;II)V

    .line 20
    :cond_5
    :goto_2
    iput-boolean v4, p0, Lv/f;->w0:Z

    return-void

    .line 21
    :cond_6
    iget p2, p0, Lv/f;->s0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    .line 22
    iget-object p2, p0, Lv/f;->u0:Lv/c;

    invoke-virtual {p1, p2}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object p2

    .line 23
    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    .line 24
    iget v3, p0, Lv/f;->s0:I

    invoke-virtual {p1, p2, v0, v3, v6}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    if-eqz v2, :cond_9

    .line 25
    invoke-virtual {p1, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto :goto_3

    .line 26
    :cond_7
    iget p2, p0, Lv/f;->t0:I

    if-eq p2, v3, :cond_8

    .line 27
    iget-object p2, p0, Lv/f;->u0:Lv/c;

    invoke-virtual {p1, p2}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object p2

    .line 28
    invoke-virtual {p1, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v1

    .line 29
    iget v3, p0, Lv/f;->t0:I

    neg-int v3, v3

    invoke-virtual {p1, p2, v1, v3, v6}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    if-eqz v2, :cond_9

    .line 30
    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Lt/d;->f(Lt/h;Lt/h;II)V

    .line 31
    invoke-virtual {p1, v1, p2, v4, v5}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto :goto_3

    .line 32
    :cond_8
    iget p2, p0, Lv/f;->r0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    .line 33
    iget-object p2, p0, Lv/f;->u0:Lv/c;

    invoke-virtual {p1, p2}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object p2

    .line 34
    invoke-virtual {p1, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v1

    .line 35
    iget v2, p0, Lv/f;->r0:F

    .line 36
    invoke-virtual {p1}, Lt/d;->m()Lt/b;

    move-result-object v3

    .line 37
    iget-object v4, v3, Lt/b;->d:Lt/b$a;

    invoke-interface {v4, p2, v0}, Lt/b$a;->d(Lt/h;F)V

    .line 38
    iget-object p2, v3, Lt/b;->d:Lt/b$a;

    invoke-interface {p2, v1, v2}, Lt/b$a;->d(Lt/h;F)V

    .line 39
    invoke-virtual {p1, v3}, Lt/d;->c(Lt/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(Lv/c$a;)Lv/c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lv/f;->v0:I

    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lv/f;->u0:Lv/c;

    return-object p1

    .line 4
    :cond_1
    iget p1, p0, Lv/f;->v0:I

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lv/f;->u0:Lv/c;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
