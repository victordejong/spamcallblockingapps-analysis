.class public final Ld/k/a/d;
.super Ld/k/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ld/k/a/b<",
        "Ld/k/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private s:Ld/k/a/e;

.field private t:F

.field private u:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ld/k/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ld/k/a/c<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ld/k/a/b;-><init>(Ljava/lang/Object;Ld/k/a/c;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ld/k/a/d;->s:Ld/k/a/e;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Ld/k/a/d;->t:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld/k/a/d;->u:Z

    return-void
.end method

.method private o()V
    .locals 5

    iget-object v0, p0, Ld/k/a/d;->s:Ld/k/a/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ld/k/a/e;->a()F

    move-result v0

    float-to-double v0, v0

    iget v2, p0, Ld/k/a/b;->g:F

    float-to-double v2, v2

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    iget v2, p0, Ld/k/a/b;->h:F

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


# virtual methods
.method public j()V
    .locals 3

    invoke-direct {p0}, Ld/k/a/d;->o()V

    iget-object v0, p0, Ld/k/a/d;->s:Ld/k/a/e;

    invoke-virtual {p0}, Ld/k/a/b;->e()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ld/k/a/e;->g(D)V

    invoke-super {p0}, Ld/k/a/b;->j()V

    return-void
.end method

.method l(J)Z
    .locals 20

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ld/k/a/d;->u:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v1, :cond_1

    iget v1, v0, Ld/k/a/d;->t:F

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_0

    iget-object v6, v0, Ld/k/a/d;->s:Ld/k/a/e;

    invoke-virtual {v6, v1}, Ld/k/a/e;->e(F)Ld/k/a/e;

    iput v5, v0, Ld/k/a/d;->t:F

    :cond_0
    iget-object v1, v0, Ld/k/a/d;->s:Ld/k/a/e;

    invoke-virtual {v1}, Ld/k/a/e;->a()F

    move-result v1

    iput v1, v0, Ld/k/a/b;->b:F

    iput v4, v0, Ld/k/a/b;->a:F

    iput-boolean v3, v0, Ld/k/a/d;->u:Z

    return v2

    :cond_1
    iget v1, v0, Ld/k/a/d;->t:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_2

    iget-object v1, v0, Ld/k/a/d;->s:Ld/k/a/e;

    invoke-virtual {v1}, Ld/k/a/e;->a()F

    iget-object v6, v0, Ld/k/a/d;->s:Ld/k/a/e;

    iget v1, v0, Ld/k/a/b;->b:F

    float-to-double v7, v1

    iget v1, v0, Ld/k/a/b;->a:F

    float-to-double v9, v1

    const-wide/16 v11, 0x2

    div-long v18, p1, v11

    move-wide/from16 v11, v18

    invoke-virtual/range {v6 .. v12}, Ld/k/a/e;->h(DDJ)Ld/k/a/b$h;

    move-result-object v1

    iget-object v6, v0, Ld/k/a/d;->s:Ld/k/a/e;

    iget v7, v0, Ld/k/a/d;->t:F

    invoke-virtual {v6, v7}, Ld/k/a/e;->e(F)Ld/k/a/e;

    iput v5, v0, Ld/k/a/d;->t:F

    iget-object v13, v0, Ld/k/a/d;->s:Ld/k/a/e;

    iget v5, v1, Ld/k/a/b$h;->a:F

    float-to-double v14, v5

    iget v1, v1, Ld/k/a/b$h;->b:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    goto :goto_0

    :cond_2
    iget-object v13, v0, Ld/k/a/d;->s:Ld/k/a/e;

    iget v1, v0, Ld/k/a/b;->b:F

    float-to-double v14, v1

    iget v1, v0, Ld/k/a/b;->a:F

    float-to-double v5, v1

    move-wide/from16 v16, v5

    move-wide/from16 v18, p1

    :goto_0
    invoke-virtual/range {v13 .. v19}, Ld/k/a/e;->h(DDJ)Ld/k/a/b$h;

    move-result-object v1

    iget v5, v1, Ld/k/a/b$h;->a:F

    iput v5, v0, Ld/k/a/b;->b:F

    iget v1, v1, Ld/k/a/b$h;->b:F

    iput v1, v0, Ld/k/a/b;->a:F

    iget v1, v0, Ld/k/a/b;->b:F

    iget v5, v0, Ld/k/a/b;->h:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Ld/k/a/b;->b:F

    iget v5, v0, Ld/k/a/b;->g:F

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Ld/k/a/b;->b:F

    iget v5, v0, Ld/k/a/b;->a:F

    invoke-virtual {v0, v1, v5}, Ld/k/a/d;->n(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Ld/k/a/d;->s:Ld/k/a/e;

    invoke-virtual {v1}, Ld/k/a/e;->a()F

    move-result v1

    iput v1, v0, Ld/k/a/b;->b:F

    iput v4, v0, Ld/k/a/b;->a:F

    return v2

    :cond_3
    return v3
.end method

.method public m(F)V
    .locals 1

    invoke-virtual {p0}, Ld/k/a/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Ld/k/a/d;->t:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld/k/a/d;->s:Ld/k/a/e;

    if-nez v0, :cond_1

    new-instance v0, Ld/k/a/e;

    invoke-direct {v0, p1}, Ld/k/a/e;-><init>(F)V

    iput-object v0, p0, Ld/k/a/d;->s:Ld/k/a/e;

    :cond_1
    iget-object v0, p0, Ld/k/a/d;->s:Ld/k/a/e;

    invoke-virtual {v0, p1}, Ld/k/a/e;->e(F)Ld/k/a/e;

    invoke-virtual {p0}, Ld/k/a/d;->j()V

    :goto_0
    return-void
.end method

.method n(FF)Z
    .locals 1

    iget-object v0, p0, Ld/k/a/d;->s:Ld/k/a/e;

    invoke-virtual {v0, p1, p2}, Ld/k/a/e;->c(FF)Z

    move-result p1

    return p1
.end method

.method public p(Ld/k/a/e;)Ld/k/a/d;
    .locals 0

    iput-object p1, p0, Ld/k/a/d;->s:Ld/k/a/e;

    return-object p0
.end method
