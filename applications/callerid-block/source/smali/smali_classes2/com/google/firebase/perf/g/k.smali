.class public Lcom/google/firebase/perf/g/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/firebase/perf/internal/a$a;


# static fields
.field private static final q:Lcom/google/firebase/perf/f/a;

.field private static final r:Lcom/google/firebase/perf/g/k;


# instance fields
.field private b:Lcom/google/firebase/c;

.field private c:Lcom/google/firebase/perf/c;

.field private d:Lcom/google/firebase/installations/g;

.field private e:Lcom/google/firebase/k/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/k/b<",
            "Lcom/google/android/datatransport/f;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/firebase/perf/g/b;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private final h:Lcom/google/firebase/perf/v1/c$b;

.field private i:Landroid/content/Context;

.field private j:Lcom/google/firebase/perf/config/a;

.field private k:Lcom/google/firebase/perf/g/d;

.field private l:Lcom/google/firebase/perf/internal/a;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private n:Z

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/firebase/perf/g/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/f/a;->e()Lcom/google/firebase/perf/f/a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-instance v0, Lcom/google/firebase/perf/g/k;

    invoke-direct {v0}, Lcom/google/firebase/perf/g/k;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/g/k;->r:Lcom/google/firebase/perf/g/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/google/firebase/perf/g/k;->n:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/google/firebase/perf/v1/c;->f0()Lcom/google/firebase/perf/v1/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->h:Lcom/google/firebase/perf/v1/c$b;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->o:Ljava/util/Map;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private A()V
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->j:Lcom/google/firebase/perf/config/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->h:Lcom/google/firebase/perf/v1/c$b;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c$b;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/perf/g/k;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/google/firebase/perf/g/k;->d:Lcom/google/firebase/installations/g;

    invoke-interface {v3}, Lcom/google/firebase/installations/g;->F()Lcom/google/android/gms/tasks/g;

    move-result-object v3

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/tasks/j;->b(Lcom/google/android/gms/tasks/g;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Task to retrieve Installation Id is timed out: %s"

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/f/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v3

    sget-object v4, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Task to retrieve Installation Id is interrupted: %s"

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/f/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v3

    sget-object v4, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unable to retrieve Installation Id: %s"

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/f/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/perf/g/k;->h:Lcom/google/firebase/perf/v1/c$b;

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/v1/c$b;->M(Ljava/lang/String;)Lcom/google/firebase/perf/v1/c$b;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    const-string v1, "Firebase Installation Id is empty, contact Firebase Support for debugging."

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/f/a;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private B()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->c:Lcom/google/firebase/perf/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/g/k;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/perf/c;->c()Lcom/google/firebase/perf/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->c:Lcom/google/firebase/perf/c;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/firebase/perf/g/k;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/perf/g/k;->y()V

    return-void
.end method

.method private b(Lcom/google/firebase/perf/v1/g;)V
    .locals 4

    sget-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/perf/g/k;->h(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Logging %s"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/f/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->f:Lcom/google/firebase/perf/g/b;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/g/b;->b(Lcom/google/firebase/perf/v1/g;)V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->l:Lcom/google/firebase/perf/internal/a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/google/firebase/perf/g/k;->r:Lcom/google/firebase/perf/g/k;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/a;->j(Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->h:Lcom/google/firebase/perf/v1/c$b;

    iget-object v1, p0, Lcom/google/firebase/perf/g/k;->b:Lcom/google/firebase/c;

    invoke-virtual {v1}, Lcom/google/firebase/c;->j()Lcom/google/firebase/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/c$b;->P(Ljava/lang/String;)Lcom/google/firebase/perf/v1/c$b;

    invoke-static {}, Lcom/google/firebase/perf/v1/a;->Y()Lcom/google/firebase/perf/v1/a$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/g/k;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->I(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    sget-object v2, Lcom/google/firebase/perf/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->J(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    iget-object v2, p0, Lcom/google/firebase/perf/g/k;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/firebase/perf/g/k;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/v1/a$b;->L(Ljava/lang/String;)Lcom/google/firebase/perf/v1/a$b;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/c$b;->L(Lcom/google/firebase/perf/v1/a$b;)Lcom/google/firebase/perf/v1/c$b;

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/g/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/perf/g/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, v0}, Lcom/google/firebase/perf/g/f;->a(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/g/c;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/perf/g/k;->B()V

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->c:Lcom/google/firebase/perf/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/perf/c;->b()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static e()Lcom/google/firebase/perf/g/k;
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/g/k;->r:Lcom/google/firebase/perf/g/k;

    return-object v0
.end method

.method private static f(Lcom/google/firebase/perf/v1/f;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/f;->e0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/f;->b0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/f;->a0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "gauges (hasMetadata: %b, cpuGaugeCount: %d, memoryGaugeCount: %d)"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->r0()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->w0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->l0()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "UNKNOWN"

    :goto_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->t0()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object v2, v4, p0

    const/4 p0, 0x2

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, p0

    const-string p0, "network request trace: %s (responseCode: %s, responseTime: %.4fms)"

    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/google/firebase/perf/v1/h;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/google/firebase/perf/v1/h;->j()Lcom/google/firebase/perf/v1/j;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/g/k;->i(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/google/firebase/perf/v1/h;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/firebase/perf/v1/h;->n()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/g/k;->g(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/google/firebase/perf/v1/h;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/google/firebase/perf/v1/h;->f()Lcom/google/firebase/perf/v1/f;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/perf/g/k;->f(Lcom/google/firebase/perf/v1/f;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "log"

    return-object p0
.end method

.method private static i(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/j;->l0()J

    move-result-wide v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/j;->o0()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "trace metric: %s (duration: %.4fms)"

    invoke-static {v2, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :catch_0
    :goto_0
    return-object v0
.end method

.method private k(Lcom/google/firebase/perf/v1/g;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->h()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/firebase/perf/g/k;->l:Lcom/google/firebase/perf/internal/a;

    sget-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->b:Lcom/google/firebase/perf/util/Constants$CounterNames;

    :goto_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Constants$CounterNames;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/perf/internal/a;->e(Ljava/lang/String;J)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/g/k;->l:Lcom/google/firebase/perf/internal/a;

    sget-object v0, Lcom/google/firebase/perf/util/Constants$CounterNames;->c:Lcom/google/firebase/perf/util/Constants$CounterNames;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private m(Lcom/google/firebase/perf/v1/h;)Z
    .locals 8

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->o:Ljava/util/Map;

    const-string v1, "KEY_AVAILABLE_TRACES_FOR_CACHING"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/google/firebase/perf/g/k;->o:Ljava/util/Map;

    const-string v3, "KEY_AVAILABLE_NETWORK_REQUESTS_FOR_CACHING"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lcom/google/firebase/perf/g/k;->o:Ljava/util/Map;

    const-string v5, "KEY_AVAILABLE_GAUGES_FOR_CACHING"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p1}, Lcom/google/firebase/perf/v1/h;->h()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/google/firebase/perf/g/k;->o:Ljava/util/Map;

    sub-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_0
    invoke-interface {p1}, Lcom/google/firebase/perf/v1/h;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v2, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/g/k;->o:Ljava/util/Map;

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_1
    invoke-interface {p1}, Lcom/google/firebase/perf/v1/h;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez v4, :cond_2

    iget-object p1, p0, Lcom/google/firebase/perf/g/k;->o:Ljava/util/Map;

    sub-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v7

    :cond_2
    sget-object v1, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/perf/g/k;->h(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    const/4 p1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const/4 p1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, p1

    const-string p1, "%s is not allowed to cache. Cache exhausted the limit (availableTracesForCaching: %d, availableNetworkRequestsForCaching: %d, availableGaugesForCaching: %d)."

    invoke-virtual {v1, p1, v3}, Lcom/google/firebase/perf/f/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method private n(Lcom/google/firebase/perf/v1/g;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->j:Lcom/google/firebase/perf/config/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/config/a;->I()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/perf/g/k;->h(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Performance collection is not enabled, dropping %s"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/f/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->W()Lcom/google/firebase/perf/v1/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->b0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/perf/g/k;->h(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "App Instance ID is null or empty, dropping %s"

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/f/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->i:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/firebase/perf/internal/j;->b(Lcom/google/firebase/perf/v1/g;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/firebase/perf/g/k;->h(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Unable to process the PerfMetric (%s) due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/f/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->k:Lcom/google/firebase/perf/g/d;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/g/d;->b(Lcom/google/firebase/perf/v1/g;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/g/k;->k(Lcom/google/firebase/perf/v1/g;)V

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->h()Z

    move-result v0

    const-string v3, "Rate Limited - %s"

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->j()Lcom/google/firebase/perf/v1/j;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/g/k;->i(Lcom/google/firebase/perf/v1/j;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/perf/f/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g;->n()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/g/k;->g(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/google/firebase/perf/f/a;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v1
.end method

.method static synthetic p(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/g/c;)V
    .locals 1

    iget-object v0, p1, Lcom/google/firebase/perf/g/c;->a:Lcom/google/firebase/perf/v1/g$b;

    iget-object p1, p1, Lcom/google/firebase/perf/g/c;->b:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/perf/g/k;->z(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method static synthetic q(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/j;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/g;->Y()Lcom/google/firebase/perf/v1/g$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/g$b;->M(Lcom/google/firebase/perf/v1/j;)Lcom/google/firebase/perf/v1/g$b;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/perf/g/k;->z(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method static synthetic r(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/g;->Y()Lcom/google/firebase/perf/v1/g$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/g$b;->L(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Lcom/google/firebase/perf/v1/g$b;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/perf/g/k;->z(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method static synthetic s(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/v1/g;->Y()Lcom/google/firebase/perf/v1/g$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/g$b;->J(Lcom/google/firebase/perf/v1/f;)Lcom/google/firebase/perf/v1/g$b;

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/perf/g/k;->z(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void
.end method

.method static synthetic t(Lcom/google/firebase/perf/g/k;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->k:Lcom/google/firebase/perf/g/d;

    iget-boolean p0, p0, Lcom/google/firebase/perf/g/k;->n:Z

    invoke-virtual {v0, p0}, Lcom/google/firebase/perf/g/d;->a(Z)V

    return-void
.end method

.method private x(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/g;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/perf/g/k;->A()V

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->h:Lcom/google/firebase/perf/v1/c$b;

    invoke-virtual {v0, p2}, Lcom/google/firebase/perf/v1/c$b;->N(Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/c$b;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/g$b;->h()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$a;->y()Lcom/google/protobuf/GeneratedMessageLite$a;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/firebase/perf/v1/c$b;

    invoke-direct {p0}, Lcom/google/firebase/perf/g/k;->d()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/perf/v1/c$b;->J(Ljava/util/Map;)Lcom/google/firebase/perf/v1/c$b;

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/v1/g$b;->I(Lcom/google/firebase/perf/v1/c$b;)Lcom/google/firebase/perf/v1/g$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$a;->v()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/g;

    return-object p1
.end method

.method private y()V
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->b:Lcom/google/firebase/c;

    invoke-virtual {v0}, Lcom/google/firebase/c;->g()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->i:Landroid/content/Context;

    invoke-static {}, Lcom/google/firebase/perf/config/a;->f()Lcom/google/firebase/perf/config/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->j:Lcom/google/firebase/perf/config/a;

    new-instance v0, Lcom/google/firebase/perf/g/d;

    iget-object v2, p0, Lcom/google/firebase/perf/g/k;->i:Landroid/content/Context;

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    const-wide/16 v5, 0x1f4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/perf/g/d;-><init>(Landroid/content/Context;DJ)V

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->k:Lcom/google/firebase/perf/g/d;

    invoke-static {}, Lcom/google/firebase/perf/internal/a;->b()Lcom/google/firebase/perf/internal/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->l:Lcom/google/firebase/perf/internal/a;

    new-instance v0, Lcom/google/firebase/perf/g/b;

    iget-object v1, p0, Lcom/google/firebase/perf/g/k;->e:Lcom/google/firebase/k/b;

    iget-object v2, p0, Lcom/google/firebase/perf/g/k;->j:Lcom/google/firebase/perf/config/a;

    invoke-virtual {v2}, Lcom/google/firebase/perf/config/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/perf/g/b;-><init>(Lcom/google/firebase/k/b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/perf/g/k;->f:Lcom/google/firebase/perf/g/b;

    invoke-direct {p0}, Lcom/google/firebase/perf/g/k;->c()V

    return-void
.end method

.method private z(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/firebase/perf/g/k;->o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/g/k;->m(Lcom/google/firebase/perf/v1/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/firebase/perf/g/k;->q:Lcom/google/firebase/perf/f/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/firebase/perf/g/k;->h(Lcom/google/firebase/perf/v1/h;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Transport is not initialized yet, %s will be queued for to be dispatched later"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/perf/f/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->p:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/google/firebase/perf/g/c;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/perf/g/c;-><init>(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/g/k;->x(Lcom/google/firebase/perf/v1/g$b;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/g/k;->n(Lcom/google/firebase/perf/v1/g;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/google/firebase/perf/g/k;->b(Lcom/google/firebase/perf/v1/g;)V

    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/SessionManager;->updatePerfSessionIfExpired()Z

    :cond_2
    return-void
.end method


# virtual methods
.method public l(Lcom/google/firebase/c;Lcom/google/firebase/installations/g;Lcom/google/firebase/k/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/c;",
            "Lcom/google/firebase/installations/g;",
            "Lcom/google/firebase/k/b<",
            "Lcom/google/android/datatransport/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/perf/g/k;->b:Lcom/google/firebase/c;

    iput-object p2, p0, Lcom/google/firebase/perf/g/k;->d:Lcom/google/firebase/installations/g;

    iput-object p3, p0, Lcom/google/firebase/perf/g/k;->e:Lcom/google/firebase/k/b;

    iget-object p1, p0, Lcom/google/firebase/perf/g/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/perf/g/e;->a(Lcom/google/firebase/perf/g/k;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onUpdateAppState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    sget-object v0, Lcom/google/firebase/perf/v1/ApplicationProcessState;->c:Lcom/google/firebase/perf/v1/ApplicationProcessState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/firebase/perf/g/k;->n:Z

    invoke-virtual {p0}, Lcom/google/firebase/perf/g/k;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/firebase/perf/g/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0}, Lcom/google/firebase/perf/g/g;->a(Lcom/google/firebase/perf/g/k;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public u(Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/perf/g/j;->a(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/f;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public v(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/perf/g/i;->a(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public w(Lcom/google/firebase/perf/v1/j;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/perf/g/k;->g:Ljava/util/concurrent/ExecutorService;

    invoke-static {p0, p1, p2}, Lcom/google/firebase/perf/g/h;->a(Lcom/google/firebase/perf/g/k;Lcom/google/firebase/perf/v1/j;Lcom/google/firebase/perf/v1/ApplicationProcessState;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
