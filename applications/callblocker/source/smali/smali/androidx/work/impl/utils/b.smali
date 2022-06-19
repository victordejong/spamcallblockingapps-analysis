.class public Landroidx/work/impl/utils/b;
.super Ljava/lang/Object;
.source "EnqueueRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroidx/work/impl/f;

.field private final c:Landroidx/work/impl/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "EnqueueRunnable"

    invoke-static {v0}, Landroidx/work/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/f;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/work/impl/utils/b;->b:Landroidx/work/impl/f;

    .line 77
    new-instance v0, Landroidx/work/impl/b;

    invoke-direct {v0}, Landroidx/work/impl/b;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/b;

    .line 78
    return-void
.end method

.method private static a(Landroidx/work/impl/b/p;)V
    .locals 4

    .prologue
    .line 332
    iget-object v0, p0, Landroidx/work/impl/b/p;->j:Landroidx/work/c;

    .line 333
    invoke-virtual {v0}, Landroidx/work/c;->d()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/work/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    .line 335
    new-instance v1, Landroidx/work/e$a;

    invoke-direct {v1}, Landroidx/work/e$a;-><init>()V

    .line 337
    iget-object v2, p0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    invoke-virtual {v1, v2}, Landroidx/work/e$a;->a(Landroidx/work/e;)Landroidx/work/e$a;

    move-result-object v2

    const-string/jumbo v3, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    .line 338
    invoke-virtual {v2, v3, v0}, Landroidx/work/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/e$a;

    .line 339
    const-class v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/b/p;->c:Ljava/lang/String;

    .line 340
    invoke-virtual {v1}, Landroidx/work/e$a;->a()Landroidx/work/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/b/p;->e:Landroidx/work/e;

    .line 342
    :cond_1
    return-void
.end method

.method private static a(Landroidx/work/impl/f;)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 139
    .line 140
    invoke-virtual {p0}, Landroidx/work/impl/f;->h()Ljava/util/List;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_1

    .line 142
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/f;

    .line 145
    invoke-virtual {v0}, Landroidx/work/impl/f;->f()Z

    move-result v4

    if-nez v4, :cond_0

    .line 146
    invoke-static {v0}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/f;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    .line 151
    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/b;->a:Ljava/lang/String;

    const-string/jumbo v6, "Already enqueued work ids (%s)."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, ", "

    .line 149
    invoke-virtual {v0}, Landroidx/work/impl/f;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    .line 148
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v0, v6}, Landroidx/work/l;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 153
    :cond_2
    invoke-static {p0}, Landroidx/work/impl/utils/b;->b(Landroidx/work/impl/f;)Z

    move-result v0

    or-int/2addr v0, v1

    .line 154
    return v0
.end method

