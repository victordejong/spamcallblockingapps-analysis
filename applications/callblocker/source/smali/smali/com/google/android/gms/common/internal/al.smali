.class final Lcom/google/android/gms/common/internal/al;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Z

.field private d:Landroid/os/IBinder;

.field private final e:Lcom/google/android/gms/common/internal/i$a;

.field private f:Landroid/content/ComponentName;

.field private final synthetic g:Lcom/google/android/gms/common/internal/aj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/aj;Lcom/google/android/gms/common/internal/i$a;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/common/internal/al;->e:Lcom/google/android/gms/common/internal/i$a;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Ljava/util/Map;

    .line 4
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/al;->b:I

    .line 5
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->d(Lcom/google/android/gms/common/internal/aj;)Lcom/google/android/gms/common/stats/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Lcom/google/android/gms/common/internal/aj;)Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->e:Lcom/google/android/gms/common/internal/i$a;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->c(Lcom/google/android/gms/common/internal/aj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/i$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public final a(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->d(Lcom/google/android/gms/common/internal/aj;)Lcom/google/android/gms/common/stats/a;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->c(Lcom/google/android/gms/common/internal/aj;)Landroid/content/Context;

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 24
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/al;->b:I

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->d(Lcom/google/android/gms/common/internal/aj;)Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->c(Lcom/google/android/gms/common/internal/aj;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->e:Lcom/google/android/gms/common/internal/i$a;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/common/internal/aj;->c(Lcom/google/android/gms/common/internal/aj;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/internal/i$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->e:Lcom/google/android/gms/common/internal/i$a;

    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/i$a;->c()I

    move-result v5

    move-object v2, p1

    move-object v4, p0

    .line 30
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/al;->c:Z

    .line 31
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/al;->c:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Lcom/google/android/gms/common/internal/aj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->e:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->b(Lcom/google/android/gms/common/internal/aj;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/aj;->e(Lcom/google/android/gms/common/internal/aj;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 39
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/al;->b:I

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->d(Lcom/google/android/gms/common/internal/aj;)Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->c(Lcom/google/android/gms/common/internal/aj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/al;->c:Z

    return v0
.end method

.method public final a(Landroid/content/ServiceConnection;)Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/gms/common/internal/al;->b:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Lcom/google/android/gms/common/internal/aj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->e:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->d(Lcom/google/android/gms/common/internal/aj;)Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->c(Lcom/google/android/gms/common/internal/aj;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/al;->c:Z

    .line 43
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/al;->b:I

    .line 44
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final d()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->d:Landroid/os/IBinder;

    return-object v0
.end method

.method public final e()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->f:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Lcom/google/android/gms/common/internal/aj;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Lcom/google/android/gms/common/internal/aj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/al;->e:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/common/internal/al;->d:Landroid/os/IBinder;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->f:Landroid/content/ComponentName;

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 11
    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 13
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/common/internal/al;->b:I

    .line 14
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Lcom/google/android/gms/common/internal/aj;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->g:Lcom/google/android/gms/common/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Lcom/google/android/gms/common/internal/aj;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/al;->e:Lcom/google/android/gms/common/internal/i$a;

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/al;->d:Landroid/os/IBinder;

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->f:Landroid/content/ComponentName;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    .line 20
    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 22
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/google/android/gms/common/internal/al;->b:I

    .line 23
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
