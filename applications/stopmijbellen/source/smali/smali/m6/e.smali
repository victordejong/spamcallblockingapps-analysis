.class public Lm6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/a$b;


# static fields
.field public static final r:Lg6/a;

.field public static final s:Lm6/e;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lm6/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lt4/c;

.field public e:Lc6/a;

.field public f:Lx5/e;

.field public g:Lw5/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw5/b<",
            "Lr2/g;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lm6/a;

.field public i:Ljava/util/concurrent/ExecutorService;

.field public j:Landroid/content/Context;

.field public k:Le6/a;

.field public l:Lm6/c;

.field public m:Ld6/a;

.field public n:Lo6/c$b;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object v0

    sput-object v0, Lm6/e;->r:Lg6/a;

    .line 2
    new-instance v0, Lm6/e;

    invoke-direct {v0}, Lm6/e;-><init>()V

    sput-object v0, Lm6/e;->s:Lm6/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lm6/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lm6/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    iput-boolean v1, p0, Lm6/e;->q:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lm6/e;->i:Ljava/util/concurrent/ExecutorService;

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lm6/e;->a:Ljava/util/Map;

    const/16 v1, 0x32

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lo6/h;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lo6/h;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lo6/h;->U()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lo6/h;->Z()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lo6/h;->P()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "UNKNOWN"

    .line 5
    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 6
    invoke-virtual {p0}, Lo6/h;->W()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v2, v4, p0

    const/4 p0, 0x2

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v5

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, p0

    const-string p0, "network request trace: %s (responseCode: %s, responseTime: %.4fms)"

    .line 8
    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lo6/j;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-interface {p0}, Lo6/j;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lo6/j;->h()Lo6/m;

    move-result-object p0

    invoke-static {p0}, Lm6/e;->c(Lo6/m;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Lo6/j;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Lo6/j;->k()Lo6/h;

    move-result-object p0

    invoke-static {p0}, Lm6/e;->a(Lo6/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-interface {p0}, Lo6/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p0}, Lo6/j;->e()Lo6/g;

    move-result-object p0

    .line 7
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0}, Lo6/g;->H()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 9
    invoke-virtual {p0}, Lo6/g;->E()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 10
    invoke-virtual {p0}, Lo6/g;->D()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)"

    .line 11
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "log"

    return-object p0
.end method