.method private static a(Landroidx/work/impl/i;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 353
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 354
    invoke-virtual {p0}, Landroidx/work/impl/i;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/d;

    .line 355
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const/4 v0, 0x1

    .line 361
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 359
    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    move v0, v1

    .line 361
    goto :goto_0
.end method

.method private static a(Landroidx/work/impl/i;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/g;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/i;",
            "Ljava/util/List",
            "<+",
            "Landroidx/work/u;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroidx/work/g;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 183
    const/4 v8, 0x0

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v12

    .line 188
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_1

    const/4 v6, 0x1

    .line 189
    :goto_0
    const/4 v2, 0x1

    .line 190
    const/4 v4, 0x0

    .line 191
    const/4 v3, 0x0

    .line 193
    if-eqz v6, :cond_5

    .line 197
    move-object/from16 v0, p2

    array-length v9, v0

    const/4 v7, 0x0

    move v5, v2

    :goto_1
    if-ge v7, v9, :cond_6

    aget-object v2, p2, v7

    .line 198
    invoke-virtual {v12}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v13

    invoke-interface {v13, v2}, Landroidx/work/impl/b/q;->b(Ljava/lang/String;)Landroidx/work/impl/b/p;

    move-result-object v13

    .line 199
    if-nez v13, :cond_2

    .line 200
    invoke-static {}, Landroidx/work/l;->a()Landroidx/work/l;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/utils/b;->a:Ljava/lang/String;

    const-string/jumbo v5, "Prerequisite %s doesn\'t exist; not enqueuing"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 201
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Throwable;

    .line 200
    invoke-virtual {v3, v4, v2, v5}, Landroidx/work/l;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 202
    const/4 v8, 0x0

    .line 326
    :cond_0
    :goto_2
    return v8

    .line 188
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 205
    :cond_2
    iget-object v13, v13, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 206
    sget-object v2, Landroidx/work/s$a;->c:Landroidx/work/s$a;

    if-ne v13, v2, :cond_3

    const/4 v2, 0x1

    :goto_3
    and-int/2addr v5, v2

    .line 207
    sget-object v2, Landroidx/work/s$a;->d:Landroidx/work/s$a;

    if-ne v13, v2, :cond_4

    .line 208
    const/4 v4, 0x1

    move v2, v3

    .line 197
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move v3, v2

    goto :goto_1

    .line 206
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 209
    :cond_4
    sget-object v2, Landroidx/work/s$a;->f:Landroidx/work/s$a;

    if-ne v13, v2, :cond_1e

    .line 210
    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move v5, v2

    .line 215
    :cond_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    move v9, v2

    .line 219
    :goto_5
    if-eqz v9, :cond_a

    if-nez v6, :cond_a

    const/4 v2, 0x1

    .line 220
    :goto_6
    if-eqz v2, :cond_1d

    .line 223
    invoke-virtual {v12}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Landroidx/work/impl/b/q;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 225
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 227
    sget-object v2, Landroidx/work/g;->c:Landroidx/work/g;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_12

    .line 228
    invoke-virtual {v12}, Landroidx/work/impl/WorkDatabase;->p()Landroidx/work/impl/b/b;

    move-result-object v13

    .line 229
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/b/p$a;

    .line 231
    iget-object v6, v2, Landroidx/work/impl/b/p$a;->a:Ljava/lang/String;

    invoke-interface {v13, v6}, Landroidx/work/impl/b/b;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 232
    iget-object v6, v2, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    sget-object v15, Landroidx/work/s$a;->c:Landroidx/work/s$a;

    if-ne v6, v15, :cond_b

    const/4 v6, 0x1

    :goto_8
    and-int/2addr v5, v6

    .line 233
    iget-object v6, v2, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    sget-object v15, Landroidx/work/s$a;->d:Landroidx/work/s$a;

    if-ne v6, v15, :cond_c

    .line 234
    const/4 v4, 0x1

    .line 238
    :cond_8
    :goto_9
    iget-object v2, v2, Landroidx/work/impl/b/p$a;->a:Ljava/lang/String;

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 215
    :cond_9
    const/4 v2, 0x0

    move v9, v2

    goto :goto_5

    .line 219
    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    .line 232
    :cond_b
    const/4 v6, 0x0

    goto :goto_8

    .line 235
    :cond_c
    iget-object v6, v2, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    sget-object v15, Landroidx/work/s$a;->f:Landroidx/work/s$a;

    if-ne v6, v15, :cond_8

    .line 236
    const/4 v3, 0x1

    goto :goto_9

    .line 241
    :cond_d
    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 242
    array-length v6, v2

    if-lez v6, :cond_11

    const/4 v6, 0x1

    :goto_a
    move v7, v3

    move-object/from16 p2, v2

    .line 274
    :goto_b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/u;

    .line 275
    invoke-virtual {v2}, Landroidx/work/u;->b()Landroidx/work/impl/b/p;

    move-result-object v3

    .line 277
    if-eqz v6, :cond_18

    if-nez v5, :cond_18

    .line 278
    if-eqz v4, :cond_16

    .line 279
    sget-object v14, Landroidx/work/s$a;->d:Landroidx/work/s$a;

    iput-object v14, v3, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    .line 296
    :goto_d
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v14, v15, :cond_1a

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x19

    if-gt v14, v15, :cond_1a

    .line 298
    invoke-static {v3}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/b/p;)V

    .line 305
    :cond_f
    :goto_e
    iget-object v14, v3, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    sget-object v15, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    if-ne v14, v15, :cond_10

    .line 306
    const/4 v8, 0x1

    .line 309
    :cond_10
    invoke-virtual {v12}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v14

    invoke-interface {v14, v3}, Landroidx/work/impl/b/q;->a(Landroidx/work/impl/b/p;)V

    .line 311
    if-eqz v6, :cond_1b

    .line 312
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v14, :cond_1b

    aget-object v15, p2, v3

    .line 313
    new-instance v16, Landroidx/work/impl/b/a;

    invoke-virtual {v2}, Landroidx/work/u;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Landroidx/work/impl/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v12}, Landroidx/work/impl/WorkDatabase;->p()Landroidx/work/impl/b/b;

    move-result-object v15

    invoke-interface/range {v15 .. v16}, Landroidx/work/impl/b/b;->a(Landroidx/work/impl/b/a;)V

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 242
    :cond_11
    const/4 v6, 0x0

    goto :goto_a

    .line 246
    :cond_12
    sget-object v2, Landroidx/work/g;->b:Landroidx/work/g;

    move-object/from16 v0, p4

    if-ne v0, v2, :cond_15

    .line 247
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/b/p$a;

    .line 248
    iget-object v13, v2, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    sget-object v14, Landroidx/work/s$a;->a:Landroidx/work/s$a;

    if-eq v13, v14, :cond_14

    iget-object v2, v2, Landroidx/work/impl/b/p$a;->b:Landroidx/work/s$a;

    sget-object v13, Landroidx/work/s$a;->b:Landroidx/work/s$a;

    if-ne v2, v13, :cond_13

    .line 249
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 259
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/a;->a(Ljava/lang/String;Landroidx/work/impl/i;Z)Landroidx/work/impl/utils/a;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/work/impl/utils/a;->run()V

    .line 263
    const/4 v8, 0x1

    .line 266
    invoke-virtual {v12}, Landroidx/work/impl/WorkDatabase;->o()Landroidx/work/impl/b/q;

    move-result-object v13

    .line 267
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/b/p$a;

    .line 268
    iget-object v2, v2, Landroidx/work/impl/b/p$a;->a:Ljava/lang/String;

    invoke-interface {v13, v2}, Landroidx/work/impl/b/q;->a(Ljava/lang/String;)V

    goto :goto_10

    .line 280
    :cond_16
    if-eqz v7, :cond_17

    .line 281
    sget-object v14, Landroidx/work/s$a;->f:Landroidx/work/s$a;

    iput-object v14, v3, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    goto/16 :goto_d

    .line 283
    :cond_17
    sget-object v14, Landroidx/work/s$a;->e:Landroidx/work/s$a;

    iput-object v14, v3, Landroidx/work/impl/b/p;->b:Landroidx/work/s$a;

    goto/16 :goto_d

    .line 289
    :cond_18
    invoke-virtual {v3}, Landroidx/work/impl/b/p;->a()Z

    move-result v14

    if-nez v14, :cond_19

    .line 290
    iput-wide v10, v3, Landroidx/work/impl/b/p;->n:J

    goto/16 :goto_d

    .line 292
    :cond_19
    const-wide/16 v14, 0x0

    iput-wide v14, v3, Landroidx/work/impl/b/p;->n:J

    goto/16 :goto_d

    .line 299
    :cond_1a
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x16

    if-gt v14, v15, :cond_f

    const-string/jumbo v14, "androidx.work.impl.background.gcm.GcmScheduler"

    .line 300
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/i;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 301
    invoke-static {v3}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/b/p;)V

    goto/16 :goto_e

    .line 318
    :cond_1b
    invoke-virtual {v2}, Landroidx/work/u;->c()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_11
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 319
    invoke-virtual {v12}, Landroidx/work/impl/WorkDatabase;->q()Landroidx/work/impl/b/t;

    move-result-object v15

    new-instance v16, Landroidx/work/impl/b/s;

    invoke-virtual {v2}, Landroidx/work/u;->a()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Landroidx/work/impl/b/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v15 .. v16}, Landroidx/work/impl/b/t;->a(Landroidx/work/impl/b/s;)V

    goto :goto_11

    .line 322
    :cond_1c
    if-eqz v9, :cond_e

    .line 323
    invoke-virtual {v12}, Landroidx/work/impl/WorkDatabase;->s()Landroidx/work/impl/b/k;

    move-result-object v3

    new-instance v14, Landroidx/work/impl/b/j;

    invoke-virtual {v2}, Landroidx/work/u;->a()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-direct {v14, v0, v2}, Landroidx/work/impl/b/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v14}, Landroidx/work/impl/b/k;->a(Landroidx/work/impl/b/j;)V

    goto/16 :goto_c

    :cond_1d
    move v7, v3

    goto/16 :goto_b

    :cond_1e
    move v2, v3

    goto/16 :goto_4
