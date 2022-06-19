.class final synthetic Lcom/google/firebase/iid/j;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@20.1.5"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/firebase/iid/e;

.field private final b:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/e;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/j;->a:Lcom/google/firebase/iid/e;

    iput-object p2, p0, Lcom/google/firebase/iid/j;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/firebase/iid/j;->a:Lcom/google/firebase/iid/e;

    iget-object v0, p0, Lcom/google/firebase/iid/j;->b:Landroid/os/IBinder;

    .line 2
    monitor-enter v1

    .line 3
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "Null service connection"

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/iid/e;->a(ILjava/lang/String;)V

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_0
    return-void

    .line 6
    :cond_0
    :try_start_1
    new-instance v2, Lcom/google/firebase/iid/m;

    invoke-direct {v2, v0}, Lcom/google/firebase/iid/m;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v1, Lcom/google/firebase/iid/e;->c:Lcom/google/firebase/iid/m;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    const/4 v0, 0x2

    :try_start_2
    iput v0, v1, Lcom/google/firebase/iid/e;->a:I

    .line 12
    invoke-virtual {v1}, Lcom/google/firebase/iid/e;->a()V

    .line 13
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/iid/e;->a(ILjava/lang/String;)V

    .line 10
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
