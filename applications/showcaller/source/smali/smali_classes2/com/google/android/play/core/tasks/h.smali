.class final Lcom/google/android/play/core/tasks/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/play/core/tasks/c;

.field final synthetic e:Lcom/google/android/play/core/tasks/i;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/tasks/i;Lcom/google/android/play/core/tasks/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/tasks/h;->e:Lcom/google/android/play/core/tasks/i;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/h;->d:Lcom/google/android/play/core/tasks/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/tasks/h;->e:Lcom/google/android/play/core/tasks/i;

    invoke-static {v0}, Lcom/google/android/play/core/tasks/i;->b(Lcom/google/android/play/core/tasks/i;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/h;->e:Lcom/google/android/play/core/tasks/i;

    invoke-static {v1}, Lcom/google/android/play/core/tasks/i;->c(Lcom/google/android/play/core/tasks/i;)Lcom/google/android/play/core/tasks/b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/h;->e:Lcom/google/android/play/core/tasks/i;

    invoke-static {v1}, Lcom/google/android/play/core/tasks/i;->c(Lcom/google/android/play/core/tasks/i;)Lcom/google/android/play/core/tasks/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/tasks/h;->d:Lcom/google/android/play/core/tasks/c;

    invoke-virtual {v2}, Lcom/google/android/play/core/tasks/c;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/play/core/tasks/b;->onSuccess(Ljava/lang/Object;)V

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
