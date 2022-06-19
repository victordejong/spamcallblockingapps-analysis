.class public Ld2/f1$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/y0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld2/f1;->g(Ld2/l;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ld2/f1;


# direct methods
.method public constructor <init>(Ld2/f1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/f1$s;->a:Ld2/f1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ld2/t0;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld2/f1$s;->a:Ld2/f1;

    invoke-virtual {v0}, Ld2/f1;->p()Ld2/h0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ld2/h0;->d:Ld2/d2;

    .line 3
    iget-object v1, p0, Ld2/f1$s;->a:Ld2/f1;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Ld2/f1;->D:Z

    .line 5
    iget-boolean v1, v1, Ld2/f1;->I:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 6
    new-instance v1, Ld2/f4;

    invoke-direct {v1}, Ld2/f4;-><init>()V

    .line 7
    new-instance v4, Ld2/f4;

    invoke-direct {v4}, Ld2/f4;-><init>()V

    .line 8
    invoke-static {}, Ld2/i3;->u()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_version"

    invoke-static {v4, v6, v5}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v5, "app_bundle_info"

    .line 9
    invoke-static {v1, v5, v4}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 10
    new-instance v4, Ld2/t0;

    const-string v5, "AdColony.on_update"

    invoke-direct {v4, v5, v2, v1}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {v4}, Ld2/t0;->b()V

    .line 11
    iget-object v1, p0, Ld2/f1$s;->a:Ld2/f1;

    .line 12
    iput-boolean v3, v1, Ld2/f1;->I:Z

    .line 13
    :cond_0
    iget-object v1, p0, Ld2/f1$s;->a:Ld2/f1;

    .line 14
    iget-boolean v1, v1, Ld2/f1;->J:Z

    if-eqz v1, :cond_1

    .line 15
    new-instance v1, Ld2/t0;

    const-string v4, "AdColony.on_install"

    invoke-direct {v1, v4, v2}, Ld2/t0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ld2/t0;->b()V

    .line 16
    :cond_1
    iget-object p1, p1, Ld2/t0;->b:Ld2/f4;

    if-eqz v0, :cond_2

    const-string v1, "app_session_id"

    .line 17
    invoke-virtual {p1, v1}, Ld2/f4;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v4, v0, Ld2/d2;->e:Ljava/util/HashMap;

    const-string v5, "sessionId"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 20
    :cond_2
    :goto_0
    invoke-static {}, Ld2/o;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    invoke-static {}, Ld2/o;->b()V

    :cond_3
    const-string v0, "base_download_threads"

    .line 22
    invoke-virtual {p1, v0}, Ld2/f4;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 23
    iget-object v1, p0, Ld2/f1$s;->a:Ld2/f1;

    .line 24
    iget-object v1, v1, Ld2/f1;->b:Ld2/p2;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 26
    iput v0, v1, Ld2/p2;->b:I

    .line 27
    iget-object v0, v1, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    iget v4, v1, Ld2/p2;->b:I

    if-ge v0, v4, :cond_4

    .line 28
    iget-object v0, v1, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :cond_4
    const-string v0, "concurrent_requests"

    .line 29
    invoke-virtual {p1, v0}, Ld2/f4;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 30
    iget-object v1, p0, Ld2/f1$s;->a:Ld2/f1;

    .line 31
    iget-object v1, v1, Ld2/f1;->b:Ld2/p2;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 33
    iput v0, v1, Ld2/p2;->c:I

    .line 34
    iget-object v0, v1, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    iget v4, v1, Ld2/p2;->c:I

    if-le v0, v4, :cond_5

    .line 35
    iget-object v0, v1, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :cond_5
    const-string v0, "threads_keep_alive_time"

    .line 36
    invoke-virtual {p1, v0}, Ld2/f4;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 37
    iget-object v1, p0, Ld2/f1$s;->a:Ld2/f1;

    .line 38
    iget-object v1, v1, Ld2/f1;->b:Ld2/p2;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    iget-object v1, v1, Ld2/p2;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    :cond_6
    const-string v0, "thread_pool_scaling_factor"

    .line 41
    iget-object v1, p1, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 42
    :try_start_1
    iget-object p1, p1, Ld2/f4;->a:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_7

    .line 44
    iget-object p1, p0, Ld2/f1$s;->a:Ld2/f1;

    .line 45
    iget-object p1, p1, Ld2/f1;->b:Ld2/p2;

    .line 46
    iput-wide v4, p1, Ld2/p2;->d:D

    .line 47
    :cond_7
    iget-object p1, p0, Ld2/f1$s;->a:Ld2/f1;

    .line 48
    iget-object p1, p1, Ld2/f1;->m:Ld2/j3;

    .line 49
    iput-boolean v2, p1, Ld2/j3;->a:Z

    .line 50
    iget-object v0, p1, Ld2/j3;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    .line 51
    iget-object v0, p1, Ld2/j3;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Ld2/i3;->v(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, p1, Ld2/j3;->c:Ljava/lang/Runnable;

    .line 53
    iput-boolean v3, p1, Ld2/j3;->a:Z

    .line 54
    iget-object p1, p1, Ld2/j3;->b:Ljava/lang/Runnable;

    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    .line 55
    iget-wide v0, v0, Ld2/f1;->U:J

    .line 56
    invoke-static {p1, v0, v1}, Ld2/i3;->k(Ljava/lang/Runnable;J)Z

    .line 57
    iget-object p1, p0, Ld2/f1$s;->a:Ld2/f1;

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v0, Ld2/f4;

    invoke-direct {v0}, Ld2/f4;-><init>()V

    const-string v1, "type"

    const-string v2, "AdColony.on_configuration_completed"

    .line 60
    invoke-static {v0, v1, v2}, Ld2/e4;->i(Ld2/f4;Ljava/lang/String;Ljava/lang/String;)Z

    .line 61
    new-instance v1, Ld2/d4;

    invoke-direct {v1}, Ld2/d4;-><init>()V

    .line 62
    iget-object p1, p1, Ld2/f1;->u:Ljava/util/HashMap;

    .line 63
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    invoke-virtual {v1, v2}, Ld2/d4;->b(Ljava/lang/String;)Ld2/d4;

    goto :goto_1

    .line 65
    :cond_8
    new-instance p1, Ld2/f4;

    invoke-direct {p1}, Ld2/f4;-><init>()V

    const-string v2, "zone_ids"

    .line 66
    invoke-static {p1, v2, v1}, Ld2/e4;->g(Ld2/f4;Ljava/lang/String;Ld2/d4;)Z

    const-string v1, "message"

    .line 67
    invoke-static {v0, v1, p1}, Ld2/e4;->h(Ld2/f4;Ljava/lang/String;Ld2/f4;)Z

    .line 68
    new-instance p1, Ld2/t0;

    const-string v1, "CustomMessage.controller_send"

    invoke-direct {p1, v1, v3, v0}, Ld2/t0;-><init>(Ljava/lang/String;ILd2/f4;)V

    invoke-virtual {p1}, Ld2/t0;->b()V

    return-void

    :catchall_1
    move-exception p1

    .line 69
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
