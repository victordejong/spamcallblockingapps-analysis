.class public Le5;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A:I

.field public a:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:Lg5;

.field public e:Lg5;

.field public f:Ld5;

.field public g:Ld5;

.field public h:[Lk4;

.field public i:Lk4;

.field public j:F

.field public k:F

.field public l:F

.field public m:[I

.field public n:[D

.field public o:[D

.field public p:[Ljava/lang/String;

.field public q:[I

.field public r:I

.field public s:[F

.field public t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lg5;",
            ">;"
        }
    .end annotation
.end field

.field public u:[F

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lt4;",
            ">;"
        }
    .end annotation
.end field

.field public w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lj5;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Li5;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lx4;",
            ">;"
        }
    .end annotation
.end field

.field public z:[Lc5;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Le5;->c:I

    new-instance v0, Lg5;

    invoke-direct {v0}, Lg5;-><init>()V

    iput-object v0, p0, Le5;->d:Lg5;

    new-instance v0, Lg5;

    invoke-direct {v0}, Lg5;-><init>()V

    iput-object v0, p0, Le5;->e:Lg5;

    new-instance v0, Ld5;

    invoke-direct {v0}, Ld5;-><init>()V

    iput-object v0, p0, Le5;->f:Ld5;

    new-instance v0, Ld5;

    invoke-direct {v0}, Ld5;-><init>()V

    iput-object v0, p0, Le5;->g:Ld5;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Le5;->j:F

    const/4 v0, 0x0

    iput v0, p0, Le5;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Le5;->l:F

    const/4 v0, 0x4

    iput v0, p0, Le5;->r:I

    new-array v0, v0, [F

    iput-object v0, p0, Le5;->s:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le5;->t:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Le5;->u:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le5;->v:Ljava/util/ArrayList;

    sget v0, Lt4;->e:I

    iput v0, p0, Le5;->A:I

    invoke-virtual {p0, p1}, Le5;->u(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Lt4;)V
    .locals 1

    iget-object v0, p0, Le5;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lt4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Le5;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public c([F[I)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Le5;->h:[Lk4;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lk4;->h()[D

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v2, p0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg5;

    add-int/lit8 v5, v3, 0x1

    iget v4, v4, Lg5;->n:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge p2, v3, :cond_1

    iget-object v3, p0, Le5;->h:[Lk4;

    aget-object v3, v3, v0

    aget-wide v4, v1, p2

    iget-object v6, p0, Le5;->n:[D

    invoke-virtual {v3, v4, v5, v6}, Lk4;->d(D[D)V

    iget-object v3, p0, Le5;->d:Lg5;

    iget-object v4, p0, Le5;->m:[I

    iget-object v5, p0, Le5;->n:[D

    invoke-virtual {v3, v4, v5, p1, v2}, Lg5;->f([I[D[FI)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    div-int/lit8 v2, v2, 0x2

    return v2

    :cond_2
    return v0
.end method

.method public d([FI)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    iget-object v5, v0, Le5;->x:Ljava/util/HashMap;

    const-string v6, "translationX"

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5;

    :goto_0
    iget-object v8, v0, Le5;->x:Ljava/util/HashMap;

    const-string v9, "translationY"

    if-nez v8, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Li5;

    :goto_1
    iget-object v10, v0, Le5;->y:Ljava/util/HashMap;

    if-nez v10, :cond_2

    move-object v6, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx4;

    :goto_2
    iget-object v10, v0, Le5;->y:Ljava/util/HashMap;

    if-nez v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx4;

    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_11

    int-to-float v11, v10

    mul-float v11, v11, v3

    iget v12, v0, Le5;->l:F

    cmpl-float v14, v12, v4

    if-eqz v14, :cond_5

    iget v14, v0, Le5;->k:F

    cmpg-float v15, v11, v14

    if-gez v15, :cond_4

    const/4 v11, 0x0

    :cond_4
    cmpl-float v15, v11, v14

    if-lez v15, :cond_5

    move-object/from16 v16, v5

    float-to-double v4, v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v19, v4, v17

    if-gez v19, :cond_6

    sub-float/2addr v11, v14

    mul-float v11, v11, v12

    goto :goto_5

    :cond_5
    move-object/from16 v16, v5

    :cond_6
    :goto_5
    float-to-double v4, v11

    iget-object v12, v0, Le5;->d:Lg5;

    iget-object v12, v12, Lg5;->a:Ll4;

    const/high16 v14, 0x7fc00000    # Float.NaN

    iget-object v13, v0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/16 v17, 0x0

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Lg5;

    iget-object v9, v15, Lg5;->a:Ll4;

    if-eqz v9, :cond_8

    iget v2, v15, Lg5;->c:F

    cmpg-float v20, v2, v11

    if-gez v20, :cond_7

    move/from16 v17, v2

    move-object v12, v9

    goto :goto_7

    :cond_7
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v15, Lg5;->c:F

    move v14, v2

    :cond_8
    :goto_7
    move/from16 v2, p2

    goto :goto_6

    :cond_9
    if-eqz v12, :cond_b

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_a

    const/high16 v14, 0x3f800000    # 1.0f

    :cond_a
    sub-float v2, v11, v17

    sub-float v14, v14, v17

    div-float/2addr v2, v14

    float-to-double v4, v2

    invoke-virtual {v12, v4, v5}, Ll4;->a(D)D

    move-result-wide v4

    double-to-float v2, v4

    mul-float v2, v2, v14

    add-float v2, v2, v17

    float-to-double v4, v2

    :cond_b
    iget-object v2, v0, Le5;->h:[Lk4;

    const/4 v9, 0x0

    aget-object v2, v2, v9

    iget-object v12, v0, Le5;->n:[D

    invoke-virtual {v2, v4, v5, v12}, Lk4;->d(D[D)V

    iget-object v2, v0, Le5;->i:Lk4;

    if-eqz v2, :cond_c

    iget-object v12, v0, Le5;->n:[D

    array-length v13, v12

    if-lez v13, :cond_c

    invoke-virtual {v2, v4, v5, v12}, Lk4;->d(D[D)V

    :cond_c
    iget-object v2, v0, Le5;->d:Lg5;

    iget-object v4, v0, Le5;->m:[I

    iget-object v5, v0, Le5;->n:[D

    mul-int/lit8 v12, v10, 0x2

    invoke-virtual {v2, v4, v5, v1, v12}, Lg5;->f([I[D[FI)V

    if-eqz v6, :cond_d

    aget v2, v1, v12

    invoke-virtual {v6, v11}, Lx4;->a(F)F

    move-result v4

    add-float/2addr v2, v4

    aput v2, v1, v12

    goto :goto_8

    :cond_d
    if-eqz v16, :cond_e

    aget v2, v1, v12

    move-object/from16 v5, v16

    invoke-virtual {v5, v11}, Li5;->a(F)F

    move-result v4

    add-float/2addr v2, v4

    aput v2, v1, v12

    goto :goto_9

    :cond_e
    :goto_8
    move-object/from16 v5, v16

    :goto_9
    if-eqz v7, :cond_f

    add-int/lit8 v12, v12, 0x1

    aget v2, v1, v12

    invoke-virtual {v7, v11}, Lx4;->a(F)F

    move-result v4

    add-float/2addr v2, v4

    aput v2, v1, v12

    goto :goto_a

    :cond_f
    if-eqz v8, :cond_10

    add-int/lit8 v12, v12, 0x1

    aget v2, v1, v12

    invoke-virtual {v8, v11}, Li5;->a(F)F

    move-result v4

    add-float/2addr v2, v4

    aput v2, v1, v12

    :cond_10
    :goto_a
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p2

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_11
    return-void
.end method

.method public e(F[FI)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le5;->f(F[F)F

    move-result p1

    iget-object v0, p0, Le5;->h:[Lk4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iget-object p1, p0, Le5;->n:[D

    invoke-virtual {v0, v1, v2, p1}, Lk4;->d(D[D)V

    iget-object p1, p0, Le5;->d:Lg5;

    iget-object v0, p0, Le5;->m:[I

    iget-object v1, p0, Le5;->n:[D

    invoke-virtual {p1, v0, v1, p2, p3}, Lg5;->i([I[D[FI)V

    return-void
.end method

.method public final f(F[F)F
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    aput v1, p2, v2

    goto :goto_0

    :cond_0
    iget v3, p0, Le5;->l:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v4, v6

    if-eqz v8, :cond_2

    iget v4, p0, Le5;->k:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    const/4 p1, 0x0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_2

    sub-float/2addr p1, v4

    mul-float p1, p1, v3

    :cond_2
    :goto_0
    iget-object v3, p0, Le5;->d:Lg5;

    iget-object v3, v3, Lg5;->a:Ll4;

    const/high16 v4, 0x7fc00000    # Float.NaN

    iget-object v5, p0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg5;

    iget-object v7, v6, Lg5;->a:Ll4;

    if-eqz v7, :cond_3

    iget v8, v6, Lg5;->c:F

    cmpg-float v9, v8, p1

    if-gez v9, :cond_4

    move-object v3, v7

    move v0, v8

    goto :goto_1

    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v4, v6, Lg5;->c:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double v4, p1

    invoke-virtual {v3, v4, v5}, Ll4;->a(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float p1, p1, v1

    add-float/2addr p1, v0

    if-eqz p2, :cond_7

    invoke-virtual {v3, v4, v5}, Ll4;->b(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, v2

    :cond_7
    return p1
.end method

.method public g(FFF[F)V
    .locals 11

    iget-object v0, p0, Le5;->u:[F

    invoke-virtual {p0, p1, v0}, Le5;->f(F[F)F

    move-result p1

    iget-object v0, p0, Le5;->h:[Lk4;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    aget-object v0, v0, v1

    float-to-double v2, p1

    iget-object p1, p0, Le5;->o:[D

    invoke-virtual {v0, v2, v3, p1}, Lk4;->g(D[D)V

    iget-object p1, p0, Le5;->h:[Lk4;

    aget-object p1, p1, v1

    iget-object v0, p0, Le5;->n:[D

    invoke-virtual {p1, v2, v3, v0}, Lk4;->d(D[D)V

    iget-object p1, p0, Le5;->u:[F

    aget p1, p1, v1

    :goto_0
    iget-object v9, p0, Le5;->o:[D

    array-length v0, v9

    if-ge v1, v0, :cond_0

    aget-wide v4, v9, v1

    float-to-double v6, p1

    mul-double v4, v4, v6

    aput-wide v4, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Le5;->i:Lk4;

    if-eqz p1, :cond_2

    iget-object v0, p0, Le5;->n:[D

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-virtual {p1, v2, v3, v0}, Lk4;->d(D[D)V

    iget-object p1, p0, Le5;->i:Lk4;

    iget-object v0, p0, Le5;->o:[D

    invoke-virtual {p1, v2, v3, v0}, Lk4;->g(D[D)V

    iget-object v4, p0, Le5;->d:Lg5;

    iget-object v8, p0, Le5;->m:[I

    iget-object v9, p0, Le5;->o:[D

    iget-object v10, p0, Le5;->n:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Lg5;->o(FF[F[I[D[D)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Le5;->d:Lg5;

    iget-object v8, p0, Le5;->m:[I

    iget-object v10, p0, Le5;->n:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Lg5;->o(FF[F[I[D[D)V

    return-void

    :cond_3
    iget-object p1, p0, Le5;->e:Lg5;

    iget v0, p1, Lg5;->f:F

    iget-object v2, p0, Le5;->d:Lg5;

    iget v3, v2, Lg5;->f:F

    sub-float/2addr v0, v3

    iget v3, p1, Lg5;->g:F

    iget v4, v2, Lg5;->g:F

    sub-float/2addr v3, v4

    iget v4, p1, Lg5;->h:F

    iget v5, v2, Lg5;->h:F

    sub-float/2addr v4, v5

    iget p1, p1, Lg5;->j:F

    iget v2, v2, Lg5;->j:F

    sub-float/2addr p1, v2

    add-float/2addr v4, v0

    add-float/2addr p1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v5, v2, p2

    mul-float v0, v0, v5

    mul-float v4, v4, p2

    add-float/2addr v0, v4

    aput v0, p4, v1

    sub-float/2addr v2, p3

    mul-float v3, v3, v2

    mul-float p1, p1, p3

    add-float/2addr v3, p1

    const/4 p1, 0x1

    aput v3, p4, p1

    return-void
.end method

.method public h()I
    .locals 3

    iget-object v0, p0, Le5;->d:Lg5;

    iget v0, v0, Lg5;->b:I

    iget-object v1, p0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg5;

    iget v2, v2, Lg5;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le5;->e:Lg5;

    iget v1, v1, Lg5;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Le5;->e:Lg5;

    iget v0, v0, Lg5;->f:F

    return v0
.end method

.method public j()F
    .locals 1

    iget-object v0, p0, Le5;->e:Lg5;

    iget v0, v0, Lg5;->g:F

    return v0
.end method

.method public k(I)Lg5;
    .locals 1

    iget-object v0, p0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5;

    return-object p1
.end method

.method public l(FIIFF[F)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Le5;->u:[F

    move/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Le5;->f(F[F)F

    move-result v1

    iget-object v2, v0, Le5;->x:Ljava/util/HashMap;

    const-string v3, "translationX"

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li5;

    :goto_0
    iget-object v5, v0, Le5;->x:Ljava/util/HashMap;

    const-string v6, "translationY"

    if-nez v5, :cond_1

    move-object v5, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li5;

    :goto_1
    iget-object v7, v0, Le5;->x:Ljava/util/HashMap;

    const-string v8, "rotation"

    if-nez v7, :cond_2

    move-object v7, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li5;

    :goto_2
    iget-object v9, v0, Le5;->x:Ljava/util/HashMap;

    const-string v10, "scaleX"

    if-nez v9, :cond_3

    move-object v9, v4

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Li5;

    :goto_3
    iget-object v11, v0, Le5;->x:Ljava/util/HashMap;

    const-string v12, "scaleY"

    if-nez v11, :cond_4

    move-object v11, v4

    goto :goto_4

    :cond_4
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Li5;

    :goto_4
    iget-object v13, v0, Le5;->y:Ljava/util/HashMap;

    if-nez v13, :cond_5

    move-object v3, v4

    goto :goto_5

    :cond_5
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4;

    :goto_5
    iget-object v13, v0, Le5;->y:Ljava/util/HashMap;

    if-nez v13, :cond_6

    move-object v6, v4

    goto :goto_6

    :cond_6
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lx4;

    :goto_6
    iget-object v13, v0, Le5;->y:Ljava/util/HashMap;

    if-nez v13, :cond_7

    move-object v8, v4

    goto :goto_7

    :cond_7
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lx4;

    :goto_7
    iget-object v13, v0, Le5;->y:Ljava/util/HashMap;

    if-nez v13, :cond_8

    move-object v10, v4

    goto :goto_8

    :cond_8
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lx4;

    :goto_8
    iget-object v13, v0, Le5;->y:Ljava/util/HashMap;

    if-nez v13, :cond_9

    goto :goto_9

    :cond_9
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx4;

    :goto_9
    new-instance v12, Lq4;

    invoke-direct {v12}, Lq4;-><init>()V

    invoke-virtual {v12}, Lq4;->b()V

    invoke-virtual {v12, v7, v1}, Lq4;->d(Li5;F)V

    invoke-virtual {v12, v2, v5, v1}, Lq4;->h(Li5;Li5;F)V

    invoke-virtual {v12, v9, v11, v1}, Lq4;->f(Li5;Li5;F)V

    invoke-virtual {v12, v8, v1}, Lq4;->c(Lx4;F)V

    invoke-virtual {v12, v3, v6, v1}, Lq4;->g(Lx4;Lx4;F)V

    invoke-virtual {v12, v10, v4, v1}, Lq4;->e(Lx4;Lx4;F)V

    iget-object v13, v0, Le5;->i:Lk4;

    if-eqz v13, :cond_b

    iget-object v2, v0, Le5;->n:[D

    array-length v3, v2

    if-lez v3, :cond_a

    float-to-double v3, v1

    invoke-virtual {v13, v3, v4, v2}, Lk4;->d(D[D)V

    iget-object v1, v0, Le5;->i:Lk4;

    iget-object v2, v0, Le5;->o:[D

    invoke-virtual {v1, v3, v4, v2}, Lk4;->g(D[D)V

    iget-object v1, v0, Le5;->d:Lg5;

    iget-object v5, v0, Le5;->m:[I

    iget-object v6, v0, Le5;->o:[D

    iget-object v7, v0, Le5;->n:[D

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v7}, Lg5;->o(FF[F[I[D[D)V

    :cond_a
    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lq4;->a(FFII[F)V

    return-void

    :cond_b
    iget-object v13, v0, Le5;->h:[Lk4;

    const/4 v14, 0x0

    if-eqz v13, :cond_d

    iget-object v2, v0, Le5;->u:[F

    invoke-virtual {v0, v1, v2}, Le5;->f(F[F)F

    move-result v1

    iget-object v2, v0, Le5;->h:[Lk4;

    aget-object v2, v2, v14

    float-to-double v3, v1

    iget-object v1, v0, Le5;->o:[D

    invoke-virtual {v2, v3, v4, v1}, Lk4;->g(D[D)V

    iget-object v1, v0, Le5;->h:[Lk4;

    aget-object v1, v1, v14

    iget-object v2, v0, Le5;->n:[D

    invoke-virtual {v1, v3, v4, v2}, Lk4;->d(D[D)V

    iget-object v1, v0, Le5;->u:[F

    aget v1, v1, v14

    :goto_a
    iget-object v6, v0, Le5;->o:[D

    array-length v2, v6

    if-ge v14, v2, :cond_c

    aget-wide v2, v6, v14

    float-to-double v4, v1

    mul-double v2, v2, v4

    aput-wide v2, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_c
    iget-object v1, v0, Le5;->d:Lg5;

    iget-object v5, v0, Le5;->m:[I

    iget-object v7, v0, Le5;->n:[D

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v7}, Lg5;->o(FF[F[I[D[D)V

    move-object v1, v12

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lq4;->a(FFII[F)V

    return-void

    :cond_d
    iget-object v13, v0, Le5;->e:Lg5;

    iget v15, v13, Lg5;->f:F

    iget-object v14, v0, Le5;->d:Lg5;

    iget v0, v14, Lg5;->f:F

    sub-float/2addr v15, v0

    iget v0, v13, Lg5;->g:F

    move-object/from16 v16, v4

    iget v4, v14, Lg5;->g:F

    sub-float/2addr v0, v4

    iget v4, v13, Lg5;->h:F

    move-object/from16 v17, v10

    iget v10, v14, Lg5;->h:F

    sub-float/2addr v4, v10

    iget v10, v13, Lg5;->j:F

    iget v13, v14, Lg5;->j:F

    sub-float/2addr v10, v13

    add-float/2addr v4, v15

    add-float/2addr v10, v0

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float v14, v13, p4

    mul-float v15, v15, v14

    mul-float v4, v4, p4

    add-float/2addr v15, v4

    const/4 v4, 0x0

    aput v15, p6, v4

    sub-float v13, v13, p5

    mul-float v0, v0, v13

    mul-float v10, v10, p5

    add-float/2addr v0, v10

    const/4 v4, 0x1

    aput v0, p6, v4

    invoke-virtual {v12}, Lq4;->b()V

    invoke-virtual {v12, v7, v1}, Lq4;->d(Li5;F)V

    invoke-virtual {v12, v2, v5, v1}, Lq4;->h(Li5;Li5;F)V

    invoke-virtual {v12, v9, v11, v1}, Lq4;->f(Li5;Li5;F)V

    invoke-virtual {v12, v8, v1}, Lq4;->c(Lx4;F)V

    invoke-virtual {v12, v3, v6, v1}, Lq4;->g(Lx4;Lx4;F)V

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    invoke-virtual {v12, v10, v4, v1}, Lq4;->e(Lx4;Lx4;F)V

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lq4;->a(FFII[F)V

    return-void
.end method

.method public final m()F
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    const-wide/16 v4, 0x0

    move-wide v8, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x64

    if-ge v10, v12, :cond_6

    int-to-float v12, v10

    mul-float v12, v12, v2

    float-to-double v13, v12

    iget-object v15, v0, Le5;->d:Lg5;

    iget-object v15, v15, Lg5;->a:Ll4;

    const/high16 v16, 0x7fc00000    # Float.NaN

    iget-object v3, v0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Lg5;

    iget-object v7, v6, Lg5;->a:Ll4;

    move/from16 v19, v2

    if-eqz v7, :cond_1

    iget v2, v6, Lg5;->c:F

    cmpg-float v20, v2, v12

    if-gez v20, :cond_0

    move/from16 v17, v2

    move-object v15, v7

    goto :goto_2

    :cond_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v6, Lg5;->c:F

    move/from16 v16, v2

    :cond_1
    :goto_2
    move/from16 v2, v19

    goto :goto_1

    :cond_2
    move/from16 v19, v2

    if-eqz v15, :cond_4

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v16, 0x3f800000    # 1.0f

    :cond_3
    sub-float v12, v12, v17

    sub-float v16, v16, v17

    div-float v12, v12, v16

    float-to-double v2, v12

    invoke-virtual {v15, v2, v3}, Ll4;->a(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v16

    add-float v2, v2, v17

    float-to-double v13, v2

    :cond_4
    iget-object v2, v0, Le5;->h:[Lk4;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v6, v0, Le5;->n:[D

    invoke-virtual {v2, v13, v14, v6}, Lk4;->d(D[D)V

    iget-object v2, v0, Le5;->d:Lg5;

    iget-object v6, v0, Le5;->m:[I

    iget-object v7, v0, Le5;->n:[D

    invoke-virtual {v2, v6, v7, v1, v3}, Lg5;->f([I[D[FI)V

    const/4 v2, 0x1

    if-lez v10, :cond_5

    float-to-double v6, v11

    aget v11, v1, v2

    float-to-double v11, v11

    sub-double/2addr v8, v11

    aget v11, v1, v3

    float-to-double v11, v11

    sub-double/2addr v4, v11

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v6, v4

    double-to-float v11, v6

    :cond_5
    aget v4, v1, v3

    float-to-double v4, v4

    aget v2, v1, v2

    float-to-double v8, v2

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v19

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_6
    return v11
.end method

.method public final n(Lg5;)V
    .locals 3

    iget-object v0, p0, Le5;->t:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " KeyPath positon \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lg5;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\" outside of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Le5;->t:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public o(Landroid/view/View;FJLv4;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    invoke-virtual {v0, v2, v1}, Le5;->f(F[F)F

    move-result v12

    iget-object v2, v0, Le5;->x:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5;

    invoke-virtual {v3, v11, v12}, Li5;->f(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Le5;->w:Ljava/util/HashMap;

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj5;

    instance-of v2, v1, Lj5$d;

    if-eqz v2, :cond_1

    move-object v8, v1

    check-cast v8, Lj5$d;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    move v3, v12

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lj5;->f(Landroid/view/View;FJLv4;)Z

    move-result v1

    or-int/2addr v9, v1

    goto :goto_1

    :cond_2
    move v14, v9

    goto :goto_2

    :cond_3
    move-object v8, v1

    const/4 v14, 0x0

    :goto_2
    iget-object v1, v0, Le5;->h:[Lk4;

    const/4 v15, 0x1

    if-eqz v1, :cond_c

    aget-object v1, v1, v13

    float-to-double v9, v12

    iget-object v2, v0, Le5;->n:[D

    invoke-virtual {v1, v9, v10, v2}, Lk4;->d(D[D)V

    iget-object v1, v0, Le5;->h:[Lk4;

    aget-object v1, v1, v13

    iget-object v2, v0, Le5;->o:[D

    invoke-virtual {v1, v9, v10, v2}, Lk4;->g(D[D)V

    iget-object v1, v0, Le5;->i:Lk4;

    if-eqz v1, :cond_4

    iget-object v2, v0, Le5;->n:[D

    array-length v3, v2

    if-lez v3, :cond_4

    invoke-virtual {v1, v9, v10, v2}, Lk4;->d(D[D)V

    iget-object v1, v0, Le5;->i:Lk4;

    iget-object v2, v0, Le5;->o:[D

    invoke-virtual {v1, v9, v10, v2}, Lk4;->g(D[D)V

    :cond_4
    iget-object v1, v0, Le5;->d:Lg5;

    iget-object v3, v0, Le5;->m:[I

    iget-object v4, v0, Le5;->n:[D

    iget-object v5, v0, Le5;->o:[D

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lg5;->p(Landroid/view/View;[I[D[D[D)V

    iget-object v1, v0, Le5;->x:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5;

    instance-of v2, v1, Li5$d;

    if-eqz v2, :cond_5

    check-cast v1, Li5$d;

    iget-object v2, v0, Le5;->o:[D

    aget-wide v4, v2, v13

    aget-wide v6, v2, v15

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v7}, Li5$d;->i(Landroid/view/View;FDD)V

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    iget-object v1, v0, Le5;->o:[D

    aget-wide v16, v1, v13

    aget-wide v18, v1, v15

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v12

    move-wide/from16 v5, p3

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-virtual/range {v1 .. v10}, Lj5$d;->j(Landroid/view/View;Lv4;FJDD)Z

    move-result v1

    or-int/2addr v1, v14

    move v14, v1

    goto :goto_4

    :cond_7
    move-wide/from16 v20, v9

    :goto_4
    const/4 v1, 0x1

    :goto_5
    iget-object v2, v0, Le5;->h:[Lk4;

    array-length v3, v2

    if-ge v1, v3, :cond_8

    aget-object v2, v2, v1

    iget-object v3, v0, Le5;->s:[F

    move-wide/from16 v4, v20

    invoke-virtual {v2, v4, v5, v3}, Lk4;->e(D[F)V

    iget-object v2, v0, Le5;->d:Lg5;

    iget-object v2, v2, Lg5;->m:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Le5;->p:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6;

    iget-object v3, v0, Le5;->s:[F

    invoke-virtual {v2, v11, v3}, Ly6;->i(Landroid/view/View;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    iget-object v1, v0, Le5;->f:Ld5;

    iget v2, v1, Ld5;->b:I

    if-nez v2, :cond_b

    const/4 v2, 0x0

    cmpg-float v2, v12, v2

    if-gtz v2, :cond_9

    :goto_6
    iget v1, v1, Ld5;->c:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v12, v2

    if-ltz v2, :cond_a

    iget-object v1, v0, Le5;->g:Ld5;

    goto :goto_6

    :cond_a
    iget-object v2, v0, Le5;->g:Ld5;

    iget v2, v2, Ld5;->c:I

    iget v1, v1, Ld5;->c:I

    if-eq v2, v1, :cond_b

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    :goto_7
    iget-object v1, v0, Le5;->z:[Lc5;

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :goto_8
    iget-object v2, v0, Le5;->z:[Lc5;

    array-length v3, v2

    if-ge v1, v3, :cond_f

    aget-object v2, v2, v1

    invoke-virtual {v2, v12, v11}, Lc5;->r(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    iget-object v1, v0, Le5;->d:Lg5;

    iget v2, v1, Lg5;->f:F

    iget-object v3, v0, Le5;->e:Lg5;

    iget v4, v3, Lg5;->f:F

    sub-float/2addr v4, v2

    mul-float v4, v4, v12

    add-float/2addr v2, v4

    iget v4, v1, Lg5;->g:F

    iget v5, v3, Lg5;->g:F

    sub-float/2addr v5, v4

    mul-float v5, v5, v12

    add-float/2addr v4, v5

    iget v5, v1, Lg5;->h:F

    iget v6, v3, Lg5;->h:F

    sub-float v7, v6, v5

    mul-float v7, v7, v12

    add-float/2addr v7, v5

    iget v1, v1, Lg5;->j:F

    iget v3, v3, Lg5;->j:F

    sub-float v8, v3, v1

    mul-float v8, v8, v12

    add-float/2addr v8, v1

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v2, v9

    float-to-int v10, v2

    add-float/2addr v4, v9

    float-to-int v9, v4

    add-float/2addr v2, v7

    float-to-int v2, v2

    add-float/2addr v4, v8

    float-to-int v4, v4

    sub-int v7, v2, v10

    sub-int v8, v4, v9

    cmpl-float v5, v6, v5

    if-nez v5, :cond_d

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_e

    :cond_d
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v11, v3, v1}, Landroid/view/View;->measure(II)V

    :cond_e
    invoke-virtual {v11, v10, v9, v2, v4}, Landroid/view/View;->layout(IIII)V

    :cond_f
    iget-object v1, v0, Le5;->y:Ljava/util/HashMap;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx4;

    instance-of v2, v1, Lx4$f;

    if-eqz v2, :cond_10

    check-cast v1, Lx4$f;

    iget-object v2, v0, Le5;->o:[D

    aget-wide v4, v2, v13

    aget-wide v6, v2, v15

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v7}, Lx4$f;->j(Landroid/view/View;FDD)V

    goto :goto_9

    :cond_10
    invoke-virtual {v1, v11, v12}, Lx4;->f(Landroid/view/View;F)V

    goto :goto_9

    :cond_11
    return v14
.end method

.method public final p(Lg5;)V
    .locals 4

    iget-object v0, p0, Le5;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Le5;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Le5;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Le5;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lg5;->n(FFFF)V

    return-void
.end method

.method public q(Lz5;La7;)V
    .locals 5

    iget-object v0, p0, Le5;->e:Lg5;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lg5;->c:F

    iput v1, v0, Lg5;->d:F

    invoke-virtual {p0, v0}, Le5;->p(Lg5;)V

    iget-object v0, p0, Le5;->e:Lg5;

    invoke-virtual {p1}, Lz5;->V()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lz5;->W()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lz5;->U()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lz5;->y()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lg5;->n(FFFF)V

    iget-object v0, p0, Le5;->e:Lg5;

    iget v1, p0, Le5;->b:I

    invoke-virtual {p2, v1}, La7;->u(I)La7$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg5;->a(La7$a;)V

    iget-object v0, p0, Le5;->g:Ld5;

    iget v1, p0, Le5;->b:I

    invoke-virtual {v0, p1, p2, v1}, Ld5;->i(Lz5;La7;I)V

    return-void
.end method

.method public r(I)V
    .locals 0

    iput p1, p0, Le5;->A:I

    return-void
.end method

.method public s(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Le5;->d:Lg5;

    const/4 v1, 0x0

    iput v1, v0, Lg5;->c:F

    iput v1, v0, Lg5;->d:F

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lg5;->n(FFFF)V

    iget-object v0, p0, Le5;->f:Ld5;

    invoke-virtual {v0, p1}, Ld5;->h(Landroid/view/View;)V

    return-void
.end method

.method public t(Lz5;La7;)V
    .locals 5

    iget-object v0, p0, Le5;->d:Lg5;

    const/4 v1, 0x0

    iput v1, v0, Lg5;->c:F

    iput v1, v0, Lg5;->d:F

    invoke-virtual {p0, v0}, Le5;->p(Lg5;)V

    iget-object v0, p0, Le5;->d:Lg5;

    invoke-virtual {p1}, Lz5;->V()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lz5;->W()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lz5;->U()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lz5;->y()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lg5;->n(FFFF)V

    iget v0, p0, Le5;->b:I

    invoke-virtual {p2, v0}, La7;->u(I)La7$a;

    move-result-object v0

    iget-object v1, p0, Le5;->d:Lg5;

    invoke-virtual {v1, v0}, Lg5;->a(La7$a;)V

    iget-object v0, v0, La7$a;->c:La7$c;

    iget v0, v0, La7$c;->f:F

    iput v0, p0, Le5;->j:F

    iget-object v0, p0, Le5;->f:Ld5;

    iget v1, p0, Le5;->b:I

    invoke-virtual {v0, p1, p2, v1}, Ld5;->i(Lz5;La7;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le5;->d:Lg5;

    iget v1, v1, Lg5;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le5;->d:Lg5;

    iget v2, v2, Lg5;->g:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le5;->e:Lg5;

    iget v2, v2, Lg5;->f:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le5;->e:Lg5;

    iget v1, v1, Lg5;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Le5;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Le5;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public v(IIFJ)V
    .locals 17

    move-object/from16 v0, p0

    const-class v1, D

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget v6, v0, Le5;->A:I

    sget v7, Lt4;->e:I

    if-eq v6, v7, :cond_0

    iget-object v7, v0, Le5;->d:Lg5;

    iput v6, v7, Lg5;->l:I

    :cond_0
    iget-object v6, v0, Le5;->f:Ld5;

    iget-object v7, v0, Le5;->g:Ld5;

    invoke-virtual {v6, v7, v3}, Ld5;->f(Ld5;Ljava/util/HashSet;)V

    iget-object v6, v0, Le5;->v:Ljava/util/ArrayList;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lt4;

    instance-of v10, v9, Lz4;

    if-eqz v10, :cond_2

    check-cast v9, Lz4;

    new-instance v10, Lg5;

    iget-object v15, v0, Le5;->d:Lg5;

    iget-object v14, v0, Le5;->e:Lg5;

    move-object v11, v10

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v16, v14

    move-object v14, v9

    invoke-direct/range {v11 .. v16}, Lg5;-><init>(IILz4;Lg5;Lg5;)V

    invoke-virtual {v0, v10}, Le5;->n(Lg5;)V

    iget v9, v9, La5;->f:I

    sget v10, Lt4;->e:I

    if-eq v9, v10, :cond_1

    iput v9, v0, Le5;->c:I

    goto :goto_0

    :cond_2
    instance-of v10, v9, Lw4;

    if-eqz v10, :cond_3

    invoke-virtual {v9, v4}, Lt4;->b(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_3
    instance-of v10, v9, Lb5;

    if-eqz v10, :cond_4

    invoke-virtual {v9, v2}, Lt4;->b(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_4
    instance-of v10, v9, Lc5;

    if-eqz v10, :cond_6

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    check-cast v9, Lc5;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v9, v5}, Lt4;->e(Ljava/util/HashMap;)V

    invoke-virtual {v9, v3}, Lt4;->b(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    :cond_8
    const/4 v6, 0x0

    if-eqz v8, :cond_9

    new-array v9, v6, [Lc5;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lc5;

    iput-object v8, v0, Le5;->z:[Lc5;

    :cond_9
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v8

    const-string v9, ","

    const-string v10, "CUSTOM,"

    const/4 v11, 0x1

    if-nez v8, :cond_13

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v0, Le5;->x:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    aget-object v14, v14, v11

    iget-object v15, v0, Le5;->v:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lt4;

    iget-object v11, v7, Lt4;->d:Ljava/util/HashMap;

    if-nez v11, :cond_b

    :cond_a
    :goto_3
    const/4 v11, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly6;

    if-eqz v11, :cond_a

    iget v7, v7, Lt4;->a:I

    invoke-virtual {v13, v7, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_3

    :cond_c
    invoke-static {v12, v13}, Li5;->c(Ljava/lang/String;Landroid/util/SparseArray;)Li5;

    move-result-object v7

    goto :goto_4

    :cond_d
    invoke-static {v12}, Li5;->d(Ljava/lang/String;)Li5;

    move-result-object v7

    :goto_4
    if-nez v7, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v7, v12}, Li5;->g(Ljava/lang/String;)V

    iget-object v11, v0, Le5;->x:Ljava/util/HashMap;

    invoke-virtual {v11, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const/4 v11, 0x1

    goto :goto_1

    :cond_f
    iget-object v7, v0, Le5;->v:Ljava/util/ArrayList;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt4;

    instance-of v11, v8, Lu4;

    if-eqz v11, :cond_10

    iget-object v11, v0, Le5;->x:Ljava/util/HashMap;

    invoke-virtual {v8, v11}, Lt4;->a(Ljava/util/HashMap;)V

    goto :goto_6

    :cond_11
    iget-object v7, v0, Le5;->f:Ld5;

    iget-object v8, v0, Le5;->x:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v6}, Ld5;->a(Ljava/util/HashMap;I)V

    iget-object v7, v0, Le5;->g:Ld5;

    iget-object v8, v0, Le5;->x:Ljava/util/HashMap;

    const/16 v11, 0x64

    invoke-virtual {v7, v8, v11}, Ld5;->a(Ljava/util/HashMap;I)V

    iget-object v7, v0, Le5;->x:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_8

    :cond_12
    const/4 v11, 0x0

    :goto_8
    iget-object v12, v0, Le5;->x:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Li5;

    invoke-virtual {v8, v11}, Li5;->h(I)V

    goto :goto_7

    :cond_13
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1f

    iget-object v7, v0, Le5;->w:Ljava/util/HashMap;

    if-nez v7, :cond_14

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Le5;->w:Ljava/util/HashMap;

    :cond_14
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Le5;->w:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v12, v0, Le5;->v:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_16
    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lt4;

    iget-object v14, v13, Lt4;->d:Ljava/util/HashMap;

    if-nez v14, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ly6;

    if-eqz v14, :cond_16

    iget v13, v13, Lt4;->a:I

    invoke-virtual {v8, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_a

    :cond_18
    invoke-static {v7, v8}, Lj5;->c(Ljava/lang/String;Landroid/util/SparseArray;)Lj5;

    move-result-object v8

    move-wide/from16 v11, p4

    goto :goto_b

    :cond_19
    move-wide/from16 v11, p4

    invoke-static {v7, v11, v12}, Lj5;->d(Ljava/lang/String;J)Lj5;

    move-result-object v8

    :goto_b
    if-nez v8, :cond_1a

    goto :goto_9

    :cond_1a
    invoke-virtual {v8, v7}, Lj5;->h(Ljava/lang/String;)V

    iget-object v13, v0, Le5;->w:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_1b
    iget-object v2, v0, Le5;->v:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt4;

    instance-of v8, v7, Lb5;

    if-eqz v8, :cond_1c

    check-cast v7, Lb5;

    iget-object v8, v0, Le5;->w:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Lb5;->M(Ljava/util/HashMap;)V

    goto :goto_c

    :cond_1d
    iget-object v2, v0, Le5;->w:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_e

    :cond_1e
    const/4 v8, 0x0

    :goto_e
    iget-object v9, v0, Le5;->w:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj5;

    invoke-virtual {v7, v8}, Lj5;->i(I)V

    goto :goto_d

    :cond_1f
    iget-object v2, v0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x2

    add-int/2addr v2, v5

    new-array v7, v2, [Lg5;

    iget-object v8, v0, Le5;->d:Lg5;

    aput-object v8, v7, v6

    add-int/lit8 v8, v2, -0x1

    iget-object v9, v0, Le5;->e:Lg5;

    aput-object v9, v7, v8

    iget-object v8, v0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_20

    iget v8, v0, Le5;->c:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_20

    iput v6, v0, Le5;->c:I

    :cond_20
    iget-object v8, v0, Le5;->t:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x1

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_21

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lg5;

    add-int/lit8 v12, v9, 0x1

    aput-object v11, v7, v9

    move v9, v12

    goto :goto_f

    :cond_21
    const/16 v8, 0x12

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iget-object v11, v0, Le5;->e:Lg5;

    iget-object v11, v11, Lg5;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_22
    :goto_10
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Le5;->d:Lg5;

    iget-object v13, v13, Lg5;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v12}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_22

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_23
    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Le5;->p:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, v0, Le5;->q:[I

    const/4 v3, 0x0

    :goto_11
    iget-object v9, v0, Le5;->p:[Ljava/lang/String;

    array-length v10, v9

    if-ge v3, v10, :cond_26

    aget-object v9, v9, v3

    iget-object v10, v0, Le5;->q:[I

    aput v6, v10, v3

    const/4 v10, 0x0

    :goto_12
    if-ge v10, v2, :cond_25

    aget-object v11, v7, v10

    iget-object v11, v11, Lg5;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    iget-object v11, v0, Le5;->q:[I

    aget v12, v11, v3

    aget-object v10, v7, v10

    iget-object v10, v10, Lg5;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly6;

    invoke-virtual {v9}, Ly6;->f()I

    move-result v9

    add-int/2addr v12, v9

    aput v12, v11, v3

    goto :goto_13

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_25
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_26
    aget-object v3, v7, v6

    iget v3, v3, Lg5;->l:I

    sget v10, Lt4;->e:I

    if-eq v3, v10, :cond_27

    const/4 v3, 0x1

    goto :goto_14

    :cond_27
    const/4 v3, 0x0

    :goto_14
    array-length v9, v9

    add-int/2addr v8, v9

    new-array v9, v8, [Z

    const/4 v10, 0x1

    :goto_15
    if-ge v10, v2, :cond_28

    aget-object v11, v7, v10

    add-int/lit8 v12, v10, -0x1

    aget-object v12, v7, v12

    iget-object v13, v0, Le5;->p:[Ljava/lang/String;

    invoke-virtual {v11, v12, v9, v13, v3}, Lg5;->d(Lg5;[Z[Ljava/lang/String;Z)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    :cond_28
    const/4 v3, 0x1

    const/4 v10, 0x0

    :goto_16
    if-ge v3, v8, :cond_2a

    aget-boolean v11, v9, v3

    if-eqz v11, :cond_29

    add-int/lit8 v10, v10, 0x1

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2a
    new-array v3, v10, [I

    iput-object v3, v0, Le5;->m:[I

    array-length v10, v3

    new-array v10, v10, [D

    iput-object v10, v0, Le5;->n:[D

    array-length v3, v3

    new-array v3, v3, [D

    iput-object v3, v0, Le5;->o:[D

    const/4 v3, 0x1

    const/4 v10, 0x0

    :goto_17
    if-ge v3, v8, :cond_2c

    aget-boolean v11, v9, v3

    if-eqz v11, :cond_2b

    iget-object v11, v0, Le5;->m:[I

    add-int/lit8 v12, v10, 0x1

    aput v3, v11, v10

    move v10, v12

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2c
    iget-object v3, v0, Le5;->m:[I

    array-length v3, v3

    new-array v8, v5, [I

    const/4 v9, 0x1

    aput v3, v8, v9

    aput v2, v8, v6

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    new-array v8, v2, [D

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v2, :cond_2d

    aget-object v10, v7, v9

    aget-object v11, v3, v9

    iget-object v12, v0, Le5;->m:[I

    invoke-virtual {v10, v11, v12}, Lg5;->e([D[I)V

    aget-object v10, v7, v9

    iget v10, v10, Lg5;->c:F

    float-to-double v10, v10

    aput-wide v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_2d
    const/4 v9, 0x0

    :goto_19
    iget-object v10, v0, Le5;->m:[I

    array-length v11, v10

    if-ge v9, v11, :cond_2f

    aget v10, v10, v9

    sget-object v11, Lg5;->q:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_2e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lg5;->q:[Ljava/lang/String;

    iget-object v12, v0, Le5;->m:[I

    aget v12, v12, v9

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1a
    if-ge v11, v2, :cond_2e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v3, v11

    aget-wide v13, v10, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_2f
    iget-object v9, v0, Le5;->p:[Ljava/lang/String;

    array-length v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    new-array v9, v9, [Lk4;

    iput-object v9, v0, Le5;->h:[Lk4;

    const/4 v9, 0x0

    :goto_1b
    iget-object v10, v0, Le5;->p:[Ljava/lang/String;

    array-length v11, v10

    if-ge v9, v11, :cond_33

    aget-object v10, v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1c
    if-ge v11, v2, :cond_32

    aget-object v15, v7, v11

    invoke-virtual {v15, v10}, Lg5;->j(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_31

    if-nez v14, :cond_30

    new-array v12, v2, [D

    aget-object v14, v7, v11

    invoke-virtual {v14, v10}, Lg5;->h(Ljava/lang/String;)I

    move-result v14

    new-array v15, v5, [I

    const/16 v16, 0x1

    aput v14, v15, v16

    aput v2, v15, v6

    invoke-static {v1, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    :cond_30
    aget-object v15, v7, v11

    iget v15, v15, Lg5;->c:F

    float-to-double v5, v15

    aput-wide v5, v12, v13

    aget-object v5, v7, v11

    aget-object v6, v14, v13

    const/4 v15, 0x0

    invoke-virtual {v5, v10, v6, v15}, Lg5;->g(Ljava/lang/String;[DI)I

    add-int/lit8 v13, v13, 0x1

    :cond_31
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_1c

    :cond_32
    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v5

    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    iget-object v10, v0, Le5;->h:[Lk4;

    add-int/lit8 v9, v9, 0x1

    iget v11, v0, Le5;->c:I

    invoke-static {v11, v5, v6}, Lk4;->a(I[D[[D)Lk4;

    move-result-object v5

    aput-object v5, v10, v9

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto :goto_1b

    :cond_33
    iget-object v5, v0, Le5;->h:[Lk4;

    iget v6, v0, Le5;->c:I

    invoke-static {v6, v8, v3}, Lk4;->a(I[D[[D)Lk4;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aget-object v3, v7, v6

    iget v3, v3, Lg5;->l:I

    sget v5, Lt4;->e:I

    if-eq v3, v5, :cond_35

    new-array v3, v2, [I

    new-array v5, v2, [D

    const/4 v8, 0x2

    new-array v9, v8, [I

    const/4 v10, 0x1

    aput v8, v9, v10

    aput v2, v9, v6

    invoke-static {v1, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v15, 0x0

    :goto_1d
    if-ge v15, v2, :cond_34

    aget-object v6, v7, v15

    iget v6, v6, Lg5;->l:I

    aput v6, v3, v15

    aget-object v6, v7, v15

    iget v6, v6, Lg5;->c:F

    float-to-double v8, v6

    aput-wide v8, v5, v15

    aget-object v6, v1, v15

    aget-object v8, v7, v15

    iget v8, v8, Lg5;->f:F

    float-to-double v8, v8

    const/4 v10, 0x0

    aput-wide v8, v6, v10

    aget-object v6, v1, v15

    aget-object v8, v7, v15

    iget v8, v8, Lg5;->g:F

    float-to-double v8, v8

    const/4 v11, 0x1

    aput-wide v8, v6, v11

    add-int/lit8 v15, v15, 0x1

    goto :goto_1d

    :cond_34
    invoke-static {v3, v5, v1}, Lk4;->b([I[D[[D)Lk4;

    move-result-object v1

    iput-object v1, v0, Le5;->i:Lk4;

    :cond_35
    const/high16 v1, 0x7fc00000    # Float.NaN

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Le5;->y:Ljava/util/HashMap;

    iget-object v2, v0, Le5;->v:Ljava/util/ArrayList;

    if-eqz v2, :cond_3b

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lx4;->c(Ljava/lang/String;)Lx4;

    move-result-object v4

    if-nez v4, :cond_36

    goto :goto_1e

    :cond_36
    invoke-virtual {v4}, Lx4;->i()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual/range {p0 .. p0}, Le5;->m()F

    move-result v1

    :cond_37
    invoke-virtual {v4, v3}, Lx4;->g(Ljava/lang/String;)V

    iget-object v5, v0, Le5;->y:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_38
    iget-object v2, v0, Le5;->v:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt4;

    instance-of v4, v3, Lw4;

    if-eqz v4, :cond_39

    check-cast v3, Lw4;

    iget-object v4, v0, Le5;->y:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lw4;->O(Ljava/util/HashMap;)V

    goto :goto_1f

    :cond_3a
    iget-object v2, v0, Le5;->y:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx4;

    invoke-virtual {v3, v1}, Lx4;->h(F)V

    goto :goto_20

    :cond_3b
    return-void
.end method
