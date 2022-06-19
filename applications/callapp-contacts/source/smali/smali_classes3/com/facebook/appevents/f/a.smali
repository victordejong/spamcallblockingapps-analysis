.class public Lcom/facebook/appevents/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "com.facebook.appevents.f.a"

.field private static final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private static volatile c:Ljava/util/concurrent/ScheduledFuture;

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile f:Lcom/facebook/appevents/f/g;

.field private static g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static h:Ljava/lang/String;

.field private static i:J

.field private static j:I

.field private static k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/f/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/f/a;->d:Ljava/lang/Object;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/f/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/f/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    sput v1, Lcom/facebook/appevents/f/a;->j:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/appevents/f/g;)Lcom/facebook/appevents/f/g;
    .locals 0

    .line 53
    sput-object p0, Lcom/facebook/appevents/f/a;->f:Lcom/facebook/appevents/f/g;

    return-object p0
.end method

.method static synthetic a(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 53
    sput-object p0, Lcom/facebook/appevents/f/a;->c:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/f/a;->k:Ljava/lang/ref/WeakReference;

    .line 173
    sget-object v0, Lcom/facebook/appevents/f/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 174
    invoke-static {}, Lcom/facebook/appevents/f/a;->o()V

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    sput-wide v0, Lcom/facebook/appevents/f/a;->i:J

    .line 177
    invoke-static {p0}, Lcom/facebook/internal/ae;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {p0}, Lcom/facebook/appevents/b/b;->a(Landroid/app/Activity;)V

    .line 180
    invoke-static {p0}, Lcom/facebook/appevents/a/a;->a(Landroid/app/Activity;)V

    .line 181
    invoke-static {p0}, Lcom/facebook/appevents/j/d;->a(Landroid/app/Activity;)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 184
    new-instance v3, Lcom/facebook/appevents/f/a$4;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/facebook/appevents/f/a$4;-><init>(JLjava/lang/String;Landroid/content/Context;)V

    .line 209
    sget-object p0, Lcom/facebook/appevents/f/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3

    .line 76
    sget-object v0, Lcom/facebook/appevents/f/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/facebook/internal/l$b;->CodelessEvents:Lcom/facebook/internal/l$b;

    new-instance v1, Lcom/facebook/appevents/f/a$1;

    invoke-direct {v1}, Lcom/facebook/appevents/f/a$1;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/l;->a(Lcom/facebook/internal/l$b;Lcom/facebook/internal/l$a;)V

    .line 93
    sput-object p1, Lcom/facebook/appevents/f/a;->h:Ljava/lang/String;

    .line 95
    new-instance p1, Lcom/facebook/appevents/f/a$2;

    invoke-direct {p1}, Lcom/facebook/appevents/f/a$2;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 146
    sget v0, Lcom/facebook/appevents/f/a;->j:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Ljava/util/UUID;
    .locals 1

    .line 154
    sget-object v0, Lcom/facebook/appevents/f/a;->f:Lcom/facebook/appevents/f/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/appevents/f/a;->f:Lcom/facebook/appevents/f/g;

    .line 1117
    iget-object v0, v0, Lcom/facebook/appevents/f/g;->f:Ljava/util/UUID;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 3

    .line 1213
    sget-object v0, Lcom/facebook/appevents/f/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    .line 1217
    sget-object v0, Lcom/facebook/appevents/f/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1219
    sget-object v0, Lcom/facebook/appevents/f/a;->a:Ljava/lang/String;

    const-string v1, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/f/a;->o()V

    .line 1223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1225
    invoke-static {p0}, Lcom/facebook/internal/ae;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1226
    invoke-static {p0}, Lcom/facebook/appevents/b/b;->b(Landroid/app/Activity;)V

    .line 1227
    new-instance p0, Lcom/facebook/appevents/f/a$5;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/appevents/f/a$5;-><init>(JLjava/lang/String;)V

    .line 1277
    sget-object v0, Lcom/facebook/appevents/f/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c()V
    .locals 2

    .line 159
    sget-object v0, Lcom/facebook/appevents/f/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/facebook/appevents/f/a$3;

    invoke-direct {v1}, Lcom/facebook/appevents/f/a$3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .line 1281
    invoke-static {p0}, Lcom/facebook/appevents/b/b;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public static d()Landroid/app/Activity;
    .locals 1

    .line 306
    sget-object v0, Lcom/facebook/appevents/f/a;->k:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/facebook/appevents/f/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()I
    .locals 2

    .line 53
    sget v0, Lcom/facebook/appevents/f/a;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/appevents/f/a;->j:I

    return v0
.end method

.method static synthetic g()I
    .locals 2

    .line 53
    sget v0, Lcom/facebook/appevents/f/a;->j:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/facebook/appevents/f/a;->j:I

    return v0
.end method

.method static synthetic h()Lcom/facebook/appevents/f/g;
    .locals 1

    .line 53
    sget-object v0, Lcom/facebook/appevents/f/a;->f:Lcom/facebook/appevents/f/g;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/facebook/appevents/f/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()I
    .locals 1

    .line 1286
    invoke-static {}, Lcom/facebook/g;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/q;->a(Ljava/lang/String;)Lcom/facebook/internal/p;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x3c

    return v0

    .line 2037
    :cond_0
    iget v0, v0, Lcom/facebook/internal/p;->b:I

    return v0
.end method

.method static synthetic k()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 53
    sget-object v0, Lcom/facebook/appevents/f/a;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/Object;
    .locals 1

    .line 53
    sget-object v0, Lcom/facebook/appevents/f/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic m()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 53
    sget-object v0, Lcom/facebook/appevents/f/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic n()J
    .locals 2

    .line 53
    sget-wide v0, Lcom/facebook/appevents/f/a;->i:J

    return-wide v0
.end method

.method private static o()V
    .locals 3

    .line 295
    sget-object v0, Lcom/facebook/appevents/f/a;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/f/a;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 297
    sget-object v1, Lcom/facebook/appevents/f/a;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v1, 0x0

    .line 300
    sput-object v1, Lcom/facebook/appevents/f/a;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 301
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
