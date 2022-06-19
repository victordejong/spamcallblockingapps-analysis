.class public final Lcom/google/android/gms/internal/ads/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/q;


# static fields
.field private static d:Lcom/google/android/gms/internal/ads/n;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/ys2;

.field private final g:Lcom/google/android/gms/internal/ads/et2;

.field private final h:Lcom/google/android/gms/internal/ads/ft2;

.field private final i:Lcom/google/android/gms/internal/ads/k0;

.field private final j:Lcom/google/android/gms/internal/ads/mr2;

.field private final k:Ljava/util/concurrent/Executor;

.field private final l:Lcom/google/android/gms/internal/ads/dt2;

.field private final m:Ljava/util/concurrent/CountDownLatch;

.field volatile n:J

.field private final o:Ljava/lang/Object;

.field private volatile p:Z

.field private volatile q:Z

.field private final r:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mr2;Lcom/google/android/gms/internal/ads/ys2;Lcom/google/android/gms/internal/ads/et2;Lcom/google/android/gms/internal/ads/ft2;Lcom/google/android/gms/internal/ads/k0;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ir2;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/n;->n:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/n;->o:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/n;->q:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/n;->f:Lcom/google/android/gms/internal/ads/ys2;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/n;->g:Lcom/google/android/gms/internal/ads/et2;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/n;->h:Lcom/google/android/gms/internal/ads/ft2;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/n;->i:Lcom/google/android/gms/internal/ads/k0;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/n;->k:Ljava/util/concurrent/Executor;

    iput p9, p0, Lcom/google/android/gms/internal/ads/n;->r:I

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Lcom/google/android/gms/internal/ads/l;

    .line 2
    invoke-direct {p1, p0, p8}, Lcom/google/android/gms/internal/ads/l;-><init>(Lcom/google/android/gms/internal/ads/n;Lcom/google/android/gms/internal/ads/ir2;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/n;->l:Lcom/google/android/gms/internal/ads/dt2;

    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/internal/ads/n;)Lcom/google/android/gms/internal/ads/mr2;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/gms/internal/ads/n;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->o:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/gms/internal/ads/n;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/n;->p:Z

    return p0
.end method

