.class public final Lzc;
.super Lxc;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lxc<",
        "Lzc;",
        ">;"
    }
.end annotation


# instance fields
.field public t:Lad;

.field public u:F

.field public v:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lyc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lyc<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lxc;-><init>(Ljava/lang/Object;Lyc;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lzc;->t:Lad;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Lzc;->u:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lzc;->v:Z

    return-void
.end method


# virtual methods
.method public j()V
    .locals 3

    invoke-virtual {p0}, Lzc;->p()V

    iget-object v0, p0, Lzc;->t:Lad;

    invoke-virtual {p0}, Lxc;->e()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lad;->g(D)V

    invoke-super {p0}, Lxc;->j()V

    return-void
.end method

.method public l(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lzc;->v:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Lzc;->u:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Lzc;->t:Lad;

    invoke-virtual {v6, v1}, Lad;->e(F)Lad;

    iput v5, v0, Lzc;->u:F

    :cond_0
    iget-object v1, v0, Lzc;->t:Lad;

    invoke-virtual {v1}, Lad;->a()F

    move-result v1

    iput v1, v0, Lxc;->b:F

    iput v4, v0, Lxc;->a:F

    iput-boolean v3, v0, Lzc;->v:Z

    return v2

    :cond_1
    iget v1, v0, Lzc;->u:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, v0, Lzc;->t:Lad;

    invoke-virtual {v1}, Lad;->a()F

    iget-object v6, v0, Lzc;->t:Lad;

    iget v1, v0, Lxc;->b:F

    float-to-double v7, v1

    iget v1, v0, Lxc;->a:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Lad;->h(DDJ)Lxc$o;

    move-result-object v1

    iget-object v6, v0, Lzc;->t:Lad;

    iget v7, v0, Lzc;->u:F

    invoke-virtual {v6, v7}, Lad;->e(F)Lad;

    iput v5, v0, Lzc;->u:F

    iget-object v13, v0, Lzc;->t:Lad;

    iget v5, v1, Lxc$o;->a:F

    float-to-double v14, v5

    iget v1, v1, Lxc$o;->b:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    goto :goto_0

    :cond_2
    iget-object v13, v0, Lzc;->t:Lad;

    iget v1, v0, Lxc;->b:F

    float-to-double v14, v1

    iget v1, v0, Lxc;->a:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    :goto_0
    invoke-virtual/range {v13 .. v19}, Lad;->h(DDJ)Lxc$o;

    move-result-object v1

    iget v5, v1, Lxc$o;->a:F

    iput v5, v0, Lxc;->b:F

    iget v1, v1, Lxc$o;->b:F

    iput v1, v0, Lxc;->a:F

    iget v1, v0, Lxc;->b:F

    iget v5, v0, Lxc;->h:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lxc;->b:F

    iget v5, v0, Lxc;->g:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Lxc;->b:F

    iget v5, v0, Lxc;->a:F

    invoke-virtual {v0, v1, v5}, Lzc;->o(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lzc;->t:Lad;

    invoke-virtual {v1}, Lad;->a()F

    move-result v1

    iput v1, v0, Lxc;->b:F

    iput v4, v0, Lxc;->a:F

    return v2

    :cond_3
    return v3
.end method

.method public m(F)V
    .locals 1

    invoke-virtual {p0}, Lxc;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lzc;->u:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzc;->t:Lad;

    if-nez v0, :cond_1

    new-instance v0, Lad;

    invoke-direct {v0, p1}, Lad;-><init>(F)V

    iput-object v0, p0, Lzc;->t:Lad;

    :cond_1
    iget-object v0, p0, Lzc;->t:Lad;

    invoke-virtual {v0, p1}, Lad;->e(F)Lad;

    invoke-virtual {p0}, Lzc;->j()V

    :goto_0
    return-void
.end method

.method public n()Lad;
    .locals 1

    iget-object v0, p0, Lzc;->t:Lad;

    return-object v0
.end method

.method public o(FF)Z
    .locals 1

    iget-object v0, p0, Lzc;->t:Lad;

    invoke-virtual {v0, p1, p2}, Lad;->c(FF)Z

    move-result p1

    return p1
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lzc;->t:Lad;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lad;->a()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Lxc;->g:F

    float-to-double v2, v2

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    iget v2, p0, Lxc;->h:F

    float-to-double v2, v2

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be less than the min value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public q(Lad;)Lzc;
    .locals 0

    iput-object p1, p0, Lzc;->t:Lad;

    return-object p0
.end method
