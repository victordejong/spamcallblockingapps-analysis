.class final Lcom/google/android/gms/tasks/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/s;->a:Lcom/google/android/gms/tasks/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/s;->a:Lcom/google/android/gms/tasks/t;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/tasks/t;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/s;->a:Lcom/google/android/gms/tasks/t;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/tasks/t;->b:Lcom/google/android/gms/tasks/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/s;->a:Lcom/google/android/gms/tasks/t;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/tasks/t;->b:Lcom/google/android/gms/tasks/c;

    .line 1
    invoke-interface {v1}, Lcom/google/android/gms/tasks/c;->a()V

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
