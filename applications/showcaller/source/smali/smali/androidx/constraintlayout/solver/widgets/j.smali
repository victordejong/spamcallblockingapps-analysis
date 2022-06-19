.class public Landroidx/constraintlayout/solver/widgets/j;
.super Landroidx/constraintlayout/solver/widgets/h;
.source "VirtualLayout.java"


# instance fields
.field private P0:I

.field private Q0:I

.field private R0:I

.field private S0:I

.field private T0:I

.field private U0:I

.field private V0:I

.field private W0:I

.field private X0:Z

.field private Y0:I

.field private Z0:I

.field protected a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

.field b1:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/h;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->P0:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->Q0:I

    .line 4
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->R0:I

    .line 5
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->S0:I

    .line 6
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->T0:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->U0:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->V0:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->W0:I

    .line 10
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/j;->X0:Z

    .line 11
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->Y0:I

    .line 12
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->Z0:I

    .line 13
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->b1:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    return-void
.end method


# virtual methods
.method public A1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->P0:I

    return-void
.end method

.method public c(Landroidx/constraintlayout/solver/widgets/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/j;->h1()V

    return-void
.end method

.method public g1(Z)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->T0:I

    if-gtz v0, :cond_0

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/j;->U0:I

    if-lez v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/j;->U0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->V0:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->W0:I

    goto :goto_0

    .line 4
    :cond_1
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/j;->V0:I

    .line 5
    iget p1, p0, Landroidx/constraintlayout/solver/widgets/j;->U0:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->W0:I

    :cond_2
    :goto_0
    return-void
.end method

.method public h1()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/h;->O0:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/h;->N0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->I0(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public i1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->Z0:I

    return v0
.end method

.method public j1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->Y0:I

    return v0
.end method

.method public k1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->Q0:I

    return v0
.end method

.method public l1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->V0:I

    return v0
.end method

.method public m1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->W0:I

    return v0
.end method

.method public n1()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/j;->P0:I

    return v0
.end method

.method public o1(IIII)V
    .locals 0

    return-void
.end method

.method protected p1(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->b1:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->L()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/d;

    .line 3
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/d;->v1()Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->b1:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iput-object p2, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 5
    iput-object p4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 6
    iput p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->f:I

    .line 7
    iput p5, v0, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->g:I

    .line 8
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->b1:Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    invoke-interface {p2, p1, v0}, Landroidx/constraintlayout/solver/widgets/analyzer/b$b;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/b$a;)V

    .line 9
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->h:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y0(I)V

    .line 10
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->i:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z0(I)V

    .line 11
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget-boolean p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->k:Z

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y0(Z)V

    .line 12
    iget-object p2, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget p2, p2, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->j:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o0(I)V

    return-void
.end method

.method protected q1()Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->W:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Landroidx/constraintlayout/solver/widgets/d;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/d;->v1()Landroidx/constraintlayout/solver/widgets/analyzer/b$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/h;->O0:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8

    .line 4
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/h;->N0:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    .line 5
    :cond_2
    instance-of v5, v3, Landroidx/constraintlayout/solver/widgets/f;

    if-eqz v5, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 7
    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->v(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    .line 8
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->f:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v7, :cond_4

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->q:I

    if-eq v8, v4, :cond_4

    if-ne v6, v7, :cond_4

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->r:I

    if-eq v8, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    if-ne v5, v7, :cond_6

    .line 9
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    :cond_6
    if-ne v6, v7, :cond_7

    .line 10
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 11
    :cond_7
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iput-object v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->d:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 12
    iput-object v6, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->e:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 13
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->U()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->f:I

    .line 14
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->y()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->g:I

    .line 15
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    invoke-interface {v0, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/b$b;->b(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/b$a;)V

    .line 16
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->h:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->Y0(I)V

    .line 17
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->i:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->z0(I)V

    .line 18
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/j;->a1:Landroidx/constraintlayout/solver/widgets/analyzer/b$a;

    iget v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/b$a;->j:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->o0(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return v4
.end method

.method public r1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/j;->X0:Z

    return v0
.end method

.method protected s1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/j;->X0:Z

    return-void
.end method

.method public t1(II)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->Y0:I

    .line 2
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/j;->Z0:I

    return-void
.end method

.method public u1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->R0:I

    .line 2
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->P0:I

    .line 3
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->S0:I

    .line 4
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->Q0:I

    .line 5
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->T0:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->U0:I

    return-void
.end method

.method public v1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->Q0:I

    return-void
.end method

.method public w1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->U0:I

    return-void
.end method

.method public x1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->R0:I

    .line 2
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->V0:I

    return-void
.end method

.method public y1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->S0:I

    .line 2
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->W0:I

    return-void
.end method

.method public z1(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->T0:I

    .line 2
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->V0:I

    .line 3
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/j;->W0:I

    return-void
.end method
