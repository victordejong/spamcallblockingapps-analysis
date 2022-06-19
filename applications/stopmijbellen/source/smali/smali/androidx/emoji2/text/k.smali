.class public final synthetic Landroidx/emoji2/text/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/emoji2/text/k;->a:I

    iput-object p1, p0, Landroidx/emoji2/text/k;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Landroidx/emoji2/text/k;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Landroidx/emoji2/text/k;->b:Ljava/lang/Object;

    check-cast v0, Lk7/u;

    sget-object v1, Lk7/h;->f:Ljava/util/concurrent/ExecutorService;

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lk7/u;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Landroidx/emoji2/text/k;->b:Ljava/lang/Object;

    check-cast v0, Lm6/e;

    .line 3
    iget-object v2, v0, Lm6/e;->d:Lt4/c;

    .line 4
    invoke-virtual {v2}, Lt4/c;->a()V

    .line 5
    iget-object v2, v2, Lt4/c;->a:Landroid/content/Context;

    .line 6
    iput-object v2, v0, Lm6/e;->j:Landroid/content/Context;

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lm6/e;->o:Ljava/lang/String;

    .line 8
    invoke-static {}, Le6/a;->e()Le6/a;

    move-result-object v2

    iput-object v2, v0, Lm6/e;->k:Le6/a;

    .line 9
    new-instance v2, Lm6/c;

    iget-object v3, v0, Lm6/e;->j:Landroid/content/Context;

    new-instance v10, Ln6/c;

    const-wide/16 v5, 0x64

    const-wide/16 v7, 0x1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Ln6/c;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v4, 0x1f4

    invoke-direct {v2, v3, v10, v4, v5}, Lm6/c;-><init>(Landroid/content/Context;Ln6/c;J)V

    iput-object v2, v0, Lm6/e;->l:Lm6/c;

    .line 10
    invoke-static {}, Ld6/a;->a()Ld6/a;

    move-result-object v2

    iput-object v2, v0, Lm6/e;->m:Ld6/a;

    .line 11
    new-instance v2, Lm6/a;

    iget-object v3, v0, Lm6/e;->g:Lw5/b;

    iget-object v4, v0, Lm6/e;->k:Le6/a;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v5, Le6/d;->a:Le6/d;

    .line 14
    const-class v5, Le6/d;

    monitor-enter v5

    .line 15
    :try_start_1
    sget-object v6, Le6/d;->a:Le6/d;

    if-nez v6, :cond_0

    .line 16
    new-instance v6, Le6/d;

    invoke-direct {v6}, Le6/d;-><init>()V

    sput-object v6, Le6/d;->a:Le6/d;

    .line 17
    :cond_0
    sget-object v6, Le6/d;->a:Le6/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 18
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "fpr_log_source"

    .line 19
    iget-object v7, v4, Le6/a;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v5, "com.google.firebase.perf.LogSourceName"

    .line 20
    sget-object v9, Le6/d;->b:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 21
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 22
    iget-object v4, v4, Le6/a;->c:Le6/t;

    invoke-virtual {v4, v5, v7}, Le6/t;->e(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v4, v6}, Le6/a;->d(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Ln6/b;->c()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 25
    invoke-virtual {v4}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v7, "FIREPERF"

    .line 26
    :goto_0
    invoke-direct {v2, v3, v7}, Lm6/a;-><init>(Lw5/b;Ljava/lang/String;)V

    iput-object v2, v0, Lm6/e;->h:Lm6/a;

    .line 27
    iget-object v2, v0, Lm6/e;->m:Ld6/a;

    new-instance v3, Ljava/lang/ref/WeakReference;

    sget-object v4, Lm6/e;->s:Lm6/e;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 28
    iget-object v4, v2, Ld6/a;->d:Ljava/util/Set;

    monitor-enter v4

    .line 29
    :try_start_2
    iget-object v2, v2, Ld6/a;->d:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    invoke-static {}, Lo6/c;->K()Lo6/c$b;

    move-result-object v2

    iput-object v2, v0, Lm6/e;->n:Lo6/c$b;

    .line 32
    iget-object v3, v0, Lm6/e;->d:Lt4/c;

    .line 33
    invoke-virtual {v3}, Lt4/c;->a()V

    .line 34
    iget-object v3, v3, Lt4/c;->c:Lt4/e;

    .line 35
    iget-object v3, v3, Lt4/e;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v2}, Lcom/google/protobuf/i$a;->n()V

    .line 37
    iget-object v4, v2, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v4, Lo6/c;

    invoke-static {v4, v3}, Lo6/c;->z(Lo6/c;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lo6/a;->F()Lo6/a$b;

    move-result-object v3

    iget-object v4, v0, Lm6/e;->o:Ljava/lang/String;

    .line 39
    invoke-virtual {v3}, Lcom/google/protobuf/i$a;->n()V

    .line 40
    iget-object v5, v3, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v5, Lo6/a;

    invoke-static {v5, v4}, Lo6/a;->z(Lo6/a;Ljava/lang/String;)V

    const-string v4, "20.0.1"

    .line 41
    invoke-virtual {v3}, Lcom/google/protobuf/i$a;->n()V

    .line 42
    iget-object v5, v3, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v5, Lo6/a;

    invoke-static {v5, v4}, Lo6/a;->A(Lo6/a;Ljava/lang/String;)V

    .line 43
    iget-object v4, v0, Lm6/e;->j:Landroid/content/Context;

    const-string v5, ""

    .line 44
    :try_start_3
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 45
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 46
    :catch_1
    :goto_1
    invoke-virtual {v3}, Lcom/google/protobuf/i$a;->n()V

    .line 47
    iget-object v4, v3, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v4, Lo6/a;

    invoke-static {v4, v5}, Lo6/a;->B(Lo6/a;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v2}, Lcom/google/protobuf/i$a;->n()V

    .line 49
    iget-object v2, v2, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v2, Lo6/c;

    invoke-virtual {v3}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object v3

    check-cast v3, Lo6/a;

    invoke-static {v2, v3}, Lo6/c;->D(Lo6/c;Lo6/a;)V

    .line 50
    iget-object v2, v0, Lm6/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51
    :cond_4
    :goto_2
    iget-object v2, v0, Lm6/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 52
    iget-object v2, v0, Lm6/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm6/b;

    if-eqz v2, :cond_4

    .line 53
    iget-object v3, v0, Lm6/e;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lm6/d;

    invoke-direct {v4, v0, v2, v1}, Lm6/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 54
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 55
    monitor-exit v5

    throw v0

    .line 56
    :pswitch_2
    iget-object v0, p0, Landroidx/emoji2/text/k;->b:Ljava/lang/Object;

    check-cast v0, Lx5/d;

    sget-object v2, Lx5/d;->m:Ljava/lang/Object;

    .line 57
    invoke-virtual {v0, v1}, Lx5/d;->b(Z)V

    return-void

    .line 58
    :pswitch_3
    iget-object v0, p0, Landroidx/emoji2/text/k;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/j$b;

    invoke-virtual {v0}, Landroidx/emoji2/text/j$b;->c()V

    return-void

    :goto_3
    iget-object v0, p0, Landroidx/emoji2/text/k;->b:Ljava/lang/Object;

    check-cast v0, Lk7/k;

    invoke-virtual {v0}, Lk7/k;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
