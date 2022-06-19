.class final Lcom/google/android/gms/wearable/WearableListenerService$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/WearableListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field private a:Z

.field private final b:Lcom/google/android/gms/wearable/WearableListenerService$b;

.field private final synthetic c:Lcom/google/android/gms/wearable/WearableListenerService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->c:Lcom/google/android/gms/wearable/WearableListenerService;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    new-instance p2, Lcom/google/android/gms/wearable/WearableListenerService$b;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/wearable/WearableListenerService$b;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/y;)V

    iput-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->b:Lcom/google/android/gms/wearable/WearableListenerService$b;

    return-void
.end method

.method private final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 15
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 16
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "WearableLS"

    const/4 v1, 0x2

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->c:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "bindService: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->c:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->b(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->b:Lcom/google/android/gms/wearable/WearableListenerService$b;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wearable/WearableListenerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 20
    iput-boolean v3, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 22
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 23
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "WearableLS"

    const/4 v1, 0x2

    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->c:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unbindService: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->c:Lcom/google/android/gms/wearable/WearableListenerService;

    iget-object v0, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->b:Lcom/google/android/gms/wearable/WearableListenerService$b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/wearable/WearableListenerService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "WearableLS"

    const-string v1, "Exception when unbinding from local service"

    .line 29
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$c;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 2

    const-string v0, "dispatch"

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/wearable/WearableListenerService$c;->a()V

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/WearableListenerService$c;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/WearableListenerService$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/wearable/WearableListenerService$c;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/WearableListenerService$c;->a(Ljava/lang/String;)V

    :cond_1
    throw p1
.end method
