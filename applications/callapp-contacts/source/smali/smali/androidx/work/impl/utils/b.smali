.class public final Landroidx/work/impl/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public final a:Landroidx/work/impl/c;

.field private final c:Landroidx/work/impl/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    .line 72
    invoke-static {v0}, Landroidx/work/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/g;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/g;

    .line 79
    new-instance p1, Landroidx/work/impl/c;

    invoke-direct {p1}, Landroidx/work/impl/c;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/b;->a:Landroidx/work/impl/c;

    return-void
.end method

.method private static a(Landroidx/work/impl/model/WorkSpec;)V
    .locals 4

    .line 356
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/b;

    .line 15155
    iget-boolean v1, v0, Landroidx/work/b;->e:Z

    if-nez v1, :cond_0

    .line 15171
    iget-boolean v0, v0, Landroidx/work/b;->f:Z

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 359
    new-instance v1, Landroidx/work/d$a;

    invoke-direct {v1}, Landroidx/work/d$a;-><init>()V

    .line 361
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    invoke-virtual {v1, v2}, Landroidx/work/d$a;->a(Landroidx/work/d;)Landroidx/work/d$a;

    move-result-object v2

    const-string v3, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 362
    invoke-virtual {v2, v3, v0}, Landroidx/work/d$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/d$a;

    .line 363
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 364
    invoke-virtual {v1}, Landroidx/work/d$a;->a()Landroidx/work/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/d;

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 2

    .line 116
    iget-object v0, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/g;

    .line 6068
    iget-object v0, v0, Landroidx/work/impl/g;->b:Landroidx/work/impl/j;

    .line 6317
    iget-object v0, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 118
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->e()V

    .line 120
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/g;

    invoke-static {v1}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/g;)Z

    move-result v1

    .line 121
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->f()V

    .line 125
    throw v1
.end method

