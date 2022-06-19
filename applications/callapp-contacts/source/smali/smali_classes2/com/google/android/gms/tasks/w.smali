.class final Lcom/google/android/gms/tasks/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;

.field final synthetic b:Lcom/google/android/gms/tasks/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/x;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/w;->b:Lcom/google/android/gms/tasks/x;

    iput-object p2, p0, Lcom/google/android/gms/tasks/w;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/w;->b:Lcom/google/android/gms/tasks/x;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/tasks/x;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/w;->b:Lcom/google/android/gms/tasks/x;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/tasks/x;->b:Lcom/google/android/gms/tasks/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/w;->b:Lcom/google/android/gms/tasks/x;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/tasks/x;->b:Lcom/google/android/gms/tasks/e;

    iget-object v2, p0, Lcom/google/android/gms/tasks/w;->a:Lcom/google/android/gms/tasks/h;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/h;->e()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/e;->onFailure(Ljava/lang/Exception;)V

    .line 2
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
