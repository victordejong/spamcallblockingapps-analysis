.class final Lcom/google/android/gms/tasks/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/tasks/g;

.field private final synthetic b:Lcom/google/android/gms/tasks/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/s;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/t;->b:Lcom/google/android/gms/tasks/s;

    iput-object p2, p0, Lcom/google/android/gms/tasks/t;->a:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/tasks/t;->b:Lcom/google/android/gms/tasks/s;

    invoke-static {v0}, Lcom/google/android/gms/tasks/s;->a(Lcom/google/android/gms/tasks/s;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tasks/t;->b:Lcom/google/android/gms/tasks/s;

    invoke-static {v0}, Lcom/google/android/gms/tasks/s;->b(Lcom/google/android/gms/tasks/s;)Lcom/google/android/gms/tasks/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/tasks/t;->b:Lcom/google/android/gms/tasks/s;

    invoke-static {v0}, Lcom/google/android/gms/tasks/s;->b(Lcom/google/android/gms/tasks/s;)Lcom/google/android/gms/tasks/d;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tasks/t;->a:Lcom/google/android/gms/tasks/g;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/g;->e()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/tasks/d;->a(Ljava/lang/Exception;)V

    .line 5
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
