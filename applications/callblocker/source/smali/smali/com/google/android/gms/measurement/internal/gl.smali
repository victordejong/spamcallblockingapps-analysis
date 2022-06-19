.class final Lcom/google/android/gms/measurement/internal/gl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/gk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gk;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gl;->b:Lcom/google/android/gms/measurement/internal/gk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gl;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gl;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gl;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gl;->b:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gl;->b:Lcom/google/android/gms/measurement/internal/gk;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/ef;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dv;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->h(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gl;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 8
    monitor-exit v1

    return-void

    .line 6
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gl;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 7
    throw v0

    .line 8
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
