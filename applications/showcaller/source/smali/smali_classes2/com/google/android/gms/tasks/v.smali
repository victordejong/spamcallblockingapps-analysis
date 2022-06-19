.class final Lcom/google/android/gms/tasks/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@17.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Lcom/google/android/gms/tasks/g;

.field final synthetic e:Lcom/google/android/gms/tasks/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/w;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/v;->e:Lcom/google/android/gms/tasks/w;

    iput-object p2, p0, Lcom/google/android/gms/tasks/v;->d:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/v;->e:Lcom/google/android/gms/tasks/w;

    invoke-static {v0}, Lcom/google/android/gms/tasks/w;->a(Lcom/google/android/gms/tasks/w;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/v;->e:Lcom/google/android/gms/tasks/w;

    invoke-static {v1}, Lcom/google/android/gms/tasks/w;->c(Lcom/google/android/gms/tasks/w;)Lcom/google/android/gms/tasks/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/v;->e:Lcom/google/android/gms/tasks/w;

    invoke-static {v1}, Lcom/google/android/gms/tasks/w;->c(Lcom/google/android/gms/tasks/w;)Lcom/google/android/gms/tasks/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/v;->d:Lcom/google/android/gms/tasks/g;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/g;->l()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/d;->a(Ljava/lang/Exception;)V

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
