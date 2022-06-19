.class final Lcom/google/android/play/core/tasks/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/tasks/d;

.field final synthetic b:Lcom/google/android/play/core/tasks/h;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/tasks/h;Lcom/google/android/play/core/tasks/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/tasks/g;->b:Lcom/google/android/play/core/tasks/h;

    iput-object p2, p0, Lcom/google/android/play/core/tasks/g;->a:Lcom/google/android/play/core/tasks/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/tasks/g;->b:Lcom/google/android/play/core/tasks/h;

    .line 1000
    iget-object v0, v0, Lcom/google/android/play/core/tasks/h;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/tasks/g;->b:Lcom/google/android/play/core/tasks/h;

    .line 2000
    iget-object v1, v1, Lcom/google/android/play/core/tasks/h;->b:Lcom/google/android/play/core/tasks/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/tasks/g;->b:Lcom/google/android/play/core/tasks/h;

    .line 3000
    iget-object v1, v1, Lcom/google/android/play/core/tasks/h;->b:Lcom/google/android/play/core/tasks/a;

    iget-object v2, p0, Lcom/google/android/play/core/tasks/g;->a:Lcom/google/android/play/core/tasks/d;

    invoke-interface {v1, v2}, Lcom/google/android/play/core/tasks/a;->onComplete(Lcom/google/android/play/core/tasks/d;)V

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
