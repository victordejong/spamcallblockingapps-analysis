.class public Lt/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/d$a;
    }
.end annotation


# static fields
.field public static p:Z = false

.field public static q:I = 0x3e8

.field public static r:J


# instance fields
.field public a:Z

.field public b:I

.field public c:Lt/d$a;

.field public d:I

.field public e:I

.field public f:[Lt/b;

.field public g:Z

.field public h:[Z

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lt/c;

.field public m:[Lt/h;

.field public n:I

.field public o:Lt/d$a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lt/d;->a:Z

    .line 3
    iput v0, p0, Lt/d;->b:I

    const/16 v1, 0x20

    .line 4
    iput v1, p0, Lt/d;->d:I

    .line 5
    iput v1, p0, Lt/d;->e:I

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lt/d;->f:[Lt/b;

    .line 7
    iput-boolean v0, p0, Lt/d;->g:Z

    new-array v2, v1, [Z

    .line 8
    iput-object v2, p0, Lt/d;->h:[Z

    const/4 v2, 0x1

    .line 9
    iput v2, p0, Lt/d;->i:I

    .line 10
    iput v0, p0, Lt/d;->j:I

    .line 11
    iput v1, p0, Lt/d;->k:I

    .line 12
    sget v2, Lt/d;->q:I

    new-array v2, v2, [Lt/h;

    iput-object v2, p0, Lt/d;->m:[Lt/h;

    .line 13
    iput v0, p0, Lt/d;->n:I

    new-array v0, v1, [Lt/b;

    .line 14
    iput-object v0, p0, Lt/d;->f:[Lt/b;

    .line 15
    invoke-virtual {p0}, Lt/d;->t()V

    .line 16
    new-instance v0, Lt/c;

    invoke-direct {v0}, Lt/c;-><init>()V

    iput-object v0, p0, Lt/d;->l:Lt/c;

    .line 17
    new-instance v1, Lt/f;

    invoke-direct {v1, v0}, Lt/f;-><init>(Lt/c;)V

    iput-object v1, p0, Lt/d;->c:Lt/d$a;

    .line 18
    new-instance v1, Lt/b;

    invoke-direct {v1, v0}, Lt/b;-><init>(Lt/c;)V

    iput-object v1, p0, Lt/d;->o:Lt/d$a;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Lt/h;
    .locals 2

    .line 1
    iget-object p2, p0, Lt/d;->l:Lt/c;

    iget-object p2, p2, Lt/c;->c:Ljava/lang/Object;

    check-cast p2, Lt/e;

    invoke-virtual {p2}, Lt/e;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lt/h;

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lt/h;

    invoke-direct {p2, p1}, Lt/h;-><init>(I)V

    .line 3
    iput p1, p2, Lt/h;->i:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lt/h;->c()V

    .line 5
    iput p1, p2, Lt/h;->i:I

    .line 6
    :goto_0
    iget p1, p0, Lt/d;->n:I

    sget v0, Lt/d;->q:I

    if-lt p1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    .line 7
    sput v0, Lt/d;->q:I

    .line 8
    iget-object p1, p0, Lt/d;->m:[Lt/h;

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lt/h;

    iput-object p1, p0, Lt/d;->m:[Lt/h;

    .line 9
    :cond_1
    iget-object p1, p0, Lt/d;->m:[Lt/h;

    iget v0, p0, Lt/d;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lt/d;->n:I

    aput-object p2, p1, v0

    return-object p2
.end method

.method public b(Lt/h;Lt/h;IFLt/h;Lt/h;II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lt/d;->m()Lt/b;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, p5, :cond_0

    .line 2
    iget-object p3, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p3, p1, v1}, Lt/b$a;->d(Lt/h;F)V

    .line 3
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p6, v1}, Lt/b$a;->d(Lt/h;F)V

    .line 4
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    const/high16 p3, -0x40000000    # -2.0f

    invoke-interface {p1, p2, p3}, Lt/b$a;->d(Lt/h;F)V

    goto/16 :goto_0

    :cond_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_2

    .line 5
    iget-object p4, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p4, p1, v1}, Lt/b$a;->d(Lt/h;F)V

    .line 6
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p2, v3}, Lt/b$a;->d(Lt/h;F)V

    .line 7
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p5, v3}, Lt/b$a;->d(Lt/h;F)V

    .line 8
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p6, v1}, Lt/b$a;->d(Lt/h;F)V

    if-gtz p3, :cond_1

    if-lez p7, :cond_6

    :cond_1
    neg-int p1, p3

    add-int/2addr p1, p7

    int-to-float p1, p1

    .line 9
    iput p1, v0, Lt/b;->b:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_3

    .line 10
    iget-object p4, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p4, p1, v3}, Lt/b$a;->d(Lt/h;F)V

    .line 11
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p2, v1}, Lt/b$a;->d(Lt/h;F)V

    int-to-float p1, p3

    .line 12
    iput p1, v0, Lt/b;->b:F

    goto :goto_0

    :cond_3
    cmpl-float v2, p4, v1

    if-ltz v2, :cond_4

    .line 13
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p6, v3}, Lt/b$a;->d(Lt/h;F)V

    .line 14
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p5, v1}, Lt/b$a;->d(Lt/h;F)V

    neg-int p1, p7

    int-to-float p1, p1

    .line 15
    iput p1, v0, Lt/b;->b:F

    goto :goto_0

    .line 16
    :cond_4
    iget-object v2, v0, Lt/b;->d:Lt/b$a;

    sub-float v4, v1, p4

    mul-float v5, v4, v1

    invoke-interface {v2, p1, v5}, Lt/b$a;->d(Lt/h;F)V

    .line 17
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    mul-float v2, v4, v3

    invoke-interface {p1, p2, v2}, Lt/b$a;->d(Lt/h;F)V

    .line 18
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    mul-float v3, v3, p4

    invoke-interface {p1, p5, v3}, Lt/b$a;->d(Lt/h;F)V

    .line 19
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    mul-float v1, v1, p4

    invoke-interface {p1, p6, v1}, Lt/b$a;->d(Lt/h;F)V

    if-gtz p3, :cond_5

    if-lez p7, :cond_6

    :cond_5
    neg-int p1, p3

    int-to-float p1, p1

    mul-float p1, p1, v4

    int-to-float p2, p7

    mul-float p2, p2, p4

    add-float/2addr p2, p1

    .line 20
    iput p2, v0, Lt/b;->b:F

    :cond_6
    :goto_0
    const/16 p1, 0x8

    if-eq p8, p1, :cond_7

    .line 21
    invoke-virtual {v0, p0, p8}, Lt/b;->c(Lt/d;I)Lt/b;

    .line 22
    :cond_7
    invoke-virtual {p0, v0}, Lt/d;->c(Lt/b;)V

    return-void
.end method

.method public c(Lt/b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Lt/d;->j:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v4, v0, Lt/d;->k:I

    if-ge v2, v4, :cond_0

    iget v2, v0, Lt/d;->i:I

    add-int/2addr v2, v3

    iget v4, v0, Lt/d;->e:I

    if-lt v2, v4, :cond_1

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lt/d;->p()V

    .line 3
    :cond_1
    iget-boolean v2, v1, Lt/b;->e:Z

    if-nez v2, :cond_1f

    .line 4
    iget-object v2, v0, Lt/d;->f:[Lt/b;

    array-length v2, v2

    const/4 v5, -0x1

    if-nez v2, :cond_2

    goto :goto_5

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_8

    .line 5
    iget-object v6, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v6}, Lt/b$a;->f()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    .line 6
    iget-object v8, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v8, v7}, Lt/b$a;->h(I)Lt/h;

    move-result-object v8

    .line 7
    iget v9, v8, Lt/h;->c:I

    if-ne v9, v5, :cond_3

    iget-boolean v9, v8, Lt/h;->f:Z

    if-nez v9, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    iget-object v9, v1, Lt/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 9
    :cond_4
    iget-object v6, v1, Lt/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_6

    .line 10
    iget-object v8, v1, Lt/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt/h;

    .line 11
    iget-boolean v9, v8, Lt/h;->f:Z

    if-eqz v9, :cond_5

    .line 12
    invoke-virtual {v1, v0, v8, v3}, Lt/b;->k(Lt/d;Lt/h;Z)V

    goto :goto_4

    .line 13
    :cond_5
    iget-object v9, v0, Lt/d;->f:[Lt/b;

    iget v8, v8, Lt/h;->c:I

    aget-object v8, v9, v8

    invoke-virtual {v1, v0, v8, v3}, Lt/b;->l(Lt/d;Lt/b;Z)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 14
    :cond_6
    iget-object v6, v1, Lt/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    .line 15
    :cond_8
    iget-object v2, v1, Lt/b;->a:Lt/h;

    if-eqz v2, :cond_9

    iget-object v2, v1, Lt/b;->d:Lt/b$a;

    .line 16
    invoke-interface {v2}, Lt/b$a;->f()I

    move-result v2

    if-nez v2, :cond_9

    .line 17
    iput-boolean v3, v1, Lt/b;->e:Z

    .line 18
    iput-boolean v3, v0, Lt/d;->a:Z

    .line 19
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lt/b;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    .line 20
    :cond_a
    iget v2, v1, Lt/b;->b:F

    const/4 v6, 0x0

    cmpg-float v7, v2, v6

    if-gez v7, :cond_b

    const/high16 v7, -0x40800000    # -1.0f

    mul-float v2, v2, v7

    .line 21
    iput v2, v1, Lt/b;->b:F

    .line 22
    iget-object v2, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v2}, Lt/b$a;->k()V

    .line 23
    :cond_b
    iget-object v2, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v2}, Lt/b$a;->f()I

    move-result v2

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_6
    if-ge v8, v2, :cond_12

    .line 24
    iget-object v15, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v15, v8}, Lt/b$a;->a(I)F

    move-result v15

    .line 25
    iget-object v4, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v4, v8}, Lt/b$a;->h(I)Lt/h;

    move-result-object v4

    .line 26
    iget v5, v4, Lt/h;->i:I

    if-ne v5, v3, :cond_e

    if-nez v9, :cond_c

    .line 27
    invoke-virtual {v1, v4}, Lt/b;->h(Lt/h;)Z

    move-result v5

    :goto_7
    move v12, v5

    goto :goto_8

    :cond_c
    cmpl-float v5, v11, v15

    if-lez v5, :cond_d

    .line 28
    invoke-virtual {v1, v4}, Lt/b;->h(Lt/h;)Z

    move-result v5

    goto :goto_7

    :goto_8
    move-object v9, v4

    move v11, v15

    goto :goto_b

    :cond_d
    if-nez v12, :cond_11

    .line 29
    invoke-virtual {v1, v4}, Lt/b;->h(Lt/h;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object v9, v4

    move v11, v15

    const/4 v12, 0x1

    goto :goto_b

    :cond_e
    if-nez v9, :cond_11

    cmpg-float v5, v15, v6

    if-gez v5, :cond_11

    if-nez v10, :cond_f

    .line 30
    invoke-virtual {v1, v4}, Lt/b;->h(Lt/h;)Z

    move-result v5

    :goto_9
    move v14, v5

    goto :goto_a

    :cond_f
    cmpl-float v5, v13, v15

    if-lez v5, :cond_10

    .line 31
    invoke-virtual {v1, v4}, Lt/b;->h(Lt/h;)Z

    move-result v5

    goto :goto_9

    :goto_a
    move-object v10, v4

    move v13, v15

    goto :goto_b

    :cond_10
    if-nez v14, :cond_11

    .line 32
    invoke-virtual {v1, v4}, Lt/b;->h(Lt/h;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object v10, v4

    move v13, v15

    const/4 v14, 0x1

    :cond_11
    :goto_b
    add-int/lit8 v8, v8, 0x1

    const/4 v5, -0x1

    goto :goto_6

    :cond_12
    if-eqz v9, :cond_13

    goto :goto_c

    :cond_13
    move-object v9, v10

    :goto_c
    if-nez v9, :cond_14

    const/4 v2, 0x1

    goto :goto_d

    .line 33
    :cond_14
    invoke-virtual {v1, v9}, Lt/b;->j(Lt/h;)V

    const/4 v2, 0x0

    .line 34
    :goto_d
    iget-object v4, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v4}, Lt/b$a;->f()I

    move-result v4

    if-nez v4, :cond_15

    .line 35
    iput-boolean v3, v1, Lt/b;->e:Z

    :cond_15
    if-eqz v2, :cond_1b

    .line 36
    iget v2, v0, Lt/d;->i:I

    add-int/2addr v2, v3

    iget v4, v0, Lt/d;->e:I

    if-lt v2, v4, :cond_16

    .line 37
    invoke-virtual/range {p0 .. p0}, Lt/d;->p()V

    :cond_16
    const/4 v2, 0x3

    .line 38
    invoke-virtual {v0, v2, v7}, Lt/d;->a(ILjava/lang/String;)Lt/h;

    move-result-object v2

    .line 39
    iget v4, v0, Lt/d;->b:I

    add-int/2addr v4, v3

    iput v4, v0, Lt/d;->b:I

    .line 40
    iget v5, v0, Lt/d;->i:I

    add-int/2addr v5, v3

    iput v5, v0, Lt/d;->i:I

    .line 41
    iput v4, v2, Lt/h;->b:I

    .line 42
    iget-object v5, v0, Lt/d;->l:Lt/c;

    iget-object v5, v5, Lt/c;->d:Ljava/lang/Object;

    check-cast v5, [Lt/h;

    aput-object v2, v5, v4

    .line 43
    iput-object v2, v1, Lt/b;->a:Lt/h;

    .line 44
    iget v4, v0, Lt/d;->j:I

    .line 45
    invoke-virtual/range {p0 .. p1}, Lt/d;->i(Lt/b;)V

    .line 46
    iget v5, v0, Lt/d;->j:I

    add-int/2addr v4, v3

    if-ne v5, v4, :cond_1b

    .line 47
    iget-object v4, v0, Lt/d;->o:Lt/d$a;

    check-cast v4, Lt/b;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-object v7, v4, Lt/b;->a:Lt/h;

    .line 49
    iget-object v5, v4, Lt/b;->d:Lt/b$a;

    invoke-interface {v5}, Lt/b$a;->clear()V

    const/4 v5, 0x0

    .line 50
    :goto_e
    iget-object v8, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v8}, Lt/b$a;->f()I

    move-result v8

    if-ge v5, v8, :cond_17

    .line 51
    iget-object v8, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v8, v5}, Lt/b$a;->h(I)Lt/h;

    move-result-object v8

    .line 52
    iget-object v9, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v9, v5}, Lt/b$a;->a(I)F

    move-result v9

    .line 53
    iget-object v10, v4, Lt/b;->d:Lt/b$a;

    invoke-interface {v10, v8, v9, v3}, Lt/b$a;->j(Lt/h;FZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 54
    :cond_17
    iget-object v4, v0, Lt/d;->o:Lt/d$a;

    invoke-virtual {v0, v4}, Lt/d;->s(Lt/d$a;)I

    .line 55
    iget v4, v2, Lt/h;->c:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1a

    .line 56
    iget-object v4, v1, Lt/b;->a:Lt/h;

    if-ne v4, v2, :cond_18

    .line 57
    invoke-virtual {v1, v7, v2}, Lt/b;->i([ZLt/h;)Lt/h;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 58
    invoke-virtual {v1, v2}, Lt/b;->j(Lt/h;)V

    .line 59
    :cond_18
    iget-boolean v2, v1, Lt/b;->e:Z

    if-nez v2, :cond_19

    .line 60
    iget-object v2, v1, Lt/b;->a:Lt/h;

    invoke-virtual {v2, v0, v1}, Lt/h;->e(Lt/d;Lt/b;)V

    .line 61
    :cond_19
    iget-object v2, v0, Lt/d;->l:Lt/c;

    iget-object v2, v2, Lt/c;->b:Ljava/lang/Object;

    check-cast v2, Lt/e;

    invoke-virtual {v2, v1}, Lt/e;->b(Ljava/lang/Object;)Z

    .line 62
    iget v2, v0, Lt/d;->j:I

    sub-int/2addr v2, v3

    iput v2, v0, Lt/d;->j:I

    :cond_1a
    const/4 v2, 0x1

    goto :goto_f

    :cond_1b
    const/4 v2, 0x0

    .line 63
    :goto_f
    iget-object v4, v1, Lt/b;->a:Lt/h;

    if-eqz v4, :cond_1c

    iget v4, v4, Lt/h;->i:I

    if-eq v4, v3, :cond_1d

    iget v4, v1, Lt/b;->b:F

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v3, 0x0

    :cond_1d
    :goto_10
    if-nez v3, :cond_1e

    return-void

    :cond_1e
    move v4, v2

    goto :goto_11

    :cond_1f
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_20

    .line 64
    invoke-virtual/range {p0 .. p1}, Lt/d;->i(Lt/b;)V

    :cond_20
    return-void
.end method

.method public d(Lt/h;Lt/h;II)Lt/b;
    .locals 4

    const/16 v0, 0x8

    if-ne p4, v0, :cond_0

    .line 1
    iget-boolean v1, p2, Lt/h;->f:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lt/h;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2
    iget p2, p2, Lt/h;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Lt/h;->d(Lt/d;F)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lt/d;->m()Lt/b;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-gez p3, :cond_1

    mul-int/lit8 p3, p3, -0x1

    const/4 v2, 0x1

    :cond_1
    int-to-float p3, p3

    .line 4
    iput p3, v1, Lt/b;->b:F

    :cond_2
    const/high16 p3, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_3

    .line 5
    iget-object v2, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v2, p1, p3}, Lt/b$a;->d(Lt/h;F)V

    .line 6
    iget-object p1, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p2, v3}, Lt/b$a;->d(Lt/h;F)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v2, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {v2, p1, v3}, Lt/b$a;->d(Lt/h;F)V

    .line 8
    iget-object p1, v1, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, p2, p3}, Lt/b$a;->d(Lt/h;F)V

    :goto_0
    if-eq p4, v0, :cond_4

    .line 9
    invoke-virtual {v1, p0, p4}, Lt/b;->c(Lt/d;I)Lt/b;

    .line 10
    :cond_4
    invoke-virtual {p0, v1}, Lt/d;->c(Lt/b;)V

    return-object v1
