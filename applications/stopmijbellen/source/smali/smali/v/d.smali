.class public Lv/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:F

.field public C:[I

.field public D:F

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:I

.field public I:I

.field public J:Lv/c;

.field public K:Lv/c;

.field public L:Lv/c;

.field public M:Lv/c;

.field public N:Lv/c;

.field public O:Lv/c;

.field public P:Lv/c;

.field public Q:Lv/c;

.field public R:[Lv/c;

.field public S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lv/c;",
            ">;"
        }
    .end annotation
.end field

.field public T:[Z

.field public U:[I

.field public V:Lv/d;

.field public W:I

.field public X:I

.field public Y:F

.field public Z:I

.field public a:Z

.field public a0:I

.field public b:Lw/c;

.field public b0:I

.field public c:Lw/c;

.field public c0:I

.field public d:Lw/l;

.field public d0:I

.field public e:Lw/n;

.field public e0:I

.field public f:[Z

.field public f0:F

.field public g:Z

.field public g0:F

.field public h:I

.field public h0:Ljava/lang/Object;

.field public i:I

.field public i0:I

.field public j:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k:Z

.field public k0:I

.field public l:Z

.field public l0:I

.field public m:Z

.field public m0:[F

.field public n:Z

.field public n0:[Lv/d;

.field public o:I

.field public o0:[Lv/d;

.field public p:I

.field public p0:I

.field public q:I

.field public q0:I

.field public r:I

.field public s:I

.field public t:[I

.field public u:I

.field public v:I

.field public w:F

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lv/d;->a:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lv/d;->d:Lw/l;

    .line 4
    iput-object v1, p0, Lv/d;->e:Lw/n;

    const/4 v2, 0x2

    new-array v3, v2, [Z

    .line 5
    fill-array-data v3, :array_0

    iput-object v3, p0, Lv/d;->f:[Z

    const/4 v3, 0x1

    .line 6
    iput-boolean v3, p0, Lv/d;->g:Z

    const/4 v4, -0x1

    .line 7
    iput v4, p0, Lv/d;->h:I

    .line 8
    iput v4, p0, Lv/d;->i:I

    .line 9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 10
    iput-boolean v0, p0, Lv/d;->k:Z

    .line 11
    iput-boolean v0, p0, Lv/d;->l:Z

    .line 12
    iput-boolean v0, p0, Lv/d;->m:Z

    .line 13
    iput-boolean v0, p0, Lv/d;->n:Z

    .line 14
    iput v4, p0, Lv/d;->o:I

    .line 15
    iput v4, p0, Lv/d;->p:I

    .line 16
    iput v0, p0, Lv/d;->q:I

    .line 17
    iput v0, p0, Lv/d;->r:I

    .line 18
    iput v0, p0, Lv/d;->s:I

    new-array v5, v2, [I

    .line 19
    iput-object v5, p0, Lv/d;->t:[I

    .line 20
    iput v0, p0, Lv/d;->u:I

    .line 21
    iput v0, p0, Lv/d;->v:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 22
    iput v5, p0, Lv/d;->w:F

    .line 23
    iput v0, p0, Lv/d;->x:I

    .line 24
    iput v0, p0, Lv/d;->y:I

    .line 25
    iput v5, p0, Lv/d;->z:F

    .line 26
    iput v4, p0, Lv/d;->A:I

    .line 27
    iput v5, p0, Lv/d;->B:F

    new-array v5, v2, [I

    .line 28
    fill-array-data v5, :array_1

    iput-object v5, p0, Lv/d;->C:[I

    const/4 v5, 0x0

    .line 29
    iput v5, p0, Lv/d;->D:F

    .line 30
    iput-boolean v0, p0, Lv/d;->E:Z

    .line 31
    iput-boolean v0, p0, Lv/d;->G:Z

    .line 32
    iput v0, p0, Lv/d;->H:I

    .line 33
    iput v0, p0, Lv/d;->I:I

    .line 34
    new-instance v6, Lv/c;

    sget-object v7, Lv/c$a;->a:Lv/c$a;

    invoke-direct {v6, p0, v7}, Lv/c;-><init>(Lv/d;Lv/c$a;)V

    iput-object v6, p0, Lv/d;->J:Lv/c;

    .line 35
    new-instance v7, Lv/c;

    sget-object v8, Lv/c$a;->b:Lv/c$a;

    invoke-direct {v7, p0, v8}, Lv/c;-><init>(Lv/d;Lv/c$a;)V

    iput-object v7, p0, Lv/d;->K:Lv/c;

    .line 36
    new-instance v8, Lv/c;

    sget-object v9, Lv/c$a;->c:Lv/c$a;

    invoke-direct {v8, p0, v9}, Lv/c;-><init>(Lv/d;Lv/c$a;)V

    iput-object v8, p0, Lv/d;->L:Lv/c;

    .line 37
    new-instance v9, Lv/c;

    sget-object v10, Lv/c$a;->d:Lv/c$a;

    invoke-direct {v9, p0, v10}, Lv/c;-><init>(Lv/d;Lv/c$a;)V

    iput-object v9, p0, Lv/d;->M:Lv/c;

    .line 38
    new-instance v10, Lv/c;

    sget-object v11, Lv/c$a;->e:Lv/c$a;

    invoke-direct {v10, p0, v11}, Lv/c;-><init>(Lv/d;Lv/c$a;)V

    iput-object v10, p0, Lv/d;->N:Lv/c;

    .line 39
    new-instance v11, Lv/c;

    sget-object v12, Lv/c$a;->g:Lv/c$a;

    invoke-direct {v11, p0, v12}, Lv/c;-><init>(Lv/d;Lv/c$a;)V

    iput-object v11, p0, Lv/d;->O:Lv/c;

    .line 40
    new-instance v11, Lv/c;

    sget-object v12, Lv/c$a;->h:Lv/c$a;

    invoke-direct {v11, p0, v12}, Lv/c;-><init>(Lv/d;Lv/c$a;)V

    iput-object v11, p0, Lv/d;->P:Lv/c;

    .line 41
    new-instance v11, Lv/c;

    sget-object v12, Lv/c$a;->f:Lv/c$a;

    invoke-direct {v11, p0, v12}, Lv/c;-><init>(Lv/d;Lv/c$a;)V

    iput-object v11, p0, Lv/d;->Q:Lv/c;

    const/4 v12, 0x6

    new-array v12, v12, [Lv/c;

    aput-object v6, v12, v0

    aput-object v8, v12, v3

    aput-object v7, v12, v2

    const/4 v6, 0x3

    aput-object v9, v12, v6

    const/4 v6, 0x4

    aput-object v10, v12, v6

    const/4 v6, 0x5

    aput-object v11, v12, v6

    .line 42
    iput-object v12, p0, Lv/d;->R:[Lv/c;

    .line 43
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lv/d;->S:Ljava/util/ArrayList;

    new-array v7, v2, [Z

    .line 44
    iput-object v7, p0, Lv/d;->T:[Z

    new-array v7, v2, [I

    fill-array-data v7, :array_2

    .line 45
    iput-object v7, p0, Lv/d;->U:[I

    .line 46
    iput-object v1, p0, Lv/d;->V:Lv/d;

    .line 47
    iput v0, p0, Lv/d;->W:I

    .line 48
    iput v0, p0, Lv/d;->X:I

    .line 49
    iput v5, p0, Lv/d;->Y:F

    .line 50
    iput v4, p0, Lv/d;->Z:I

    .line 51
    iput v0, p0, Lv/d;->a0:I

    .line 52
    iput v0, p0, Lv/d;->b0:I

    .line 53
    iput v0, p0, Lv/d;->c0:I

    const/high16 v5, 0x3f000000    # 0.5f

    .line 54
    iput v5, p0, Lv/d;->f0:F

    .line 55
    iput v5, p0, Lv/d;->g0:F

    .line 56
    iput v0, p0, Lv/d;->i0:I

    .line 57
    iput-object v1, p0, Lv/d;->j0:Ljava/lang/String;

    .line 58
    iput v0, p0, Lv/d;->k0:I

    .line 59
    iput v0, p0, Lv/d;->l0:I

    new-array v5, v2, [F

    .line 60
    fill-array-data v5, :array_3

    iput-object v5, p0, Lv/d;->m0:[F

    new-array v5, v2, [Lv/d;

    aput-object v1, v5, v0

    aput-object v1, v5, v3

    .line 61
    iput-object v5, p0, Lv/d;->n0:[Lv/d;

    new-array v2, v2, [Lv/d;

    aput-object v1, v2, v0

    aput-object v1, v2, v3

    .line 62
    iput-object v2, p0, Lv/d;->o0:[Lv/d;

    .line 63
    iput v4, p0, Lv/d;->p0:I

    .line 64
    iput v4, p0, Lv/d;->q0:I

    .line 65
    iget-object v0, p0, Lv/d;->J:Lv/c;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v1, p0, Lv/d;->K:Lv/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v1, p0, Lv/d;->L:Lv/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v1, p0, Lv/d;->M:Lv/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v1, p0, Lv/d;->O:Lv/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v1, p0, Lv/d;->P:Lv/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v1, p0, Lv/d;->Q:Lv/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lv/d;->S:Ljava/util/ArrayList;

    iget-object v1, p0, Lv/d;->N:Lv/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv/d;->J:Lv/c;

    iget-object v1, v0, Lv/c;->f:Lv/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lv/c;->f:Lv/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lv/d;->L:Lv/c;

    iget-object v1, v0, Lv/c;->f:Lv/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lv/c;->f:Lv/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv/d;->K:Lv/c;

    iget-object v1, v0, Lv/c;->f:Lv/c;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lv/c;->f:Lv/c;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lv/d;->M:Lv/c;

    iget-object v1, v0, Lv/c;->f:Lv/c;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lv/c;->f:Lv/c;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public C()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lv/d;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lv/d;->i0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv/d;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lv/d;->J:Lv/c;

    .line 2
    iget-boolean v0, v0, Lv/c;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lv/d;->L:Lv/c;

    .line 4
    iget-boolean v0, v0, Lv/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lv/d;->l:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lv/d;->K:Lv/c;

    .line 2
    iget-boolean v0, v0, Lv/c;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lv/d;->M:Lv/c;

    .line 4
    iget-boolean v0, v0, Lv/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public F()V
    .locals 5

    .line 1
    iget-object v0, p0, Lv/d;->J:Lv/c;

    invoke-virtual {v0}, Lv/c;->h()V

    .line 2
    iget-object v0, p0, Lv/d;->K:Lv/c;

    invoke-virtual {v0}, Lv/c;->h()V

    .line 3
    iget-object v0, p0, Lv/d;->L:Lv/c;

    invoke-virtual {v0}, Lv/c;->h()V

    .line 4
    iget-object v0, p0, Lv/d;->M:Lv/c;

    invoke-virtual {v0}, Lv/c;->h()V

    .line 5
    iget-object v0, p0, Lv/d;->N:Lv/c;

    invoke-virtual {v0}, Lv/c;->h()V

    .line 6
    iget-object v0, p0, Lv/d;->O:Lv/c;

    invoke-virtual {v0}, Lv/c;->h()V

    .line 7
    iget-object v0, p0, Lv/d;->P:Lv/c;

    invoke-virtual {v0}, Lv/c;->h()V

    .line 8
    iget-object v0, p0, Lv/d;->Q:Lv/c;

    invoke-virtual {v0}, Lv/c;->h()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lv/d;->V:Lv/d;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lv/d;->D:F

    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lv/d;->W:I

    .line 12
    iput v2, p0, Lv/d;->X:I

    .line 13
    iput v1, p0, Lv/d;->Y:F

    const/4 v1, -0x1

    .line 14
    iput v1, p0, Lv/d;->Z:I

    .line 15
    iput v2, p0, Lv/d;->a0:I

    .line 16
    iput v2, p0, Lv/d;->b0:I

    .line 17
    iput v2, p0, Lv/d;->c0:I

    .line 18
    iput v2, p0, Lv/d;->d0:I

    .line 19
    iput v2, p0, Lv/d;->e0:I

    const/high16 v3, 0x3f000000    # 0.5f

    .line 20
    iput v3, p0, Lv/d;->f0:F

    .line 21
    iput v3, p0, Lv/d;->g0:F

    .line 22
    iget-object v3, p0, Lv/d;->U:[I

    const/4 v4, 0x1

    aput v4, v3, v2

    .line 23
    aput v4, v3, v4

    .line 24
    iput-object v0, p0, Lv/d;->h0:Ljava/lang/Object;

    .line 25
    iput v2, p0, Lv/d;->i0:I

    .line 26
    iput v2, p0, Lv/d;->k0:I

    .line 27
    iput v2, p0, Lv/d;->l0:I

    .line 28
    iget-object v0, p0, Lv/d;->m0:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v2

    .line 29
    aput v3, v0, v4

    .line 30
    iput v1, p0, Lv/d;->o:I

    .line 31
    iput v1, p0, Lv/d;->p:I

    .line 32
    iget-object v0, p0, Lv/d;->C:[I

    const v3, 0x7fffffff

    aput v3, v0, v2

    .line 33
    aput v3, v0, v4

    .line 34
    iput v2, p0, Lv/d;->r:I

    .line 35
    iput v2, p0, Lv/d;->s:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 36
    iput v0, p0, Lv/d;->w:F

    .line 37
    iput v0, p0, Lv/d;->z:F

    .line 38
    iput v3, p0, Lv/d;->v:I

    .line 39
    iput v3, p0, Lv/d;->y:I

    .line 40
    iput v2, p0, Lv/d;->u:I

    .line 41
    iput v2, p0, Lv/d;->x:I

    .line 42
    iput v1, p0, Lv/d;->A:I

    .line 43
    iput v0, p0, Lv/d;->B:F

    .line 44
    iget-object v0, p0, Lv/d;->f:[Z

    aput-boolean v4, v0, v2

    .line 45
    aput-boolean v4, v0, v4

    .line 46
    iput-boolean v2, p0, Lv/d;->G:Z

    .line 47
    iget-object v0, p0, Lv/d;->T:[Z

    aput-boolean v2, v0, v2

    .line 48
    aput-boolean v2, v0, v4

    .line 49
    iput-boolean v4, p0, Lv/d;->g:Z

    .line 50
    iget-object v0, p0, Lv/d;->t:[I

    aput v2, v0, v2

    .line 51
    aput v2, v0, v4

    .line 52
    iput v1, p0, Lv/d;->h:I

    .line 53
    iput v1, p0, Lv/d;->i:I

    return-void
.end method

.method public G()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lv/d;->k:Z

    .line 2
    iput-boolean v0, p0, Lv/d;->l:Z

    .line 3
    iput-boolean v0, p0, Lv/d;->m:Z

    .line 4
    iput-boolean v0, p0, Lv/d;->n:Z

    .line 5
    iget-object v1, p0, Lv/d;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    iget-object v3, p0, Lv/d;->S:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv/c;

    .line 7
    iput-boolean v0, v3, Lv/c;->c:Z

    .line 8
    iput v0, v3, Lv/c;->b:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public H(Lt/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lv/d;->J:Lv/c;

    invoke-virtual {p1}, Lv/c;->i()V

    .line 2
    iget-object p1, p0, Lv/d;->K:Lv/c;

    invoke-virtual {p1}, Lv/c;->i()V

    .line 3
    iget-object p1, p0, Lv/d;->L:Lv/c;

    invoke-virtual {p1}, Lv/c;->i()V

    .line 4
    iget-object p1, p0, Lv/d;->M:Lv/c;

    invoke-virtual {p1}, Lv/c;->i()V

    .line 5
    iget-object p1, p0, Lv/d;->N:Lv/c;

    invoke-virtual {p1}, Lv/c;->i()V

    .line 6
    iget-object p1, p0, Lv/d;->Q:Lv/c;

    invoke-virtual {p1}, Lv/c;->i()V

    .line 7
    iget-object p1, p0, Lv/d;->O:Lv/c;

    invoke-virtual {p1}, Lv/c;->i()V

    .line 8
    iget-object p1, p0, Lv/d;->P:Lv/c;

    invoke-virtual {p1}, Lv/c;->i()V

    return-void
.end method

.method public final I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    cmpl-float p4, p3, p4

    if-nez p4, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :   "

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",\n"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final J(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 0

    if-ne p3, p4, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :   "

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",\n"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public K(I)V
    .locals 0

    .line 1
    iput p1, p0, Lv/d;->c0:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lv/d;->E:Z

    return-void
.end method

.method public L(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lv/d;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lv/d;->J:Lv/c;

    .line 3
    iput p1, v0, Lv/c;->b:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lv/c;->c:Z

    .line 5
    iget-object v0, p0, Lv/d;->L:Lv/c;

    .line 6
    iput p2, v0, Lv/c;->b:I

    .line 7
    iput-boolean v1, v0, Lv/c;->c:Z

    .line 8
    iput p1, p0, Lv/d;->a0:I

    sub-int/2addr p2, p1

    .line 9
    iput p2, p0, Lv/d;->W:I

    .line 10
    iput-boolean v1, p0, Lv/d;->k:Z

    return-void
.end method

.method public M(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lv/d;->l:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lv/d;->K:Lv/c;

    .line 3
    iput p1, v0, Lv/c;->b:I

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lv/c;->c:Z

    .line 5
    iget-object v0, p0, Lv/d;->M:Lv/c;

    .line 6
    iput p2, v0, Lv/c;->b:I

    .line 7
    iput-boolean v1, v0, Lv/c;->c:Z

    .line 8
    iput p1, p0, Lv/d;->b0:I

    sub-int/2addr p2, p1

    .line 9
    iput p2, p0, Lv/d;->X:I

    .line 10
    iget-boolean p2, p0, Lv/d;->E:Z

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lv/d;->N:Lv/c;

    iget v0, p0, Lv/d;->c0:I

    add-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lv/c;->j(I)V

    .line 12
    :cond_1
    iput-boolean v1, p0, Lv/d;->l:Z

    return-void
.end method

.method public N(I)V
    .locals 1

    .line 1
    iput p1, p0, Lv/d;->X:I

    .line 2
    iget v0, p0, Lv/d;->e0:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Lv/d;->X:I

    :cond_0
    return-void
.end method

.method public O(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/d;->U:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public P(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lv/d;->e0:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lv/d;->e0:I

    :goto_0
    return-void
.end method

.method public Q(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lv/d;->d0:I

    goto :goto_0

    .line 2
    :cond_0
    iput p1, p0, Lv/d;->d0:I

    :goto_0
    return-void
.end method

.method public R(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lv/d;->U:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public S(I)V
    .locals 1

    .line 1
    iput p1, p0, Lv/d;->W:I

    .line 2
    iget v0, p0, Lv/d;->d0:I

    if-ge p1, v0, :cond_0

    .line 3
    iput v0, p0, Lv/d;->W:I

    :cond_0
    return-void
.end method

.method public T(ZZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lv/d;->d:Lw/l;

    .line 2
    iget-boolean v1, v0, Lw/p;->g:Z

    and-int/2addr p1, v1

    .line 3
    iget-object v1, p0, Lv/d;->e:Lw/n;

    .line 4
    iget-boolean v2, v1, Lw/p;->g:Z

    and-int/2addr p2, v2

    .line 5
    iget-object v2, v0, Lw/p;->h:Lw/f;

    iget v2, v2, Lw/f;->g:I

    .line 6
    iget-object v3, v1, Lw/p;->h:Lw/f;

    iget v3, v3, Lw/f;->g:I

    .line 7
    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget v0, v0, Lw/f;->g:I

    .line 8
    iget-object v1, v1, Lw/p;->i:Lw/f;

    iget v1, v1, Lw/f;->g:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    .line 9
    iput v2, p0, Lv/d;->a0:I

    :cond_2
    if-eqz p2, :cond_3

    .line 10
    iput v3, p0, Lv/d;->b0:I

    .line 11
    :cond_3
    iget v2, p0, Lv/d;->i0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 12
    iput v6, p0, Lv/d;->W:I

    .line 13
    iput v6, p0, Lv/d;->X:I

    return-void

    :cond_4
    const/4 v2, 0x1

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lv/d;->U:[I

    aget p1, p1, v6

    if-ne p1, v2, :cond_5

    iget p1, p0, Lv/d;->W:I

    if-ge v0, p1, :cond_5

    move v0, p1

    .line 15
    :cond_5
    iput v0, p0, Lv/d;->W:I

    .line 16
    iget p1, p0, Lv/d;->d0:I

    if-ge v0, p1, :cond_6

    .line 17
    iput p1, p0, Lv/d;->W:I

    :cond_6
    if-eqz p2, :cond_8

    .line 18
    iget-object p1, p0, Lv/d;->U:[I

    aget p1, p1, v2

    if-ne p1, v2, :cond_7

    iget p1, p0, Lv/d;->X:I

    if-ge v1, p1, :cond_7

    move v1, p1

    .line 19
    :cond_7
    iput v1, p0, Lv/d;->X:I

    .line 20
    iget p1, p0, Lv/d;->e0:I

    if-ge v1, p1, :cond_8

    .line 21
    iput p1, p0, Lv/d;->X:I

    :cond_8
    return-void
.end method

.method public U(Lt/d;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lv/d;->J:Lv/c;

    invoke-virtual {p1, v0}, Lt/d;->o(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lv/d;->K:Lv/c;

    invoke-virtual {p1, v1}, Lt/d;->o(Ljava/lang/Object;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lv/d;->L:Lv/c;

    invoke-virtual {p1, v2}, Lt/d;->o(Ljava/lang/Object;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lv/d;->M:Lv/c;

    invoke-virtual {p1, v3}, Lt/d;->o(Ljava/lang/Object;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 5
    iget-object v3, p0, Lv/d;->d:Lw/l;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lw/p;->h:Lw/f;

    iget-boolean v5, v4, Lw/f;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lw/p;->i:Lw/f;

    iget-boolean v5, v3, Lw/f;->j:Z

    if-eqz v5, :cond_0

    .line 6
    iget v0, v4, Lw/f;->g:I

    .line 7
    iget v2, v3, Lw/f;->g:I

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lv/d;->e:Lw/n;

    if-eqz p2, :cond_1

    iget-object v3, p2, Lw/p;->h:Lw/f;

    iget-boolean v4, v3, Lw/f;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Lw/p;->i:Lw/f;

    iget-boolean v4, p2, Lw/f;->j:Z

    if-eqz v4, :cond_1

    .line 9
    iget v1, v3, Lw/f;->g:I

    .line 10
    iget p1, p2, Lw/f;->g:I

    :cond_1
    sub-int p2, v2, v0

    sub-int v3, p1, v1

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq v0, p2, :cond_2

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, p2, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3
    const/4 p2, 0x3

    sub-int/2addr v2, v0

    sub-int/2addr p1, v1

    .line 11
    iput v0, p0, Lv/d;->a0:I

    .line 12
    iput v1, p0, Lv/d;->b0:I

    .line 13
    iget v0, p0, Lv/d;->i0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 14
    iput v4, p0, Lv/d;->W:I

    .line 15
    iput v4, p0, Lv/d;->X:I

    goto :goto_0

    .line 16
    :cond_4
    iget-object v0, p0, Lv/d;->U:[I

    aget v1, v0, v4

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    iget v1, p0, Lv/d;->W:I

    if-ge v2, v1, :cond_5

    move v2, v1

    .line 17
    :cond_5
    aget v1, v0, v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Lv/d;->X:I

    if-ge p1, v1, :cond_6

    move p1, v1

    .line 18
    :cond_6
    iput v2, p0, Lv/d;->W:I

    .line 19
    iput p1, p0, Lv/d;->X:I

    .line 20
    iget v1, p0, Lv/d;->e0:I

    if-ge p1, v1, :cond_7

    .line 21
    iput v1, p0, Lv/d;->X:I

    .line 22
    :cond_7
    iget v1, p0, Lv/d;->d0:I

    if-ge v2, v1, :cond_8

    .line 23
    iput v1, p0, Lv/d;->W:I

    .line 24
    :cond_8
    iget v1, p0, Lv/d;->v:I

    if-lez v1, :cond_9

    aget v0, v0, v4

    if-ne v0, p2, :cond_9

    .line 25
    iget v0, p0, Lv/d;->W:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lv/d;->W:I

    .line 26
    :cond_9
    iget v0, p0, Lv/d;->y:I

    if-lez v0, :cond_a

    iget-object v1, p0, Lv/d;->U:[I

    aget v1, v1, v3

    if-ne v1, p2, :cond_a

    .line 27
    iget p2, p0, Lv/d;->X:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lv/d;->X:I

    .line 28
    :cond_a
    iget p2, p0, Lv/d;->W:I

    if-eq v2, p2, :cond_b

    .line 29
    iput p2, p0, Lv/d;->h:I

    .line 30
    :cond_b
    iget p2, p0, Lv/d;->X:I

    if-eq p1, p2, :cond_c

    .line 31
    iput p2, p0, Lv/d;->i:I

    :cond_c
    :goto_0
    return-void
.end method

.method public b(Lv/e;Lt/d;Ljava/util/HashSet;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv/e;",
            "Lt/d;",
            "Ljava/util/HashSet<",
            "Lv/d;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p5, :cond_1

    .line 1
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1, p2, p0}, Lg6/b;->c(Lv/e;Lt/d;Lv/d;)V

    .line 3
    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 p5, 0x40

    .line 4
    invoke-virtual {p1, p5}, Lv/e;->f0(I)Z

    move-result p5

    invoke-virtual {p0, p2, p5}, Lv/d;->d(Lt/d;Z)V

    :cond_1
    if-nez p4, :cond_3

    .line 5
    iget-object p5, p0, Lv/d;->J:Lv/c;

    .line 6
    iget-object p5, p5, Lv/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_2

    .line 7
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/c;

    .line 8
    iget-object v1, v0, Lv/c;->d:Lv/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv/d;->b(Lv/e;Lt/d;Ljava/util/HashSet;IZ)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p5, p0, Lv/d;->L:Lv/c;

    .line 10
    iget-object p5, p5, Lv/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_6

    .line 11
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/c;

    .line 12
    iget-object v1, v0, Lv/c;->d:Lv/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv/d;->b(Lv/e;Lt/d;Ljava/util/HashSet;IZ)V

    goto :goto_1

    .line 13
    :cond_3
    iget-object p5, p0, Lv/d;->K:Lv/c;

    .line 14
    iget-object p5, p5, Lv/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_4

    .line 15
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/c;

    .line 16
    iget-object v1, v0, Lv/c;->d:Lv/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv/d;->b(Lv/e;Lt/d;Ljava/util/HashSet;IZ)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object p5, p0, Lv/d;->M:Lv/c;

    .line 18
    iget-object p5, p5, Lv/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_5

    .line 19
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/c;

    .line 20
    iget-object v1, v0, Lv/c;->d:Lv/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lv/d;->b(Lv/e;Lt/d;Ljava/util/HashSet;IZ)V

    goto :goto_3

    .line 21
    :cond_5
    iget-object p5, p0, Lv/d;->N:Lv/c;

    .line 22
    iget-object p5, p5, Lv/c;->a:Ljava/util/HashSet;

    if-eqz p5, :cond_6

    .line 23
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_4
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/c;

    .line 24
    iget-object v1, v0, Lv/c;->d:Lv/d;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lv/d;->b(Lv/e;Lt/d;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    throw p1
.end method

.method public c()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lv/i;

    if-nez v0, :cond_1

    instance-of v0, p0, Lv/f;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Lt/d;Z)V
    .locals 48

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    .line 1
    iget-object v0, v15, Lv/d;->J:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v13

    .line 2
    iget-object v0, v15, Lv/d;->L:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v12

    .line 3
    iget-object v0, v15, Lv/d;->K:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v11

    .line 4
    iget-object v0, v15, Lv/d;->M:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v10

    .line 5
    iget-object v0, v15, Lv/d;->N:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v9

    .line 6
    iget-object v0, v15, Lv/d;->V:Lv/d;

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, v0, Lv/d;->U:[I

    aget v1, v0, v5

    if-ne v1, v8, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    aget v0, v0, v6

    if-ne v0, v8, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_1
    iget v2, v15, Lv/d;->q:I

    if-eq v2, v6, :cond_2

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    move/from16 v28, v0

    move/from16 v29, v1

    goto :goto_2

    :cond_2
    move/from16 v29, v1

    const/16 v28, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    move/from16 v28, v0

    const/16 v29, 0x0

    .line 10
    :goto_2
    iget v0, v15, Lv/d;->i0:I

    const/16 v4, 0x8

    if-ne v0, v4, :cond_7

    .line 11
    iget-object v0, v15, Lv/d;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    .line 12
    iget-object v2, v15, Lv/d;->S:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv/c;

    .line 13
    invoke-virtual {v2}, Lv/c;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_7

    .line 14
    iget-object v0, v15, Lv/d;->T:[Z

    aget-boolean v1, v0, v5

    if-nez v1, :cond_7

    aget-boolean v0, v0, v6

    if-nez v0, :cond_7

    return-void

    .line 15
    :cond_7
    iget-boolean v0, v15, Lv/d;->k:Z

    if-nez v0, :cond_8

    iget-boolean v1, v15, Lv/d;->l:Z

    if-eqz v1, :cond_c

    :cond_8
    if-eqz v0, :cond_9

    .line 16
    iget v0, v15, Lv/d;->a0:I

    invoke-virtual {v14, v13, v0}, Lt/d;->e(Lt/h;I)V

    .line 17
    iget v0, v15, Lv/d;->a0:I

    iget v1, v15, Lv/d;->W:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v12, v0}, Lt/d;->e(Lt/h;I)V

    if-eqz v29, :cond_9

    .line 18
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_9

    .line 19
    check-cast v0, Lv/e;

    .line 20
    iget-object v1, v15, Lv/d;->J:Lv/c;

    invoke-virtual {v0, v1}, Lv/e;->Z(Lv/c;)V

    .line 21
    iget-object v1, v15, Lv/d;->L:Lv/c;

    invoke-virtual {v0, v1}, Lv/e;->Y(Lv/c;)V

    .line 22
    :cond_9
    iget-boolean v0, v15, Lv/d;->l:Z

    if-eqz v0, :cond_b

    .line 23
    iget v0, v15, Lv/d;->b0:I

    invoke-virtual {v14, v11, v0}, Lt/d;->e(Lt/h;I)V

    .line 24
    iget v0, v15, Lv/d;->b0:I

    iget v1, v15, Lv/d;->X:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v10, v0}, Lt/d;->e(Lt/h;I)V

    .line 25
    iget-object v0, v15, Lv/d;->N:Lv/c;

    invoke-virtual {v0}, Lv/c;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 26
    iget v0, v15, Lv/d;->b0:I

    iget v1, v15, Lv/d;->c0:I

    add-int/2addr v0, v1

    invoke-virtual {v14, v9, v0}, Lt/d;->e(Lt/h;I)V

    :cond_a
    if-eqz v28, :cond_b

    .line 27
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_b

    .line 28
    check-cast v0, Lv/e;

    .line 29
    iget-object v1, v15, Lv/d;->K:Lv/c;

    invoke-virtual {v0, v1}, Lv/e;->b0(Lv/c;)V

    .line 30
    iget-object v1, v15, Lv/d;->M:Lv/c;

    invoke-virtual {v0, v1}, Lv/e;->a0(Lv/c;)V

    .line 31
    :cond_b
    iget-boolean v0, v15, Lv/d;->k:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v15, Lv/d;->l:Z

    if-eqz v0, :cond_c

    .line 32
    iput-boolean v5, v15, Lv/d;->k:Z

    .line 33
    iput-boolean v5, v15, Lv/d;->l:Z

    return-void

    :cond_c
    if-eqz p2, :cond_f

    .line 34
    iget-object v0, v15, Lv/d;->d:Lw/l;

    if-eqz v0, :cond_f

    iget-object v1, v15, Lv/d;->e:Lw/n;

    if-eqz v1, :cond_f

    iget-object v2, v0, Lw/p;->h:Lw/f;

    iget-boolean v3, v2, Lw/f;->j:Z

    if-eqz v3, :cond_f

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-boolean v0, v0, Lw/f;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lw/p;->h:Lw/f;

    iget-boolean v0, v0, Lw/f;->j:Z

    if-eqz v0, :cond_f

    iget-object v0, v1, Lw/p;->i:Lw/f;

    iget-boolean v0, v0, Lw/f;->j:Z

    if-eqz v0, :cond_f

    .line 35
    iget v0, v2, Lw/f;->g:I

    invoke-virtual {v14, v13, v0}, Lt/d;->e(Lt/h;I)V

    .line 36
    iget-object v0, v15, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget v0, v0, Lw/f;->g:I

    invoke-virtual {v14, v12, v0}, Lt/d;->e(Lt/h;I)V

    .line 37
    iget-object v0, v15, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->h:Lw/f;

    iget v0, v0, Lw/f;->g:I

    invoke-virtual {v14, v11, v0}, Lt/d;->e(Lt/h;I)V

    .line 38
    iget-object v0, v15, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget v0, v0, Lw/f;->g:I

    invoke-virtual {v14, v10, v0}, Lt/d;->e(Lt/h;I)V

    .line 39
    iget-object v0, v15, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/n;->k:Lw/f;

    iget v0, v0, Lw/f;->g:I

    invoke-virtual {v14, v9, v0}, Lt/d;->e(Lt/h;I)V

    .line 40
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_e

    if-eqz v29, :cond_d

    .line 41
    iget-object v0, v15, Lv/d;->f:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lv/d;->A()Z

    move-result v0

    if-nez v0, :cond_d

    .line 42
    iget-object v0, v15, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->L:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    .line 43
    invoke-virtual {v14, v0, v12, v5, v4}, Lt/d;->f(Lt/h;Lt/h;II)V

    :cond_d
    if-eqz v28, :cond_e

    .line 44
    iget-object v0, v15, Lv/d;->f:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lv/d;->B()Z

    move-result v0

    if-nez v0, :cond_e

    .line 45
    iget-object v0, v15, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->M:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    .line 46
    invoke-virtual {v14, v0, v10, v5, v4}, Lt/d;->f(Lt/h;Lt/h;II)V

    .line 47
    :cond_e
    iput-boolean v5, v15, Lv/d;->k:Z

    .line 48
    iput-boolean v5, v15, Lv/d;->l:Z

    return-void

    .line 49
    :cond_f
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_14

    .line 50
    invoke-virtual {v15, v5}, Lv/d;->z(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, v15, Lv/d;->V:Lv/d;

    check-cast v0, Lv/e;

    invoke-virtual {v0, v15, v5}, Lv/e;->W(Lv/d;I)V

    const/4 v0, 0x1

    goto :goto_5

    .line 52
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lv/d;->A()Z

    move-result v0

    .line 53
    :goto_5
    invoke-virtual {v15, v6}, Lv/d;->z(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 54
    iget-object v1, v15, Lv/d;->V:Lv/d;

    check-cast v1, Lv/e;

    invoke-virtual {v1, v15, v6}, Lv/e;->W(Lv/d;I)V

    const/4 v1, 0x1

    goto :goto_6

    .line 55
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lv/d;->B()Z

    move-result v1

    :goto_6
    if-nez v0, :cond_12

    if-eqz v29, :cond_12

    .line 56
    iget v2, v15, Lv/d;->i0:I

    if-eq v2, v4, :cond_12

    iget-object v2, v15, Lv/d;->J:Lv/c;

    iget-object v2, v2, Lv/c;->f:Lv/c;

    if-nez v2, :cond_12

    iget-object v2, v15, Lv/d;->L:Lv/c;

    iget-object v2, v2, Lv/c;->f:Lv/c;

    if-nez v2, :cond_12

    .line 57
    iget-object v2, v15, Lv/d;->V:Lv/d;

    iget-object v2, v2, Lv/d;->L:Lv/c;

    invoke-virtual {v14, v2}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v2

    .line 58
    invoke-virtual {v14, v2, v12, v5, v6}, Lt/d;->f(Lt/h;Lt/h;II)V

    :cond_12
    if-nez v1, :cond_13

    if-eqz v28, :cond_13

    .line 59
    iget v2, v15, Lv/d;->i0:I

    if-eq v2, v4, :cond_13

    iget-object v2, v15, Lv/d;->K:Lv/c;

    iget-object v2, v2, Lv/c;->f:Lv/c;

    if-nez v2, :cond_13

    iget-object v2, v15, Lv/d;->M:Lv/c;

    iget-object v2, v2, Lv/c;->f:Lv/c;

    if-nez v2, :cond_13

    iget-object v2, v15, Lv/d;->N:Lv/c;

    if-nez v2, :cond_13

    .line 60
    iget-object v2, v15, Lv/d;->V:Lv/d;

    iget-object v2, v2, Lv/d;->M:Lv/c;

    invoke-virtual {v14, v2}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v2

    .line 61
    invoke-virtual {v14, v2, v10, v5, v6}, Lt/d;->f(Lt/h;Lt/h;II)V

    :cond_13
    move/from16 v31, v0

    move/from16 v30, v1

    goto :goto_7

    :cond_14
    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 62
    :goto_7
    iget v0, v15, Lv/d;->W:I

    .line 63
    iget v1, v15, Lv/d;->d0:I

    if-ge v0, v1, :cond_15

    goto :goto_8

    :cond_15
    move v1, v0

    .line 64
    :goto_8
    iget v2, v15, Lv/d;->X:I

    .line 65
    iget v3, v15, Lv/d;->e0:I

    if-ge v2, v3, :cond_16

    goto :goto_9

    :cond_16
    move v3, v2

    .line 66
    :goto_9
    iget-object v8, v15, Lv/d;->U:[I

    aget v4, v8, v5

    if-eq v4, v7, :cond_17

    const/4 v4, 0x1

    goto :goto_a

    :cond_17
    const/4 v4, 0x0

    .line 67
    :goto_a
    aget v5, v8, v6

    if-eq v5, v7, :cond_18

    const/4 v5, 0x1

    goto :goto_b

    :cond_18
    const/4 v5, 0x0

    .line 68
    :goto_b
    iget v6, v15, Lv/d;->Z:I

    iput v6, v15, Lv/d;->A:I

    .line 69
    iget v7, v15, Lv/d;->Y:F

    iput v7, v15, Lv/d;->B:F

    move/from16 v21, v1

    .line 70
    iget v1, v15, Lv/d;->r:I

    move/from16 v22, v3

    .line 71
    iget v3, v15, Lv/d;->s:I

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object/from16 v27, v9

    cmpl-float v23, v7, v23

    if-lez v23, :cond_2b

    .line 72
    iget v9, v15, Lv/d;->i0:I

    move-object/from16 v32, v10

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2c

    const/4 v9, 0x0

    .line 73
    aget v10, v8, v9

    const/4 v9, 0x3

    if-ne v10, v9, :cond_19

    if-nez v1, :cond_19

    move-object/from16 v33, v11

    const/4 v1, 0x3

    goto :goto_c

    :cond_19
    move-object/from16 v33, v11

    :goto_c
    const/4 v10, 0x1

    .line 74
    aget v11, v8, v10

    if-ne v11, v9, :cond_1a

    if-nez v3, :cond_1a

    const/4 v3, 0x3

    :cond_1a
    const/4 v11, 0x0

    .line 75
    aget v10, v8, v11

    const/high16 v25, 0x3f800000    # 1.0f

    if-ne v10, v9, :cond_25

    const/4 v10, 0x1

    aget v11, v8, v10

    if-ne v11, v9, :cond_25

    if-ne v1, v9, :cond_25

    if-ne v3, v9, :cond_25

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1c

    if-eqz v4, :cond_1b

    if-nez v5, :cond_1b

    const/4 v0, 0x0

    .line 76
    iput v0, v15, Lv/d;->A:I

    goto :goto_d

    :cond_1b
    if-nez v4, :cond_1c

    if-eqz v5, :cond_1c

    const/4 v0, 0x1

    .line 77
    iput v0, v15, Lv/d;->A:I

    if-ne v6, v9, :cond_1c

    div-float v0, v25, v7

    .line 78
    iput v0, v15, Lv/d;->B:F

    .line 79
    :cond_1c
    :goto_d
    iget v0, v15, Lv/d;->A:I

    if-nez v0, :cond_1e

    iget-object v0, v15, Lv/d;->K:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v15, Lv/d;->M:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    .line 80
    iput v0, v15, Lv/d;->A:I

    goto :goto_e

    :cond_1e
    const/4 v0, 0x1

    .line 81
    iget v2, v15, Lv/d;->A:I

    if-ne v2, v0, :cond_20

    iget-object v0, v15, Lv/d;->J:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v15, Lv/d;->L:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1f
    const/4 v0, 0x0

    .line 82
    iput v0, v15, Lv/d;->A:I

    .line 83
    :cond_20
    :goto_e
    iget v0, v15, Lv/d;->A:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_23

    .line 84
    iget-object v0, v15, Lv/d;->K:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v15, Lv/d;->M:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v15, Lv/d;->J:Lv/c;

    .line 85
    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v15, Lv/d;->L:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-nez v0, :cond_23

    .line 86
    :cond_21
    iget-object v0, v15, Lv/d;->K:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v15, Lv/d;->M:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 87
    iput v0, v15, Lv/d;->A:I

    goto :goto_f

    .line 88
    :cond_22
    iget-object v0, v15, Lv/d;->J:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, v15, Lv/d;->L:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 89
    iget v0, v15, Lv/d;->B:F

    div-float v0, v25, v0

    iput v0, v15, Lv/d;->B:F

    const/4 v0, 0x1

    .line 90
    iput v0, v15, Lv/d;->A:I

    .line 91
    :cond_23
    :goto_f
    iget v0, v15, Lv/d;->A:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2a

    .line 92
    iget v0, v15, Lv/d;->u:I

    if-lez v0, :cond_24

    iget v2, v15, Lv/d;->x:I

    if-nez v2, :cond_24

    const/4 v2, 0x0

    .line 93
    iput v2, v15, Lv/d;->A:I

    goto :goto_10

    :cond_24
    if-nez v0, :cond_2a

    .line 94
    iget v0, v15, Lv/d;->x:I

    if-lez v0, :cond_2a

    .line 95
    iget v0, v15, Lv/d;->B:F

    div-float v0, v25, v0

    iput v0, v15, Lv/d;->B:F

    const/4 v0, 0x1

    .line 96
    iput v0, v15, Lv/d;->A:I

    goto :goto_10

    :cond_25
    const/4 v4, 0x0

    .line 97
    aget v5, v8, v4

    const/4 v9, 0x3

    if-ne v5, v9, :cond_27

    if-ne v1, v9, :cond_27

    .line 98
    iput v4, v15, Lv/d;->A:I

    int-to-float v0, v2

    mul-float v7, v7, v0

    float-to-int v0, v7

    const/4 v2, 0x1

    .line 99
    aget v4, v8, v2

    if-eq v4, v9, :cond_26

    move v1, v0

    move/from16 v36, v3

    move/from16 v34, v22

    const/16 v35, 0x0

    const/16 v37, 0x4

    goto :goto_11

    :cond_26
    move/from16 v21, v0

    goto :goto_10

    :cond_27
    const/4 v2, 0x1

    .line 100
    aget v4, v8, v2

    if-ne v4, v9, :cond_2a

    if-ne v3, v9, :cond_2a

    .line 101
    iput v2, v15, Lv/d;->A:I

    const/4 v2, -0x1

    if-ne v6, v2, :cond_28

    div-float v2, v25, v7

    .line 102
    iput v2, v15, Lv/d;->B:F

    .line 103
    :cond_28
    iget v2, v15, Lv/d;->B:F

    int-to-float v0, v0

    mul-float v2, v2, v0

    float-to-int v0, v2

    const/4 v2, 0x0

    .line 104
    aget v4, v8, v2

    const/4 v2, 0x3

    if-eq v4, v2, :cond_29

    move/from16 v34, v0

    move/from16 v37, v1

    move/from16 v1, v21

    const/16 v35, 0x0

    const/16 v36, 0x4

    goto :goto_11

    :cond_29
    move/from16 v22, v0

    :cond_2a
    :goto_10
    move/from16 v37, v1

    move/from16 v36, v3

    move/from16 v1, v21

    move/from16 v34, v22

    const/16 v35, 0x1

    goto :goto_11

    :cond_2b
    move-object/from16 v32, v10

    :cond_2c
    move-object/from16 v33, v11

    move/from16 v37, v1

    move/from16 v36, v3

    move/from16 v1, v21

    move/from16 v34, v22

    const/16 v35, 0x0

    .line 105
    :goto_11
    iget-object v0, v15, Lv/d;->t:[I

    const/4 v2, 0x0

    aput v37, v0, v2

    const/4 v2, 0x1

    .line 106
    aput v36, v0, v2

    if-eqz v35, :cond_2e

    .line 107
    iget v0, v15, Lv/d;->A:I

    const/4 v2, -0x1

    if-eqz v0, :cond_2d

    if-ne v0, v2, :cond_2f

    :cond_2d
    const/16 v21, 0x1

    goto :goto_12

    :cond_2e
    const/4 v2, -0x1

    :cond_2f
    const/16 v21, 0x0

    :goto_12
    if-eqz v35, :cond_31

    .line 108
    iget v0, v15, Lv/d;->A:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_30

    if-ne v0, v2, :cond_31

    :cond_30
    const/16 v38, 0x1

    goto :goto_13

    :cond_31
    const/16 v38, 0x0

    .line 109
    :goto_13
    iget-object v0, v15, Lv/d;->U:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_32

    instance-of v0, v15, Lv/e;

    if-eqz v0, :cond_32

    const/4 v9, 0x1

    goto :goto_14

    :cond_32
    const/4 v9, 0x0

    :goto_14
    if-eqz v9, :cond_33

    const/16 v22, 0x0

    goto :goto_15

    :cond_33
    move/from16 v22, v1

    .line 110
    :goto_15
    iget-object v0, v15, Lv/d;->Q:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/lit8 v39, v0, 0x1

    .line 111
    iget-object v0, v15, Lv/d;->T:[Z

    const/4 v2, 0x0

    aget-boolean v23, v0, v2

    .line 112
    aget-boolean v40, v0, v1

    .line 113
    iget v0, v15, Lv/d;->o:I

    const/16 v41, 0x0

    const/4 v8, 0x2

    if-eq v0, v8, :cond_36

    iget-boolean v0, v15, Lv/d;->k:Z

    if-nez v0, :cond_36

    if-eqz p2, :cond_37

    .line 114
    iget-object v0, v15, Lv/d;->d:Lw/l;

    if-eqz v0, :cond_37

    iget-object v1, v0, Lw/p;->h:Lw/f;

    iget-boolean v2, v1, Lw/f;->j:Z

    if-eqz v2, :cond_37

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-boolean v0, v0, Lw/f;->j:Z

    if-nez v0, :cond_34

    goto :goto_17

    :cond_34
    if-eqz p2, :cond_36

    .line 115
    iget v0, v1, Lw/f;->g:I

    invoke-virtual {v14, v13, v0}, Lt/d;->e(Lt/h;I)V

    .line 116
    iget-object v0, v15, Lv/d;->d:Lw/l;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget v0, v0, Lw/f;->g:I

    invoke-virtual {v14, v12, v0}, Lt/d;->e(Lt/h;I)V

    .line 117
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_35

    if-eqz v29, :cond_35

    .line 118
    iget-object v0, v15, Lv/d;->f:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_35

    invoke-virtual/range {p0 .. p0}, Lv/d;->A()Z

    move-result v0

    if-nez v0, :cond_35

    .line 119
    iget-object v0, v15, Lv/d;->V:Lv/d;

    iget-object v0, v0, Lv/d;->L:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    const/16 v4, 0x8

    .line 120
    invoke-virtual {v14, v0, v12, v1, v4}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto :goto_16

    :cond_35
    const/16 v4, 0x8

    :cond_36
    :goto_16
    move-object/from16 v47, v27

    move-object/from16 v45, v32

    move-object/from16 v46, v33

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    goto/16 :goto_1b

    :cond_37
    :goto_17
    const/16 v4, 0x8

    .line 121
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_38

    iget-object v0, v0, Lv/d;->L:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    move-object v7, v0

    goto :goto_18

    :cond_38
    move-object/from16 v7, v41

    .line 122
    :goto_18
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_39

    iget-object v0, v0, Lv/d;->J:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    move-object v6, v0

    goto :goto_19

    :cond_39
    move-object/from16 v6, v41

    .line 123
    :goto_19
    iget-object v0, v15, Lv/d;->f:[Z

    const/4 v5, 0x0

    aget-boolean v10, v0, v5

    iget-object v0, v15, Lv/d;->U:[I

    aget v11, v0, v5

    iget-object v3, v15, Lv/d;->J:Lv/c;

    iget-object v1, v15, Lv/d;->L:Lv/c;

    iget v2, v15, Lv/d;->a0:I

    move/from16 v16, v2

    iget v2, v15, Lv/d;->d0:I

    iget-object v4, v15, Lv/d;->C:[I

    aget v18, v4, v5

    iget v4, v15, Lv/d;->f0:F

    const/16 v19, 0x1

    aget v0, v0, v19

    const/4 v8, 0x3

    if-ne v0, v8, :cond_3a

    const/16 v20, 0x1

    goto :goto_1a

    :cond_3a
    const/16 v20, 0x0

    :goto_1a
    iget v0, v15, Lv/d;->u:I

    move/from16 v24, v0

    iget v0, v15, Lv/d;->v:I

    move/from16 v25, v0

    iget v0, v15, Lv/d;->w:F

    move/from16 v26, v0

    const/4 v0, 0x1

    move/from16 v42, v2

    move v2, v0

    move-object/from16 v0, p0

    move-object/from16 v43, v1

    move-object/from16 v1, p1

    move-object/from16 v44, v3

    move/from16 v3, v29

    move/from16 v17, v4

    move/from16 v4, v28

    move v5, v10

    const/4 v10, 0x1

    move v8, v11

    move-object/from16 v11, v27

    move-object/from16 v45, v32

    move-object/from16 v10, v44

    move-object/from16 v47, v11

    move-object/from16 v46, v33

    move-object/from16 v11, v43

    move-object/from16 v32, v12

    move/from16 v12, v16

    move-object/from16 v33, v13

    move/from16 v13, v22

    move/from16 v14, v42

    move/from16 v15, v18

    move/from16 v16, v17

    move/from16 v17, v21

    move/from16 v18, v20

    move/from16 v19, v31

    move/from16 v20, v30

    move/from16 v21, v23

    move/from16 v22, v37

    move/from16 v23, v36

    move/from16 v27, v39

    invoke-virtual/range {v0 .. v27}, Lv/d;->f(Lt/d;ZZZZLt/h;Lt/h;IZLv/c;Lv/c;IIIIFZZZZZIIIIFZ)V

    :goto_1b
    if-eqz p2, :cond_3e

    move-object/from16 v15, p0

    .line 124
    iget-object v0, v15, Lv/d;->e:Lw/n;

    if-eqz v0, :cond_3d

    iget-object v1, v0, Lw/p;->h:Lw/f;

    iget-boolean v2, v1, Lw/f;->j:Z

    if-eqz v2, :cond_3d

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget-boolean v0, v0, Lw/f;->j:Z

    if-eqz v0, :cond_3d

    .line 125
    iget v0, v1, Lw/f;->g:I

    move-object/from16 v14, p1

    move-object/from16 v13, v46

    invoke-virtual {v14, v13, v0}, Lt/d;->e(Lt/h;I)V

    .line 126
    iget-object v0, v15, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/p;->i:Lw/f;

    iget v0, v0, Lw/f;->g:I

    move-object/from16 v12, v45

    invoke-virtual {v14, v12, v0}, Lt/d;->e(Lt/h;I)V

    .line 127
    iget-object v0, v15, Lv/d;->e:Lw/n;

    iget-object v0, v0, Lw/n;->k:Lw/f;

    iget v0, v0, Lw/f;->g:I

    move-object/from16 v1, v47

    invoke-virtual {v14, v1, v0}, Lt/d;->e(Lt/h;I)V

    .line 128
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_3c

    if-nez v30, :cond_3c

    if-eqz v28, :cond_3c

    .line 129
    iget-object v2, v15, Lv/d;->f:[Z

    const/4 v11, 0x1

    aget-boolean v2, v2, v11

    if-eqz v2, :cond_3b

    .line 130
    iget-object v0, v0, Lv/d;->M:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v10, 0x0

    .line 131
    invoke-virtual {v14, v0, v12, v10, v2}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto :goto_1c

    :cond_3b
    const/16 v2, 0x8

    const/4 v10, 0x0

    goto :goto_1c

    :cond_3c
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_1c
    const/4 v6, 0x0

    goto :goto_1e

    :cond_3d
    move-object/from16 v14, p1

    move-object/from16 v12, v45

    move-object/from16 v13, v46

    move-object/from16 v1, v47

    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto :goto_1d

    :cond_3e
    const/16 v2, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, v45

    move-object/from16 v13, v46

    move-object/from16 v1, v47

    :goto_1d
    const/4 v6, 0x1

    .line 132
    :goto_1e
    iget v0, v15, Lv/d;->p:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3f

    const/4 v5, 0x0

    goto :goto_1f

    :cond_3f
    move v5, v6

    :goto_1f
    if-eqz v5, :cond_4a

    .line 133
    iget-boolean v0, v15, Lv/d;->l:Z

    if-nez v0, :cond_4a

    .line 134
    iget-object v0, v15, Lv/d;->U:[I

    aget v0, v0, v11

    if-ne v0, v3, :cond_40

    instance-of v0, v15, Lv/e;

    if-eqz v0, :cond_40

    const/4 v9, 0x1

    goto :goto_20

    :cond_40
    const/4 v9, 0x0

    :goto_20
    if-eqz v9, :cond_41

    const/16 v34, 0x0

    .line 135
    :cond_41
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lv/d;->M:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    move-object v7, v0

    goto :goto_21

    :cond_42
    move-object/from16 v7, v41

    .line 136
    :goto_21
    iget-object v0, v15, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lv/d;->K:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    move-object v6, v0

    goto :goto_22

    :cond_43
    move-object/from16 v6, v41

    .line 137
    :goto_22
    iget v0, v15, Lv/d;->c0:I

    if-gtz v0, :cond_44

    iget v3, v15, Lv/d;->i0:I

    if-ne v3, v2, :cond_48

    .line 138
    :cond_44
    iget-object v3, v15, Lv/d;->N:Lv/c;

    iget-object v4, v3, Lv/c;->f:Lv/c;

    if-eqz v4, :cond_46

    .line 139
    invoke-virtual {v14, v1, v13, v0, v2}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 140
    iget-object v0, v15, Lv/d;->N:Lv/c;

    iget-object v0, v0, Lv/c;->f:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    .line 141
    iget-object v3, v15, Lv/d;->N:Lv/c;

    invoke-virtual {v3}, Lv/c;->d()I

    move-result v3

    .line 142
    invoke-virtual {v14, v1, v0, v3, v2}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    if-eqz v28, :cond_45

    .line 143
    iget-object v0, v15, Lv/d;->M:Lv/c;

    invoke-virtual {v14, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v0

    const/4 v1, 0x5

    .line 144
    invoke-virtual {v14, v7, v0, v10, v1}, Lt/d;->f(Lt/h;Lt/h;II)V

    :cond_45
    const/16 v27, 0x0

    goto :goto_24

    .line 145
    :cond_46
    iget v4, v15, Lv/d;->i0:I

    if-ne v4, v2, :cond_47

    .line 146
    invoke-virtual {v3}, Lv/c;->d()I

    move-result v0

    invoke-virtual {v14, v1, v13, v0, v2}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    goto :goto_23

    .line 147
    :cond_47
    invoke-virtual {v14, v1, v13, v0, v2}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    :cond_48
    :goto_23
    move/from16 v27, v39

    .line 148
    :goto_24
    iget-object v0, v15, Lv/d;->f:[Z

    aget-boolean v5, v0, v11

    iget-object v0, v15, Lv/d;->U:[I

    aget v8, v0, v11

    iget-object v4, v15, Lv/d;->K:Lv/c;

    iget-object v3, v15, Lv/d;->M:Lv/c;

    iget v1, v15, Lv/d;->b0:I

    iget v2, v15, Lv/d;->e0:I

    iget-object v10, v15, Lv/d;->C:[I

    aget v16, v10, v11

    iget v10, v15, Lv/d;->g0:F

    const/16 v17, 0x0

    aget v0, v0, v17

    const/4 v11, 0x3

    if-ne v0, v11, :cond_49

    const/16 v18, 0x1

    goto :goto_25

    :cond_49
    const/16 v18, 0x0

    :goto_25
    iget v0, v15, Lv/d;->x:I

    move/from16 v24, v0

    iget v0, v15, Lv/d;->y:I

    move/from16 v25, v0

    iget v0, v15, Lv/d;->z:F

    move/from16 v26, v0

    const/4 v0, 0x0

    move/from16 v20, v2

    move v2, v0

    move-object/from16 v0, p0

    move/from16 v21, v1

    move-object/from16 v1, p1

    move-object v11, v3

    move/from16 v3, v28

    move-object/from16 v22, v4

    move/from16 v4, v29

    move/from16 v17, v10

    move-object/from16 v10, v22

    move-object/from16 v28, v12

    move/from16 v12, v21

    move-object/from16 v29, v13

    move/from16 v13, v34

    move/from16 v14, v20

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v38

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v40

    move/from16 v22, v36

    move/from16 v23, v37

    invoke-virtual/range {v0 .. v27}, Lv/d;->f(Lt/d;ZZZZLt/h;Lt/h;IZLv/c;Lv/c;IIIIFZZZZZIIIIFZ)V

    goto :goto_26

    :cond_4a
    move-object/from16 v28, v12

    move-object/from16 v29, v13

    :goto_26
    if-eqz v35, :cond_4c

    const/16 v6, 0x8

    move-object/from16 v7, p0

    .line 149
    iget v0, v7, Lv/d;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    .line 150
    iget v5, v7, Lv/d;->B:F

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-virtual/range {v0 .. v6}, Lt/d;->h(Lt/h;Lt/h;Lt/h;Lt/h;FI)V

    goto :goto_27

    .line 151
    :cond_4b
    iget v5, v7, Lv/d;->B:F

    const/16 v6, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual/range {v0 .. v6}, Lt/d;->h(Lt/h;Lt/h;Lt/h;Lt/h;FI)V

    goto :goto_27

    :cond_4c
    move-object/from16 v7, p0

    .line 152
    :goto_27
    iget-object v0, v7, Lv/d;->Q:Lv/c;

    invoke-virtual {v0}, Lv/c;->g()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 153
    iget-object v0, v7, Lv/d;->Q:Lv/c;

    .line 154
    iget-object v0, v0, Lv/c;->f:Lv/c;

    .line 155
    iget-object v0, v0, Lv/c;->d:Lv/d;

    .line 156
    iget v1, v7, Lv/d;->D:F

    const/high16 v2, 0x42b40000    # 90.0f

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, v7, Lv/d;->Q:Lv/c;

    invoke-virtual {v2}, Lv/c;->d()I

    move-result v2

    .line 157
    sget-object v3, Lv/c$a;->a:Lv/c$a;

    invoke-virtual {v7, v3}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v9

    .line 158
    sget-object v4, Lv/c$a;->b:Lv/c$a;

    invoke-virtual {v7, v4}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v11

    .line 159
    sget-object v6, Lv/c$a;->c:Lv/c$a;

    invoke-virtual {v7, v6}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v8

    invoke-virtual {v5, v8}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v16

    .line 160
    sget-object v8, Lv/c$a;->d:Lv/c$a;

    invoke-virtual {v7, v8}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v10

    invoke-virtual {v5, v10}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v12

    .line 161
    invoke-virtual {v0, v3}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v3

    invoke-virtual {v5, v3}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v3

    .line 162
    invoke-virtual {v0, v4}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v4

    invoke-virtual {v5, v4}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v13

    .line 163
    invoke-virtual {v0, v6}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v4

    invoke-virtual {v5, v4}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v4

    .line 164
    invoke-virtual {v0, v8}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v0

    invoke-virtual {v5, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v14

    .line 165
    invoke-virtual/range {p1 .. p1}, Lt/d;->m()Lt/b;

    move-result-object v0

    float-to-double v6, v1

    .line 166
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    int-to-double v1, v2

    move-object/from16 p2, v3

    move-object/from16 v19, v4

    mul-double v3, v17, v1

    double-to-float v15, v3

    move-object v10, v0

    .line 167
    invoke-virtual/range {v10 .. v15}, Lt/b;->g(Lt/h;Lt/h;Lt/h;Lt/h;F)Lt/b;

    .line 168
    invoke-virtual {v5, v0}, Lt/d;->c(Lt/b;)V

    .line 169
    invoke-virtual/range {p1 .. p1}, Lt/d;->m()Lt/b;

    move-result-object v0

    .line 170
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double v3, v3, v1

    double-to-float v13, v3

    move-object v8, v0

    move-object/from16 v10, v16

    move-object/from16 v11, p2

    move-object/from16 v12, v19

    .line 171
    invoke-virtual/range {v8 .. v13}, Lt/b;->g(Lt/h;Lt/h;Lt/h;Lt/h;F)Lt/b;

    .line 172
    invoke-virtual {v5, v0}, Lt/d;->c(Lt/b;)V

    :cond_4d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    .line 173
    iput-boolean v1, v0, Lv/d;->k:Z

    .line 174
    iput-boolean v1, v0, Lv/d;->l:Z

    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget v0, p0, Lv/d;->i0:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Lt/d;ZZZZLt/h;Lt/h;IZLv/c;Lv/c;IIIIFZZZZZIIIIFZ)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v15, p14

    move/from16 v1, p15

    move/from16 v2, p23

    move/from16 v3, p24

    move/from16 v4, p25

    .line 1
    sget-object v5, Lv/c$a;->d:Lv/c$a;

    invoke-virtual {v10, v13}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v9

    .line 2
    invoke-virtual {v10, v14}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v8

    .line 3
    iget-object v6, v13, Lv/c;->f:Lv/c;

    .line 4
    invoke-virtual {v10, v6}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v7

    .line 5
    iget-object v6, v14, Lv/c;->f:Lv/c;

    .line 6
    invoke-virtual {v10, v6}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v6

    .line 7
    invoke-virtual/range {p10 .. p10}, Lv/c;->g()Z

    move-result v22

    .line 8
    invoke-virtual/range {p11 .. p11}, Lv/c;->g()Z

    move-result v23

    .line 9
    iget-object v12, v0, Lv/d;->Q:Lv/c;

    invoke-virtual {v12}, Lv/c;->g()Z

    move-result v12

    if-eqz v23, :cond_0

    add-int/lit8 v16, v22, 0x1

    goto :goto_0

    :cond_0
    move/from16 v16, v22

    :goto_0
    if-eqz v12, :cond_1

    add-int/lit8 v16, v16, 0x1

    :cond_1
    move/from16 v2, v16

    if-eqz p17, :cond_2

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move/from16 v14, p22

    :goto_1
    if-eqz p8, :cond_61

    const/4 v11, -0x1

    move-object/from16 v24, v6

    add-int/lit8 v6, p8, -0x1

    const/4 v11, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v11, :cond_4

    const/4 v11, 0x2

    if-eq v6, v11, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, 0x4

    if-eq v14, v11, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v6, 0x0

    .line 10
    :goto_3
    iget v11, v0, Lv/d;->h:I

    move/from16 v16, v6

    const/4 v6, -0x1

    if-eq v11, v6, :cond_5

    if-eqz p2, :cond_5

    .line 11
    iput v6, v0, Lv/d;->h:I

    move/from16 p13, v11

    const/16 v16, 0x0

    .line 12
    :cond_5
    iget v11, v0, Lv/d;->i:I

    if-eq v11, v6, :cond_6

    if-nez p2, :cond_6

    .line 13
    iput v6, v0, Lv/d;->i:I

    const/16 v16, 0x0

    goto :goto_4

    :cond_6
    move/from16 v11, p13

    .line 14
    :goto_4
    iget v6, v0, Lv/d;->i0:I

    move/from16 p13, v11

    const/16 v11, 0x8

    if-ne v6, v11, :cond_7

    const/4 v6, 0x0

    const/16 v25, 0x0

    goto :goto_5

    :cond_7
    move/from16 v25, p13

    move/from16 v6, v16

    :goto_5
    if-eqz p27, :cond_9

    if-nez v22, :cond_8

    if-nez v23, :cond_8

    if-nez v12, :cond_8

    move/from16 v11, p12

    .line 15
    invoke-virtual {v10, v9, v11}, Lt/d;->e(Lt/h;I)V

    goto :goto_6

    :cond_8
    if-eqz v22, :cond_9

    if-nez v23, :cond_9

    .line 16
    invoke-virtual/range {p10 .. p10}, Lv/c;->d()I

    move-result v11

    move/from16 v26, v12

    const/16 v12, 0x8

    invoke-virtual {v10, v9, v7, v11, v12}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v26, v12

    const/16 v12, 0x8

    :goto_7
    if-nez v6, :cond_d

    if-eqz p9, :cond_b

    const/4 v5, 0x3

    const/4 v11, 0x0

    .line 17
    invoke-virtual {v10, v8, v9, v11, v5}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    if-lez v15, :cond_a

    .line 18
    invoke-virtual {v10, v8, v9, v15, v12}, Lt/d;->f(Lt/h;Lt/h;II)V

    :cond_a
    const v11, 0x7fffffff

    if-ge v1, v11, :cond_c

    .line 19
    invoke-virtual {v10, v8, v9, v1, v12}, Lt/d;->g(Lt/h;Lt/h;II)V

    goto :goto_8

    :cond_b
    move/from16 v1, v25

    const/4 v5, 0x3

    .line 20
    invoke-virtual {v10, v8, v9, v1, v12}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    :cond_c
    :goto_8
    move/from16 v11, p5

    move v12, v3

    move/from16 v16, v6

    goto/16 :goto_e

    :cond_d
    move/from16 v1, v25

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v2, v12, :cond_10

    if-nez p17, :cond_10

    const/4 v12, 0x1

    if-eq v14, v12, :cond_e

    if-nez v14, :cond_10

    .line 21
    :cond_e
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lez v4, :cond_f

    .line 22
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_f
    const/16 v5, 0x8

    .line 23
    invoke-virtual {v10, v8, v9, v1, v5}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    move/from16 v11, p5

    move v12, v3

    const/16 v16, 0x0

    goto/16 :goto_e

    :cond_10
    const/4 v12, -0x2

    if-ne v3, v12, :cond_11

    move v3, v1

    :cond_11
    if-ne v4, v12, :cond_12

    move v4, v1

    :cond_12
    if-lez v1, :cond_13

    const/4 v12, 0x1

    if-eq v14, v12, :cond_13

    const/4 v1, 0x0

    :cond_13
    if-lez v3, :cond_14

    const/16 v12, 0x8

    .line 24
    invoke-virtual {v10, v8, v9, v3, v12}, Lt/d;->f(Lt/h;Lt/h;II)V

    .line 25
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_14
    if-lez v4, :cond_17

    if-eqz p3, :cond_15

    const/4 v12, 0x1

    if-ne v14, v12, :cond_15

    const/4 v12, 0x0

    goto :goto_9

    :cond_15
    const/4 v12, 0x1

    :goto_9
    if-eqz v12, :cond_16

    const/16 v12, 0x8

    .line 26
    invoke-virtual {v10, v8, v9, v4, v12}, Lt/d;->g(Lt/h;Lt/h;II)V

    goto :goto_a

    :cond_16
    const/16 v12, 0x8

    .line 27
    :goto_a
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_b

    :cond_17
    const/16 v12, 0x8

    :goto_b
    const/4 v11, 0x1

    if-ne v14, v11, :cond_1a

    if-eqz p3, :cond_18

    .line 28
    invoke-virtual {v10, v8, v9, v1, v12}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    goto :goto_8

    :cond_18
    if-eqz p19, :cond_19

    const/4 v5, 0x5

    .line 29
    invoke-virtual {v10, v8, v9, v1, v5}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 30
    invoke-virtual {v10, v8, v9, v1, v12}, Lt/d;->g(Lt/h;Lt/h;II)V

    goto :goto_8

    :cond_19
    const/4 v5, 0x5

    .line 31
    invoke-virtual {v10, v8, v9, v1, v5}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 32
    invoke-virtual {v10, v8, v9, v1, v12}, Lt/d;->g(Lt/h;Lt/h;II)V

    goto :goto_8

    :cond_1a
    const/4 v1, 0x2

    if-ne v14, v1, :cond_1d

    .line 33
    iget-object v1, v13, Lv/c;->e:Lv/c$a;

    .line 34
    sget-object v11, Lv/c$a;->b:Lv/c$a;

    if-eq v1, v11, :cond_1c

    if-ne v1, v5, :cond_1b

    goto :goto_c

    .line 35
    :cond_1b
    iget-object v1, v0, Lv/d;->V:Lv/d;

    sget-object v5, Lv/c$a;->a:Lv/c$a;

    invoke-virtual {v1, v5}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v1

    invoke-virtual {v10, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v1

    .line 36
    iget-object v5, v0, Lv/d;->V:Lv/d;

    sget-object v11, Lv/c$a;->c:Lv/c$a;

    invoke-virtual {v5, v11}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v5

    invoke-virtual {v10, v5}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v5

    goto :goto_d

    .line 37
    :cond_1c
    :goto_c
    iget-object v1, v0, Lv/d;->V:Lv/d;

    invoke-virtual {v1, v11}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v1

    invoke-virtual {v10, v1}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v1

    .line 38
    iget-object v11, v0, Lv/d;->V:Lv/d;

    invoke-virtual {v11, v5}, Lv/d;->i(Lv/c$a;)Lv/c;

    move-result-object v5

    invoke-virtual {v10, v5}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    move-result-object v5

    :goto_d
    move-object/from16 v20, v1

    move-object/from16 v19, v5

    .line 39
    invoke-virtual/range {p1 .. p1}, Lt/d;->m()Lt/b;

    move-result-object v1

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v21, p26

    invoke-virtual/range {v16 .. v21}, Lt/b;->d(Lt/h;Lt/h;Lt/h;Lt/h;F)Lt/b;

    invoke-virtual {v10, v1}, Lt/d;->c(Lt/b;)V

    if-eqz p3, :cond_c

    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_1d
    move v12, v3

    move/from16 v16, v6

    const/4 v11, 0x1

    :goto_e
    if-eqz p27, :cond_5b

    if-eqz p19, :cond_1e

    goto/16 :goto_32

    :cond_1e
    if-nez v22, :cond_1f

    if-nez v23, :cond_1f

    if-nez v26, :cond_1f

    move-object v4, v8

    move/from16 p5, v11

    move-object/from16 v2, v24

    :goto_f
    const/4 v3, 0x5

    goto/16 :goto_2e

    :cond_1f
    if-eqz v22, :cond_21

    if-nez v23, :cond_21

    .line 40
    iget-object v1, v13, Lv/c;->f:Lv/c;

    iget-object v1, v1, Lv/c;->d:Lv/d;

    if-eqz p3, :cond_20

    .line 41
    instance-of v1, v1, Lv/a;

    if-eqz v1, :cond_20

    const/16 v1, 0x8

    goto :goto_10

    :cond_20
    const/4 v1, 0x5

    :goto_10
    move-object v4, v8

    move/from16 p5, v11

    move-object/from16 v2, v24

    move v11, v1

    move/from16 v1, p3

    goto/16 :goto_30

    :cond_21
    if-nez v22, :cond_22

    if-eqz v23, :cond_22

    .line 42
    invoke-virtual/range {p11 .. p11}, Lv/c;->d()I

    move-result v1

    neg-int v1, v1

    move-object/from16 v6, v24

    const/16 v2, 0x8

    invoke-virtual {v10, v8, v6, v1, v2}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    if-eqz p3, :cond_58

    move-object/from16 v5, p6

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v10, v9, v5, v2, v1}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto/16 :goto_2d

    :cond_22
    move-object/from16 v5, p6

    move-object/from16 v6, v24

    const/4 v1, -0x1

    if-eqz v22, :cond_58

    if-eqz v23, :cond_58

    .line 44
    iget-object v2, v13, Lv/c;->f:Lv/c;

    iget-object v3, v2, Lv/c;->d:Lv/d;

    move-object/from16 v2, p11

    .line 45
    iget-object v1, v2, Lv/c;->f:Lv/c;

    iget-object v1, v1, Lv/c;->d:Lv/d;

    .line 46
    iget-object v13, v0, Lv/d;->V:Lv/d;

    const/16 v17, 0x6

    if-eqz v16, :cond_38

    if-nez v14, :cond_27

    if-nez v4, :cond_24

    if-nez v12, :cond_24

    .line 47
    iget-boolean v4, v7, Lt/h;->f:Z

    if-eqz v4, :cond_23

    iget-boolean v4, v6, Lt/h;->f:Z

    if-eqz v4, :cond_23

    .line 48
    invoke-virtual/range {p10 .. p10}, Lv/c;->d()I

    move-result v1

    const/16 v3, 0x8

    invoke-virtual {v10, v9, v7, v1, v3}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 49
    invoke-virtual/range {p11 .. p11}, Lv/c;->d()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v10, v8, v6, v1, v3}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    return-void

    :cond_23
    const/16 p2, 0x8

    const/16 v18, 0x8

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    goto :goto_11

    :cond_24
    const/16 p2, 0x5

    const/16 v18, 0x5

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    .line 50
    :goto_11
    instance-of v4, v3, Lv/a;

    if-nez v4, :cond_26

    instance-of v4, v1, Lv/a;

    if-eqz v4, :cond_25

    goto :goto_12

    :cond_25
    move/from16 v4, p2

    move/from16 v22, v19

    const/4 v15, 0x6

    move/from16 v19, v18

    move/from16 v18, v14

    goto :goto_16

    :cond_26
    :goto_12
    move/from16 v4, p2

    move/from16 v18, v14

    move/from16 v22, v19

    const/4 v15, 0x6

    const/16 v19, 0x4

    goto :goto_16

    :cond_27
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2a

    .line 51
    instance-of v4, v3, Lv/a;

    if-nez v4, :cond_29

    instance-of v4, v1, Lv/a;

    if-eqz v4, :cond_28

    goto :goto_13

    :cond_28
    move/from16 v18, v14

    const/4 v4, 0x5

    const/4 v15, 0x6

    const/16 v19, 0x5

    goto :goto_15

    :cond_29
    :goto_13
    move/from16 v18, v14

    const/4 v4, 0x5

    goto :goto_14

    :cond_2a
    const/4 v15, 0x1

    if-ne v14, v15, :cond_2b

    move/from16 v18, v14

    const/16 v4, 0x8

    :goto_14
    const/4 v15, 0x6

    const/16 v19, 0x4

    :goto_15
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    :goto_16
    move-object/from16 v14, p7

    goto/16 :goto_20

    :cond_2b
    const/4 v15, 0x3

    if-ne v14, v15, :cond_37

    .line 52
    iget v15, v0, Lv/d;->A:I

    move/from16 v18, v14

    const/4 v14, -0x1

    if-ne v15, v14, :cond_2e

    move-object/from16 v14, p7

    const/16 v4, 0x8

    if-eqz p20, :cond_2d

    if-eqz p3, :cond_2c

    const/4 v15, 0x5

    goto :goto_17

    :cond_2c
    const/4 v15, 0x4

    goto :goto_17

    :cond_2d
    const/16 v15, 0x8

    :goto_17
    const/16 v19, 0x5

    :goto_18
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    goto/16 :goto_20

    :cond_2e
    if-eqz p17, :cond_32

    move/from16 v14, p23

    const/4 v15, 0x2

    if-eq v14, v15, :cond_30

    const/4 v4, 0x1

    if-ne v14, v4, :cond_2f

    goto :goto_19

    :cond_2f
    const/4 v4, 0x0

    goto :goto_1a

    :cond_30
    :goto_19
    const/4 v4, 0x1

    :goto_1a
    if-nez v4, :cond_31

    const/16 v4, 0x8

    const/4 v14, 0x5

    goto :goto_1b

    :cond_31
    const/4 v4, 0x5

    const/4 v14, 0x4

    :goto_1b
    move/from16 v19, v14

    const/4 v15, 0x6

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    goto :goto_16

    :cond_32
    if-lez v4, :cond_33

    move-object/from16 v14, p7

    const/4 v4, 0x5

    const/4 v15, 0x6

    goto :goto_17

    :cond_33
    if-nez v4, :cond_36

    if-nez v12, :cond_36

    if-nez p20, :cond_34

    move-object/from16 v14, p7

    const/4 v4, 0x5

    const/4 v15, 0x6

    const/16 v19, 0x8

    goto :goto_18

    :cond_34
    if-eq v3, v13, :cond_35

    if-eq v1, v13, :cond_35

    const/4 v4, 0x4

    goto :goto_1c

    :cond_35
    const/4 v4, 0x5

    :goto_1c
    move-object/from16 v14, p7

    goto :goto_1d

    :cond_36
    move-object/from16 v14, p7

    const/4 v4, 0x5

    :goto_1d
    const/4 v15, 0x6

    const/16 v19, 0x4

    goto :goto_18

    :cond_37
    move/from16 v18, v14

    move-object/from16 v14, p7

    const/4 v4, 0x5

    const/4 v15, 0x6

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v21, 0x0

    goto :goto_1f

    :cond_38
    move/from16 v18, v14

    .line 53
    iget-boolean v4, v7, Lt/h;->f:Z

    if-eqz v4, :cond_3b

    iget-boolean v4, v6, Lt/h;->f:Z

    if-eqz v4, :cond_3b

    .line 54
    invoke-virtual/range {p10 .. p10}, Lv/c;->d()I

    move-result v1

    .line 55
    invoke-virtual/range {p11 .. p11}, Lv/c;->d()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move-object/from16 p18, v9

    move-object/from16 p19, v7

    move/from16 p20, v1

    move/from16 p21, p16

    move-object/from16 p22, v6

    move-object/from16 p23, v8

    move/from16 p24, v3

    move/from16 p25, v4

    .line 56
    invoke-virtual/range {p17 .. p25}, Lt/d;->b(Lt/h;Lt/h;IFLt/h;Lt/h;II)V

    if-eqz p3, :cond_3a

    if-eqz v11, :cond_3a

    .line 57
    iget-object v1, v2, Lv/c;->f:Lv/c;

    if-eqz v1, :cond_39

    .line 58
    invoke-virtual/range {p11 .. p11}, Lv/c;->d()I

    move-result v11

    move-object/from16 v14, p7

    goto :goto_1e

    :cond_39
    move-object/from16 v14, p7

    const/4 v11, 0x0

    :goto_1e
    if-eq v6, v14, :cond_3a

    const/4 v1, 0x5

    .line 59
    invoke-virtual {v10, v14, v8, v11, v1}, Lt/d;->f(Lt/h;Lt/h;II)V

    :cond_3a
    return-void

    :cond_3b
    move-object/from16 v14, p7

    const/4 v4, 0x5

    const/4 v15, 0x6

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v21, 0x1

    :goto_1f
    const/16 v22, 0x0

    :goto_20
    if-eqz v20, :cond_3c

    if-ne v7, v6, :cond_3c

    if-eq v3, v13, :cond_3c

    const/16 v20, 0x0

    const/16 v23, 0x0

    goto :goto_21

    :cond_3c
    move/from16 v23, v20

    const/16 v20, 0x1

    :goto_21
    if-eqz v21, :cond_3e

    if-nez v16, :cond_3d

    if-nez p18, :cond_3d

    if-nez p20, :cond_3d

    if-ne v7, v5, :cond_3d

    if-ne v6, v14, :cond_3d

    const/4 v15, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x8

    const/16 v24, 0x0

    goto :goto_22

    :cond_3d
    move/from16 v21, v15

    move/from16 v24, v20

    move/from16 v15, p3

    move/from16 v20, v4

    .line 60
    :goto_22
    invoke-virtual/range {p10 .. p10}, Lv/c;->d()I

    move-result v4

    .line 61
    invoke-virtual/range {p11 .. p11}, Lv/c;->d()I

    move-result v25

    move/from16 p2, v15

    const/4 v14, 0x3

    move-object v15, v1

    move-object/from16 v1, p1

    move-object v2, v9

    move-object v14, v3

    move-object v3, v7

    move/from16 p5, v11

    move-object v11, v5

    move/from16 v5, p16

    move-object/from16 p8, v6

    move/from16 p9, v12

    move-object v12, v7

    move-object v7, v8

    move-object v11, v8

    move/from16 v8, v25

    move-object/from16 v25, v13

    move-object v13, v9

    move/from16 v9, v21

    .line 62
    invoke-virtual/range {v1 .. v9}, Lt/d;->b(Lt/h;Lt/h;IFLt/h;Lt/h;II)V

    move/from16 v1, p2

    move/from16 v4, v20

    move/from16 v20, v24

    goto :goto_23

    :cond_3e
    move-object v15, v1

    move-object v14, v3

    move-object/from16 p8, v6

    move/from16 p5, v11

    move/from16 p9, v12

    move-object/from16 v25, v13

    move-object v12, v7

    move-object v11, v8

    move-object v13, v9

    move/from16 v1, p3

    .line 63
    :goto_23
    iget v2, v0, Lv/d;->i0:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3f

    invoke-virtual/range {p11 .. p11}, Lv/c;->f()Z

    move-result v2

    if-nez v2, :cond_3f

    return-void

    :cond_3f
    if-eqz v23, :cond_43

    if-eqz v1, :cond_41

    move-object/from16 v2, p8

    if-eq v12, v2, :cond_42

    if-nez v16, :cond_42

    .line 64
    instance-of v3, v14, Lv/a;

    if-nez v3, :cond_40

    instance-of v3, v15, Lv/a;

    if-eqz v3, :cond_42

    :cond_40
    const/4 v4, 0x6

    goto :goto_24

    :cond_41
    move-object/from16 v2, p8

    .line 65
    :cond_42
    :goto_24
    invoke-virtual/range {p10 .. p10}, Lv/c;->d()I

    move-result v3

    invoke-virtual {v10, v13, v12, v3, v4}, Lt/d;->f(Lt/h;Lt/h;II)V

    .line 66
    invoke-virtual/range {p11 .. p11}, Lv/c;->d()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v11, v2, v3, v4}, Lt/d;->g(Lt/h;Lt/h;II)V

    goto :goto_25

    :cond_43
    move-object/from16 v2, p8

    :goto_25
    if-eqz v1, :cond_44

    if-eqz p21, :cond_44

    .line 67
    instance-of v3, v14, Lv/a;

    if-nez v3, :cond_44

    instance-of v3, v15, Lv/a;

    if-nez v3, :cond_44

    move-object/from16 v3, v25

    if-eq v15, v3, :cond_45

    const/4 v4, 0x6

    const/4 v5, 0x6

    const/16 v20, 0x1

    goto :goto_26

    :cond_44
    move-object/from16 v3, v25

    :cond_45
    move/from16 v5, v19

    :goto_26
    if-eqz v20, :cond_52

    if-eqz v22, :cond_4e

    if-eqz p20, :cond_46

    if-eqz p4, :cond_4e

    :cond_46
    if-eq v14, v3, :cond_48

    if-ne v15, v3, :cond_47

    goto :goto_27

    :cond_47
    move/from16 v17, v5

    .line 68
    :cond_48
    :goto_27
    instance-of v6, v14, Lv/f;

    if-nez v6, :cond_49

    instance-of v6, v15, Lv/f;

    if-eqz v6, :cond_4a

    :cond_49
    const/16 v17, 0x5

    .line 69
    :cond_4a
    instance-of v6, v14, Lv/a;

    if-nez v6, :cond_4b

    instance-of v6, v15, Lv/a;

    if-eqz v6, :cond_4c

    :cond_4b
    const/16 v17, 0x5

    :cond_4c
    if-eqz p20, :cond_4d

    const/4 v6, 0x5

    goto :goto_28

    :cond_4d
    move/from16 v6, v17

    .line 70
    :goto_28
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_4e
    if-eqz v1, :cond_50

    .line 71
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eqz p17, :cond_51

    if-nez p20, :cond_51

    if-eq v14, v3, :cond_4f

    if-ne v15, v3, :cond_51

    :cond_4f
    const/4 v4, 0x4

    goto :goto_29

    :cond_50
    move v4, v5

    .line 72
    :cond_51
    :goto_29
    invoke-virtual/range {p10 .. p10}, Lv/c;->d()I

    move-result v3

    invoke-virtual {v10, v13, v12, v3, v4}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    .line 73
    invoke-virtual/range {p11 .. p11}, Lv/c;->d()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v10, v11, v2, v3, v4}, Lt/d;->d(Lt/h;Lt/h;II)Lt/b;

    :cond_52
    if-eqz v1, :cond_54

    move-object/from16 v3, p6

    move-object v4, v11

    if-ne v3, v12, :cond_53

    .line 74
    invoke-virtual/range {p10 .. p10}, Lv/c;->d()I

    move-result v5

    goto :goto_2a

    :cond_53
    const/4 v5, 0x0

    :goto_2a
    if-eq v12, v3, :cond_55

    const/4 v6, 0x5

    .line 75
    invoke-virtual {v10, v13, v3, v5, v6}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto :goto_2b

    :cond_54
    move-object v4, v11

    :cond_55
    :goto_2b
    if-eqz v1, :cond_57

    if-eqz v16, :cond_57

    if-nez p14, :cond_57

    if-nez p9, :cond_57

    if-eqz v16, :cond_56

    move/from16 v14, v18

    const/4 v3, 0x3

    if-ne v14, v3, :cond_56

    const/16 v3, 0x8

    const/4 v5, 0x0

    .line 76
    invoke-virtual {v10, v4, v13, v5, v3}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto :goto_2c

    :cond_56
    const/4 v5, 0x0

    const/4 v3, 0x5

    .line 77
    invoke-virtual {v10, v4, v13, v5, v3}, Lt/d;->f(Lt/h;Lt/h;II)V

    goto :goto_2f

    :cond_57
    :goto_2c
    const/4 v3, 0x5

    goto :goto_2f

    :cond_58
    :goto_2d
    move-object v2, v6

    move-object v4, v8

    move/from16 p5, v11

    goto/16 :goto_f

    :goto_2e
    move/from16 v1, p3

    :goto_2f
    const/4 v11, 0x5

    :goto_30
    if-eqz v1, :cond_5a

    if-eqz p5, :cond_5a

    move-object/from16 v1, p11

    .line 78
    iget-object v3, v1, Lv/c;->f:Lv/c;

    if-eqz v3, :cond_59

    .line 79
    invoke-virtual/range {p11 .. p11}, Lv/c;->d()I

    move-result v1

    move-object/from16 v5, p7

    goto :goto_31

    :cond_59
    move-object/from16 v5, p7

    const/4 v1, 0x0

    :goto_31
    if-eq v2, v5, :cond_5a

    .line 80
    invoke-virtual {v10, v5, v4, v1, v11}, Lt/d;->f(Lt/h;Lt/h;II)V

    :cond_5a
    return-void

    :cond_5b
    :goto_32
    move-object/from16 v3, p6

    move-object/from16 v5, p7

    move v1, v2

    move-object v4, v8

    move-object v13, v9

    move/from16 p5, v11

    const/4 v2, 0x3

    const/4 v6, 0x2

    if-ge v1, v6, :cond_60

    if-eqz p3, :cond_60

    if-eqz p5, :cond_60

    const/16 v1, 0x8

    const/4 v6, 0x0

    .line 81
    invoke-virtual {v10, v13, v3, v6, v1}, Lt/d;->f(Lt/h;Lt/h;II)V

    if-nez p2, :cond_5d

    .line 82
    iget-object v1, v0, Lv/d;->N:Lv/c;

    iget-object v1, v1, Lv/c;->f:Lv/c;

    if-nez v1, :cond_5c

    goto :goto_33

    :cond_5c
    const/4 v11, 0x0

    goto :goto_34

    :cond_5d
    :goto_33
    const/4 v11, 0x1

    :goto_34
    if-nez p2, :cond_5f

    .line 83
    iget-object v1, v0, Lv/d;->N:Lv/c;

    iget-object v1, v1, Lv/c;->f:Lv/c;

    if-eqz v1, :cond_5f

    .line 84
    iget-object v1, v1, Lv/c;->d:Lv/d;

    .line 85
    iget v3, v1, Lv/d;->Y:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_5e

    iget-object v1, v1, Lv/d;->U:[I

    const/4 v3, 0x0

    aget v6, v1, v3

    if-ne v6, v2, :cond_5e

    const/4 v3, 0x1

    aget v1, v1, v3

    if-ne v1, v2, :cond_5e

    const/4 v11, 0x1

    goto :goto_35

    :cond_5e
    const/4 v11, 0x0

    :cond_5f
    :goto_35
    if-eqz v11, :cond_60

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v10, v5, v4, v2, v1}, Lt/d;->f(Lt/h;Lt/h;II)V

    :cond_60
    return-void

    :cond_61
    const/4 v1, 0x0

    .line 87
    throw v1
.end method

.method public g(Lt/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/d;->J:Lv/c;

    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    .line 2
    iget-object v0, p0, Lv/d;->K:Lv/c;

    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    .line 3
    iget-object v0, p0, Lv/d;->L:Lv/c;

    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    .line 4
    iget-object v0, p0, Lv/d;->M:Lv/c;

    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    .line 5
    iget v0, p0, Lv/d;->c0:I

    if-lez v0, :cond_0

    .line 6
    iget-object v0, p0, Lv/d;->N:Lv/c;

    invoke-virtual {p1, v0}, Lt/d;->l(Ljava/lang/Object;)Lt/h;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv/d;->d:Lw/l;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw/l;

    invoke-direct {v0, p0}, Lw/l;-><init>(Lv/d;)V

    iput-object v0, p0, Lv/d;->d:Lw/l;

    .line 3
    :cond_0
    iget-object v0, p0, Lv/d;->e:Lw/n;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lw/n;

    invoke-direct {v0, p0}, Lw/n;-><init>(Lv/d;)V

    iput-object v0, p0, Lv/d;->e:Lw/n;

    :cond_1
    return-void
.end method

.method public i(Lv/c$a;)Lv/c;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object p1, p0, Lv/d;->P:Lv/c;

    return-object p1

    .line 4
    :pswitch_1
    iget-object p1, p0, Lv/d;->O:Lv/c;

    return-object p1

    .line 5
    :pswitch_2
    iget-object p1, p0, Lv/d;->Q:Lv/c;

    return-object p1

    .line 6
    :pswitch_3
    iget-object p1, p0, Lv/d;->N:Lv/c;

    return-object p1

    .line 7
    :pswitch_4
    iget-object p1, p0, Lv/d;->M:Lv/c;

    return-object p1

    .line 8
    :pswitch_5
    iget-object p1, p0, Lv/d;->L:Lv/c;

    return-object p1

    .line 9
    :pswitch_6
    iget-object p1, p0, Lv/d;->K:Lv/c;

    return-object p1

    .line 10
    :pswitch_7
    iget-object p1, p0, Lv/d;->J:Lv/c;

    return-object p1

    :pswitch_8
    const/4 p1, 0x0

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv/d;->w()I

    move-result v0

    iget v1, p0, Lv/d;->X:I

    add-int/2addr v0, v1

    return v0
.end method

.method public k(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lv/d;->m()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lv/d;->t()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public l()I
    .locals 2

    .line 1
    iget v0, p0, Lv/d;->i0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lv/d;->X:I

    return v0
.end method

.method public m()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv/d;->U:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public n(I)Lv/d;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lv/d;->L:Lv/c;

    iget-object v0, p1, Lv/c;->f:Lv/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lv/c;->f:Lv/c;

    if-ne v1, p1, :cond_1

    .line 2
    iget-object p1, v0, Lv/c;->d:Lv/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lv/d;->M:Lv/c;

    iget-object v0, p1, Lv/c;->f:Lv/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lv/c;->f:Lv/c;

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, v0, Lv/c;->d:Lv/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(I)Lv/d;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lv/d;->J:Lv/c;

    iget-object v0, p1, Lv/c;->f:Lv/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lv/c;->f:Lv/c;

    if-ne v1, p1, :cond_1

    .line 2
    iget-object p1, v0, Lv/c;->d:Lv/d;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lv/d;->K:Lv/c;

    iget-object v0, p1, Lv/c;->f:Lv/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lv/c;->f:Lv/c;

    if-ne v1, p1, :cond_1

    .line 4
    iget-object p1, v0, Lv/c;->d:Lv/d;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public p()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv/d;->v()I

    move-result v0

    iget v1, p0, Lv/d;->W:I

    add-int/2addr v0, v1

    return v0
.end method

.method public q(Ljava/lang/StringBuilder;)V
    .locals 10

    const-string v0, "  "

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lv/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    actualWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lv/d;->W:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lv/d;->X:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lv/d;->a0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    actualTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lv/d;->b0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v0, p0, Lv/d;->J:Lv/c;

    const-string v1, "left"

    invoke-virtual {p0, p1, v1, v0}, Lv/d;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/c;)V

    .line 11
    iget-object v0, p0, Lv/d;->K:Lv/c;

    const-string v1, "top"

    invoke-virtual {p0, p1, v1, v0}, Lv/d;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/c;)V

    .line 12
    iget-object v0, p0, Lv/d;->L:Lv/c;

    const-string v1, "right"

    invoke-virtual {p0, p1, v1, v0}, Lv/d;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/c;)V

    .line 13
    iget-object v0, p0, Lv/d;->M:Lv/c;

    const-string v1, "bottom"

    invoke-virtual {p0, p1, v1, v0}, Lv/d;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/c;)V

    .line 14
    iget-object v0, p0, Lv/d;->N:Lv/c;

    const-string v1, "baseline"

    invoke-virtual {p0, p1, v1, v0}, Lv/d;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/c;)V

    .line 15
    iget-object v0, p0, Lv/d;->O:Lv/c;

    const-string v1, "centerX"

    invoke-virtual {p0, p1, v1, v0}, Lv/d;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/c;)V

    .line 16
    iget-object v0, p0, Lv/d;->P:Lv/c;

    const-string v1, "centerY"

    invoke-virtual {p0, p1, v1, v0}, Lv/d;->s(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/c;)V

    .line 17
    iget v3, p0, Lv/d;->W:I

    iget v4, p0, Lv/d;->d0:I

    iget-object v0, p0, Lv/d;->C:[I

    const/4 v9, 0x0

    aget v5, v0, v9

    iget v6, p0, Lv/d;->u:I

    iget v7, p0, Lv/d;->r:I

    iget v8, p0, Lv/d;->w:F

    iget-object v0, p0, Lv/d;->m0:[F

    aget v0, v0, v9

    const-string v2, "    width"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lv/d;->r(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    .line 18
    iget v3, p0, Lv/d;->X:I

    iget v4, p0, Lv/d;->e0:I

    iget-object v0, p0, Lv/d;->C:[I

    const/4 v1, 0x1

    aget v5, v0, v1

    iget v6, p0, Lv/d;->x:I

    iget v7, p0, Lv/d;->s:I

    iget v8, p0, Lv/d;->z:F

    iget-object v0, p0, Lv/d;->m0:[F

    aget v0, v0, v1

    const-string v2, "    height"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lv/d;->r(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V

    .line 19
    iget v0, p0, Lv/d;->Y:F

    iget v1, p0, Lv/d;->Z:I

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "    dimensionRatio"

    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :  ["

    .line 21
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ","

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "],\n"

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :goto_0
    iget v0, p0, Lv/d;->f0:F

    const/high16 v1, 0x3f000000    # 0.5f

    const-string v2, "    horizontalBias"

    invoke-virtual {p0, p1, v2, v0, v1}, Lv/d;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 28
    iget v0, p0, Lv/d;->g0:F

    const-string v2, "    verticalBias"

    invoke-virtual {p0, p1, v2, v0, v1}, Lv/d;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    .line 29
    iget v0, p0, Lv/d;->k0:I

    const-string v1, "    horizontalChainStyle"

    invoke-virtual {p0, p1, v1, v0, v9}, Lv/d;->J(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    .line 30
    iget v0, p0, Lv/d;->l0:I

    const-string v1, "    verticalChainStyle"

    invoke-virtual {p0, p1, v1, v0, v9}, Lv/d;->J(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v0, "  }"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final r(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIF)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " :  {\n"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "      size"

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lv/d;->J(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      min"

    .line 4
    invoke-virtual {p0, p1, p2, p4, v0}, Lv/d;->J(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      max"

    const p3, 0x7fffffff

    .line 5
    invoke-virtual {p0, p1, p2, p5, p3}, Lv/d;->J(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      matchMin"

    .line 6
    invoke-virtual {p0, p1, p2, p6, v0}, Lv/d;->J(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      matchDef"

    .line 7
    invoke-virtual {p0, p1, p2, p7, v0}, Lv/d;->J(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string p2, "      matchPercent"

    const/high16 p3, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {p0, p1, p2, p8, p3}, Lv/d;->I(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string p2, "    },\n"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final s(Ljava/lang/StringBuilder;Ljava/lang/String;Lv/c;)V
    .locals 2

    .line 1
    iget-object v0, p3, Lv/c;->f:Lv/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "    "

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : [ \'"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p2, p3, Lv/c;->f:Lv/c;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget p2, p3, Lv/c;->h:I

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1

    iget p2, p3, Lv/c;->g:I

    if-eqz p2, :cond_2

    :cond_1
    const-string p2, ","

    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p3, Lv/c;->g:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget v1, p3, Lv/c;->h:I

    if-eq v1, v0, :cond_2

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget p3, p3, Lv/c;->h:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p2, " ] ,\n"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public t()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv/d;->U:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lv/d;->j0:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v0, "id: "

    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lv/d;->j0:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/b;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lv/d;->a0:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lv/d;->b0:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lv/d;->W:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lv/d;->X:I

    const-string v2, ")"

    invoke-static {v1, v0, v2}, La6/h;->l(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 2

    .line 1
    iget v0, p0, Lv/d;->i0:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lv/d;->W:I

    return v0
.end method

.method public v()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lv/e;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lv/e;

    iget v0, v0, Lv/e;->y0:I

    iget v1, p0, Lv/d;->a0:I

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lv/d;->a0:I

    return v0
.end method

.method public w()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv/d;->V:Lv/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lv/e;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lv/e;

    iget v0, v0, Lv/e;->z0:I

    iget v1, p0, Lv/d;->b0:I

    add-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lv/d;->b0:I

    return v0
.end method

.method public x(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    .line 1
    iget-object p1, p0, Lv/d;->J:Lv/c;

    iget-object p1, p1, Lv/c;->f:Lv/c;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lv/d;->L:Lv/c;

    iget-object v3, v3, Lv/c;->f:Lv/c;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1

    .line 2
    :cond_3
    iget-object p1, p0, Lv/d;->K:Lv/c;

    iget-object p1, p1, Lv/c;->f:Lv/c;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iget-object v3, p0, Lv/d;->M:Lv/c;

    iget-object v3, v3, Lv/c;->f:Lv/c;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    add-int/2addr p1, v3

    iget-object v3, p0, Lv/d;->N:Lv/c;

    iget-object v3, v3, Lv/c;->f:Lv/c;

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    return v1
.end method

.method public y(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lv/d;->J:Lv/c;

    iget-object p1, p1, Lv/c;->f:Lv/c;

    if-eqz p1, :cond_3

    .line 2
    iget-boolean p1, p1, Lv/c;->c:Z

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lv/d;->L:Lv/c;

    iget-object p1, p1, Lv/c;->f:Lv/c;

    if-eqz p1, :cond_3

    .line 4
    iget-boolean v2, p1, Lv/c;->c:Z

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lv/c;->c()I

    move-result p1

    iget-object v2, p0, Lv/d;->L:Lv/c;

    invoke-virtual {v2}, Lv/c;->d()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lv/d;->J:Lv/c;

    iget-object v2, v2, Lv/c;->f:Lv/c;

    .line 6
    invoke-virtual {v2}, Lv/c;->c()I

    move-result v2

    iget-object v3, p0, Lv/d;->J:Lv/c;

    invoke-virtual {v3}, Lv/c;->d()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr p1, v3

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 7
    :cond_1
    iget-object p1, p0, Lv/d;->K:Lv/c;

    iget-object p1, p1, Lv/c;->f:Lv/c;

    if-eqz p1, :cond_3

    .line 8
    iget-boolean p1, p1, Lv/c;->c:Z

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lv/d;->M:Lv/c;

    iget-object p1, p1, Lv/c;->f:Lv/c;

    if-eqz p1, :cond_3

    .line 10
    iget-boolean v2, p1, Lv/c;->c:Z

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p1}, Lv/c;->c()I

    move-result p1

    iget-object v2, p0, Lv/d;->M:Lv/c;

    invoke-virtual {v2}, Lv/c;->d()I

    move-result v2

    sub-int/2addr p1, v2

    iget-object v2, p0, Lv/d;->K:Lv/c;

    iget-object v2, v2, Lv/c;->f:Lv/c;

    .line 12
    invoke-virtual {v2}, Lv/c;->c()I

    move-result v2

    iget-object v3, p0, Lv/d;->K:Lv/c;

    invoke-virtual {v3}, Lv/c;->d()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr p1, v3

    if-lt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    return v1
.end method

.method public final z(I)Z
    .locals 4

    mul-int/lit8 p1, p1, 0x2

    .line 1
    iget-object v0, p0, Lv/d;->R:[Lv/c;

    aget-object v1, v0, p1

    iget-object v1, v1, Lv/c;->f:Lv/c;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lv/c;->f:Lv/c;

    iget-object v1, v1, Lv/c;->f:Lv/c;

    aget-object v3, v0, p1

    if-eq v1, v3, :cond_0

    add-int/2addr p1, v2

    aget-object v1, v0, p1

    iget-object v1, v1, Lv/c;->f:Lv/c;

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    iget-object v1, v1, Lv/c;->f:Lv/c;

    iget-object v1, v1, Lv/c;->f:Lv/c;

    aget-object p1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
