.class final Lcom/google/android/gms/tasks/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/h;

.field final synthetic b:Lcom/google/android/gms/tasks/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/v;Lcom/google/android/gms/tasks/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/u;->b:Lcom/google/android/gms/tasks/v;

    iput-object p2, p0, Lcom/google/android/gms/tasks/u;->a:Lcom/google/android/gms/tasks/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/tasks/u;->b:Lcom/google/android/gms/tasks/v;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/tasks/v;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/u;->b:Lcom/google/android/gms/tasks/v;

    .line 2000
    iget-object v1, v1, Lcom/google/android/gms/tasks/v;->b:Lcom/google/android/gms/tasks/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/u;->b:Lcom/google/android/gms/tasks/v;

    .line 3000
    iget-object v1, v1, Lcom/google/android/gms/tasks/v;->b:Lcom/google/android/gms/tasks/d;

    iget-object v2, p0, Lcom/google/android/gms/tasks/u;->a:Lcom/google/android/gms/tasks/h;

    .line 1
    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/d;->onComplete(Lcom/google/android/gms/tasks/h;)V

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
