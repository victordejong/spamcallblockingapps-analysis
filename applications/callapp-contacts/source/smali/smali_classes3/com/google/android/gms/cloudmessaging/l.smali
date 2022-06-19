.class final synthetic Lcom/google/android/gms/cloudmessaging/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/cloudmessaging/g;

.field private final b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/g;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/l;->a:Lcom/google/android/gms/cloudmessaging/g;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/l;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/l;->a:Lcom/google/android/gms/cloudmessaging/g;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/l;->b:Landroid/os/IBinder;

    .line 2
    monitor-enter v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "Null service connection"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/g;->a(ILjava/lang/String;)V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance v3, Lcom/google/android/gms/cloudmessaging/p;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cloudmessaging/p;-><init>(Landroid/os/IBinder;)V

    iput-object v3, v0, Lcom/google/android/gms/cloudmessaging/g;->c:Lcom/google/android/gms/cloudmessaging/p;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x2

    .line 11
    :try_start_2
    iput v1, v0, Lcom/google/android/gms/cloudmessaging/g;->a:I

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/g;->a()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/cloudmessaging/g;->a(ILjava/lang/String;)V

    .line 10
    monitor-exit v0

    return-void

    .line 13
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
