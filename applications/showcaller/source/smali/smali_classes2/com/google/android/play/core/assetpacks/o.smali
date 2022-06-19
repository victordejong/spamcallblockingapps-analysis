.class final Lcom/google/android/play/core/assetpacks/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/play/core/assetpacks/r2;


# static fields
.field private static final a:Lcom/google/android/play/core/internal/a;

.field private static final b:Landroid/content/Intent;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/play/core/assetpacks/n0;

.field private e:Lcom/google/android/play/core/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/n<",
            "Lcom/google/android/play/core/internal/b1;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/android/play/core/internal/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/n<",
            "Lcom/google/android/play/core/internal/b1;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/a;

    const-string v1, "AssetPackServiceImpl"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/play/core/assetpacks/o;->b:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/n0;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/o;->d:Lcom/google/android/play/core/assetpacks/n0;

    invoke-static {p1}, Lcom/google/android/play/core/internal/e0;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/google/android/play/core/internal/n;

    invoke-static {p1}, Lcom/google/android/play/core/splitcompat/q;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    sget-object v6, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    sget-object v7, Lcom/google/android/play/core/assetpacks/o;->b:Landroid/content/Intent;

    sget-object v5, Lcom/google/android/play/core/assetpacks/s2;->b:Lcom/google/android/play/core/internal/j;

    const-string v3, "AssetPackService"

    move-object v0, p2

    move-object v2, v6

    move-object v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/internal/n;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/a;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/j;)V

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    new-instance p2, Lcom/google/android/play/core/internal/n;

    invoke-static {p1}, Lcom/google/android/play/core/splitcompat/q;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    sget-object p1, Lcom/google/android/play/core/assetpacks/s2;->a:Lcom/google/android/play/core/internal/j;

    const-string v5, "AssetPackService-keepAlive"

    move-object v2, p2

    move-object v4, v6

    move-object v6, v7

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/internal/n;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/a;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/j;)V

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/o;->f:Lcom/google/android/play/core/internal/n;

    :cond_0
    sget-object p1, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "AssetPackService initiated."

    invoke-virtual {p1, v0, p2}, Lcom/google/android/play/core/internal/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static h(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/o;->i(I)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "module_name"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static i(I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static j()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "playcore_version_code"

    const/16 v2, 0x2af8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "supported_compression_formats"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "supported_patch_formats"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static synthetic k(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "module_name"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic l(Lcom/google/android/play/core/assetpacks/o;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/o;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 6

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->j()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "installed_asset_module_name"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v2, "installed_asset_module_version"

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "installed_asset_module"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/play/core/assetpacks/o;)Lcom/google/android/play/core/internal/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    return-object p0
.end method

.method static synthetic o()Lcom/google/android/play/core/internal/a;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    return-object v0
.end method

.method static synthetic p()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->j()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/play/core/assetpacks/o;->h(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "slice_id"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "chunk_number"

    invoke-virtual {p0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method static synthetic r(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/play/core/assetpacks/o;->h(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(I)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0}, Lcom/google/android/play/core/assetpacks/o;->i(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/google/android/play/core/assetpacks/o;)Lcom/google/android/play/core/internal/n;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/o;->f:Lcom/google/android/play/core/internal/n;

    return-object p0
.end method

.method static synthetic u(Lcom/google/android/play/core/assetpacks/o;Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/o;->d:Lcom/google/android/play/core/assetpacks/n0;

    invoke-static {v1, v2}, Lcom/google/android/play/core/assetpacks/b;->b(Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/n0;)Lcom/google/android/play/core/assetpacks/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/b;->e()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    if-nez v1, :cond_1

    sget-object v2, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "onGetSessionStates: Bundle contained no pack."

    invoke-virtual {v2, v4, v3}, Lcom/google/android/play/core/internal/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->h()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/h1;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/AssetPackState;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic v(Lcom/google/android/play/core/assetpacks/o;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/play/core/assetpacks/o;->x(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic w(Lcom/google/android/play/core/assetpacks/o;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/o;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private final x(ILjava/lang/String;I)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyModuleCompleted"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v8}, Lcom/google/android/play/core/tasks/m;-><init>()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    new-instance v1, Lcom/google/android/play/core/assetpacks/e;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v8

    move v6, p1

    move-object v7, p2

    move v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/e;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;ILjava/lang/String;Lcom/google/android/play/core/tasks/m;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/n;->a(Lcom/google/android/play/core/internal/b;)V

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/play/core/assetpacks/bk;

    const-string p3, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {p2, p3, p1}, Lcom/google/android/play/core/assetpacks/bk;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method private static y()Lcom/google/android/play/core/tasks/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/play/core/tasks/c<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/play/core/internal/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/AssetPackException;

    invoke-direct {v0, v2}, Lcom/google/android/play/core/assetpacks/AssetPackException;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/play/core/tasks/e;->c(Ljava/lang/Exception;)Lcom/google/android/play/core/tasks/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->f:Lcom/google/android/play/core/internal/n;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const-string v2, "Keep alive connection manager is not initialized."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const-string v2, "keepAlive"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/o;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Service is already kept alive."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/m;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o;->f:Lcom/google/android/play/core/internal/n;

    new-instance v2, Lcom/google/android/play/core/assetpacks/i;

    invoke-direct {v2, p0, v0, v0}, Lcom/google/android/play/core/assetpacks/i;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;Lcom/google/android/play/core/tasks/m;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/internal/n;->a(Lcom/google/android/play/core/internal/b;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifySessionFailed"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/m;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    new-instance v2, Lcom/google/android/play/core/assetpacks/f;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/assetpacks/f;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;ILcom/google/android/play/core/tasks/m;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/internal/n;->a(Lcom/google/android/play/core/internal/b;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/play/core/assetpacks/bk;

    const-string v1, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/bk;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyChunkTransferred"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v10, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v10}, Lcom/google/android/play/core/tasks/m;-><init>()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    new-instance v1, Lcom/google/android/play/core/assetpacks/d;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v10

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v3 .. v10}, Lcom/google/android/play/core/assetpacks/d;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/play/core/tasks/m;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/internal/n;->a(Lcom/google/android/play/core/internal/b;)V

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/play/core/assetpacks/bk;

    const-string p3, "The Play Store app is not installed or is an unofficial version."

    invoke-direct {p2, p3, p1}, Lcom/google/android/play/core/assetpacks/bk;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public final d(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/play/core/assetpacks/o;->x(ILjava/lang/String;I)V

    return-void
.end method

.method public final e(ILjava/lang/String;Ljava/lang/String;I)Lcom/google/android/play/core/tasks/c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/play/core/tasks/c<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->y()Lcom/google/android/play/core/tasks/c;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/m;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    new-instance v2, Lcom/google/android/play/core/assetpacks/g;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    move-object v10, v0

    invoke-direct/range {v3 .. v10}, Lcom/google/android/play/core/assetpacks/g;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/play/core/tasks/m;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/internal/n;->a(Lcom/google/android/play/core/internal/b;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/m;->c()Lcom/google/android/play/core/tasks/c;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/util/Map;)Lcom/google/android/play/core/tasks/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/play/core/tasks/c<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/play/core/assetpacks/o;->y()Lcom/google/android/play/core/tasks/c;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "syncPacks"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/m;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    new-instance v2, Lcom/google/android/play/core/assetpacks/u2;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/assetpacks/u2;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;Ljava/util/Map;Lcom/google/android/play/core/tasks/m;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/internal/n;->a(Lcom/google/android/play/core/internal/b;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/tasks/m;->c()Lcom/google/android/play/core/tasks/c;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/play/core/assetpacks/o;->a:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "cancelDownloads(%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/play/core/tasks/m;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/m;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/o;->e:Lcom/google/android/play/core/internal/n;

    new-instance v2, Lcom/google/android/play/core/assetpacks/t2;

    invoke-direct {v2, p0, v0, p1, v0}, Lcom/google/android/play/core/assetpacks/t2;-><init>(Lcom/google/android/play/core/assetpacks/o;Lcom/google/android/play/core/tasks/m;Ljava/util/List;Lcom/google/android/play/core/tasks/m;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/internal/n;->a(Lcom/google/android/play/core/internal/b;)V

    return-void
.end method
