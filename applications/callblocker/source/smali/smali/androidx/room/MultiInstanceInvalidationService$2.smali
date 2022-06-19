.class Landroidx/room/MultiInstanceInvalidationService$2;
.super Landroidx/room/d$a;
.source "MultiInstanceInvalidationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/MultiInstanceInvalidationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/room/MultiInstanceInvalidationService;


# direct methods
.method constructor <init>(Landroidx/room/MultiInstanceInvalidationService;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p0}, Landroidx/room/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/room/c;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p2, :cond_0

    .line 78
    :goto_0
    return v0

    .line 70
    :cond_0
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v2, v1, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 71
    :try_start_0
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget v1, v3, Landroidx/room/MultiInstanceInvalidationService;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v3, Landroidx/room/MultiInstanceInvalidationService;->a:I

    .line 73
    iget-object v3, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v3, v3, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget v3, v1, Landroidx/room/MultiInstanceInvalidationService;->a:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Landroidx/room/MultiInstanceInvalidationService;->a:I

    .line 78
    monitor-exit v2

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(I[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 99
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v3, v0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    .line 100
    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    if-nez v0, :cond_0

    .line 102
    const-string/jumbo v0, "ROOM"

    const-string/jumbo v1, "Remote invalidation client ID not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    monitor-exit v3

    .line 126
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    .line 107
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_3

    .line 108
    :try_start_1
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 109
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    if-eq p1, v5, :cond_1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 107
    :cond_1
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 115
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    .line 116
    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroidx/room/c;

    .line 117
    invoke-interface {v1, p2}, Landroidx/room/c;->a([Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    :try_start_3
    const-string/jumbo v5, "ROOM"

    const-string/jumbo v6, "Error invoking a remote callback"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 123
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v1, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 124
    throw v0

    .line 125
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 123
    :cond_3
    :try_start_5
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 125
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public a(Landroidx/room/c;I)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v1, v0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 91
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationService$2;->a:Landroidx/room/MultiInstanceInvalidationService;

    iget-object v0, v0, Landroidx/room/MultiInstanceInvalidationService;->b:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
