.class Lcom/google/android/gms/tasks/ab$a;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tasks/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/tasks/y",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/i;)V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tasks/ab$a;->b:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab$a;->a:Lcom/google/android/gms/common/api/internal/i;

    const-string/jumbo v1, "TaskOnStopCallback"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/common/api/internal/i;->a(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 10
    return-void
.end method

.method public static b(Landroid/app/Activity;)Lcom/google/android/gms/tasks/ab$a;
    .locals 3

    .prologue
    .line 1
    invoke-static {p0}, Lcom/google/android/gms/tasks/ab$a;->a(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object v1

    .line 2
    const-string/jumbo v0, "TaskOnStopCallback"

    const-class v2, Lcom/google/android/gms/tasks/ab$a;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/i;->a(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/ab$a;

    .line 3
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/ab$a;

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/ab$a;-><init>(Lcom/google/android/gms/common/api/internal/i;)V

    .line 6
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/y",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab$a;->b:Ljava/util/List;

    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab$a;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 14
    iget-object v1, p0, Lcom/google/android/gms/tasks/ab$a;->b:Ljava/util/List;

    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tasks/y;

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/tasks/y;->a()V

    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 20
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tasks/ab$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 21
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