.end method

.method private static b(Landroidx/work/impl/f;)Z
    .locals 5

    .prologue
    .line 158
    invoke-static {p0}, Landroidx/work/impl/f;->a(Landroidx/work/impl/f;)Ljava/util/Set;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroidx/work/impl/f;->a()Landroidx/work/impl/i;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Landroidx/work/impl/f;->d()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    .line 163
    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Landroidx/work/impl/f;->b()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {p0}, Landroidx/work/impl/f;->c()Landroidx/work/g;

    move-result-object v4

    .line 160
    invoke-static {v1, v2, v0, v3, v4}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/i;Ljava/util/List;[Ljava/lang/String;Ljava/lang/String;Landroidx/work/g;)Z

    move-result v0

    .line 167
    invoke-virtual {p0}, Landroidx/work/impl/f;->g()V

    .line 168
    return v0
.end method


# virtual methods
.method public a()Landroidx/work/n;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/b;

    return-object v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroidx/work/impl/utils/b;->b:Landroidx/work/impl/f;

    invoke-virtual {v0}, Landroidx/work/impl/f;->a()Landroidx/work/impl/i;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->g()V

    .line 118
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/b;->b:Landroidx/work/impl/f;

    invoke-static {v0}, Landroidx/work/impl/utils/b;->a(Landroidx/work/impl/f;)Z

    move-result v0

    .line 119
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 120
    return v0

    .line 122
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()V

    .line 123
    throw v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Landroidx/work/impl/utils/b;->b:Landroidx/work/impl/f;

    invoke-virtual {v0}, Landroidx/work/impl/f;->a()Landroidx/work/impl/i;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroidx/work/impl/i;->d()Landroidx/work/b;

    move-result-object v1

    .line 134
    invoke-virtual {v0}, Landroidx/work/impl/i;->c()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    .line 135
    invoke-virtual {v0}, Landroidx/work/impl/i;->e()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-static {v1, v2, v0}, Landroidx/work/impl/e;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 136
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/b;->b:Landroidx/work/impl/f;

    invoke-virtual {v0}, Landroidx/work/impl/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WorkContinuation has cycles (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/work/impl/utils/b;->b:Landroidx/work/impl/f;

    aput-object v4, v2, v3

    .line 85
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/b;

    new-instance v2, Landroidx/work/n$a$a;

    invoke-direct {v2, v0}, Landroidx/work/n$a$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroidx/work/impl/b;->a(Landroidx/work/n$a;)V

    .line 99
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/work/impl/utils/b;->b()Z

    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Landroidx/work/impl/utils/b;->b:Landroidx/work/impl/f;

    .line 91
    invoke-virtual {v0}, Landroidx/work/impl/f;->a()Landroidx/work/impl/i;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/i;->b()Landroid/content/Context;

    move-result-object v0

    .line 92
    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/d;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 93
    invoke-virtual {p0}, Landroidx/work/impl/utils/b;->c()V

    .line 95
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/utils/b;->c:Landroidx/work/impl/b;

    sget-object v1, Landroidx/work/n;->a:Landroidx/work/n$a$c;

    invoke-virtual {v0, v1}, Landroidx/work/impl/b;->a(Landroidx/work/n$a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
