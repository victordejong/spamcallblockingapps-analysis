.class public Lcom/facebook/rebound/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/rebound/e;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/rebound/e;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/rebound/j;

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/j;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/b;->a:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/b;->b:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/facebook/rebound/b;->e:Z

    if-eqz p1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/j;

    .line 46
    invoke-virtual {p1, p0}, Lcom/facebook/rebound/j;->a(Lcom/facebook/rebound/b;)V

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "springLooper is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(D)V
    .locals 31

    move-object/from16 v0, p0

    .line 126
    iget-object v1, v0, Lcom/facebook/rebound/b;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/rebound/e;

    .line 3456
    invoke-virtual {v2}, Lcom/facebook/rebound/e;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3465
    iget-boolean v3, v2, Lcom/facebook/rebound/e;->i:Z

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_13

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v6, p1, v6

    .line 4294
    invoke-virtual {v2}, Lcom/facebook/rebound/e;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4296
    iget-boolean v8, v2, Lcom/facebook/rebound/e;->i:Z

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v16, v1

    goto/16 :goto_a

    :cond_3
    :goto_3
    const-wide v8, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v10, v6, v8

    if-lez v10, :cond_4

    move-wide v6, v8

    .line 4315
    :cond_4
    iget-wide v8, v2, Lcom/facebook/rebound/e;->k:D

    add-double/2addr v8, v6

    iput-wide v8, v2, Lcom/facebook/rebound/e;->k:D

    .line 4317
    iget-object v6, v2, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    iget-wide v6, v6, Lcom/facebook/rebound/g;->b:D

    .line 4318
    iget-object v8, v2, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    iget-wide v8, v8, Lcom/facebook/rebound/g;->a:D

    .line 4320
    iget-object v10, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v10, v10, Lcom/facebook/rebound/e$a;->a:D

    .line 4321
    iget-object v12, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v12, v12, Lcom/facebook/rebound/e$a;->b:D

    .line 4322
    iget-object v14, v2, Lcom/facebook/rebound/e;->f:Lcom/facebook/rebound/e$a;

    iget-wide v14, v14, Lcom/facebook/rebound/e$a;->a:D

    .line 4323
    iget-object v5, v2, Lcom/facebook/rebound/e;->f:Lcom/facebook/rebound/e$a;

    iget-wide v4, v5, Lcom/facebook/rebound/e$a;->b:D

    move-object/from16 v16, v1

    .line 4333
    :goto_4
    iget-wide v0, v2, Lcom/facebook/rebound/e;->k:D

    const-wide v17, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v19, v0, v17

    if-ltz v19, :cond_6

    .line 4337
    iget-wide v0, v2, Lcom/facebook/rebound/e;->k:D

    sub-double v0, v0, v17

    iput-wide v0, v2, Lcom/facebook/rebound/e;->k:D

    .line 4339
    iget-wide v0, v2, Lcom/facebook/rebound/e;->k:D

    cmpg-double v4, v0, v17

    if-gez v4, :cond_5

    .line 4342
    iget-object v0, v2, Lcom/facebook/rebound/e;->e:Lcom/facebook/rebound/e$a;

    iput-wide v10, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 4343
    iget-object v0, v2, Lcom/facebook/rebound/e;->e:Lcom/facebook/rebound/e$a;

    iput-wide v12, v0, Lcom/facebook/rebound/e$a;->b:D

    .line 4355
    :cond_5
    iget-wide v0, v2, Lcom/facebook/rebound/e;->h:D

    sub-double/2addr v0, v14

    mul-double v0, v0, v6

    mul-double v4, v8, v12

    sub-double/2addr v0, v4

    mul-double v4, v12, v17

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v14

    add-double/2addr v4, v10

    mul-double v19, v0, v17

    mul-double v19, v19, v14

    add-double v19, v12, v19

    .line 4362
    iget-wide v14, v2, Lcom/facebook/rebound/e;->h:D

    sub-double/2addr v14, v4

    mul-double v14, v14, v6

    mul-double v4, v8, v19

    sub-double/2addr v14, v4

    mul-double v4, v19, v17

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v21

    add-double/2addr v4, v10

    mul-double v23, v14, v17

    mul-double v23, v23, v21

    add-double v23, v12, v23

    move-wide/from16 v21, v0

    .line 4367
    iget-wide v0, v2, Lcom/facebook/rebound/e;->h:D

    sub-double/2addr v0, v4

    mul-double v0, v0, v6

    mul-double v4, v8, v23

    sub-double/2addr v0, v4

    mul-double v4, v23, v17

    add-double/2addr v4, v10

    mul-double v25, v0, v17

    add-double v25, v12, v25

    move-wide/from16 v27, v10

    .line 4372
    iget-wide v10, v2, Lcom/facebook/rebound/e;->h:D

    sub-double/2addr v10, v4

    mul-double v10, v10, v6

    mul-double v29, v8, v25

    sub-double v10, v10, v29

    add-double v19, v19, v23

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v19, v19, v23

    add-double v19, v12, v19

    add-double v19, v19, v25

    const-wide v29, 0x3fc5555555555555L    # 0.16666666666666666

    mul-double v19, v19, v29

    add-double/2addr v14, v0

    mul-double v14, v14, v23

    add-double v0, v21, v14

    add-double/2addr v0, v10

    mul-double v0, v0, v29

    mul-double v19, v19, v17

    add-double v10, v27, v19

    mul-double v0, v0, v17

    add-double/2addr v12, v0

    move-wide v14, v4

    move-wide/from16 v4, v25

    goto/16 :goto_4

    :cond_6
    move-wide/from16 v27, v10

    .line 4382
    iget-object v0, v2, Lcom/facebook/rebound/e;->f:Lcom/facebook/rebound/e$a;

    iput-wide v14, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 4383
    iget-object v0, v2, Lcom/facebook/rebound/e;->f:Lcom/facebook/rebound/e$a;

    iput-wide v4, v0, Lcom/facebook/rebound/e$a;->b:D

    .line 4385
    iget-object v0, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iput-wide v10, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 4386
    iget-object v0, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iput-wide v12, v0, Lcom/facebook/rebound/e$a;->b:D

    .line 4388
    iget-wide v0, v2, Lcom/facebook/rebound/e;->k:D

    const-wide/16 v4, 0x0

    cmpl-double v8, v0, v4

    if-lez v8, :cond_7

    .line 4389
    iget-wide v0, v2, Lcom/facebook/rebound/e;->k:D

    div-double v0, v0, v17

    .line 4495
    iget-object v8, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-object v9, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v9, v9, Lcom/facebook/rebound/e$a;->a:D

    mul-double v9, v9, v0

    iget-object v11, v2, Lcom/facebook/rebound/e;->e:Lcom/facebook/rebound/e$a;

    iget-wide v11, v11, Lcom/facebook/rebound/e$a;->a:D

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v13, v0

    mul-double v11, v11, v13

    add-double/2addr v9, v11

    iput-wide v9, v8, Lcom/facebook/rebound/e$a;->a:D

    .line 4496
    iget-object v8, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-object v9, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v9, v9, Lcom/facebook/rebound/e$a;->b:D

    mul-double v9, v9, v0

    iget-object v0, v2, Lcom/facebook/rebound/e;->e:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->b:D

    mul-double v0, v0, v13

    add-double/2addr v9, v0

    iput-wide v9, v8, Lcom/facebook/rebound/e$a;->b:D

    .line 4395
    :cond_7
    invoke-virtual {v2}, Lcom/facebook/rebound/e;->b()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, v2, Lcom/facebook/rebound/e;->b:Z

    if-eqz v0, :cond_d

    .line 5279
    iget-object v0, v2, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    iget-wide v0, v0, Lcom/facebook/rebound/g;->b:D

    cmpl-double v8, v0, v4

    if-lez v8, :cond_a

    iget-wide v0, v2, Lcom/facebook/rebound/e;->g:D

    iget-wide v8, v2, Lcom/facebook/rebound/e;->h:D

    cmpg-double v10, v0, v8

    if-gez v10, :cond_8

    .line 6153
    iget-object v0, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 5279
    iget-wide v8, v2, Lcom/facebook/rebound/e;->h:D

    cmpl-double v10, v0, v8

    if-gtz v10, :cond_9

    :cond_8
    iget-wide v0, v2, Lcom/facebook/rebound/e;->g:D

    iget-wide v8, v2, Lcom/facebook/rebound/e;->h:D

    cmpl-double v10, v0, v8

    if-lez v10, :cond_a

    .line 7153
    iget-object v0, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 5279
    iget-wide v8, v2, Lcom/facebook/rebound/e;->h:D

    cmpg-double v10, v0, v8

    if-gez v10, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_d

    :cond_b
    cmpl-double v0, v6, v4

    if-lez v0, :cond_c

    .line 4398
    iget-wide v0, v2, Lcom/facebook/rebound/e;->h:D

    iput-wide v0, v2, Lcom/facebook/rebound/e;->g:D

    .line 4399
    iget-object v0, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v6, v2, Lcom/facebook/rebound/e;->h:D

    iput-wide v6, v0, Lcom/facebook/rebound/e$a;->a:D

    goto :goto_6

    .line 4401
    :cond_c
    iget-object v0, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    iput-wide v0, v2, Lcom/facebook/rebound/e;->h:D

    .line 4402
    iget-wide v0, v2, Lcom/facebook/rebound/e;->h:D

    iput-wide v0, v2, Lcom/facebook/rebound/e;->g:D

    .line 4404
    :goto_6
    invoke-virtual {v2, v4, v5}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    const/4 v3, 0x1

    .line 4425
    :cond_d
    iget-boolean v0, v2, Lcom/facebook/rebound/e;->i:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 4426
    iput-boolean v0, v2, Lcom/facebook/rebound/e;->i:Z

    const/4 v1, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_7
    if-eqz v3, :cond_f

    const/4 v3, 0x1

    .line 4431
    iput-boolean v3, v2, Lcom/facebook/rebound/e;->i:Z

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    .line 4434
    :goto_8
    iget-object v0, v2, Lcom/facebook/rebound/e;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/rebound/i;

    if-eqz v1, :cond_11

    .line 4437
    invoke-interface {v3, v2}, Lcom/facebook/rebound/i;->c(Lcom/facebook/rebound/e;)V

    .line 4441
    :cond_11
    invoke-interface {v3, v2}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/e;)V

    if-eqz v4, :cond_10

    .line 4445
    invoke-interface {v3, v2}, Lcom/facebook/rebound/i;->b(Lcom/facebook/rebound/e;)V

    goto :goto_9

    :cond_12
    :goto_a
    move-object/from16 v0, p0

    goto :goto_b

    :cond_13
    move-object/from16 v16, v1

    .line 131
    iget-object v1, v0, Lcom/facebook/rebound/b;->b:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_b
    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_14
    return-void
