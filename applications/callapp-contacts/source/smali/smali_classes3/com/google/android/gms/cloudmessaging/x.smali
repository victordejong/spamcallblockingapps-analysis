.class final synthetic Lcom/google/android/gms/cloudmessaging/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/d;


# instance fields
.field private final a:Lcom/google/android/gms/cloudmessaging/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/b;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/x;->a:Lcom/google/android/gms/cloudmessaging/b;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/x;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cloudmessaging/x;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/h;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/x;->a:Lcom/google/android/gms/cloudmessaging/b;

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/x;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/x;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 1135
    iget-object v2, p1, Lcom/google/android/gms/cloudmessaging/b;->b:Landroidx/b/g;

    monitor-enter v2

    .line 1136
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/b;->b:Landroidx/b/g;

    invoke-virtual {p1, v0}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1138
    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 1137
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
