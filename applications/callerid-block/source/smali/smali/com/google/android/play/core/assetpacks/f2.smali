.class final Lcom/google/android/play/core/assetpacks/f2;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final f:Lcom/google/android/play/core/internal/a;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/v;

.field private final b:Lcom/google/android/play/core/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/p0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/play/core/assetpacks/s;

.field private final d:Lcom/google/android/play/core/assetpacks/e0;

.field private final e:Lcom/google/android/play/core/internal/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/play/core/internal/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/a;

    const-string v1, "AssetPackManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/f2;->f:Lcom/google/android/play/core/internal/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/v;Lcom/google/android/play/core/internal/p0;Lcom/google/android/play/core/assetpacks/s;Lcom/google/android/play/core/splitinstall/j;Lcom/google/android/play/core/assetpacks/z0;Lcom/google/android/play/core/assetpacks/n0;Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/internal/p0;Lcom/google/android/play/core/common/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/v;",
            "Lcom/google/android/play/core/internal/p0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/s;",
            "Lcom/google/android/play/core/splitinstall/j;",
            "Lcom/google/android/play/core/assetpacks/z0;",
            "Lcom/google/android/play/core/assetpacks/n0;",
            "Lcom/google/android/play/core/assetpacks/e0;",
            "Lcom/google/android/play/core/internal/p0<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lcom/google/android/play/core/common/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/f2;->a:Lcom/google/android/play/core/assetpacks/v;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/f2;->b:Lcom/google/android/play/core/internal/p0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/f2;->c:Lcom/google/android/play/core/assetpacks/s;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/f2;->d:Lcom/google/android/play/core/assetpacks/e0;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/f2;->e:Lcom/google/android/play/core/internal/p0;

    return-void
.end method

.method static final synthetic d(Ljava/lang/Exception;)V
    .locals 3

    sget-object v0, Lcom/google/android/play/core/assetpacks/f2;->f:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Could not sync active asset packs. %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/play/core/internal/a;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lcom/google/android/play/core/assetpacks/f2;)Lcom/google/android/play/core/assetpacks/e0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/assetpacks/f2;->d:Lcom/google/android/play/core/assetpacks/e0;

    return-object p0
.end method

.method private final f()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f2;->e:Lcom/google/android/play/core/internal/p0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/c2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/play/core/assetpacks/c2;-><init>(Lcom/google/android/play/core/assetpacks/f2;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f2;->c:Lcom/google/android/play/core/assetpacks/s;

    invoke-virtual {v0}, Le/c/a/c/a/a/c;->e()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/f2;->c:Lcom/google/android/play/core/assetpacks/s;

    invoke-virtual {v1, p1}, Le/c/a/c/a/a/c;->c(Z)V

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/play/core/assetpacks/f2;->f()V

    :cond_0
    return-void
.end method

.method final synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f2;->a:Lcom/google/android/play/core/assetpacks/v;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/v;->I()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f2;->a:Lcom/google/android/play/core/assetpacks/v;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/v;->F()V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f2;->a:Lcom/google/android/play/core/assetpacks/v;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/v;->J()V

    return-void
.end method

.method final synthetic c()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/f2;->b:Lcom/google/android/play/core/internal/p0;

    invoke-interface {v0}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/r2;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/f2;->a:Lcom/google/android/play/core/assetpacks/v;

    invoke-virtual {v1}, Lcom/google/android/play/core/assetpacks/v;->q()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/play/core/assetpacks/r2;->e(Ljava/util/Map;)Lcom/google/android/play/core/tasks/c;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/f2;->e:Lcom/google/android/play/core/internal/p0;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/f2;->a:Lcom/google/android/play/core/assetpacks/v;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/android/play/core/assetpacks/d2;->b(Lcom/google/android/play/core/assetpacks/v;)Lcom/google/android/play/core/tasks/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/tasks/c;->b(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/b;)Lcom/google/android/play/core/tasks/c;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/f2;->e:Lcom/google/android/play/core/internal/p0;

    invoke-interface {v1}, Lcom/google/android/play/core/internal/p0;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/google/android/play/core/assetpacks/e2;->a:Lcom/google/android/play/core/tasks/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/play/core/tasks/c;->a(Ljava/util/concurrent/Executor;Lcom/google/android/play/core/tasks/a;)Lcom/google/android/play/core/tasks/c;

    return-void
.end method
