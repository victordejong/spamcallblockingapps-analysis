.class public final Lcom/google/android/play/core/internal/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/google/android/play/core/internal/h;

.field final b:Ljava/lang/String;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/play/core/internal/i;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/play/core/internal/m;",
            ">;"
        }
    .end annotation
.end field

.field public e:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private h:Z

.field private final i:Landroid/content/Intent;

.field private final j:Lcom/google/android/play/core/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/n<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final k:Landroid/os/IBinder$DeathRecipient;

.field private l:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/play/core/internal/r;->f:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/internal/h;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/play/core/internal/h;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            "Lcom/google/android/play/core/internal/n<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/internal/r;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/play/core/internal/j;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/j;-><init>(Lcom/google/android/play/core/internal/r;)V

    iput-object v0, p0, Lcom/google/android/play/core/internal/r;->k:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/google/android/play/core/internal/r;->g:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    iput-object p3, p0, Lcom/google/android/play/core/internal/r;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/internal/r;->i:Landroid/content/Intent;

    iput-object p5, p0, Lcom/google/android/play/core/internal/r;->j:Lcom/google/android/play/core/internal/n;

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/play/core/internal/r;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/internal/r;)Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->e:Landroid/os/IInterface;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/play/core/internal/r;Landroid/os/IInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/internal/r;->e:Landroid/os/IInterface;

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/internal/r;Lcom/google/android/play/core/internal/i;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->e:Landroid/os/IInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/play/core/internal/r;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Initiate binding to the service."

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/google/android/play/core/internal/q;

    invoke-direct {p1, p0}, Lcom/google/android/play/core/internal/q;-><init>(Lcom/google/android/play/core/internal/r;)V

    iput-object p1, p0, Lcom/google/android/play/core/internal/r;->l:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/internal/r;->h:Z

    iget-object v2, p0, Lcom/google/android/play/core/internal/r;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/play/core/internal/r;->i:Landroid/content/Intent;

    invoke-virtual {v2, v3, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Failed to bind to the service."

    invoke-virtual {p1, v2, v0}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/play/core/internal/r;->h:Z

    iget-object p1, p0, Lcom/google/android/play/core/internal/r;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/internal/i;

    new-instance v1, Lcom/google/android/play/core/internal/ar;

    invoke-direct {v1}, Lcom/google/android/play/core/internal/ar;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/i;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/play/core/internal/r;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Waiting to bind to the service."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/play/core/internal/i;->run()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/play/core/internal/r;)Lcom/google/android/play/core/internal/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    return-object p0
.end method

.method private final b(Lcom/google/android/play/core/internal/i;)V
    .locals 4

    sget-object v0, Lcom/google/android/play/core/internal/r;->f:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/internal/r;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/google/android/play/core/internal/r;->b:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Lcom/google/android/play/core/internal/r;->b:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/internal/r;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/google/android/play/core/internal/r;Lcom/google/android/play/core/internal/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/internal/r;->b(Lcom/google/android/play/core/internal/i;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/play/core/internal/r;)Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->l:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/play/core/internal/r;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/play/core/internal/r;)Lcom/google/android/play/core/internal/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->j:Lcom/google/android/play/core/internal/n;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/play/core/internal/r;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "linkToDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->e:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/core/internal/r;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "linkToDeath failed"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic g(Lcom/google/android/play/core/internal/r;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/play/core/internal/r;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->a:Lcom/google/android/play/core/internal/h;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "unlinkToDeath"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/play/core/internal/h;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/internal/r;->e:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/internal/r;->k:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method static synthetic i(Lcom/google/android/play/core/internal/r;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/internal/r;->l:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic j(Lcom/google/android/play/core/internal/r;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/internal/r;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/internal/l;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/internal/l;-><init>(Lcom/google/android/play/core/internal/r;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/internal/r;->b(Lcom/google/android/play/core/internal/i;)V

    return-void
.end method

.method public final a(Lcom/google/android/play/core/internal/i;)V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/k;

    .line 1000
    iget-object v1, p1, Lcom/google/android/play/core/internal/i;->g:Lcom/google/android/play/core/tasks/p;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/play/core/internal/k;-><init>(Lcom/google/android/play/core/internal/r;Lcom/google/android/play/core/tasks/p;Lcom/google/android/play/core/internal/i;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/internal/r;->b(Lcom/google/android/play/core/internal/i;)V

    return-void
.end method
