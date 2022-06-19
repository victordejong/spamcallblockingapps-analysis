.class public Lcom/facebook/a/d/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile c:Ljava/util/concurrent/ScheduledFuture;

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile f:Lcom/facebook/a/d/i;

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Ljava/lang/String;

.field private static i:J

.field private static j:I

.field private static k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    const-class v0, Lcom/facebook/a/d/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/a;->a:Ljava/lang/String;

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/d/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/a/d/a;->d:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/a/d/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/a/d/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    sput v1, Lcom/facebook/a/d/a;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/a/d/i;)Lcom/facebook/a/d/i;
    .locals 0

    .prologue
    .line 52
    sput-object p0, Lcom/facebook/a/d/a;->f:Lcom/facebook/a/d/i;

    return-object p0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .prologue
    .line 52
    sput-object p0, Lcom/facebook/a/d/a;->c:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/facebook/a/d/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/a/d/a$3;

    invoke-direct {v1}, Lcom/facebook/a/d/a$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 74
    sget-object v0, Lcom/facebook/a/d/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 78
    :cond_0
    sget-object v0, Lcom/facebook/internal/j$b;->d:Lcom/facebook/internal/j$b;

    new-instance v1, Lcom/facebook/a/d/a$1;

    invoke-direct {v1}, Lcom/facebook/a/d/a$1;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$b;Lcom/facebook/internal/j$a;)V

    .line 89
    sput-object p1, Lcom/facebook/a/d/a;->h:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/facebook/a/d/a$2;

    invoke-direct {v0}, Lcom/facebook/a/d/a$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/facebook/a/d/a;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/facebook/a/d/a;->f:Lcom/facebook/a/d/i;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/a/d/a;->f:Lcom/facebook/a/d/i;

    invoke-virtual {v0}, Lcom/facebook/a/d/i;->g()Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/a/d/a;->k:Ljava/lang/ref/WeakReference;

    .line 170
    sget-object v0, Lcom/facebook/a/d/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 171
    invoke-static {}, Lcom/facebook/a/d/a;->o()V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 173
    sput-wide v0, Lcom/facebook/a/d/a;->i:J

    .line 174
    invoke-static {p0}, Lcom/facebook/internal/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {p0}, Lcom/facebook/a/b/b;->a(Landroid/app/Activity;)V

    .line 177
    invoke-static {p0}, Lcom/facebook/a/a/a;->a(Landroid/app/Activity;)V

    .line 178
    invoke-static {p0}, Lcom/facebook/a/g/d;->a(Landroid/app/Activity;)V

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 181
    new-instance v4, Lcom/facebook/a/d/a$4;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/facebook/a/d/a$4;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    .line 217
    sget-object v0, Lcom/facebook/a/d/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public static c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/facebook/a/d/a;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/a/d/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/a/d/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/a/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/a/d/a;->f(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic e()I
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/facebook/a/d/a;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/a/d/a;->j:I

    return v0
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 221
    sget-object v0, Lcom/facebook/a/d/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 222
    if-gez v0, :cond_0

    .line 225
    sget-object v0, Lcom/facebook/a/d/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 227
    sget-object v0, Lcom/facebook/a/d/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    invoke-static {}, Lcom/facebook/a/d/a;->o()V

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 233
    invoke-static {p0}, Lcom/facebook/internal/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {p0}, Lcom/facebook/a/b/b;->b(Landroid/app/Activity;)V

    .line 235
    new-instance v3, Lcom/facebook/a/d/a$5;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/a/d/a$5;-><init>(JLjava/lang/String;)V

    .line 288
    sget-object v0, Lcom/facebook/a/d/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method static synthetic f()I
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/facebook/a/d/a;->j:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/facebook/a/d/a;->j:I

    return v0
.end method

.method private static f(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 292
    invoke-static {p0}, Lcom/facebook/a/b/b;->c(Landroid/app/Activity;)V

    .line 293
    return-void
.end method

.method static synthetic g()Lcom/facebook/a/d/i;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/a/d/a;->f:Lcom/facebook/a/d/i;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/a/d/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()I
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/facebook/a/d/a;->n()I

    move-result v0

    return v0
.end method

.method static synthetic j()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/a/d/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic k()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/a/d/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic l()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/a/d/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic m()J
    .locals 2

    .prologue
    .line 52
    sget-wide v0, Lcom/facebook/a/d/a;->i:J

    return-wide v0
.end method

.method private static n()I
    .locals 1

    .prologue
    .line 297
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/m;->a(Ljava/lang/String;)Lcom/facebook/internal/l;

    move-result-object v0

    .line 298
    if-nez v0, :cond_0

    .line 299
    invoke-static {}, Lcom/facebook/a/d/e;->a()I

    move-result v0

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/l;->d()I

    move-result v0

    goto :goto_0
.end method

.method private static o()V
    .locals 3

    .prologue
    .line 306
    sget-object v1, Lcom/facebook/a/d/a;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    sget-object v0, Lcom/facebook/a/d/a;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/facebook/a/d/a;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 311
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/a/d/a;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 312
    monitor-exit v1

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