.end method

.method public e(Lt/h;I)V
    .locals 4

    .line 1
    iget v0, p1, Lt/h;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    int-to-float p2, p2

    .line 2
    invoke-virtual {p1, p0, p2}, Lt/h;->d(Lt/d;F)V

    const/4 p1, 0x0

    .line 3
    :goto_0
    iget p2, p0, Lt/d;->b:I

    add-int/2addr p2, v2

    if-ge p1, p2, :cond_0

    .line 4
    iget-object p2, p0, Lt/d;->l:Lt/c;

    iget-object p2, p2, Lt/c;->d:Ljava/lang/Object;

    check-cast p2, [Lt/h;

    aget-object p2, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    if-eq v0, v1, :cond_5

    .line 5
    iget-object v3, p0, Lt/d;->f:[Lt/b;

    aget-object v0, v3, v0

    .line 6
    iget-boolean v3, v0, Lt/b;->e:Z

    if-eqz v3, :cond_2

    int-to-float p1, p2

    .line 7
    iput p1, v0, Lt/b;->b:F

    goto :goto_2

    .line 8
    :cond_2
    iget-object v3, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {v3}, Lt/b$a;->f()I

    move-result v3

    if-nez v3, :cond_3

    .line 9
    iput-boolean v2, v0, Lt/b;->e:Z

    int-to-float p1, p2

    .line 10
    iput p1, v0, Lt/b;->b:F

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {p0}, Lt/d;->m()Lt/b;

    move-result-object v0

    if-gez p2, :cond_4

    mul-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    .line 12
    iput p2, v0, Lt/b;->b:F

    .line 13
    iget-object p2, v0, Lt/b;->d:Lt/b$a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p2, p1, v1}, Lt/b$a;->d(Lt/h;F)V

    goto :goto_1

    :cond_4
    int-to-float p2, p2

    .line 14
    iput p2, v0, Lt/b;->b:F

    .line 15
    iget-object p2, v0, Lt/b;->d:Lt/b$a;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-interface {p2, p1, v1}, Lt/b$a;->d(Lt/h;F)V

    .line 16
    :goto_1
    invoke-virtual {p0, v0}, Lt/d;->c(Lt/b;)V

    goto :goto_2

    .line 17
    :cond_5
    invoke-virtual {p0}, Lt/d;->m()Lt/b;

    move-result-object v0

    .line 18
    iput-object p1, v0, Lt/b;->a:Lt/h;

    int-to-float p2, p2

    .line 19
    iput p2, p1, Lt/h;->e:F

    .line 20
    iput p2, v0, Lt/b;->b:F

    .line 21
    iput-boolean v2, v0, Lt/b;->e:Z

    .line 22
    invoke-virtual {p0, v0}, Lt/d;->c(Lt/b;)V

    :goto_2
    return-void
.end method

.method public f(Lt/h;Lt/h;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lt/d;->m()Lt/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lt/d;->n()Lt/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lt/h;->d:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lt/b;->e(Lt/h;Lt/h;Lt/h;I)Lt/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 5
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, v1}, Lt/b$a;->e(Lt/h;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p4, p2}, Lt/d;->k(ILjava/lang/String;)Lt/h;

    move-result-object p2

    .line 7
    iget-object p3, v0, Lt/b;->d:Lt/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Lt/b$a;->d(Lt/h;F)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lt/d;->c(Lt/b;)V

    return-void
.end method

.method public g(Lt/h;Lt/h;II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lt/d;->m()Lt/b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lt/d;->n()Lt/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    iput v2, v1, Lt/h;->d:I

    .line 4
    invoke-virtual {v0, p1, p2, v1, p3}, Lt/b;->f(Lt/h;Lt/h;Lt/h;I)Lt/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 5
    iget-object p1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {p1, v1}, Lt/b$a;->e(Lt/h;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p4, p2}, Lt/d;->k(ILjava/lang/String;)Lt/h;

    move-result-object p2

    .line 7
    iget-object p3, v0, Lt/b;->d:Lt/b$a;

    int-to-float p1, p1

    invoke-interface {p3, p2, p1}, Lt/b$a;->d(Lt/h;F)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lt/d;->c(Lt/b;)V

    return-void
.end method

.method public h(Lt/h;Lt/h;Lt/h;Lt/h;FI)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lt/d;->m()Lt/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 2
    invoke-virtual/range {v0 .. v5}, Lt/b;->d(Lt/h;Lt/h;Lt/h;Lt/h;F)Lt/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    .line 3
    invoke-virtual {v6, p0, p6}, Lt/b;->c(Lt/d;I)Lt/b;

    .line 4
    :cond_0
    invoke-virtual {p0, v6}, Lt/d;->c(Lt/b;)V

    return-void
.end method

.method public final i(Lt/b;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lt/b;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p1, Lt/b;->a:Lt/h;

    iget p1, p1, Lt/b;->b:F

    invoke-virtual {v0, p0, p1}, Lt/h;->d(Lt/d;F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lt/d;->f:[Lt/b;

    iget v1, p0, Lt/d;->j:I

    aput-object p1, v0, v1

    .line 4
    iget-object v0, p1, Lt/b;->a:Lt/h;

    iput v1, v0, Lt/h;->c:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Lt/d;->j:I

    .line 6
    invoke-virtual {v0, p0, p1}, Lt/h;->e(Lt/d;Lt/b;)V

    .line 7
    :goto_0
    iget-boolean p1, p0, Lt/d;->a:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 8
    :goto_1
    iget v1, p0, Lt/d;->j:I

    if-ge v0, v1, :cond_6

    .line 9
    iget-object v1, p0, Lt/d;->f:[Lt/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 10
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    :cond_1
    iget-object v1, p0, Lt/d;->f:[Lt/b;

    aget-object v2, v1, v0

    if-eqz v2, :cond_5

    aget-object v2, v1, v0

    iget-boolean v2, v2, Lt/b;->e:Z

    if-eqz v2, :cond_5

    .line 12
    aget-object v1, v1, v0

    .line 13
    iget-object v2, v1, Lt/b;->a:Lt/h;

    iget v3, v1, Lt/b;->b:F

    invoke-virtual {v2, p0, v3}, Lt/h;->d(Lt/d;F)V

    .line 14
    iget-object v2, p0, Lt/d;->l:Lt/c;

    iget-object v2, v2, Lt/c;->b:Ljava/lang/Object;

    check-cast v2, Lt/e;

    invoke-virtual {v2, v1}, Lt/e;->b(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lt/d;->f:[Lt/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 16
    :goto_2
    iget v4, p0, Lt/d;->j:I

    if-ge v1, v4, :cond_3

    .line 17
    iget-object v3, p0, Lt/d;->f:[Lt/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    .line 18
    aget-object v5, v3, v4

    iget-object v5, v5, Lt/b;->a:Lt/h;

    iget v5, v5, Lt/h;->c:I

    if-ne v5, v1, :cond_2

    .line 19
    aget-object v3, v3, v4

    iget-object v3, v3, Lt/b;->a:Lt/h;

    iput v4, v3, Lt/h;->c:I

    :cond_2
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    if-ge v3, v4, :cond_4

    .line 20
    iget-object v1, p0, Lt/d;->f:[Lt/b;

    aput-object v2, v1, v3

    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 21
    iput v4, p0, Lt/d;->j:I

    add-int/lit8 v0, v0, -0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_6
    iput-boolean p1, p0, Lt/d;->a:Z

    :cond_7
    return-void
.end method

.method public final j()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lt/d;->j:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lt/d;->f:[Lt/b;

    aget-object v1, v1, v0

    .line 3
    iget-object v2, v1, Lt/b;->a:Lt/h;

    iget v1, v1, Lt/b;->b:F

    iput v1, v2, Lt/h;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k(ILjava/lang/String;)Lt/h;
    .locals 2

    .line 1
    iget v0, p0, Lt/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lt/d;->e:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lt/d;->p()V

    :cond_0
    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0, p2}, Lt/d;->a(ILjava/lang/String;)Lt/h;

    move-result-object p2

    .line 4
    iget v0, p0, Lt/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/d;->b:I

    .line 5
    iget v1, p0, Lt/d;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt/d;->i:I

    .line 6
    iput v0, p2, Lt/h;->b:I

    .line 7
    iput p1, p2, Lt/h;->d:I

    .line 8
    iget-object p1, p0, Lt/d;->l:Lt/c;

    iget-object p1, p1, Lt/c;->d:Ljava/lang/Object;

    check-cast p1, [Lt/h;

    aput-object p2, p1, v0

    .line 9
    iget-object p1, p0, Lt/d;->c:Lt/d$a;

    invoke-interface {p1, p2}, Lt/d$a;->b(Lt/h;)V

    return-object p2
.end method

.method public l(Ljava/lang/Object;)Lt/h;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget v1, p0, Lt/d;->i:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget v3, p0, Lt/d;->e:I

    if-lt v1, v3, :cond_1

    .line 2
    invoke-virtual {p0}, Lt/d;->p()V

    .line 3
    :cond_1
    instance-of v1, p1, Lv/c;

    if-eqz v1, :cond_5

    .line 4
    check-cast p1, Lv/c;

    .line 5
    iget-object v0, p1, Lv/c;->i:Lt/h;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lv/c;->i()V

    .line 7
    iget-object p1, p1, Lv/c;->i:Lt/h;

    move-object v0, p1

    .line 8
    :cond_2
    iget p1, v0, Lt/h;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget v3, p0, Lt/d;->b:I

    if-gt p1, v3, :cond_3

    iget-object v3, p0, Lt/d;->l:Lt/c;

    iget-object v3, v3, Lt/c;->d:Ljava/lang/Object;

    check-cast v3, [Lt/h;

    aget-object v3, v3, p1

    if-nez v3, :cond_5

    :cond_3
    if-eq p1, v1, :cond_4

    .line 9
    invoke-virtual {v0}, Lt/h;->c()V

    .line 10
    :cond_4
    iget p1, p0, Lt/d;->b:I

    add-int/2addr p1, v2

    iput p1, p0, Lt/d;->b:I

    .line 11
    iget v1, p0, Lt/d;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lt/d;->i:I

    .line 12
    iput p1, v0, Lt/h;->b:I

    .line 13
    iput v2, v0, Lt/h;->i:I

    .line 14
    iget-object v1, p0, Lt/d;->l:Lt/c;

    iget-object v1, v1, Lt/c;->d:Ljava/lang/Object;

    check-cast v1, [Lt/h;

    aput-object v0, v1, p1

    :cond_5
    return-object v0
.end method

.method public m()Lt/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lt/d;->l:Lt/c;

    iget-object v0, v0, Lt/c;->b:Ljava/lang/Object;

    check-cast v0, Lt/e;

    invoke-virtual {v0}, Lt/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lt/b;

    iget-object v1, p0, Lt/d;->l:Lt/c;

    invoke-direct {v0, v1}, Lt/b;-><init>(Lt/c;)V

    .line 3
    sget-wide v1, Lt/d;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lt/d;->r:J

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lt/b;->a:Lt/h;

    .line 5
    iget-object v1, v0, Lt/b;->d:Lt/b$a;

    invoke-interface {v1}, Lt/b$a;->clear()V

    const/4 v1, 0x0

    .line 6
    iput v1, v0, Lt/b;->b:F

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lt/b;->e:Z

    .line 8
    :goto_0
    sget v1, Lt/h;->m:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lt/h;->m:I

    return-object v0
.end method

.method public n()Lt/h;
    .locals 3

    .line 1
    iget v0, p0, Lt/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lt/d;->e:I

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lt/d;->p()V

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lt/d;->a(ILjava/lang/String;)Lt/h;

    move-result-object v0

    .line 4
    iget v1, p0, Lt/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lt/d;->b:I

    .line 5
    iget v2, p0, Lt/d;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lt/d;->i:I

    .line 6
    iput v1, v0, Lt/h;->b:I

    .line 7
    iget-object v2, p0, Lt/d;->l:Lt/c;

    iget-object v2, v2, Lt/c;->d:Ljava/lang/Object;

    check-cast v2, [Lt/h;

    aput-object v0, v2, v1

    return-object v0
.end method

.method public o(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lv/c;

    .line 2
    iget-object p1, p1, Lv/c;->i:Lt/h;

    if-eqz p1, :cond_0

    .line 3
    iget p1, p1, Lt/h;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final p()V
    .locals 3

    .line 1
    iget v0, p0, Lt/d;->d:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lt/d;->d:I

    .line 2
    iget-object v1, p0, Lt/d;->f:[Lt/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lt/b;

    iput-object v0, p0, Lt/d;->f:[Lt/b;

    .line 3
    iget-object v0, p0, Lt/d;->l:Lt/c;

    iget-object v1, v0, Lt/c;->d:Ljava/lang/Object;

    check-cast v1, [Lt/h;

    iget v2, p0, Lt/d;->d:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lt/h;

    iput-object v1, v0, Lt/c;->d:Ljava/lang/Object;

    .line 4
    iget v0, p0, Lt/d;->d:I

    new-array v1, v0, [Z

    iput-object v1, p0, Lt/d;->h:[Z

    .line 5
    iput v0, p0, Lt/d;->e:I

    .line 6
    iput v0, p0, Lt/d;->k:I

    return-void
.end method

.method public q()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt/d;->c:Lt/d$a;

    invoke-interface {v0}, Lt/d$a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lt/d;->j()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lt/d;->g:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Lt/d;->j:I

    if-ge v1, v2, :cond_2

    .line 5
    iget-object v2, p0, Lt/d;->f:[Lt/b;

    aget-object v2, v2, v1

    .line 6
    iget-boolean v2, v2, Lt/b;->e:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lt/d;->c:Lt/d$a;

    invoke-virtual {p0, v0}, Lt/d;->r(Lt/d$a;)V

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {p0}, Lt/d;->j()V

    goto :goto_2

    .line 9
    :cond_4
    iget-object v0, p0, Lt/d;->c:Lt/d$a;

    invoke-virtual {p0, v0}, Lt/d;->r(Lt/d$a;)V

    :goto_2
    return-void
.end method

.method public r(Lt/d$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget v3, v0, Lt/d;->j:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_2

    .line 2
    iget-object v3, v0, Lt/d;->f:[Lt/b;

    aget-object v6, v3, v2

    iget-object v6, v6, Lt/b;->a:Lt/h;

    .line 3
    iget v6, v6, Lt/h;->i:I

    if-ne v6, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    aget-object v3, v3, v2

    iget v3, v3, Lt/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_e

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    if-nez v2, :cond_e

    add-int/2addr v3, v5

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 5
    :goto_4
    iget v12, v0, Lt/d;->j:I

    if-ge v8, v12, :cond_b

    .line 6
    iget-object v12, v0, Lt/d;->f:[Lt/b;

    aget-object v12, v12, v8

    .line 7
    iget-object v13, v12, Lt/b;->a:Lt/h;

    .line 8
    iget v13, v13, Lt/h;->i:I

    if-ne v13, v5, :cond_3

    goto :goto_8

    .line 9
    :cond_3
    iget-boolean v13, v12, Lt/b;->e:Z

    if-eqz v13, :cond_4

    goto :goto_8

    .line 10
    :cond_4
    iget v13, v12, Lt/b;->b:F

    cmpg-float v13, v13, v4

    if-gez v13, :cond_a

    .line 11
    iget-object v13, v12, Lt/b;->d:Lt/b$a;

    invoke-interface {v13}, Lt/b$a;->f()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_a

    .line 12
    iget-object v15, v12, Lt/b;->d:Lt/b$a;

    invoke-interface {v15, v14}, Lt/b$a;->h(I)Lt/h;

    move-result-object v15

    .line 13
    iget-object v1, v12, Lt/b;->d:Lt/b$a;

    invoke-interface {v1, v15}, Lt/b$a;->e(Lt/h;)F

    move-result v1

    cmpg-float v16, v1, v4

    if-gtz v16, :cond_5

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :goto_6
    const/16 v5, 0x9

    if-ge v4, v5, :cond_9

    .line 14
    iget-object v5, v15, Lt/h;->g:[F

    aget v5, v5, v4

    div-float/2addr v5, v1

    cmpg-float v17, v5, v6

    if-gez v17, :cond_6

    if-eq v4, v11, :cond_7

    :cond_6
    if-le v4, v11, :cond_8

    .line 15
    :cond_7
    iget v10, v15, Lt/h;->b:I

    move v11, v4

    move v6, v5

    move v9, v8

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_4

    :cond_b
    if-eq v9, v7, :cond_c

    .line 16
    iget-object v1, v0, Lt/d;->f:[Lt/b;

    aget-object v1, v1, v9

    .line 17
    iget-object v4, v1, Lt/b;->a:Lt/h;

    iput v7, v4, Lt/h;->c:I

    .line 18
    iget-object v4, v0, Lt/d;->l:Lt/c;

    iget-object v4, v4, Lt/c;->d:Ljava/lang/Object;

    check-cast v4, [Lt/h;

    aget-object v4, v4, v10

    invoke-virtual {v1, v4}, Lt/b;->j(Lt/h;)V

    .line 19
    iget-object v4, v1, Lt/b;->a:Lt/h;

    iput v9, v4, Lt/h;->c:I

    .line 20
    invoke-virtual {v4, v0, v1}, Lt/h;->e(Lt/d;Lt/b;)V

    goto :goto_9

    :cond_c
    const/4 v2, 0x1

    .line 21
    :goto_9
    iget v1, v0, Lt/d;->i:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_d

    const/4 v2, 0x1

    :cond_d
    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_3

    .line 22
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lt/d;->s(Lt/d$a;)I

    .line 23
    invoke-virtual/range {p0 .. p0}, Lt/d;->j()V

    return-void
.end method

.method public final s(Lt/d$a;)I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lt/d;->i:I

    if-ge v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lt/d;->h:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-nez v2, :cond_b

    add-int/lit8 v3, v3, 0x1

    .line 3
    iget v4, p0, Lt/d;->i:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    return v3

    .line 4
    :cond_2
    move-object v4, p1

    check-cast v4, Lt/b;

    .line 5
    iget-object v4, v4, Lt/b;->a:Lt/h;

    if-eqz v4, :cond_3

    .line 6
    iget-object v5, p0, Lt/d;->h:[Z

    iget v4, v4, Lt/h;->b:I

    aput-boolean v1, v5, v4

    .line 7
    :cond_3
    iget-object v4, p0, Lt/d;->h:[Z

    invoke-interface {p1, p0, v4}, Lt/d$a;->a(Lt/d;[Z)Lt/h;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 8
    iget-object v5, p0, Lt/d;->h:[Z

    iget v6, v4, Lt/h;->b:I

    aget-boolean v7, v5, v6

    if-eqz v7, :cond_4

    return v3

    .line 9
    :cond_4
    aput-boolean v1, v5, v6

    :cond_5
    if-eqz v4, :cond_a

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 10
    :goto_2
    iget v9, p0, Lt/d;->j:I

    if-ge v7, v9, :cond_9

    .line 11
    iget-object v9, p0, Lt/d;->f:[Lt/b;

    aget-object v9, v9, v7

    .line 12
    iget-object v10, v9, Lt/b;->a:Lt/h;

    .line 13
    iget v10, v10, Lt/h;->i:I

    if-ne v10, v1, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    iget-boolean v10, v9, Lt/b;->e:Z

    if-eqz v10, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    iget-object v10, v9, Lt/b;->d:Lt/b$a;

    invoke-interface {v10, v4}, Lt/b$a;->g(Lt/h;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 16
    iget-object v10, v9, Lt/b;->d:Lt/b$a;

    invoke-interface {v10, v4}, Lt/b$a;->e(Lt/h;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8

    .line 17
    iget v9, v9, Lt/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_8

    move v8, v7

    move v5, v9

    :cond_8
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    if-le v8, v6, :cond_1

    .line 18
    iget-object v5, p0, Lt/d;->f:[Lt/b;

    aget-object v5, v5, v8

    .line 19
    iget-object v7, v5, Lt/b;->a:Lt/h;

    iput v6, v7, Lt/h;->c:I

    .line 20
    invoke-virtual {v5, v4}, Lt/b;->j(Lt/h;)V

    .line 21
    iget-object v4, v5, Lt/b;->a:Lt/h;

    iput v8, v4, Lt/h;->c:I

    .line 22
    invoke-virtual {v4, p0, v5}, Lt/h;->e(Lt/d;Lt/b;)V

    goto :goto_1

    :cond_a
    const/4 v2, 0x1

    goto :goto_1

    :cond_b
    return v3
.end method

.method public final t()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lt/d;->j:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lt/d;->f:[Lt/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lt/d;->l:Lt/c;

    iget-object v2, v2, Lt/c;->b:Ljava/lang/Object;

    check-cast v2, Lt/e;

    invoke-virtual {v2, v1}, Lt/e;->b(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lt/d;->f:[Lt/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public u()V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lt/d;->l:Lt/c;

    iget-object v3, v2, Lt/c;->d:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Lt/h;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 2
    check-cast v3, [Lt/h;

    aget-object v2, v3, v1

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lt/h;->c()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, v2, Lt/c;->c:Ljava/lang/Object;

    check-cast v1, Lt/e;

    iget-object v2, p0, Lt/d;->m:[Lt/h;

    iget v3, p0, Lt/d;->n:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    array-length v4, v2

    if-le v3, v4, :cond_2

    .line 6
    array-length v3, v2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    .line 7
    aget-object v5, v2, v4

    .line 8
    iget v6, v1, Lt/e;->b:I

    iget-object v7, v1, Lt/e;->a:[Ljava/lang/Object;

    array-length v8, v7

    if-ge v6, v8, :cond_3

    .line 9
    aput-object v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    .line 10
    iput v6, v1, Lt/e;->b:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_4
    iput v0, p0, Lt/d;->n:I

    .line 12
    iget-object v1, p0, Lt/d;->l:Lt/c;

    iget-object v1, v1, Lt/c;->d:Ljava/lang/Object;

    check-cast v1, [Lt/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    iput v0, p0, Lt/d;->b:I

    .line 14
    iget-object v1, p0, Lt/d;->c:Lt/d$a;

    invoke-interface {v1}, Lt/d$a;->clear()V

    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lt/d;->i:I

    const/4 v1, 0x0

    .line 16
    :goto_2
    iget v2, p0, Lt/d;->j:I

    if-ge v1, v2, :cond_6

    .line 17
    iget-object v2, p0, Lt/d;->f:[Lt/b;

    aget-object v3, v2, v1

    if-eqz v3, :cond_5

    .line 18
    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {p0}, Lt/d;->t()V

    .line 20
    iput v0, p0, Lt/d;->j:I

    .line 21
    new-instance v0, Lt/b;

    iget-object v1, p0, Lt/d;->l:Lt/c;

    invoke-direct {v0, v1}, Lt/b;-><init>(Lt/c;)V

    iput-object v0, p0, Lt/d;->o:Lt/d$a;

    return-void
.end method
