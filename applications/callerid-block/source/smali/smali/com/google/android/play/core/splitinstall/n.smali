.class public final Lcom/google/android/play/core/splitinstall/n;
.super Le/c/a/c/a/a/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/c/a/c/a/a/c<",
        "Lcom/google/android/play/core/splitinstall/a;",
        ">;"
    }
.end annotation


# static fields
.field private static j:Lcom/google/android/play/core/splitinstall/n;


# instance fields
.field private final g:Landroid/os/Handler;

.field private final h:Lcom/google/android/play/core/splitinstall/e;

.field private final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/play/core/splitinstall/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/e;)V
    .locals 3

    new-instance v0, Lcom/google/android/play/core/internal/a;

    const-string v1, "SplitInstallListenerRegistry"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/a;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Le/c/a/c/a/a/c;-><init>(Lcom/google/android/play/core/internal/a;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/n;->g:Landroid/os/Handler;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/n;->i:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/n;->h:Lcom/google/android/play/core/splitinstall/e;

    return-void
.end method

.method public static declared-synchronized f(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/n;
    .locals 3

    const-class v0, Lcom/google/android/play/core/splitinstall/n;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/splitinstall/n;->j:Lcom/google/android/play/core/splitinstall/n;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/splitinstall/n;

    sget-object v2, Lcom/google/android/play/core/splitinstall/l;->b:Lcom/google/android/play/core/splitinstall/l;

    invoke-direct {v1, p0, v2}, Lcom/google/android/play/core/splitinstall/n;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/e;)V

    sput-object v1, Lcom/google/android/play/core/splitinstall/n;->j:Lcom/google/android/play/core/splitinstall/n;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/splitinstall/n;->j:Lcom/google/android/play/core/splitinstall/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic h(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/splitinstall/a;II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/n;->g:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/m;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/play/core/splitinstall/m;-><init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/splitinstall/a;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic i(Lcom/google/android/play/core/splitinstall/n;)Lcom/google/android/play/core/internal/a;
    .locals 0

    iget-object p0, p0, Le/c/a/c/a/a/c;->a:Lcom/google/android/play/core/internal/a;

    return-object p0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "session_state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/a;->e(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/a;

    move-result-object v0

    iget-object v1, p0, Le/c/a/c/a/a/c;->a:Lcom/google/android/play/core/internal/a;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/internal/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/n;->h:Lcom/google/android/play/core/splitinstall/e;

    invoke-interface {v1}, Lcom/google/android/play/core/splitinstall/e;->a()Lcom/google/android/play/core/splitinstall/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/a;->i()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/a;->d()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/splitinstall/k;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/google/android/play/core/splitinstall/k;-><init>(Lcom/google/android/play/core/splitinstall/n;Lcom/google/android/play/core/splitinstall/a;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/play/core/splitinstall/f;->a(Ljava/util/List;Lcom/google/android/play/core/splitinstall/d;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/splitinstall/n;->g(Lcom/google/android/play/core/splitinstall/a;)V

    return-void
.end method

.method public final declared-synchronized g(Lcom/google/android/play/core/splitinstall/a;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/n;->i:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitinstall/b;

    invoke-interface {v1, p1}, Le/c/a/c/a/a/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Le/c/a/c/a/a/c;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
