.class final Lcom/google/android/gms/common/internal/aj;
.super Lcom/google/android/gms/common/internal/i;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/common/internal/i$a;",
            "Lcom/google/android/gms/common/internal/al;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mConnectionStatus"
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/google/android/gms/common/stats/a;

.field private final e:J

.field private final f:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/i;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/aj;->b:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/e/i;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/e/i;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/aj;->c:Landroid/os/Handler;

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/aj;->d:Lcom/google/android/gms/common/stats/a;

    .line 6
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/aj;->e:J

    .line 7
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/aj;->f:J

    .line 8
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/aj;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/aj;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/aj;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/aj;)Lcom/google/android/gms/common/stats/a;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->d:Lcom/google/android/gms/common/stats/a;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/aj;)J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/android/gms/common/internal/aj;->f:J

    return-wide v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 9
    const-string/jumbo v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/al;

    .line 15
    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/google/android/gms/common/internal/al;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/al;-><init>(Lcom/google/android/gms/common/internal/aj;Lcom/google/android/gms/common/internal/i$a;)V

    .line 17
    invoke-virtual {v0, p2, p2, p3}, Lcom/google/android/gms/common/internal/al;->a(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/al;->a(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->a()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/internal/aj;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/al;->a(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x51

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 23
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2, p2, p3}, Lcom/google/android/gms/common/internal/al;->a(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->b()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 25
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->e()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->d()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 27
    :pswitch_1
    invoke-virtual {v0, p3}, Lcom/google/android/gms/common/internal/al;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final b(Lcom/google/android/gms/common/internal/i$a;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 30
    const-string/jumbo v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/al;

    .line 33
    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Nonexistent connection status for service config: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/al;->a(Landroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/common/internal/al;->a(Landroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/al;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/common/internal/aj;->c:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/common/internal/aj;->c:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/google/android/gms/common/internal/aj;->e:J

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 41
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 43
    :pswitch_0
    iget-object v3, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    monitor-enter v3

    .line 44
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/i$a;

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/al;

    .line 46
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 48
    const-string/jumbo v4, "GmsClientSupervisor"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/common/internal/al;->b(Ljava/lang/String;)V

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    monitor-exit v3

    move v0, v2

    .line 51
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 52
    :pswitch_1
    iget-object v4, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    monitor-enter v4

    .line 53
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/internal/i$a;

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/common/internal/aj;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/al;

    .line 55
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->b()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    .line 56
    const-string/jumbo v3, "GmsClientSupervisor"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/al;->e()Landroid/content/ComponentName;

    move-result-object v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$a;->b()Landroid/content/ComponentName;

    move-result-object v3

    .line 60
    :cond_2
    if-nez v3, :cond_4

    .line 61
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/i$a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "unknown"

    invoke-direct {v3, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 62
    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/al;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 63
    :cond_3
    monitor-exit v4

    move v0, v2

    .line 64
    goto/16 :goto_0

    .line 63
    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    move-object v0, v3

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
