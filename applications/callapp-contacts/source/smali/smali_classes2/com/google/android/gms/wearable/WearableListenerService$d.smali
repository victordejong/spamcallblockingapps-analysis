.class final Lcom/google/android/gms/wearable/WearableListenerService$d;
.super Lcom/google/android/gms/wearable/internal/bk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/WearableListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/WearableListenerService;

.field private volatile b:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-direct {p0}, Lcom/google/android/gms/wearable/internal/bk;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/WearableListenerService;Lcom/google/android/gms/wearable/y;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;-><init>(Lcom/google/android/gms/wearable/WearableListenerService;)V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "WearableLS"

    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const-string v0, "%s: %s %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/wearable/WearableListenerService;->a(Lcom/google/android/gms/wearable/WearableListenerService;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v3

    const/4 p2, 0x2

    aput-object p3, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 42
    iget p3, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->b:I

    if-ne p2, p3, :cond_1

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    .line 44
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {p3}, Lcom/google/android/gms/wearable/internal/dj;->a(Landroid/content/Context;)Lcom/google/android/gms/wearable/internal/dj;

    move-result-object p3

    const-string v0, "com.google.android.wearable.app.cn"

    .line 45
    invoke-virtual {p3, v0}, Lcom/google/android/gms/wearable/internal/dj;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 46
    iget-object p3, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    const-string v0, "com.google.android.wearable.app.cn"

    invoke-static {p3, p2, v0}, Lcom/google/android/gms/common/util/s;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 47
    iput p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->b:I

    goto :goto_0

    .line 49
    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {p3, p2}, Lcom/google/android/gms/common/util/s;->a(Landroid/content/Context;I)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 50
    iput p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->b:I

    goto :goto_0

    :cond_3
    const-string p3, "WearableLS"

    const/16 v0, 0x39

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Caller is not GooglePlayServices; caller UID: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    return v2

    .line 56
    :cond_4
    iget-object p2, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {p2}, Lcom/google/android/gms/wearable/WearableListenerService;->d(Lcom/google/android/gms/wearable/WearableListenerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 57
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {p3}, Lcom/google/android/gms/wearable/WearableListenerService;->e(Lcom/google/android/gms/wearable/WearableListenerService;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 58
    monitor-exit p2

    return v2

    .line 59
    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/wearable/WearableListenerService$d;->a:Lcom/google/android/gms/wearable/WearableListenerService;

    invoke-static {p3}, Lcom/google/android/gms/wearable/WearableListenerService;->f(Lcom/google/android/gms/wearable/WearableListenerService;)Lcom/google/android/gms/wearable/WearableListenerService$c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/wearable/WearableListenerService$c;->post(Ljava/lang/Runnable;)Z

    .line 60
    monitor-exit p2

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 6

    .line 3
    new-instance v0, Lcom/google/android/gms/wearable/z;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/z;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/common/data/DataHolder;)V

    :try_start_0
    const-string v1, "onDataItemChanged"

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rows="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzah;)V
    .locals 2

    .line 24
    new-instance v0, Lcom/google/android/gms/wearable/ae;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/ae;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/wearable/internal/zzah;)V

    const-string v1, "onConnectedCapabilityChanged"

    .line 25
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzaw;)V
    .locals 2

    .line 33
    new-instance v0, Lcom/google/android/gms/wearable/ah;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/ah;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/wearable/internal/zzaw;)V

    const-string v1, "onChannelEvent"

    .line 34
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzfe;)V
    .locals 2

    .line 12
    new-instance v0, Lcom/google/android/gms/wearable/aa;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/aa;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/wearable/internal/zzfe;)V

    const-string v1, "onMessageReceived"

    .line 13
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzfo;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/google/android/gms/wearable/ab;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/ab;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/wearable/internal/zzfo;)V

    const-string v1, "onPeerConnected"

    .line 16
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzi;)V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/android/gms/wearable/ag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/ag;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/wearable/internal/zzi;)V

    const-string v1, "onEntityUpdate"

    .line 31
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/internal/zzl;)V
    .locals 2

    .line 27
    new-instance v0, Lcom/google/android/gms/wearable/af;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/af;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/wearable/internal/zzl;)V

    const-string v1, "onNotificationReceived"

    .line 28
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/wearable/internal/zzfo;",
            ">;)V"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/android/gms/wearable/ad;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/ad;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Ljava/util/List;)V

    const-string v1, "onConnectedNodes"

    .line 22
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/internal/zzfo;)V
    .locals 2

    .line 18
    new-instance v0, Lcom/google/android/gms/wearable/ac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wearable/ac;-><init>(Lcom/google/android/gms/wearable/WearableListenerService$d;Lcom/google/android/gms/wearable/internal/zzfo;)V

    const-string v1, "onPeerDisconnected"

    .line 19
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/wearable/WearableListenerService$d;->a(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