.method static synthetic k(Lcom/google/android/gms/internal/ads/n;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/n;->p:Z

    return p1
.end method

.method public static declared-synchronized l(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;ZZ)Lcom/google/android/gms/internal/ads/n;
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-class v11, Lcom/google/android/gms/internal/ads/n;

    monitor-enter v11

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/n;->d:Lcom/google/android/gms/internal/ads/n;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/or2;->d()Lcom/google/android/gms/internal/ads/nr2;

    move-result-object v1

    move-object v2, p0

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/nr2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/nr2;

    move/from16 v2, p3

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/nr2;->b(Z)Lcom/google/android/gms/internal/ads/nr2;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/nr2;->d()Lcom/google/android/gms/internal/ads/or2;

    move-result-object v3

    move/from16 v1, p4

    .line 5
    invoke-static {v0, v8, v1}, Lcom/google/android/gms/internal/ads/mr2;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Lcom/google/android/gms/internal/ads/mr2;

    move-result-object v9

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/kw;->W1:Lcom/google/android/gms/internal/ads/cw;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/w;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/w;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v7, v1

    .line 10
    invoke-static {v0, v8, v9, v3}, Lcom/google/android/gms/internal/ads/gs2;->a(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/mr2;Lcom/google/android/gms/internal/ads/or2;)Lcom/google/android/gms/internal/ads/gs2;

    move-result-object v4

    new-instance v6, Lcom/google/android/gms/internal/ads/zzabk;

    .line 11
    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v5, Lcom/google/android/gms/internal/ads/x0;

    invoke-direct {v5, v0, v6}, Lcom/google/android/gms/internal/ads/x0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzabk;)V

    new-instance v10, Lcom/google/android/gms/internal/ads/k0;

    move-object v2, v10

    .line 13
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/k0;-><init>(Lcom/google/android/gms/internal/ads/or2;Lcom/google/android/gms/internal/ads/gs2;Lcom/google/android/gms/internal/ads/x0;Lcom/google/android/gms/internal/ads/zzabk;Lcom/google/android/gms/internal/ads/w;)V

    .line 14
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/ps2;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mr2;)I

    move-result v12

    .line 15
    new-instance v13, Lcom/google/android/gms/internal/ads/ir2;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/ir2;-><init>()V

    new-instance v14, Lcom/google/android/gms/internal/ads/n;

    new-instance v4, Lcom/google/android/gms/internal/ads/ys2;

    .line 16
    invoke-direct {v4, v0, v12}, Lcom/google/android/gms/internal/ads/ys2;-><init>(Landroid/content/Context;I)V

    new-instance v5, Lcom/google/android/gms/internal/ads/et2;

    new-instance v1, Lcom/google/android/gms/internal/ads/k;

    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/k;-><init>(Lcom/google/android/gms/internal/ads/mr2;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/kw;->v1:Lcom/google/android/gms/internal/ads/cw;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {v5, v0, v12, v1, v2}, Lcom/google/android/gms/internal/ads/et2;-><init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/qs2;Z)V

    new-instance v6, Lcom/google/android/gms/internal/ads/ft2;

    invoke-direct {v6, v0, v10, v9, v13}, Lcom/google/android/gms/internal/ads/ft2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/gt2;Lcom/google/android/gms/internal/ads/mr2;Lcom/google/android/gms/internal/ads/ir2;)V

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v7, v10

    move-object/from16 v8, p2

    move-object v9, v13

    move v10, v12

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mr2;Lcom/google/android/gms/internal/ads/ys2;Lcom/google/android/gms/internal/ads/et2;Lcom/google/android/gms/internal/ads/ft2;Lcom/google/android/gms/internal/ads/k0;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/ir2;I)V

    sput-object v14, Lcom/google/android/gms/internal/ads/n;->d:Lcom/google/android/gms/internal/ads/n;

    .line 19
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/n;->o()V

    sget-object v0, Lcom/google/android/gms/internal/ads/n;->d:Lcom/google/android/gms/internal/ads/n;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/n;->q()V

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/n;->d:Lcom/google/android/gms/internal/ads/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static declared-synchronized m(Ljava/lang/String;Landroid/content/Context;ZZ)Lcom/google/android/gms/internal/ads/n;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/ads/n;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 2
    invoke-static {p0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/ads/n;->l(Ljava/lang/String;Landroid/content/Context;Ljava/util/concurrent/Executor;ZZ)Lcom/google/android/gms/internal/ads/n;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic p(Lcom/google/android/gms/internal/ads/n;)V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/n;->r(I)Lcom/google/android/gms/internal/ads/xs2;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xs2;->a()Lcom/google/android/gms/internal/ads/i2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/i2;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/xs2;->a()Lcom/google/android/gms/internal/ads/i2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/i2;->D()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    move-object v8, v4

    goto :goto_0

    :cond_0
    move-object v8, v4

    move-object v9, v8

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/n;->e:Landroid/content/Context;

    const/4 v6, 0x1

    iget v7, p0, Lcom/google/android/gms/internal/ads/n;->r:I

    const-string v10, "1"

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    .line 3
    invoke-static/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/wr2;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/mr2;)Lcom/google/android/gms/internal/ads/zzfkb;

    move-result-object v3

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzfkb;->e:[B

    if-eqz v4, :cond_c

    array-length v5, v4
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 4
    :cond_1
    :try_start_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgex;->zzt([B)Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v4

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/vd3;->a()Lcom/google/android/gms/internal/ads/vd3;

    move-result-object v5

    .line 6
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/f2;->F(Lcom/google/android/gms/internal/ads/zzgex;Lcom/google/android/gms/internal/ads/vd3;)Lcom/google/android/gms/internal/ads/f2;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f2;->C()Lcom/google/android/gms/internal/ads/i2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/i2;->C()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f2;->C()Lcom/google/android/gms/internal/ads/i2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/i2;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 9
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f2;->E()Lcom/google/android/gms/internal/ads/zzgex;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgex;->zzz()[B

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto/16 :goto_4

    .line 10
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/n;->r(I)Lcom/google/android/gms/internal/ads/xs2;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/xs2;->a()Lcom/google/android/gms/internal/ads/i2;

    move-result-object v5

    .line 12
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f2;->C()Lcom/google/android/gms/internal/ads/i2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/i2;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/i2;->C()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f2;->C()Lcom/google/android/gms/internal/ads/i2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/i2;->D()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/i2;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 14
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/n;->l:Lcom/google/android/gms/internal/ads/dt2;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfkb;->f:I

    .line 15
    sget-object v6, Lcom/google/android/gms/internal/ads/kw;->t1:Lcom/google/android/gms/internal/ads/cw;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object v6

    .line 17
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n;->g:Lcom/google/android/gms/internal/ads/et2;

    .line 18
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/et2;->b(Lcom/google/android/gms/internal/ads/f2;)Z

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v6, 0x4

    if-ne v3, v6, :cond_7

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n;->g:Lcom/google/android/gms/internal/ads/et2;

    .line 20
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/et2;->a(Lcom/google/android/gms/internal/ads/f2;Lcom/google/android/gms/internal/ads/dt2;)Z

    move-result v3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n;->f:Lcom/google/android/gms/internal/ads/ys2;

    .line 21
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/ys2;->a(Lcom/google/android/gms/internal/ads/f2;Lcom/google/android/gms/internal/ads/dt2;)Z

    move-result v3

    :goto_2
    if-nez v3, :cond_8

    .line 22
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v3, 0xfa9

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 24
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mr2;->b(IJ)Lcom/google/android/gms/tasks/g;
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    .line 25
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 26
    :cond_8
    :try_start_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/n;->r(I)Lcom/google/android/gms/internal/ads/xs2;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/n;->h:Lcom/google/android/gms/internal/ads/ft2;

    .line 27
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/ft2;->a(Lcom/google/android/gms/internal/ads/xs2;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/n;->q:Z

    .line 28
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/n;->n:J
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    .line 29
    :cond_b
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v3, 0x1392

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 31
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mr2;->b(IJ)Lcom/google/android/gms/tasks/g;
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    .line 32
    :catch_0
    :try_start_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v3, 0x7ee

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 34
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mr2;->b(IJ)Lcom/google/android/gms/tasks/g;
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    .line 35
    :cond_c
    :goto_5
    :try_start_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v3, 0x1391

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 37
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mr2;->b(IJ)Lcom/google/android/gms/tasks/g;
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzggm; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v2

    .line 38
    :try_start_7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v4, 0xfa2

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 40
    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/ads/mr2;->c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    goto :goto_3

    .line 41
    :goto_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 42
    throw v0
.end method

.method private final r(I)Lcom/google/android/gms/internal/ads/xs2;
    .locals 1

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/n;->r:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/ps2;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/kw;->t1:Lcom/google/android/gms/internal/ads/cw;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/yr;->c()Lcom/google/android/gms/internal/ads/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/iw;->c(Lcom/google/android/gms/internal/ads/cw;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/n;->g:Lcom/google/android/gms/internal/ads/et2;

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/et2;->c(I)Lcom/google/android/gms/internal/ads/xs2;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/n;->f:Lcom/google/android/gms/internal/ads/ys2;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ys2;->c(I)Lcom/google/android/gms/internal/ads/xs2;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n;->q()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n;->h:Lcom/google/android/gms/internal/ads/ft2;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ft2;->b()Lcom/google/android/gms/internal/ads/pr2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 4
    invoke-interface {v0, p1, v3}, Lcom/google/android/gms/internal/ads/pr2;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v5, 0x1389

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    const/4 v9, 0x0

    move-object v8, p1

    .line 6
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/mr2;->d(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/n;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n;->i:Lcom/google/android/gms/internal/ads/k0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/k0;->a(Landroid/view/View;)V

    return-void
.end method

.method public final d(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/n;->q()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/n;->h:Lcom/google/android/gms/internal/ads/ft2;

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/ft2;->b()Lcom/google/android/gms/internal/ads/pr2;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 4
    invoke-interface {p3, p1, v2, p2, v2}, Lcom/google/android/gms/internal/ads/pr2;->d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v4, 0x138a

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long v5, p2, v0

    const/4 v8, 0x0

    move-object v7, p1

    .line 6
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/mr2;->d(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/n;->q()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/n;->h:Lcom/google/android/gms/internal/ads/ft2;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ft2;->b()Lcom/google/android/gms/internal/ads/pr2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    .line 4
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/pr2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v11, 0x1388

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v12, v2, v8

    const/4 v15, 0x0

    move-object v14, v1

    .line 6
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/mr2;->d(IJLjava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/tasks/g;

    return-object v1

    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public final f(III)V
    .locals 0

    return-void
.end method

.method public final g(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n;->h:Lcom/google/android/gms/internal/ads/ft2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ft2;->b()Lcom/google/android/gms/internal/ads/pr2;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/pr2;->b(Ljava/lang/String;Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfkf; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfkf;->zza()I

    move-result v1

    const-wide/16 v2, -0x1

    .line 3
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/mr2;->c(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/g;

    :cond_0
    return-void
.end method

.method public final declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/n;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized o()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/n;->r(I)Lcom/google/android/gms/internal/ads/xs2;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n;->h:Lcom/google/android/gms/internal/ads/ft2;

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/ft2;->a(Lcom/google/android/gms/internal/ads/xs2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/n;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n;->m:Ljava/util/concurrent/CountDownLatch;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/n;->j:Lcom/google/android/gms/internal/ads/mr2;

    const/16 v3, 0xfad

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/mr2;->b(IJ)Lcom/google/android/gms/tasks/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/n;->p:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/n;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/n;->p:Z

    if-nez v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/n;->n:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xe10

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 2
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n;->h:Lcom/google/android/gms/internal/ads/ft2;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ft2;->c()Lcom/google/android/gms/internal/ads/xs2;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/xs2;->e(J)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/n;->r:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/ps2;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/n;->k:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/ads/m;

    .line 5
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/m;-><init>(Lcom/google/android/gms/internal/ads/n;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    return-void
.end method
