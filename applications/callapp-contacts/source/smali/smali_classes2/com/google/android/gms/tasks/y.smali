.class final Lcom/google/android/gms/tasks/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;

.field final synthetic b:Lcom/google/android/gms/tasks/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/z;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/y;->b:Lcom/google/android/gms/tasks/z;

    iput-object p2, p0, Lcom/google/android/gms/tasks/y;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/y;->b:Lcom/google/android/gms/tasks/z;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/tasks/z;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/y;->b:Lcom/google/android/gms/tasks/z;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/y;->b:Lcom/google/android/gms/tasks/z;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/tasks/z;->b:Lcom/google/android/gms/tasks/f;

    iget-object v2, p0, Lcom/google/android/gms/tasks/y;->a:Lcom/google/android/gms/tasks/h;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/f;->onSuccess(Ljava/lang/Object;)V

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
