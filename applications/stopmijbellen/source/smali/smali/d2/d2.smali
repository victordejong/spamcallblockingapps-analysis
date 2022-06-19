.class public Ld2/d2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ld2/g4;

.field public b:Ljava/util/concurrent/ScheduledExecutorService;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/x;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld2/x;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lj4/h0;

.field public g:Lj4/h0;


# direct methods
.method public constructor <init>(Ld2/g4;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld2/g4;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld2/d2;->a:Ld2/g4;

    .line 3
    iput-object p2, p0, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Ld2/d2;->e:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld2/d2;->c:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ld2/d2;->d:Ljava/util/List;

    .line 7
    new-instance p1, Lj4/h0;

    const-string p2, "adcolony_android"

    const-string p3, "4.6.5"

    const-string v0, "Production"

    invoke-direct {p1, p2, p3, v0}, Lj4/h0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Ld2/d2;->f:Lj4/h0;

    .line 8
    new-instance p1, Lj4/h0;

    const-string p2, "adcolony_fatal_reports"

    invoke-direct {p1, p2, p3, v0}, Lj4/h0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Ld2/d2;->g:Lj4/h0;

    return-void
.end method


# virtual methods
.method public a(Lj4/h0;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj4/h0;",
            "Ljava/util/List<",
            "Ld2/x;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v0

    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ld2/b2;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Ld2/d2;->e:Ljava/util/HashMap;

    const-string v2, "advertiserId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Ld2/d2;->e:Ljava/util/HashMap;

    const-string v2, "advertiserId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "unknown"

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Ld2/d2;->e:Ljava/util/HashMap;

    const-string v2, "advertiserId"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v1, p1, Lj4/h0;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "index"

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 13
    iget-object v1, p1, Lj4/h0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "environment"

    .line 14
    monitor-enter v0

    .line 15
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 17
    iget-object p1, p1, Lj4/h0;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, "version"

    .line 18
    monitor-enter v0

    .line 19
    :try_start_2
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 21
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld2/x;

    .line 23
    invoke-virtual {p0, v1}, Ld2/d2;->c(Ld2/x;)Ld2/f4;

    move-result-object v1

    .line 24
    monitor-enter p1

    .line 25
    :try_start_3
    iget-object v1, v1, Ld2/f4;->a:Lorg/json/JSONObject;

    .line 26
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 27
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    :cond_2
    const-string p2, "logs"

    .line 28
    monitor-enter v0

    .line 29
    :try_start_4
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 31
    monitor-enter v0

    .line 32
    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 34
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 35
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 36
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p1

    :catchall_5
    move-exception p1

    .line 37
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p1
.end method

.method public declared-synchronized b(Ld2/x;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld2/d2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ld2/d2$a;

    invoke-direct {v1, p0, p1}, Ld2/d2$a;-><init>(Ld2/d2;Ld2/x;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 3
    :catch_0
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c(Ld2/x;)Ld2/f4;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ld2/f4;

    iget-object v1, p0, Ld2/d2;->e:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ld2/f4;-><init>(Ljava/util/Map;)V

    .line 2
    iget-object v1, p1, Ld2/x;->c:Lj4/h0;

    .line 3
    iget-object v1, v1, Lj4/h0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "environment"

    .line 4
    invoke-virtual {v0, v2, v1}, Ld2/f4;->c(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    .line 5
    invoke-virtual {p1}, Ld2/x;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Ld2/f4;->c(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    .line 6
    iget-object v1, p1, Ld2/x;->d:Ljava/lang/String;

    const-string v2, "message"

    .line 7
    invoke-virtual {v0, v2, v1}, Ld2/f4;->c(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    .line 8
    sget-object v1, Ld2/x;->e:Ljava/text/SimpleDateFormat;

    iget-object v2, p1, Ld2/x;->a:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientTimestamp"

    .line 9
    invoke-virtual {v0, v2, v1}, Ld2/f4;->c(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    .line 10
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v1

    invoke-virtual {v1}, Ld2/f1;->s()Ld2/l;

    move-result-object v1

    invoke-virtual {v1}, Ld2/l;->d()Lorg/json/JSONObject;

    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->s()Ld2/l;

    move-result-object v2

    invoke-virtual {v2}, Ld2/l;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v3

    invoke-virtual {v3}, Ld2/f1;->m()Ld2/b2;

    move-result-object v3

    invoke-virtual {v3}, Ld2/b2;->c()D

    move-result-wide v3

    const-string v5, "name"

    .line 15
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 16
    :try_start_1
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    const-string v6, "mediation_network"

    .line 17
    invoke-virtual {v0, v6, v5}, Ld2/f4;->c(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    const-string v5, "version"

    .line 18
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 19
    :try_start_3
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    const-string v1, "mediation_network_version"

    .line 20
    invoke-virtual {v0, v1, v5}, Ld2/f4;->c(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    const-string v1, "name"

    .line 21
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 22
    :try_start_5
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-string v5, "plugin"

    .line 23
    invoke-virtual {v0, v5, v1}, Ld2/f4;->c(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    const-string v1, "version"

    .line 24
    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 25
    :try_start_7
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    const-string v2, "plugin_version"

    .line 26
    invoke-virtual {v0, v2, v1}, Ld2/f4;->c(Ljava/lang/String;Ljava/lang/String;)Ld2/f4;

    const-string v1, "batteryInfo"

    .line 27
    iget-object v2, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 28
    :try_start_9
    iget-object v5, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    invoke-virtual {v5, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 29
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 30
    :try_start_a
    instance-of v1, p1, Ld2/g3;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ld2/f4;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 31
    check-cast p1, Ld2/g3;

    const/4 p1, 0x0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {v1}, Ld2/e4;->e([Ld2/f4;)Ld2/f4;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 32
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_1
    move-exception p1

    .line 33
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_2
    move-exception p1

    .line 34
    :try_start_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_3
    move-exception p1

    .line 35
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    throw p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_4
    move-exception p1

    .line 36
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    throw p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