.method public static c(Lo6/m;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lo6/m;->M()J

    move-result-wide v0

    .line 2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lo6/m;->N()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "trace metric: %s (duration: %.4fms)"

    .line 5
    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm6/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final e(Lo6/i$b;Lo6/d;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lm6/e;->d()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lm6/e;->a:Ljava/util/Map;

    const-string v6, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v7, p0, Lm6/e;->a:Ljava/util/Map;

    const-string v8, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    .line 4
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 5
    iget-object v9, p0, Lm6/e;->a:Ljava/util/Map;

    const-string v10, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 6
    invoke-virtual {p1}, Lo6/i$b;->g()Z

    move-result v11

    if-eqz v11, :cond_0

    if-lez v0, :cond_0

    .line 7
    iget-object v1, p0, Lm6/e;->a:Ljava/util/Map;

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lo6/i$b;->j()Z

    move-result v6

    if-eqz v6, :cond_1

    if-lez v7, :cond_1

    .line 9
    iget-object v0, p0, Lm6/e;->a:Ljava/util/Map;

    sub-int/2addr v7, v5

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 11
    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p1}, Lo6/i$b;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    if-lez v9, :cond_2

    .line 13
    iget-object v0, p0, Lm6/e;->a:Ljava/util/Map;

    sub-int/2addr v9, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_2
    sget-object v6, Lm6/e;->r:Lg6/a;

    new-array v3, v3, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Lm6/e;->b(Lo6/j;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v4

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 17
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    .line 18
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    .line 19
    iget-boolean v0, v6, Lg6/a;->b:Z

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, v6, Lg6/a;->a:Lg6/b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d)."

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 21
    sget-object v0, Lm6/e;->r:Lg6/a;

    const-string v1, "Transport is not initialized yet, %s will be queued for to be dispatched later"

    new-array v2, v5, [Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Lm6/e;->b(Lo6/j;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 23
    iget-boolean v3, v0, Lg6/a;->b:Z

    if-eqz v3, :cond_4

    .line 24
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_4
    iget-object v0, p0, Lm6/e;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lm6/b;

    invoke-direct {v1, p1, p2}, Lm6/b;-><init>(Lo6/i$b;Lo6/d;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    .line 26
    :cond_6
    iget-object v0, p0, Lm6/e;->k:Le6/a;

    invoke-virtual {v0}, Le6/a;->o()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    .line 27
    iget-object v0, p0, Lm6/e;->n:Lo6/c$b;

    .line 28
    iget-object v0, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v0, Lo6/c;

    invoke-virtual {v0}, Lo6/c;->H()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 29
    iget-boolean v0, p0, Lm6/e;->q:Z

    if-nez v0, :cond_7

    goto/16 :goto_4

    .line 30
    :cond_7
    :try_start_0
    iget-object v0, p0, Lm6/e;->f:Lx5/e;

    invoke-interface {v0}, Lx5/e;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-wide/32 v7, 0xea60

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v7, v8, v9}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 31
    sget-object v7, Lm6/e;->r:Lg6/a;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v4

    .line 32
    iget-boolean v0, v7, Lg6/a;->b:Z

    if-eqz v0, :cond_8

    .line 33
    iget-object v0, v7, Lg6/a;->a:Lg6/b;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "Task to retrieve Installation Id is timed out: %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v0

    .line 34
    sget-object v7, Lm6/e;->r:Lg6/a;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v4

    .line 35
    iget-boolean v0, v7, Lg6/a;->b:Z

    if-eqz v0, :cond_8

    .line 36
    iget-object v0, v7, Lg6/a;->a:Lg6/b;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "Task to retrieve Installation Id is interrupted: %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_2
    move-exception v0

    .line 37
    sget-object v7, Lm6/e;->r:Lg6/a;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v4

    .line 38
    iget-boolean v0, v7, Lg6/a;->b:Z

    if-eqz v0, :cond_8

    .line 39
    iget-object v0, v7, Lg6/a;->a:Lg6/b;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "Unable to retrieve Installation Id: %s"

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    move-object v0, v6

    .line 40
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 41
    iget-object v7, p0, Lm6/e;->n:Lo6/c$b;

    .line 42
    invoke-virtual {v7}, Lcom/google/protobuf/i$a;->n()V

    .line 43
    iget-object v7, v7, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v7, Lo6/c;

    invoke-static {v7, v0}, Lo6/c;->C(Lo6/c;Ljava/lang/String;)V

    goto :goto_4

    .line 44
    :cond_9
    sget-object v0, Lm6/e;->r:Lg6/a;

    .line 45
    iget-boolean v7, v0, Lg6/a;->b:Z

    if-eqz v7, :cond_a

    .line 46
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebasePerformance"

    const-string v7, "Firebase Installation Id is empty, contact Firebase Support for debugging."

    .line 47
    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_a
    :goto_4
    iget-object v0, p0, Lm6/e;->n:Lo6/c$b;

    .line 49
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 50
    iget-object v7, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast v7, Lo6/c;

    invoke-static {v7, p2}, Lo6/c;->A(Lo6/c;Lo6/d;)V

    .line 51
    invoke-virtual {p1}, Lo6/i$b;->g()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 52
    iget-object p2, v0, Lcom/google/protobuf/i$a;->a:Lcom/google/protobuf/i;

    .line 53
    invoke-virtual {p2}, Lcom/google/protobuf/i;->w()Lcom/google/protobuf/i$a;

    move-result-object p2

    .line 54
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->m()Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/protobuf/i$a;->o(Lcom/google/protobuf/i;)Lcom/google/protobuf/i$a;

    .line 55
    move-object v0, p2

    check-cast v0, Lo6/c$b;

    .line 56
    iget-object p2, p0, Lm6/e;->e:Lc6/a;

    if-nez p2, :cond_b

    .line 57
    invoke-virtual {p0}, Lm6/e;->d()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 58
    sget-object p2, Lc6/a;->f:Lg6/a;

    .line 59
    invoke-static {}, Lt4/c;->b()Lt4/c;

    move-result-object p2

    const-class v7, Lc6/a;

    .line 60
    invoke-virtual {p2}, Lt4/c;->a()V

    .line 61
    iget-object p2, p2, Lt4/c;->d:Lz4/k;

    invoke-virtual {p2, v7}, Landroid/support/v4/media/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    .line 62
    check-cast p2, Lc6/a;

    .line 63
    iput-object p2, p0, Lm6/e;->e:Lc6/a;

    .line 64
    :cond_b
    iget-object p2, p0, Lm6/e;->e:Lc6/a;

    if-eqz p2, :cond_c

    .line 65
    new-instance v7, Ljava/util/HashMap;

    iget-object p2, p2, Lc6/a;->a:Ljava/util/Map;

    invoke-direct {v7, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_5

    .line 66
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 67
    :goto_5
    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->n()V

    .line 68
    iget-object p2, v0, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast p2, Lo6/c;

    invoke-static {p2}, Lo6/c;->B(Lo6/c;)Ljava/util/Map;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/r;

    invoke-virtual {p2, v7}, Lcom/google/protobuf/r;->putAll(Ljava/util/Map;)V

    .line 69
    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/i$a;->n()V

    .line 70
    iget-object p2, p1, Lcom/google/protobuf/i$a;->b:Lcom/google/protobuf/i;

    check-cast p2, Lo6/i;

    invoke-virtual {v0}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object v0

    check-cast v0, Lo6/c;

    invoke-static {p2, v0}, Lo6/i;->z(Lo6/i;Lo6/c;)V

    .line 71
    invoke-virtual {p1}, Lcom/google/protobuf/i$a;->l()Lcom/google/protobuf/i;

    move-result-object p1

    check-cast p1, Lo6/i;

    .line 72
    iget-object p2, p0, Lm6/e;->k:Le6/a;

    invoke-virtual {p2}, Le6/a;->o()Z

    move-result p2

    if-nez p2, :cond_f

    .line 73
    sget-object p2, Lm6/e;->r:Lg6/a;

    const-string v0, "Performance collection is not enabled, dropping %s"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lm6/e;->b(Lo6/j;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p2, v0, v7}, Lg6/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    :goto_6
    const/4 p2, 0x0

    goto/16 :goto_12

    .line 74
    :cond_f
    invoke-virtual {p1}, Lo6/i;->D()Lo6/c;

    move-result-object p2

    invoke-virtual {p2}, Lo6/c;->H()Z

    move-result p2

    if-nez p2, :cond_10

    .line 75
    sget-object p2, Lm6/e;->r:Lg6/a;

    const-string v0, "App Instance ID is null or empty, dropping %s"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lm6/e;->b(Lo6/j;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p2, v0, v7}, Lg6/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 76
    :cond_10
    iget-object p2, p0, Lm6/e;->j:Landroid/content/Context;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-virtual {p1}, Lo6/i;->g()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 79
    new-instance v7, Li6/d;

    invoke-virtual {p1}, Lo6/i;->h()Lo6/m;

    move-result-object v8

    invoke-direct {v7, v8}, Li6/d;-><init>(Lo6/m;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_11
    invoke-virtual {p1}, Lo6/i;->j()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 81
    new-instance v7, Li6/c;

    .line 82
    invoke-virtual {p1}, Lo6/i;->k()Lo6/h;

    move-result-object v8

    invoke-direct {v7, v8, p2}, Li6/c;-><init>(Lo6/h;Landroid/content/Context;)V

    .line 83
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_12
    invoke-virtual {p1}, Lo6/i;->E()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 85
    new-instance p2, Li6/a;

    invoke-virtual {p1}, Lo6/i;->D()Lo6/c;

    move-result-object v7

    invoke-direct {p2, v7}, Li6/a;-><init>(Lo6/c;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_13
    invoke-virtual {p1}, Lo6/i;->a()Z

    move-result p2

    if-eqz p2, :cond_14

    .line 87
    new-instance p2, Li6/b;

    invoke-virtual {p1}, Lo6/i;->e()Lo6/g;

    move-result-object v7

    invoke-direct {p2, v7}, Li6/b;-><init>(Lo6/g;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_14
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_15

    .line 89
    invoke-static {}, Lg6/a;->b()Lg6/a;

    move-result-object p2

    .line 90
    iget-boolean v0, p2, Lg6/a;->b:Z

    if-eqz v0, :cond_17

    .line 91
    iget-object p2, p2, Lg6/a;->a:Lg6/b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 92
    :cond_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/e;

    .line 93
    invoke-virtual {v0}, Li6/e;->a()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_17
    :goto_7
    const/4 p2, 0x0

    goto :goto_8

    :cond_18
    const/4 p2, 0x1

    :goto_8
    if-nez p2, :cond_19

    .line 94
    sget-object p2, Lm6/e;->r:Lg6/a;

    const-string v0, "Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    new-array v7, v5, [Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Lm6/e;->b(Lo6/j;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    .line 96
    invoke-virtual {p2, v0, v7}, Lg6/a;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 97
    :cond_19
    iget-object p2, p0, Lm6/e;->l:Lm6/c;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Lo6/i;->g()Z

    move-result v0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 99
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    if-eqz v0, :cond_1e

    .line 100
    iget-object v0, p2, Lm6/c;->a:Le6/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-class v8, Le6/s;

    monitor-enter v8

    .line 102
    :try_start_1
    sget-object v9, Le6/s;->a:Le6/s;

    if-nez v9, :cond_1a

    .line 103
    new-instance v9, Le6/s;

    invoke-direct {v9}, Le6/s;-><init>()V

    sput-object v9, Le6/s;->a:Le6/s;

    .line 104
    :cond_1a
    sget-object v9, Le6/s;->a:Le6/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    .line 105
    invoke-virtual {v0, v9}, Le6/a;->j(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v8

    .line 106
    invoke-virtual {v8}, Ln6/b;->c()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v10}, Le6/a;->p(F)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 107
    iget-object v0, v0, Le6/a;->c:Le6/t;

    const-string v9, "com.google.firebase.perf.TraceSamplingRate"

    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v9, v10}, Le6/t;->c(Ljava/lang/String;F)Z

    .line 108
    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_9

    .line 109
    :cond_1b
    invoke-virtual {v0, v9}, Le6/a;->b(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v8

    .line 110
    invoke-virtual {v8}, Ln6/b;->c()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v0, v9}, Le6/a;->p(F)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 111
    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_9

    .line 112
    :cond_1c
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 113
    :goto_9
    iget v8, p2, Lm6/c;->b:F

    cmpg-float v0, v8, v0

    if-gez v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_a

    :cond_1d
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_1e

    .line 114
    invoke-virtual {p1}, Lo6/i;->h()Lo6/m;

    move-result-object v0

    invoke-virtual {v0}, Lo6/m;->O()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lm6/c;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_f

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit v8

    throw p1

    .line 116
    :cond_1e
    invoke-virtual {p1}, Lo6/i;->j()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 117
    iget-object v0, p2, Lm6/c;->a:Le6/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-class v8, Le6/g;

    monitor-enter v8

    .line 119
    :try_start_2
    sget-object v9, Le6/g;->a:Le6/g;

    if-nez v9, :cond_1f

    .line 120
    new-instance v9, Le6/g;

    invoke-direct {v9}, Le6/g;-><init>()V

    sput-object v9, Le6/g;->a:Le6/g;

    .line 121
    :cond_1f
    sget-object v9, Le6/g;->a:Le6/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    .line 122
    invoke-virtual {v0, v9}, Le6/a;->j(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v8

    .line 123
    invoke-virtual {v8}, Ln6/b;->c()Z

    move-result v10

    if-eqz v10, :cond_20

    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v0, v10}, Le6/a;->p(F)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 124
    iget-object v0, v0, Le6/a;->c:Le6/t;

    const-string v7, "com.google.firebase.perf.NetworkRequestSamplingRate"

    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v0, v7, v9}, Le6/t;->c(Ljava/lang/String;F)Z

    .line 125
    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_b

    .line 126
    :cond_20
    invoke-virtual {v0, v9}, Le6/a;->b(Landroid/support/v4/media/a;)Ln6/b;

    move-result-object v8

    .line 127
    invoke-virtual {v8}, Ln6/b;->c()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v0, v9}, Le6/a;->p(F)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 128
    invoke-virtual {v8}, Ln6/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_b

    .line 129
    :cond_21
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 130
    :goto_b
    iget v7, p2, Lm6/c;->b:F

    cmpg-float v0, v7, v0

    if-gez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_c

    :cond_22
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_23

    .line 131
    invoke-virtual {p1}, Lo6/i;->k()Lo6/h;

    move-result-object v0

    invoke-virtual {v0}, Lo6/h;->Q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lm6/c;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_f

    :catchall_1
    move-exception p1

    .line 132
    monitor-exit v8

    throw p1

    .line 133
    :cond_23
    invoke-virtual {p1}, Lo6/i;->g()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 134
    invoke-virtual {p1}, Lo6/i;->h()Lo6/m;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lo6/m;->N()Ljava/lang/String;

    move-result-object v0

    const-string v7, "_fs"

    .line 136
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 137
    invoke-virtual {p1}, Lo6/i;->h()Lo6/m;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lo6/m;->N()Ljava/lang/String;

    move-result-object v0

    const-string v7, "_bs"

    .line 139
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 140
    :cond_24
    invoke-virtual {p1}, Lo6/i;->h()Lo6/m;

    move-result-object v0

    invoke-virtual {v0}, Lo6/m;->I()I

    move-result v0

    if-lez v0, :cond_25

    goto :goto_d

    .line 141
    :cond_25
    invoke-virtual {p1}, Lo6/i;->a()Z

    move-result v0

    if-eqz v0, :cond_26

    :goto_d
    const/4 v0, 0x0

    goto :goto_e

    :cond_26
    const/4 v0, 0x1

    :goto_e
    if-nez v0, :cond_27

    const/4 p2, 0x1

    goto :goto_10

    .line 142
    :cond_27
    invoke-virtual {p1}, Lo6/i;->j()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 143
    iget-object p2, p2, Lm6/c;->d:Lm6/c$a;

    invoke-virtual {p2}, Lm6/c$a;->b()Z

    move-result p2

    goto :goto_10

    .line 144
    :cond_28
    invoke-virtual {p1}, Lo6/i;->g()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 145
    iget-object p2, p2, Lm6/c;->c:Lm6/c$a;

    invoke-virtual {p2}, Lm6/c$a;->b()Z

    move-result p2

    goto :goto_10

    :cond_29
    :goto_f
    const/4 p2, 0x0

    :goto_10
    if-nez p2, :cond_2d

    .line 146
    invoke-virtual {p1}, Lo6/i;->g()Z

    move-result p2

    const-wide/16 v7, 0x1

    if-eqz p2, :cond_2a

    .line 147
    iget-object p2, p0, Lm6/e;->m:Ld6/a;

    const-string v0, "_fstec"

    invoke-virtual {p2, v0, v7, v8}, Ld6/a;->c(Ljava/lang/String;J)V

    goto :goto_11

    .line 148
    :cond_2a
    invoke-virtual {p1}, Lo6/i;->j()Z

    move-result p2

    if-eqz p2, :cond_2b

    .line 149
    iget-object p2, p0, Lm6/e;->m:Ld6/a;

    const-string v0, "_fsntc"

    invoke-virtual {p2, v0, v7, v8}, Ld6/a;->c(Ljava/lang/String;J)V

    .line 150
    :cond_2b
    :goto_11
    invoke-virtual {p1}, Lo6/i;->g()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 151
    sget-object p2, Lm6/e;->r:Lg6/a;

    const-string v0, "Rate Limited - %s"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lo6/i;->h()Lo6/m;

    move-result-object v8

    invoke-static {v8}, Lm6/e;->c(Lo6/m;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p2, v0, v7}, Lg6/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 152
    :cond_2c
    invoke-virtual {p1}, Lo6/i;->j()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 153
    sget-object p2, Lm6/e;->r:Lg6/a;

    const-string v0, "Rate Limited - %s"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lo6/i;->k()Lo6/h;

    move-result-object v8

    invoke-static {v8}, Lm6/e;->a(Lo6/h;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-virtual {p2, v0, v7}, Lg6/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2d
    const/4 p2, 0x1

    :goto_12
    if-eqz p2, :cond_35

    .line 154
    invoke-virtual {p1}, Lo6/i;->g()Z

    move-result p2

    if-eqz p2, :cond_2f

    .line 155
    sget-object p2, Lm6/e;->r:Lg6/a;

    new-array v0, v2, [Ljava/lang/Object;

    .line 156
    invoke-static {p1}, Lm6/e;->b(Lo6/j;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    invoke-virtual {p1}, Lo6/i;->h()Lo6/m;

    move-result-object v7

    .line 157
    invoke-virtual {v7}, Lo6/m;->N()Ljava/lang/String;

    move-result-object v7

    const-string v8, "_st_"

    .line 158
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "android-ide"

    const-string v10, "perf-android-sdk"

    if-eqz v8, :cond_2e

    .line 159
    iget-object v8, p0, Lm6/e;->p:Ljava/lang/String;

    iget-object v11, p0, Lm6/e;->o:Ljava/lang/String;

    .line 160
    invoke-static {v8, v11}, Lj4/w0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v4

    aput-object v7, v3, v5

    aput-object v10, v3, v2

    aput-object v9, v3, v1

    const-string v1, "%s/metrics/trace/SCREEN_TRACE/%s?utm_source=%s&utm_medium=%s"

    .line 161
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 162
    :cond_2e
    iget-object v8, p0, Lm6/e;->p:Ljava/lang/String;

    iget-object v11, p0, Lm6/e;->o:Ljava/lang/String;

    .line 163
    invoke-static {v8, v11}, Lj4/w0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v4

    aput-object v7, v3, v5

    aput-object v10, v3, v2

    aput-object v9, v3, v1

    const-string v1, "%s/metrics/trace/DURATION_TRACE/%s?utm_source=%s&utm_medium=%s"

    .line 164
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_13
    aput-object v1, v0, v5

    const-string v1, "Logging %s. In a minute, visit the Firebase console to view your data: %s"

    .line 165
    invoke-virtual {p2, v1, v0}, Lg6/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    .line 166
    :cond_2f
    sget-object p2, Lm6/e;->r:Lg6/a;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1}, Lm6/e;->b(Lo6/j;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Logging %s"

    invoke-virtual {p2, v1, v0}, Lg6/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    :goto_14
    iget-object p2, p0, Lm6/e;->h:Lm6/a;

    .line 168
    iget-object v0, p2, Lm6/a;->c:Lr2/f;

    const-string v1, "FirebasePerformance"

    if-nez v0, :cond_31

    .line 169
    iget-object v0, p2, Lm6/a;->b:Lw5/b;

    invoke-interface {v0}, Lw5/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr2/g;

    if-eqz v0, :cond_30

    .line 170
    iget-object v2, p2, Lm6/a;->a:Ljava/lang/String;

    const-class v3, Lo6/i;

    .line 171
    new-instance v7, Lr2/b;

    const-string v8, "proto"

    invoke-direct {v7, v8}, Lr2/b;-><init>(Ljava/lang/String;)V

    .line 172
    sget-object v8, Lz2/l;->d:Lz2/l;

    .line 173
    invoke-interface {v0, v2, v3, v7, v8}, Lr2/g;->a(Ljava/lang/String;Ljava/lang/Class;Lr2/b;Lr2/e;)Lr2/f;

    move-result-object v0

    iput-object v0, p2, Lm6/a;->c:Lr2/f;

    goto :goto_15

    .line 174
    :cond_30
    sget-object v0, Lm6/a;->d:Lg6/a;

    .line 175
    iget-boolean v2, v0, Lg6/a;->b:Z

    if-eqz v2, :cond_31

    .line 176
    iget-object v0, v0, Lg6/a;->a:Lg6/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Flg TransportFactory is not available at the moment"

    .line 177
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_31
    :goto_15
    iget-object p2, p2, Lm6/a;->c:Lr2/f;

    if-eqz p2, :cond_32

    const/4 v4, 0x1

    :cond_32
    if-nez v4, :cond_33

    .line 179
    sget-object p1, Lm6/a;->d:Lg6/a;

    .line 180
    iget-boolean p2, p1, Lg6/a;->b:Z

    if-eqz p2, :cond_34

    .line 181
    iget-object p1, p1, Lg6/a;->a:Lg6/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Unable to dispatch event because Flg Transport is not available"

    .line 182
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 183
    :cond_33
    new-instance v0, Lr2/a;

    sget-object v1, Lr2/d;->a:Lr2/d;

    invoke-direct {v0, v6, p1, v1}, Lr2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lr2/d;)V

    .line 184
    check-cast p2, Lu2/k;

    .line 185
    sget-object p1, Ls2/c;->b:Ls2/c;

    invoke-virtual {p2, v0, p1}, Lu2/k;->a(Lr2/c;Lr2/h;)V

    .line 186
    :cond_34
    :goto_16
    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/session/SessionManager;->updatePerfSessionIfExpired()Z

    :cond_35
    return-void
.end method

.method public onUpdateAppState(Lo6/d;)V
    .locals 2

    .line 1
    sget-object v0, Lo6/d;->c:Lo6/d;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lm6/e;->q:Z

    .line 2
    invoke-virtual {p0}, Lm6/e;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lm6/e;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroidx/appcompat/widget/a1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/a1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
