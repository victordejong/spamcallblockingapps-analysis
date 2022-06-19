.class final Lcom/google/android/gms/common/internal/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/gms/common/internal/bp;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ServiceConnection;",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:Z

.field d:Landroid/os/IBinder;

.field final e:Lcom/google/android/gms/common/internal/bk;

.field f:Landroid/content/ComponentName;

.field final synthetic g:Lcom/google/android/gms/common/internal/bo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/bo;Lcom/google/android/gms/common/internal/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/bm;->e:Lcom/google/android/gms/common/internal/bk;

    new-instance p1, Ljava/util/HashMap;

    .line 1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bm;->a:Ljava/util/Map;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/bm;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ServiceConnection;Landroid/content/ServiceConnection;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->a:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/bm;->b:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bo;->d(Lcom/google/android/gms/common/internal/bo;)Lcom/google/android/gms/common/stats/a;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bo;->c(Lcom/google/android/gms/common/internal/bo;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->e:Lcom/google/android/gms/common/internal/bk;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/bo;->c(Lcom/google/android/gms/common/internal/bo;)Landroid/content/Context;

    move-result-object v3

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/internal/bk;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->e:Lcom/google/android/gms/common/internal/bk;

    .line 1000
    iget v6, v0, Lcom/google/android/gms/common/internal/bk;->c:I

    move-object v3, p1

    move-object v5, p0

    .line 1001
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/bm;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bo;->b(Lcom/google/android/gms/common/internal/bo;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->e:Lcom/google/android/gms/common/internal/bk;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bo;->b(Lcom/google/android/gms/common/internal/bo;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/bo;->e(Lcom/google/android/gms/common/internal/bo;)J

    move-result-wide v1

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/bm;->b:I

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/bo;->d(Lcom/google/android/gms/common/internal/bo;)Lcom/google/android/gms/common/stats/a;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bo;->c(Lcom/google/android/gms/common/internal/bo;)Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->a:Ljava/util/Map;

    .line 1
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/content/ServiceConnection;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->a:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bo;->a(Lcom/google/android/gms/common/internal/bo;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/bo;->b(Lcom/google/android/gms/common/internal/bo;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/bm;->e:Lcom/google/android/gms/common/internal/bk;

    const/4 v3, 0x1

    .line 1
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/bm;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bm;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/bm;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 3
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lcom/google/android/gms/common/internal/bm;->b:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/bo;->a(Lcom/google/android/gms/common/internal/bo;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/bm;->g:Lcom/google/android/gms/common/internal/bo;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/bo;->b(Lcom/google/android/gms/common/internal/bo;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/bm;->e:Lcom/google/android/gms/common/internal/bk;

    .line 1
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/common/internal/bm;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/bm;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/bm;->a:Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 3
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/bm;->b:I

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
