.class public final Lcom/bumptech/glide/load/engine/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/b/h$a;
.implements Lcom/bumptech/glide/load/engine/m;
.implements Lcom/bumptech/glide/load/engine/p$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/k$b;,
        Lcom/bumptech/glide/load/engine/k$a;,
        Lcom/bumptech/glide/load/engine/k$c;,
        Lcom/bumptech/glide/load/engine/k$d;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/r;

.field private final c:Lcom/bumptech/glide/load/engine/o;

.field private final d:Lcom/bumptech/glide/load/engine/b/h;

.field private final e:Lcom/bumptech/glide/load/engine/k$b;

.field private final f:Lcom/bumptech/glide/load/engine/x;

.field private final g:Lcom/bumptech/glide/load/engine/k$c;

.field private final h:Lcom/bumptech/glide/load/engine/k$a;

.field private final i:Lcom/bumptech/glide/load/engine/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/engine/k;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/r;Lcom/bumptech/glide/load/engine/o;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/k$b;Lcom/bumptech/glide/load/engine/k$a;Lcom/bumptech/glide/load/engine/x;Z)V
    .locals 11

    move-object v8, p0

    move-object v0, p1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, v8, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/load/engine/b/h;

    .line 85
    new-instance v9, Lcom/bumptech/glide/load/engine/k$c;

    move-object v1, p2

    invoke-direct {v9, p2}, Lcom/bumptech/glide/load/engine/k$c;-><init>(Lcom/bumptech/glide/load/engine/b/a$a;)V

    iput-object v9, v8, Lcom/bumptech/glide/load/engine/k;->g:Lcom/bumptech/glide/load/engine/k$c;

    if-nez p9, :cond_0

    .line 88
    new-instance v1, Lcom/bumptech/glide/load/engine/a;

    move/from16 v2, p13

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/a;-><init>(Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p9

    .line 90
    :goto_0
    iput-object v1, v8, Lcom/bumptech/glide/load/engine/k;->i:Lcom/bumptech/glide/load/engine/a;

    .line 1067
    monitor-enter p0

    .line 1068
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1069
    :try_start_1
    iput-object v8, v1, Lcom/bumptech/glide/load/engine/a;->c:Lcom/bumptech/glide/load/engine/p$a;

    .line 1070
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p8, :cond_1

    .line 94
    new-instance v1, Lcom/bumptech/glide/load/engine/o;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/o;-><init>()V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p8

    .line 96
    :goto_1
    iput-object v1, v8, Lcom/bumptech/glide/load/engine/k;->c:Lcom/bumptech/glide/load/engine/o;

    if-nez p7, :cond_2

    .line 99
    new-instance v1, Lcom/bumptech/glide/load/engine/r;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/r;-><init>()V

    goto :goto_2

    :cond_2
    move-object/from16 v1, p7

    .line 101
    :goto_2
    iput-object v1, v8, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/r;

    if-nez p10, :cond_3

    .line 104
    new-instance v10, Lcom/bumptech/glide/load/engine/k$b;

    move-object v1, v10

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/load/engine/k$b;-><init>(Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/m;Lcom/bumptech/glide/load/engine/p$a;)V

    goto :goto_3

    :cond_3
    move-object/from16 v10, p10

    .line 113
    :goto_3
    iput-object v10, v8, Lcom/bumptech/glide/load/engine/k;->e:Lcom/bumptech/glide/load/engine/k$b;

    if-nez p11, :cond_4

    .line 116
    new-instance v1, Lcom/bumptech/glide/load/engine/k$a;

    invoke-direct {v1, v9}, Lcom/bumptech/glide/load/engine/k$a;-><init>(Lcom/bumptech/glide/load/engine/h$d;)V

    goto :goto_4

    :cond_4
    move-object/from16 v1, p11

    .line 118
    :goto_4
    iput-object v1, v8, Lcom/bumptech/glide/load/engine/k;->h:Lcom/bumptech/glide/load/engine/k$a;

    if-nez p12, :cond_5

    .line 121
    new-instance v1, Lcom/bumptech/glide/load/engine/x;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/x;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v1, p12

    .line 123
    :goto_5
    iput-object v1, v8, Lcom/bumptech/glide/load/engine/k;->f:Lcom/bumptech/glide/load/engine/x;

    .line 125
    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/engine/b/h$a;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1070
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    .line 1071
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Z)V
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v13, p7

    .line 53
    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/load/engine/k;-><init>(Lcom/bumptech/glide/load/engine/b/h;Lcom/bumptech/glide/load/engine/b/a$a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/c/a;Lcom/bumptech/glide/load/engine/r;Lcom/bumptech/glide/load/engine/o;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/engine/k$b;Lcom/bumptech/glide/load/engine/k$a;Lcom/bumptech/glide/load/engine/x;Z)V

    return-void
