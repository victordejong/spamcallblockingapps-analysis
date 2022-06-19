.class public final Lcom/google/android/play/core/splitinstall/ah;
.super Lcom/google/android/play/core/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/play/core/a/c<",
        "Lcom/google/android/play/core/splitinstall/c;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/play/core/splitinstall/ah;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/play/core/splitinstall/t;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/play/core/splitinstall/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/t;)V
    .locals 3

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "SplitInstallListenerRegistry"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.splitinstall.receiver.SplitInstallUpdateIntentService"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/play/core/a/c;-><init>(Lcom/google/android/play/core/internal/h;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ah;->b:Landroid/os/Handler;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/ah;->f:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/android/play/core/splitinstall/ah;->c:Lcom/google/android/play/core/splitinstall/t;

    return-void
.end method

.method static synthetic a(Lcom/google/android/play/core/splitinstall/ah;)Lcom/google/android/play/core/internal/h;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/ah;->d:Lcom/google/android/play/core/internal/h;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/ah;
    .locals 3

    const-class v0, Lcom/google/android/play/core/splitinstall/ah;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/play/core/splitinstall/ah;->a:Lcom/google/android/play/core/splitinstall/ah;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/splitinstall/ah;

    sget-object v2, Lcom/google/android/play/core/splitinstall/aa;->a:Lcom/google/android/play/core/splitinstall/aa;

    invoke-direct {v1, p0, v2}, Lcom/google/android/play/core/splitinstall/ah;-><init>(Landroid/content/Context;Lcom/google/android/play/core/splitinstall/t;)V

    sput-object v1, Lcom/google/android/play/core/splitinstall/ah;->a:Lcom/google/android/play/core/splitinstall/ah;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/splitinstall/ah;->a:Lcom/google/android/play/core/splitinstall/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/google/android/play/core/splitinstall/ah;Lcom/google/android/play/core/splitinstall/c;II)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/ah;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/play/core/splitinstall/ag;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/play/core/splitinstall/ag;-><init>(Lcom/google/android/play/core/splitinstall/ah;Lcom/google/android/play/core/splitinstall/c;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "session_state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/play/core/splitinstall/c;->a(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ah;->d:Lcom/google/android/play/core/internal/h;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/internal/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ah;->c:Lcom/google/android/play/core/splitinstall/t;

    invoke-interface {v1}, Lcom/google/android/play/core/splitinstall/t;->a()Lcom/google/android/play/core/splitinstall/u;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->b()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/c;->k()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/google/android/play/core/splitinstall/af;

    invoke-direct {v3, p0, v0, p2, p1}, Lcom/google/android/play/core/splitinstall/af;-><init>(Lcom/google/android/play/core/splitinstall/ah;Lcom/google/android/play/core/splitinstall/c;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/play/core/splitinstall/u;->a(Ljava/util/List;Lcom/google/android/play/core/splitinstall/s;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/play/core/splitinstall/ah;->a(Lcom/google/android/play/core/splitinstall/c;)V

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/play/core/splitinstall/c;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/ah;->f:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/splitinstall/d;

    invoke-interface {v1, p1}, Lcom/google/android/play/core/splitinstall/d;->onStateUpdate(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/play/core/a/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
