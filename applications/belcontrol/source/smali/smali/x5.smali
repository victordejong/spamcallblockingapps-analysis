.class public Lx5;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lz5;

.field public b:Lz5;

.field public c:Lz5;

.field public d:Lz5;

.field public e:Lz5;

.field public f:Lz5;

.field public g:Lz5;

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz5;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:F

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>(Lz5;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lx5;->k:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lx5;->p:Z

    iput-object p1, p0, Lx5;->a:Lz5;

    iput p2, p0, Lx5;->o:I

    iput-boolean p3, p0, Lx5;->p:Z

    return-void
.end method

.method public static c(Lz5;I)Z
    .locals 2

    invoke-virtual {p0}, Lz5;->T()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lz5;->S:[Lz5$b;

    aget-object v0, v0, p1

    sget-object v1, Lz5$b;->c:Lz5$b;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lz5;->p:[I

    aget v0, p0, p1

    if-eqz v0, :cond_0

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lx5;->t:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lx5;->b()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lx5;->t:Z

    return-void
.end method

.method public final b()V
    .locals 13

    iget v0, p0, Lx5;->o:I

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lx5;->a:Lz5;

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-nez v5, :cond_13

    iget v7, p0, Lx5;->i:I

    add-int/2addr v7, v6

    iput v7, p0, Lx5;->i:I

    iget-object v7, v2, Lz5;->E0:[Lz5;

    iget v8, p0, Lx5;->o:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    iget-object v7, v2, Lz5;->D0:[Lz5;

    aput-object v9, v7, v8

    invoke-virtual {v2}, Lz5;->T()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_e

    iget v7, p0, Lx5;->l:I

    add-int/2addr v7, v6

    iput v7, p0, Lx5;->l:I

    iget v7, p0, Lx5;->o:I

    invoke-virtual {v2, v7}, Lz5;->v(I)Lz5$b;

    move-result-object v7

    sget-object v8, Lz5$b;->c:Lz5$b;

    if-eq v7, v8, :cond_0

    iget v7, p0, Lx5;->m:I

    iget v10, p0, Lx5;->o:I

    invoke-virtual {v2, v10}, Lz5;->F(I)I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Lx5;->m:I

    :cond_0
    iget v7, p0, Lx5;->m:I

    iget-object v10, v2, Lz5;->P:[Ly5;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Ly5;->f()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Lx5;->m:I

    iget-object v10, v2, Lz5;->P:[Ly5;

    add-int/lit8 v11, v0, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ly5;->f()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Lx5;->m:I

    iget v7, p0, Lx5;->n:I

    iget-object v10, v2, Lz5;->P:[Ly5;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Ly5;->f()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Lx5;->n:I

    iget-object v10, v2, Lz5;->P:[Ly5;

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ly5;->f()I

    move-result v10

    add-int/2addr v7, v10

    iput v7, p0, Lx5;->n:I

    iget-object v7, p0, Lx5;->b:Lz5;

    if-nez v7, :cond_1

    iput-object v2, p0, Lx5;->b:Lz5;

    :cond_1
    iput-object v2, p0, Lx5;->d:Lz5;

    iget-object v7, v2, Lz5;->S:[Lz5$b;

    iget v10, p0, Lx5;->o:I

    aget-object v7, v7, v10

    if-ne v7, v8, :cond_e

    iget-object v7, v2, Lz5;->p:[I

    aget v8, v7, v10

    const/4 v11, 0x0

    if-eqz v8, :cond_2

    aget v8, v7, v10

    const/4 v12, 0x3

    if-eq v8, v12, :cond_2

    aget v7, v7, v10

    if-ne v7, v1, :cond_9

    :cond_2
    iget v7, p0, Lx5;->j:I

    add-int/2addr v7, v6

    iput v7, p0, Lx5;->j:I

    iget-object v7, v2, Lz5;->C0:[F

    aget v8, v7, v10

    cmpl-float v12, v8, v11

    if-lez v12, :cond_3

    iget v12, p0, Lx5;->k:F

    aget v7, v7, v10

    add-float/2addr v12, v7

    iput v12, p0, Lx5;->k:F

    :cond_3
    invoke-static {v2, v10}, Lx5;->c(Lz5;I)Z

    move-result v7

    if-eqz v7, :cond_6

    cmpg-float v7, v8, v11

    if-gez v7, :cond_4

    iput-boolean v6, p0, Lx5;->q:Z

    goto :goto_1

    :cond_4
    iput-boolean v6, p0, Lx5;->r:Z

    :goto_1
    iget-object v7, p0, Lx5;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lx5;->h:Ljava/util/ArrayList;

    :cond_5
    iget-object v7, p0, Lx5;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v7, p0, Lx5;->f:Lz5;

    if-nez v7, :cond_7

    iput-object v2, p0, Lx5;->f:Lz5;

    :cond_7
    iget-object v7, p0, Lx5;->g:Lz5;

    if-eqz v7, :cond_8

    iget-object v7, v7, Lz5;->D0:[Lz5;

    iget v8, p0, Lx5;->o:I

    aput-object v2, v7, v8

    :cond_8
    iput-object v2, p0, Lx5;->g:Lz5;

    :cond_9
    iget v7, p0, Lx5;->o:I

    if-nez v7, :cond_b

    iget v7, v2, Lz5;->n:I

    if-eqz v7, :cond_a

    goto :goto_2

    :cond_a
    iget v7, v2, Lz5;->q:I

    if-nez v7, :cond_d

    iget v7, v2, Lz5;->r:I

    goto :goto_2

    :cond_b
    iget v7, v2, Lz5;->o:I

    if-eqz v7, :cond_c

    goto :goto_2

    :cond_c
    iget v7, v2, Lz5;->t:I

    if-nez v7, :cond_d

    iget v7, v2, Lz5;->u:I

    :cond_d
    :goto_2
    iget v7, v2, Lz5;->W:F

    cmpl-float v7, v7, v11

    :cond_e
    if-eq v4, v2, :cond_f

    iget-object v4, v4, Lz5;->E0:[Lz5;

    iget v7, p0, Lx5;->o:I

    aput-object v2, v4, v7

    :cond_f
    iget-object v4, v2, Lz5;->P:[Ly5;

    add-int/lit8 v7, v0, 0x1

    aget-object v4, v4, v7

    iget-object v4, v4, Ly5;->f:Ly5;

    if-eqz v4, :cond_11

    iget-object v4, v4, Ly5;->d:Lz5;

    iget-object v7, v4, Lz5;->P:[Ly5;

    aget-object v8, v7, v0

    iget-object v8, v8, Ly5;->f:Ly5;

    if-eqz v8, :cond_11

    aget-object v7, v7, v0

    iget-object v7, v7, Ly5;->f:Ly5;

    iget-object v7, v7, Ly5;->d:Lz5;

    if-eq v7, v2, :cond_10

    goto :goto_3

    :cond_10
    move-object v9, v4

    :cond_11
    :goto_3
    if-eqz v9, :cond_12

    goto :goto_4

    :cond_12
    move-object v9, v2

    const/4 v5, 0x1

    :goto_4
    move-object v4, v2

    move-object v2, v9

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lx5;->b:Lz5;

    if-eqz v1, :cond_14

    iget v4, p0, Lx5;->m:I

    iget-object v1, v1, Lz5;->P:[Ly5;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ly5;->f()I

    move-result v1

    sub-int/2addr v4, v1

    iput v4, p0, Lx5;->m:I

    :cond_14
    iget-object v1, p0, Lx5;->d:Lz5;

    if-eqz v1, :cond_15

    iget v4, p0, Lx5;->m:I

    iget-object v1, v1, Lz5;->P:[Ly5;

    add-int/2addr v0, v6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ly5;->f()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, p0, Lx5;->m:I

    :cond_15
    iput-object v2, p0, Lx5;->c:Lz5;

    iget v0, p0, Lx5;->o:I

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lx5;->p:Z

    if-eqz v0, :cond_16

    iput-object v2, p0, Lx5;->e:Lz5;

    goto :goto_5

    :cond_16
    iget-object v0, p0, Lx5;->a:Lz5;

    iput-object v0, p0, Lx5;->e:Lz5;

    :goto_5
    iget-boolean v0, p0, Lx5;->r:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lx5;->q:Z

    if-eqz v0, :cond_17

    const/4 v3, 0x1

    :cond_17
    iput-boolean v3, p0, Lx5;->s:Z

    return-void
.end method