.method private static a(Landroidx/work/impl/g;)Z
    .locals 8

    .line 7106
    iget-object v0, p0, Landroidx/work/impl/g;->g:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 144
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/work/impl/g;

    .line 8095
    iget-boolean v4, v3, Landroidx/work/impl/g;->h:Z

    if-nez v4, :cond_0

    .line 148
    invoke-static {v3}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/g;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/b;->b:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 9087
    iget-object v3, v3, Landroidx/work/impl/g;->f:Ljava/util/List;

    const-string v7, ", "

    .line 151
    invoke-static {v7, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Already enqueued work ids (%s)."

    .line 150
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 155
    :cond_2
    invoke-static {p0}, Landroidx/work/impl/utils/b;->b(Landroidx/work/impl/g;)Z

    move-result p0

    or-int/2addr p0, v1

    return p0
.end method

.method private static a(Landroidx/work/impl/j;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 377
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 15337
    iget-object p0, p0, Landroidx/work/impl/j;->e:Ljava/util/List;

    .line 378
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/e;

    .line 379
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method private static a(Landroidx/work/impl/j;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/e;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/j;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/v;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/e;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 11317
    iget-object v6, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    const/4 v7, 0x1

    if-eqz v1, :cond_0

    .line 190
    array-length v9, v1

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_5

    .line 199
    array-length v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v11, v10, :cond_6

    aget-object v15, v1, v11

    .line 200
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v8

    invoke-interface {v8, v15}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;

    move-result-object v8

    if-nez v8, :cond_1

    .line 202
    invoke-static {}, Landroidx/work/k;->a()Landroidx/work/k;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/b;->b:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    const-string v4, "Prerequisite %s doesn\'t exist; not enqueuing"

    .line 203
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Throwable;

    .line 202
    invoke-virtual {v0, v1, v2, v4}, Landroidx/work/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    return v3

    .line 207
    :cond_1
    iget-object v8, v8, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    .line 208
    sget-object v15, Landroidx/work/t$a;->SUCCEEDED:Landroidx/work/t$a;

    if-ne v8, v15, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    and-int/2addr v12, v15

    .line 209
    sget-object v15, Landroidx/work/t$a;->FAILED:Landroidx/work/t$a;

    if-ne v8, v15, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    .line 211
    :cond_3
    sget-object v15, Landroidx/work/t$a;->CANCELLED:Landroidx/work/t$a;

    if-ne v8, v15, :cond_4

    const/4 v13, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 217
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_7

    if-nez v9, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_17

    .line 225
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v10

    invoke-interface {v10, v2}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 227
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17

    .line 229
    sget-object v11, Landroidx/work/e;->APPEND:Landroidx/work/e;

    if-eq v3, v11, :cond_d

    sget-object v11, Landroidx/work/e;->APPEND_OR_REPLACE:Landroidx/work/e;

    if-ne v3, v11, :cond_8

    goto :goto_8

    .line 263
    :cond_8
    sget-object v11, Landroidx/work/e;->KEEP:Landroidx/work/e;

    if-ne v3, v11, :cond_b

    .line 264
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 265
    iget-object v15, v11, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/t$a;

    sget-object v7, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    if-eq v15, v7, :cond_a

    iget-object v7, v11, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/t$a;

    sget-object v11, Landroidx/work/t$a;->RUNNING:Landroidx/work/t$a;

    if-ne v7, v11, :cond_9

    goto :goto_6

    :cond_9
    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    const/4 v7, 0x0

    return v7

    :cond_b
    const/4 v7, 0x0

    .line 276
    invoke-static {v2, v0}, Landroidx/work/impl/utils/a;->b(Ljava/lang/String;Landroidx/work/impl/j;)Landroidx/work/impl/utils/a;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/work/impl/utils/a;->run()V

    .line 283
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v3

    .line 284
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 285
    iget-object v11, v11, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v3, v11}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_10

    :cond_d
    :goto_8
    const/4 v7, 0x0

    .line 230
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->k()Landroidx/work/impl/model/DependencyDao;

    move-result-object v9

    .line 231
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 233
    iget-object v7, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v9, v7}, Landroidx/work/impl/model/DependencyDao;->hasDependents(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 234
    iget-object v7, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/t$a;

    move-object/from16 v16, v9

    sget-object v9, Landroidx/work/t$a;->SUCCEEDED:Landroidx/work/t$a;

    if-ne v7, v9, :cond_e

    const/4 v7, 0x1

    goto :goto_a

    :cond_e
    const/4 v7, 0x0

    :goto_a
    and-int/2addr v7, v12

    .line 235
    iget-object v9, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/t$a;

    sget-object v12, Landroidx/work/t$a;->FAILED:Landroidx/work/t$a;

    if-ne v9, v12, :cond_f

    const/4 v14, 0x1

    goto :goto_b

    .line 237
    :cond_f
    iget-object v9, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->state:Landroidx/work/t$a;

    sget-object v12, Landroidx/work/t$a;->CANCELLED:Landroidx/work/t$a;

    if-ne v9, v12, :cond_10

    const/4 v13, 0x1

    .line 240
    :cond_10
    :goto_b
    iget-object v9, v15, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v12, v7

    goto :goto_c

    :cond_11
    move-object/from16 v16, v9

    :goto_c
    move-object/from16 v9, v16

    const/4 v7, 0x0

    goto :goto_9

    .line 243
    :cond_12
    sget-object v7, Landroidx/work/e;->APPEND_OR_REPLACE:Landroidx/work/e;

    if-ne v3, v7, :cond_15

    if-nez v13, :cond_13

    if-eqz v14, :cond_15

    .line 246
    :cond_13
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v3

    .line 248
    invoke-interface {v3, v2}, Landroidx/work/impl/model/WorkSpecDao;->getWorkSpecIdAndStatesForName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 249
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/work/impl/model/WorkSpec$IdAndState;

    .line 250
    iget-object v9, v9, Landroidx/work/impl/model/WorkSpec$IdAndState;->id:Ljava/lang/String;

    invoke-interface {v3, v9}, Landroidx/work/impl/model/WorkSpecDao;->delete(Ljava/lang/String;)V

    goto :goto_d

    .line 253
    :cond_14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_e

    :cond_15
    move v3, v14

    .line 258
    :goto_e
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 259
    array-length v7, v1

    if-lez v7, :cond_16

    const/4 v9, 0x1

    goto :goto_f

    :cond_16
    const/4 v9, 0x0

    :goto_f
    move v14, v3

    :cond_17
    const/4 v3, 0x0

    .line 291
    :goto_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/work/v;

    .line 12099
    iget-object v11, v10, Landroidx/work/v;->b:Landroidx/work/impl/model/WorkSpec;

    if-eqz v9, :cond_1a

    if-nez v12, :cond_1a

    if-eqz v14, :cond_18

    .line 296
    sget-object v15, Landroidx/work/t$a;->FAILED:Landroidx/work/t$a;

    iput-object v15, v11, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    goto :goto_12

    :cond_18
    if-eqz v13, :cond_19

    .line 298
    sget-object v15, Landroidx/work/t$a;->CANCELLED:Landroidx/work/t$a;

    iput-object v15, v11, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    goto :goto_12

    .line 300
    :cond_19
    sget-object v15, Landroidx/work/t$a;->BLOCKED:Landroidx/work/t$a;

    iput-object v15, v11, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    goto :goto_12

    .line 313
    :cond_1a
    invoke-virtual {v11}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v15

    if-nez v15, :cond_1b

    .line 314
    iput-wide v4, v11, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    :goto_12
    move-wide/from16 v16, v4

    goto :goto_13

    :cond_1b
    move-wide/from16 v16, v4

    const-wide/16 v4, 0x0

    .line 316
    iput-wide v4, v11, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 320
    :goto_13
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1c

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x19

    if-gt v4, v5, :cond_1c

    .line 322
    invoke-static {v11}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/model/WorkSpec;)V

    goto :goto_14

    .line 323
    :cond_1c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-gt v4, v5, :cond_1d

    const-string v4, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 324
    invoke-static {v0, v4}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/j;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 325
    invoke-static {v11}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/model/WorkSpec;)V

    .line 329
    :cond_1d
    :goto_14
    iget-object v4, v11, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/t$a;

    sget-object v5, Landroidx/work/t$a;->ENQUEUED:Landroidx/work/t$a;

    if-ne v4, v5, :cond_1e

    const/4 v3, 0x1

    .line 333
    :cond_1e
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->j()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v4

    invoke-interface {v4, v11}, Landroidx/work/impl/model/WorkSpecDao;->insertWorkSpec(Landroidx/work/impl/model/WorkSpec;)V

    if-eqz v9, :cond_1f

    .line 336
    array-length v4, v1

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v4, :cond_1f

    aget-object v11, v1, v5

    .line 337
    new-instance v15, Landroidx/work/impl/model/Dependency;

    .line 13088
    iget-object v0, v10, Landroidx/work/v;->a:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-direct {v15, v0, v11}, Landroidx/work/impl/model/Dependency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->k()Landroidx/work/impl/model/DependencyDao;

    move-result-object v0

    invoke-interface {v0, v15}, Landroidx/work/impl/model/DependencyDao;->insertDependency(Landroidx/work/impl/model/Dependency;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_15

    .line 13110
    :cond_1f
    iget-object v0, v10, Landroidx/work/v;->c:Ljava/util/Set;

    .line 342
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 343
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->l()Landroidx/work/impl/model/WorkTagDao;

    move-result-object v5

    new-instance v11, Landroidx/work/impl/model/WorkTag;

    .line 14088
    iget-object v15, v10, Landroidx/work/v;->a:Ljava/util/UUID;

    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    .line 343
    invoke-direct {v11, v4, v15}, Landroidx/work/impl/model/WorkTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Landroidx/work/impl/model/WorkTagDao;->insert(Landroidx/work/impl/model/WorkTag;)V

    goto :goto_16

    :cond_20
    if-eqz v8, :cond_21

    .line 347
    invoke-virtual {v6}, Landroidx/work/impl/WorkDatabase;->n()Landroidx/work/impl/model/WorkNameDao;

    move-result-object v0

    new-instance v4, Landroidx/work/impl/model/WorkName;

    .line 15088
    iget-object v5, v10, Landroidx/work/v;->a:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 347
    invoke-direct {v4, v2, v5}, Landroidx/work/impl/model/WorkName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroidx/work/impl/model/WorkNameDao;->insert(Landroidx/work/impl/model/WorkName;)V

    :cond_21
    move-object/from16 v0, p0

    move-wide/from16 v4, v16

    goto/16 :goto_11

    :cond_22
    return v3
.end method

.method private static b(Landroidx/work/impl/g;)Z
    .locals 5

    .line 160
    invoke-static {p0}, Landroidx/work/impl/g;->a(Landroidx/work/impl/g;)Ljava/util/Set;

    move-result-object v0

    .line 10068
    iget-object v1, p0, Landroidx/work/impl/g;->b:Landroidx/work/impl/j;

    .line 10082
    iget-object v2, p0, Landroidx/work/impl/g;->e:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 165
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 11073
    iget-object v3, p0, Landroidx/work/impl/g;->c:Ljava/lang/String;

    .line 11077
    iget-object v4, p0, Landroidx/work/impl/g;->d:Landroidx/work/e;

    .line 162
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/j;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/e;)Z

    move-result v0

    const/4 v1, 0x1

    .line 11102
    iput-boolean v1, p0, Landroidx/work/impl/g;->h:Z

    return v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 85
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/g;

    .line 1223
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Landroidx/work/impl/g;->a(Landroidx/work/impl/g;Ljava/util/Set;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 89
    invoke-direct {p0}, Landroidx/work/impl/utils/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/g;

    .line 2068
    iget-object v0, v0, Landroidx/work/impl/g;->b:Landroidx/work/impl/j;

    .line 2307
    iget-object v0, v0, Landroidx/work/impl/j;->a:Landroid/content/Context;

    .line 94
    const-class v2, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v2, v1}, Landroidx/work/impl/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 3133
    iget-object v0, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/g;

    .line 4068
    iget-object v0, v0, Landroidx/work/impl/g;->b:Landroidx/work/impl/j;

    .line 4327
    iget-object v1, v0, Landroidx/work/impl/j;->b:Landroidx/work/Configuration;

    .line 5317
    iget-object v2, v0, Landroidx/work/impl/j;->c:Landroidx/work/impl/WorkDatabase;

    .line 5337
    iget-object v0, v0, Landroidx/work/impl/j;->e:Ljava/util/List;

    .line 3134
    invoke-static {v1, v2, v0}, Landroidx/work/impl/f;->a(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 97
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/utils/b;->a:Landroidx/work/impl/c;

    sget-object v1, Landroidx/work/n;->a:Landroidx/work/n$a$c;

    invoke-virtual {v0, v1}, Landroidx/work/impl/c;->a(Landroidx/work/n$a;)V

    return-void

    .line 86
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "WorkContinuation has cycles (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/g;

    aput-object v4, v1, v3

    .line 87
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    .line 99
    iget-object v1, p0, Landroidx/work/impl/utils/b;->a:Landroidx/work/impl/c;

    new-instance v2, Landroidx/work/n$a$a;

    invoke-direct {v2, v0}, Landroidx/work/n$a$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/c;->a(Landroidx/work/n$a;)V

    return-void
.end method
