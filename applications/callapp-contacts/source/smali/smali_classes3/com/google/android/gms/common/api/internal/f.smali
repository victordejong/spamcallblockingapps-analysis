.class public final Lcom/google/android/gms/common/api/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final a:Lcom/google/android/gms/common/api/Status;

.field static final b:Ljava/lang/Object;

.field private static final h:Lcom/google/android/gms/common/api/Status;

.field private static o:Lcom/google/android/gms/common/api/internal/f;


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field e:Lcom/google/android/gms/common/api/internal/w;

.field final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Landroid/os/Handler;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:Lcom/google/android/gms/common/internal/TelemetryData;

.field private n:Lcom/google/android/gms/common/internal/s;

.field private final p:Landroid/content/Context;

.field private final q:Lcom/google/android/gms/common/b;

.field private final r:Lcom/google/android/gms/common/internal/af;

.field private final s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/f;->a:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/f;->h:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/f;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/b;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/f;->i:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/f;->j:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/f;->k:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/f;->l:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    .line 1
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    .line 3
    invoke-direct {v1, v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->e:Lcom/google/android/gms/common/api/internal/w;

    .line 4
    new-instance v1, Landroidx/b/b;

    invoke-direct {v1}, Landroidx/b/b;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->f:Ljava/util/Set;

    new-instance v1, Landroidx/b/b;

    .line 5
    invoke-direct {v1}, Landroidx/b/b;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->t:Ljava/util/Set;

    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/f;->u:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->p:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/base/j;

    .line 6
    invoke-direct {v1, p2, p0}, Lcom/google/android/gms/internal/base/j;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/f;->q:Lcom/google/android/gms/common/b;

    new-instance p2, Lcom/google/android/gms/common/internal/af;

    .line 7
    invoke-direct {p2, p3}, Lcom/google/android/gms/common/internal/af;-><init>(Lcom/google/android/gms/common/c;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/f;->r:Lcom/google/android/gms/common/internal/af;

    .line 1001
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/util/j;->b(Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/f;->u:Z

    :cond_0
    const/4 p1, 0x6

    .line 9
    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/common/api/internal/f;->b(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/f;
    .locals 4

    sget-object v0, Lcom/google/android/gms/common/api/internal/f;->b:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/f;->o:Lcom/google/android/gms/common/api/internal/f;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    .line 2
    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/internal/f;

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/f;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/b;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/f;->o:Lcom/google/android/gms/common/api/internal/f;

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/internal/f;->o:Lcom/google/android/gms/common/api/internal/f;

    .line 6
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/common/api/internal/f;->b:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/f;->o:Lcom/google/android/gms/common/api/internal/f;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    const/16 v2, 0xa

    .line 3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/internal/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->p:Landroid/content/Context;

    return-object p0
.end method

.method private static b(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ")",
            "Lcom/google/android/gms/common/api/Status;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/b;->a:Lcom/google/android/gms/common/api/a;

    .line 28000
    iget-object p0, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3f

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "API: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device. Connection failed with: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    return-object v0
.end method

.method private final b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/internal/af;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f<",
            "*>;)",
            "Lcom/google/android/gms/common/api/internal/af<",
            "*>;"
        }
    .end annotation

    .line 20000
    iget-object v0, p1, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/api/internal/b;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/af;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/api/internal/af;

    .line 3
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/af;-><init>(Lcom/google/android/gms/common/api/internal/f;Lcom/google/android/gms/common/api/f;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 4
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/af;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->t:Ljava/util/Set;

    .line 6
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/af;->f()V

    return-object v1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/internal/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/f;->i:J

    return-wide v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/internal/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/f;->j:J

    return-wide v0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/common/api/Status;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/f;->h:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/internal/f;)Lcom/google/android/gms/common/internal/af;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->r:Lcom/google/android/gms/common/internal/af;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/internal/f;)Lcom/google/android/gms/common/api/internal/w;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->e:Lcom/google/android/gms/common/api/internal/w;

    return-object p0
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->m:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryData;->zaa()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/f;->g()Lcom/google/android/gms/common/internal/s;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/s;->a(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/h;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->m:Lcom/google/android/gms/common/internal/TelemetryData;

    :cond_2
    return-void
.end method

.method private final g()Lcom/google/android/gms/common/internal/s;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->n:Lcom/google/android/gms/common/internal/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->p:Landroid/content/Context;

    .line 1
    sget-object v1, Lcom/google/android/gms/common/internal/t;->a:Lcom/google/android/gms/common/internal/t;

    .line 28001
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/r;->a(Landroid/content/Context;Lcom/google/android/gms/common/internal/t;)Lcom/google/android/gms/common/internal/s;

    move-result-object v0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->n:Lcom/google/android/gms/common/internal/s;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->n:Lcom/google/android/gms/common/internal/s;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/internal/f;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->f:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/internal/f;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/f;->l:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/internal/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/f;->u:Z

    return p0
.end method

.method static synthetic j(Lcom/google/android/gms/common/api/internal/f;)Lcom/google/android/gms/common/b;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->q:Lcom/google/android/gms/common/b;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/gms/common/api/internal/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/api/internal/f;->k:J

    return-wide v0
.end method

.method static synthetic l(Lcom/google/android/gms/common/api/internal/f;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/af;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/b<",
            "*>;)",
            "Lcom/google/android/gms/common/api/internal/af;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/af;

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/f;Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d;",
            ">(",
            "Lcom/google/android/gms/common/api/f<",
            "TO;>;",
            "Lcom/google/android/gms/common/api/internal/n<",
            "Lcom/google/android/gms/common/api/a$b;",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/u<",
            "Lcom/google/android/gms/common/api/a$b;",
            "*>;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/i;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/i;-><init>()V

    .line 24000
    iget v1, p2, Lcom/google/android/gms/common/api/internal/n;->d:I

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/tasks/i;ILcom/google/android/gms/common/api/f;)V

    new-instance v1, Lcom/google/android/gms/common/api/internal/bn;

    new-instance v2, Lcom/google/android/gms/common/api/internal/as;

    .line 3
    invoke-direct {v2, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/as;-><init>(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/u;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/internal/bn;-><init>(Lcom/google/android/gms/common/api/internal/as;Lcom/google/android/gms/tasks/i;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/common/api/internal/ar;

    iget-object p4, p0, Lcom/google/android/gms/common/api/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-direct {p3, v1, p4, p1}, Lcom/google/android/gms/common/api/internal/ar;-><init>(Lcom/google/android/gms/common/api/internal/bq;ILcom/google/android/gms/common/api/f;)V

    const/16 p1, 0x8

    .line 5
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 6
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 25000
    iget-object p1, v0, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    return-object p1
.end method

.method public final a(Lcom/google/android/gms/common/api/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/f<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    const/4 v1, 0x7

    .line 1
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/f;ILcom/google/android/gms/common/api/internal/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d;",
            ">(",
            "Lcom/google/android/gms/common/api/f<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/d$a<",
            "+",
            "Lcom/google/android/gms/common/api/m;",
            "Lcom/google/android/gms/common/api/a$b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/internal/bm;

    .line 1
    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/common/api/internal/bm;-><init>(ILcom/google/android/gms/common/api/internal/d$a;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/common/api/internal/ar;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p3, v0, v1, p1}, Lcom/google/android/gms/common/api/internal/ar;-><init>(Lcom/google/android/gms/common/api/internal/bq;ILcom/google/android/gms/common/api/f;)V

    const/4 p1, 0x4

    .line 3
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/f;ILcom/google/android/gms/common/api/internal/s;Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/common/api/internal/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/google/android/gms/common/api/a$d;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/f<",
            "TO;>;I",
            "Lcom/google/android/gms/common/api/internal/s<",
            "Lcom/google/android/gms/common/api/a$b;",
            "TResultT;>;",
            "Lcom/google/android/gms/tasks/i<",
            "TResultT;>;",
            "Lcom/google/android/gms/common/api/internal/q;",
            ")V"
        }
    .end annotation

    .line 22000
    iget v0, p3, Lcom/google/android/gms/common/api/internal/s;->c:I

    .line 1
    invoke-virtual {p0, p4, v0, p1}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/tasks/i;ILcom/google/android/gms/common/api/f;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/bo;

    .line 2
    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/android/gms/common/api/internal/bo;-><init>(ILcom/google/android/gms/common/api/internal/s;Lcom/google/android/gms/tasks/i;Lcom/google/android/gms/common/api/internal/q;)V

    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    new-instance p3, Lcom/google/android/gms/common/api/internal/ar;

    iget-object p4, p0, Lcom/google/android/gms/common/api/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-direct {p3, v0, p4, p1}, Lcom/google/android/gms/common/api/internal/ar;-><init>(Lcom/google/android/gms/common/api/internal/bq;ILcom/google/android/gms/common/api/f;)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/internal/w;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/api/internal/f;->b:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->e:Lcom/google/android/gms/common/api/internal/w;

    if-eq v1, p1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->e:Lcom/google/android/gms/common/api/internal/w;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->f:Ljava/util/Set;

    .line 2
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->f:Ljava/util/Set;

    .line 21000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/w;->b:Landroidx/b/b;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/tasks/i;ILcom/google/android/gms/common/api/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/i<",
            "TT;>;I",
            "Lcom/google/android/gms/common/api/f;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 26000
    iget-object p3, p3, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/api/internal/b;

    .line 1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/common/api/internal/am;->a(Lcom/google/android/gms/common/api/internal/f;ILcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/am;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 27000
    iget-object p1, p1, Lcom/google/android/gms/tasks/i;->a:Lcom/google/android/gms/tasks/ah;

    .line 2
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/google/android/gms/common/api/internal/z;->a(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/d;)Lcom/google/android/gms/tasks/h;

    :cond_0
    return-void
.end method

.method final a(Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->q:Lcom/google/android/gms/common/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->p:Landroid/content/Context;

    .line 1
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result p1

    return p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/f;->a(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method final c()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/f;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/p;->a()Lcom/google/android/gms/common/internal/p;

    move-result-object v0

    .line 23000
    iget-object v0, v0, Lcom/google/android/gms/common/internal/p;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->getMethodInvocationTelemetryEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->r:Lcom/google/android/gms/common/internal/af;

    const v2, 0xc1f7c30

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/internal/af;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    const-wide/32 v2, 0x493e0

    const-string v4, "GoogleApiManager"

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    .line 85
    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unknown message id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 23
    :pswitch_0
    iput-boolean v7, p0, Lcom/google/android/gms/common/api/internal/f;->l:Z

    goto/16 :goto_9

    .line 16
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/an;

    .line 17
    iget-wide v0, p1, Lcom/google/android/gms/common/api/internal/an;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 18
    new-instance v0, Lcom/google/android/gms/common/internal/TelemetryData;

    iget v1, p1, Lcom/google/android/gms/common/api/internal/an;->b:I

    new-array v2, v8, [Lcom/google/android/gms/common/internal/MethodInvocation;

    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/an;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    aput-object p1, v2, v7

    .line 19
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/f;->g()Lcom/google/android/gms/common/internal/s;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Lcom/google/android/gms/common/internal/TelemetryData;)Lcom/google/android/gms/tasks/h;

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->m:Lcom/google/android/gms/common/internal/TelemetryData;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/TelemetryData;->zab()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->m:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/TelemetryData;->zaa()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/common/api/internal/an;->b:I

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lcom/google/android/gms/common/api/internal/an;->d:I

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->m:Lcom/google/android/gms/common/internal/TelemetryData;

    .line 23
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/an;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/TelemetryData;->zac(Lcom/google/android/gms/common/internal/MethodInvocation;)V

    goto :goto_1

    .line 22
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    .line 24
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/f;->f()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->m:Lcom/google/android/gms/common/internal/TelemetryData;

    if-nez v0, :cond_13

    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/an;->a:Lcom/google/android/gms/common/internal/MethodInvocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryData;

    iget v2, p1, Lcom/google/android/gms/common/api/internal/an;->b:I

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->m:Lcom/google/android/gms/common/internal/TelemetryData;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    .line 29
    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/gms/common/api/internal/an;->c:J

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_9

    .line 31
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/f;->f()V

    goto/16 :goto_9

    .line 32
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/ag;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 4000
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/ag;->a:Lcom/google/android/gms/common/api/internal/b;

    .line 33
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 5000
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/ag;->a:Lcom/google/android/gms/common/api/internal/b;

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/af;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/af;->b(Lcom/google/android/gms/common/api/internal/af;Lcom/google/android/gms/common/api/internal/ag;)V

    goto/16 :goto_9

    .line 35
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/ag;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 6000
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/ag;->a:Lcom/google/android/gms/common/api/internal/b;

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 7000
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/ag;->a:Lcom/google/android/gms/common/api/internal/b;

    .line 37
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/af;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/af;->a(Lcom/google/android/gms/common/api/internal/af;Lcom/google/android/gms/common/api/internal/ag;)V

    goto/16 :goto_9

    .line 38
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/x;

    .line 8000
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/x;->a:Lcom/google/android/gms/common/api/internal/b;

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 40
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 9000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/x;->b:Lcom/google/android/gms/tasks/i;

    .line 41
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 42
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/af;

    .line 10000
    invoke-virtual {v0, v7}, Lcom/google/android/gms/common/api/internal/af;->a(Z)Z

    move-result v0

    .line 11000
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/x;->b:Lcom/google/android/gms/tasks/i;

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 44
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 45
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/af;

    .line 11001
    invoke-virtual {p1, v8}, Lcom/google/android/gms/common/api/internal/af;->a(Z)Z

    goto/16 :goto_9

    .line 45
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 46
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 47
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/af;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/af;->e()V

    goto/16 :goto_9

    .line 11
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->t:Ljava/util/Set;

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/b;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/af;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/af;->c()V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->t:Ljava/util/Set;

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_9

    .line 47
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 48
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 49
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/af;

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/af;->i:Lcom/google/android/gms/common/api/internal/f;

    .line 12000
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    .line 12001
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lcom/google/android/gms/common/api/internal/af;->f:Z

    if-eqz v0, :cond_13

    .line 12002
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/af;->f()V

    goto/16 :goto_9

    .line 50
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/f;

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/f;->b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/internal/af;

    goto/16 :goto_9

    .line 4
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->p:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->p:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/c;->a(Landroid/app/Application;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->a()Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/common/api/internal/aa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/aa;-><init>(Lcom/google/android/gms/common/api/internal/f;)V

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/c;->a(Lcom/google/android/gms/common/api/internal/c$a;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/api/internal/c;->a()Lcom/google/android/gms/common/api/internal/c;

    move-result-object p1

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2001
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/google/android/gms/common/util/n;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2002
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 2003
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2004
    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_8

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2005
    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3

    :cond_7
    const/4 p1, 0x1

    goto :goto_4

    .line 2006
    :cond_8
    :goto_3
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3001
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    :goto_4
    if-nez p1, :cond_13

    .line 11
    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/f;->k:J

    goto/16 :goto_9

    .line 51
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 52
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/af;

    .line 13000
    iget v7, v3, Lcom/google/android/gms/common/api/internal/af;->e:I

    if-ne v7, v0, :cond_9

    move-object v6, v3

    :cond_a
    if-eqz v6, :cond_c

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 55
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->q:Lcom/google/android/gms/common/b;

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/b;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x45

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v5, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 55
    invoke-static {v6, v0}, Lcom/google/android/gms/common/api/internal/af;->a(Lcom/google/android/gms/common/api/internal/af;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_9

    .line 14000
    :cond_b
    iget-object v0, v6, Lcom/google/android/gms/common/api/internal/af;->b:Lcom/google/android/gms/common/api/internal/b;

    .line 58
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/f;->b(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/google/android/gms/common/api/internal/af;->a(Lcom/google/android/gms/common/api/internal/af;Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_9

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    .line 59
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 60
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/ar;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 61
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/ar;->c:Lcom/google/android/gms/common/api/f;

    .line 15000
    iget-object v1, v1, Lcom/google/android/gms/common/api/f;->c:Lcom/google/android/gms/common/api/internal/b;

    .line 61
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/af;

    if-nez v0, :cond_d

    .line 62
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/ar;->c:Lcom/google/android/gms/common/api/f;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/f;->b(Lcom/google/android/gms/common/api/f;)Lcom/google/android/gms/common/api/internal/af;

    move-result-object v0

    .line 63
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/af;->g()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lcom/google/android/gms/common/api/internal/ar;->b:I

    if-eq v1, v2, :cond_e

    .line 65
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/ar;->a:Lcom/google/android/gms/common/api/internal/bq;

    sget-object v1, Lcom/google/android/gms/common/api/internal/f;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/bq;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/af;->c()V

    goto/16 :goto_9

    .line 64
    :cond_e
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/ar;->a:Lcom/google/android/gms/common/api/internal/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/af;->a(Lcom/google/android/gms/common/api/internal/bq;)V

    goto/16 :goto_9

    .line 1
    :pswitch_e
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/af;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/af;->d()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/af;->f()V

    goto :goto_5

    .line 67
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/br;

    .line 68
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/br;->a:Landroidx/b/a;

    .line 15001
    invoke-virtual {v0}, Landroidx/b/a;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/internal/b;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 70
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/internal/af;

    if-nez v3, :cond_f

    .line 78
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 79
    invoke-virtual {p1, v2, v0, v6}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_9

    .line 71
    :cond_f
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    .line 16001
    invoke-interface {v4}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 72
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    .line 17000
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/af;->a:Lcom/google/android/gms/common/api/a$f;

    .line 73
    invoke-interface {v3}, Lcom/google/android/gms/common/api/a$f;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v3

    .line 72
    invoke-virtual {p1, v2, v4, v3}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_6

    .line 74
    :cond_10
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/af;->i:Lcom/google/android/gms/common/api/internal/f;

    .line 18000
    iget-object v4, v4, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    .line 18001
    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/af;->g:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v4, :cond_11

    .line 75
    invoke-virtual {p1, v2, v4, v6}, Lcom/google/android/gms/common/api/internal/br;->a(Lcom/google/android/gms/common/api/internal/b;Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/String;)V

    goto :goto_6

    .line 76
    :cond_11
    iget-object v2, v3, Lcom/google/android/gms/common/api/internal/af;->i:Lcom/google/android/gms/common/api/internal/f;

    .line 19000
    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    .line 19001
    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Handler;)V

    iget-object v2, v3, Lcom/google/android/gms/common/api/internal/af;->c:Ljava/util/Set;

    .line 19002
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/af;->f()V

    goto :goto_6

    .line 80
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v8, p1, :cond_12

    goto :goto_7

    :cond_12
    const-wide/16 v2, 0x2710

    :goto_7
    iput-wide v2, p0, Lcom/google/android/gms/common/api/internal/f;->k:J

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    const/16 v0, 0xc

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/f;->s:Ljava/util/Map;

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/b;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/f;->g:Landroid/os/Handler;

    .line 83
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lcom/google/android/gms/common/api/internal/f;->k:J

    .line 84
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8

    :cond_13
    :goto_9
    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