.end method

.method public static a(Lcom/bumptech/glide/load/engine/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;)V"
        }
    .end annotation

    .line 362
    instance-of v0, p0, Lcom/bumptech/glide/load/engine/p;

    if-eqz v0, :cond_0

    .line 363
    check-cast p0, Lcom/bumptech/glide/load/engine/p;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/p;->f()V

    return-void

    .line 365
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V
    .locals 1

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/g/f;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/e;Ljava/lang/Object;Lcom/bumptech/glide/load/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/h;Lcom/bumptech/glide/load/engine/j;Ljava/util/Map;ZZLcom/bumptech/glide/load/h;ZZZZLcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)Lcom/bumptech/glide/load/engine/k$d;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/e;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/f;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/h;",
            "Lcom/bumptech/glide/load/engine/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/l<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/h;",
            "ZZZZ",
            "Lcom/bumptech/glide/e/i;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/bumptech/glide/load/engine/k$d;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p3

    move/from16 v4, p4

    move/from16 v3, p5

    move-object/from16 v2, p8

    move-object/from16 v1, p9

    move-object/from16 v15, p13

    move/from16 v14, p17

    move-object/from16 v13, p18

    move-object/from16 v12, p19

    .line 175
    sget-boolean v17, Lcom/bumptech/glide/load/engine/k;->a:Z

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/bumptech/glide/g/f;->a()J

    move-result-wide v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    :goto_0
    move-wide v10, v8

    .line 2020
    new-instance v9, Lcom/bumptech/glide/load/engine/n;

    move-object v8, v9

    move-object v4, v9

    move-object/from16 v9, p2

    move-wide/from16 v18, v10

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p10

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p13

    invoke-direct/range {v8 .. v16}, Lcom/bumptech/glide/load/engine/n;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/load/f;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/h;)V

    .line 189
    monitor-enter p0

    if-eqz p14, :cond_7

    .line 2327
    :try_start_0
    iget-object v9, v7, Lcom/bumptech/glide/load/engine/k;->i:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v9, v4}, Lcom/bumptech/glide/load/engine/a;->b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/p;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2329
    invoke-virtual {v9}, Lcom/bumptech/glide/load/engine/p;->e()V

    :cond_1
    if-eqz v9, :cond_3

    if-eqz v17, :cond_2

    const-string v10, "Loaded resource from active resources"

    move-wide/from16 v11, v18

    .line 2305
    invoke-static {v10, v11, v12, v4}, Lcom/bumptech/glide/load/engine/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V

    goto :goto_1

    :cond_2
    move-wide/from16 v11, v18

    :goto_1
    move/from16 v13, p4

    move-object v15, v1

    move-object v8, v2

    move-object v14, v5

    move-object v10, v6

    move-object v1, v9

    move v9, v3

    move-object v6, v4

    goto/16 :goto_4

    :cond_3
    move-wide/from16 v11, v18

    .line 2345
    iget-object v9, v7, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v9, v4}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/u;

    move-result-object v9

    if-nez v9, :cond_4

    move/from16 v13, p4

    move-object v15, v1

    move-object v8, v2

    move v9, v3

    move-object/from16 v18, v4

    move-object v14, v5

    move-object v10, v6

    const/4 v1, 0x0

    goto :goto_2

    .line 2350
    :cond_4
    instance-of v10, v9, Lcom/bumptech/glide/load/engine/p;

    if-eqz v10, :cond_5

    .line 2352
    check-cast v9, Lcom/bumptech/glide/load/engine/p;

    move/from16 v13, p4

    move-object v15, v1

    move-object v8, v2

    move-object/from16 v18, v4

    move-object v14, v5

    move-object v10, v6

    move-object v1, v9

    move v9, v3

    goto :goto_2

    .line 2354
    :cond_5
    new-instance v10, Lcom/bumptech/glide/load/engine/p;

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v15, v1

    move-object v1, v10

    move-object v8, v2

    move-object v2, v9

    move v9, v3

    move v3, v13

    move/from16 v13, p4

    move-object/from16 v18, v4

    move v4, v14

    move-object v14, v5

    move-object/from16 v5, v18

    move-object/from16 v19, v10

    move-object v10, v6

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/p;-><init>(Lcom/bumptech/glide/load/engine/u;ZZLcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p$a;)V

    move-object/from16 v1, v19

    :goto_2
    if-eqz v1, :cond_6

    .line 2338
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/p;->e()V

    .line 2339
    iget-object v2, v7, Lcom/bumptech/glide/load/engine/k;->i:Lcom/bumptech/glide/load/engine/a;

    move-object/from16 v6, v18

    invoke-virtual {v2, v6, v1}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;)V

    goto :goto_3

    :cond_6
    move-object/from16 v6, v18

    :goto_3
    if-eqz v1, :cond_8

    if-eqz v17, :cond_9

    const-string v2, "Loaded resource from cache"

    .line 2313
    invoke-static {v2, v11, v12, v6}, Lcom/bumptech/glide/load/engine/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_7
    move/from16 v13, p4

    move-object v15, v1

    move-object v8, v2

    move v9, v3

    move-object v14, v5

    move-object v10, v6

    move-wide/from16 v11, v18

    move-object v6, v4

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_4
    if-nez v1, :cond_d

    .line 3248
    iget-object v1, v7, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/r;

    move/from16 v5, p17

    .line 4019
    invoke-virtual {v1, v5}, Lcom/bumptech/glide/load/engine/r;->a(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/l;

    if-eqz v1, :cond_b

    move-object/from16 v4, p18

    move-object/from16 v3, p19

    .line 3250
    invoke-virtual {v1, v4, v3}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)V

    if-eqz v17, :cond_a

    const-string v0, "Added to existing load"

    .line 3252
    invoke-static {v0, v11, v12, v6}, Lcom/bumptech/glide/load/engine/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V

    .line 3254
    :cond_a
    new-instance v0, Lcom/bumptech/glide/load/engine/k$d;

    invoke-direct {v0, v7, v4, v1}, Lcom/bumptech/glide/load/engine/k$d;-><init>(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/e/i;Lcom/bumptech/glide/load/engine/l;)V

    goto/16 :goto_5

    :cond_b
    move-object/from16 v4, p18

    move-object/from16 v3, p19

    .line 3257
    iget-object v1, v7, Lcom/bumptech/glide/load/engine/k;->e:Lcom/bumptech/glide/load/engine/k$b;

    .line 4590
    iget-object v1, v1, Lcom/bumptech/glide/load/engine/k$b;->g:Landroidx/core/e/c$a;

    invoke-interface {v1}, Landroidx/core/e/c$a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/l;

    const-string v2, "Argument must not be null"

    .line 5023
    invoke-static {v1, v2}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 4590
    check-cast v1, Lcom/bumptech/glide/load/engine/l;

    move-object v2, v6

    move-wide/from16 v18, v11

    move-object v11, v3

    move/from16 v3, p14

    move-object v12, v4

    move/from16 v4, p15

    move v11, v5

    move/from16 v5, p16

    move-object v12, v6

    move/from16 v6, p17

    .line 4591
    invoke-virtual/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/load/f;ZZZZ)Lcom/bumptech/glide/load/engine/l;

    move-result-object v1

    .line 3265
    iget-object v2, v7, Lcom/bumptech/glide/load/engine/k;->h:Lcom/bumptech/glide/load/engine/k$a;

    .line 5511
    iget-object v3, v2, Lcom/bumptech/glide/load/engine/k$a;->b:Landroidx/core/e/c$a;

    invoke-interface {v3}, Landroidx/core/e/c$a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/engine/h;

    const-string v4, "Argument must not be null"

    .line 6023
    invoke-static {v3, v4}, Lcom/bumptech/glide/g/j;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 5511
    check-cast v3, Lcom/bumptech/glide/load/engine/h;

    .line 5512
    iget v4, v2, Lcom/bumptech/glide/load/engine/k$a;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lcom/bumptech/glide/load/engine/k$a;->c:I

    .line 6104
    iget-object v2, v3, Lcom/bumptech/glide/load/engine/h;->a:Lcom/bumptech/glide/load/engine/g;

    iget-object v5, v3, Lcom/bumptech/glide/load/engine/h;->b:Lcom/bumptech/glide/load/engine/h$d;

    .line 7061
    iput-object v0, v2, Lcom/bumptech/glide/load/engine/g;->a:Lcom/bumptech/glide/e;

    .line 7062
    iput-object v10, v2, Lcom/bumptech/glide/load/engine/g;->b:Ljava/lang/Object;

    .line 7063
    iput-object v14, v2, Lcom/bumptech/glide/load/engine/g;->j:Lcom/bumptech/glide/load/f;

    .line 7064
    iput v13, v2, Lcom/bumptech/glide/load/engine/g;->c:I

    .line 7065
    iput v9, v2, Lcom/bumptech/glide/load/engine/g;->d:I

    .line 7066
    iput-object v15, v2, Lcom/bumptech/glide/load/engine/g;->l:Lcom/bumptech/glide/load/engine/j;

    move-object/from16 v6, p6

    .line 7067
    iput-object v6, v2, Lcom/bumptech/glide/load/engine/g;->e:Ljava/lang/Class;

    .line 7068
    iput-object v5, v2, Lcom/bumptech/glide/load/engine/g;->f:Lcom/bumptech/glide/load/engine/h$d;

    move-object/from16 v5, p7

    .line 7069
    iput-object v5, v2, Lcom/bumptech/glide/load/engine/g;->i:Ljava/lang/Class;

    .line 7070
    iput-object v8, v2, Lcom/bumptech/glide/load/engine/g;->k:Lcom/bumptech/glide/h;

    move-object/from16 v5, p13

    .line 7071
    iput-object v5, v2, Lcom/bumptech/glide/load/engine/g;->g:Lcom/bumptech/glide/load/h;

    move-object/from16 v6, p10

    .line 7072
    iput-object v6, v2, Lcom/bumptech/glide/load/engine/g;->h:Ljava/util/Map;

    move/from16 v6, p11

    .line 7073
    iput-boolean v6, v2, Lcom/bumptech/glide/load/engine/g;->m:Z

    move/from16 v6, p12

    .line 7074
    iput-boolean v6, v2, Lcom/bumptech/glide/load/engine/g;->n:Z

    .line 6119
    iput-object v0, v3, Lcom/bumptech/glide/load/engine/h;->e:Lcom/bumptech/glide/e;

    .line 6120
    iput-object v14, v3, Lcom/bumptech/glide/load/engine/h;->f:Lcom/bumptech/glide/load/f;

    .line 6121
    iput-object v8, v3, Lcom/bumptech/glide/load/engine/h;->g:Lcom/bumptech/glide/h;

    .line 6122
    iput-object v12, v3, Lcom/bumptech/glide/load/engine/h;->h:Lcom/bumptech/glide/load/engine/n;

    .line 6123
    iput v13, v3, Lcom/bumptech/glide/load/engine/h;->i:I

    .line 6124
    iput v9, v3, Lcom/bumptech/glide/load/engine/h;->j:I

    .line 6125
    iput-object v15, v3, Lcom/bumptech/glide/load/engine/h;->k:Lcom/bumptech/glide/load/engine/j;

    .line 6126
    iput-boolean v11, v3, Lcom/bumptech/glide/load/engine/h;->p:Z

    .line 6127
    iput-object v5, v3, Lcom/bumptech/glide/load/engine/h;->l:Lcom/bumptech/glide/load/h;

    .line 6128
    iput-object v1, v3, Lcom/bumptech/glide/load/engine/h;->m:Lcom/bumptech/glide/load/engine/h$a;

    .line 6129
    iput v4, v3, Lcom/bumptech/glide/load/engine/h;->n:I

    .line 6130
    sget-object v0, Lcom/bumptech/glide/load/engine/h$f;->INITIALIZE:Lcom/bumptech/glide/load/engine/h$f;

    iput-object v0, v3, Lcom/bumptech/glide/load/engine/h;->o:Lcom/bumptech/glide/load/engine/h$f;

    .line 6131
    iput-object v10, v3, Lcom/bumptech/glide/load/engine/h;->q:Ljava/lang/Object;

    .line 3284
    iget-object v0, v7, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/r;

    .line 8192
    iget-boolean v2, v1, Lcom/bumptech/glide/load/engine/l;->b:Z

    .line 8023
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/load/engine/r;->a(Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p18

    move-object/from16 v2, p19

    move-object v4, v12

    .line 3286
    invoke-virtual {v1, v0, v2}, Lcom/bumptech/glide/load/engine/l;->a(Lcom/bumptech/glide/e/i;Ljava/util/concurrent/Executor;)V

    .line 3287
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/engine/l;->b(Lcom/bumptech/glide/load/engine/h;)V

    if-eqz v17, :cond_c

    const-string v2, "Started new load"

    move-wide/from16 v8, v18

    .line 3290
    invoke-static {v2, v8, v9, v4}, Lcom/bumptech/glide/load/engine/k;->a(Ljava/lang/String;JLcom/bumptech/glide/load/f;)V

    .line 3292
    :cond_c
    new-instance v2, Lcom/bumptech/glide/load/engine/k$d;

    invoke-direct {v2, v7, v0, v1}, Lcom/bumptech/glide/load/engine/k$d;-><init>(Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/e/i;Lcom/bumptech/glide/load/engine/l;)V

    move-object v0, v2

    .line 193
    :goto_5
    monitor-exit p0

    return-object v0

    :cond_d
    move-object/from16 v0, p18

    .line 216
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    sget-object v2, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/e/i;->a(Lcom/bumptech/glide/load/engine/u;Lcom/bumptech/glide/load/a;)V

    const/4 v0, 0x0

    return-object v0

    .line 216
    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;",
            "Lcom/bumptech/glide/load/f;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/r;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/engine/r;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/l<",
            "*>;",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 9045
    :try_start_0
    iget-boolean v0, p3, Lcom/bumptech/glide/load/engine/p;->a:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->i:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;)V

    .line 378
    :cond_0
    iget-object p3, p0, Lcom/bumptech/glide/load/engine/k;->b:Lcom/bumptech/glide/load/engine/r;

    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/engine/r;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;)V"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->i:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/f;)V

    .line 10045
    iget-boolean v0, p2, Lcom/bumptech/glide/load/engine/p;->a:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->d:Lcom/bumptech/glide/load/engine/b/h;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/engine/b/h;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/u;)Lcom/bumptech/glide/load/engine/u;

    return-void

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/k;->f:Lcom/bumptech/glide/load/engine/x;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bumptech/glide/load/engine/x;->a(Lcom/bumptech/glide/load/engine/u;Z)V

    return-void
.end method

.method public final b(Lcom/bumptech/glide/load/engine/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/u<",
            "*>;)V"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/k;->f:Lcom/bumptech/glide/load/engine/x;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/bumptech/glide/load/engine/x;->a(Lcom/bumptech/glide/load/engine/u;Z)V

    return-void
.end method