.end method

.method private b(Lcom/facebook/rebound/e;)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/facebook/rebound/b;->a:Ljava/util/Map;

    .line 1080
    iget-object v1, p1, Lcom/facebook/rebound/e;->c:Ljava/lang/String;

    .line 102
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/facebook/rebound/b;->a:Ljava/util/Map;

    .line 2080
    iget-object v1, p1, Lcom/facebook/rebound/e;->c:Ljava/lang/String;

    .line 104
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "spring is already registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lcom/facebook/rebound/e;
    .locals 1

    .line 62
    new-instance v0, Lcom/facebook/rebound/e;

    invoke-direct {v0, p0}, Lcom/facebook/rebound/e;-><init>(Lcom/facebook/rebound/b;)V

    .line 63
    invoke-direct {p0, v0}, Lcom/facebook/rebound/b;->b(Lcom/facebook/rebound/e;)V

    return-object v0
.end method

.method public final a(D)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/facebook/rebound/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/rebound/b;->b(D)V

    .line 144
    iget-object p1, p0, Lcom/facebook/rebound/b;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/facebook/rebound/b;->e:Z

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/facebook/rebound/b;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 150
    :cond_2
    iget-boolean p1, p0, Lcom/facebook/rebound/b;->e:Z

    if-eqz p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/j;

    invoke-virtual {p1}, Lcom/facebook/rebound/j;->b()V

    :cond_3
    return-void
.end method

.method final a(Lcom/facebook/rebound/e;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/facebook/rebound/b;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/facebook/rebound/b;->a:Ljava/util/Map;

    .line 3080
    iget-object p1, p1, Lcom/facebook/rebound/e;->c:Ljava/lang/String;

    .line 118
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/facebook/rebound/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rebound/e;

    if-eqz v0, :cond_1

    .line 166
    iget-object p1, p0, Lcom/facebook/rebound/b;->b:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8054
    iget-boolean p1, p0, Lcom/facebook/rebound/b;->e:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/facebook/rebound/b;->e:Z

    .line 169
    iget-object p1, p0, Lcom/facebook/rebound/b;->c:Lcom/facebook/rebound/j;

    invoke-virtual {p1}, Lcom/facebook/rebound/j;->a()V

    :cond_0
    return-void

    .line 164
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "springId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not reference a registered spring"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/rebound/e;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/facebook/rebound/b;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 86
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 87
    check-cast v0, Ljava/util/List;

    goto :goto_0

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 91
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
