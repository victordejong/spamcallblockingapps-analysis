.class public Ld2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld2/f1;

.field public final synthetic b:Ld2/g2;

.field public final synthetic c:Landroid/support/v4/media/a;


# direct methods
.method public constructor <init>(Ld2/f1;Ld2/g2;Landroid/support/v4/media/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/c;->a:Ld2/f1;

    iput-object p2, p0, Ld2/c;->b:Ld2/g2;

    iput-object p3, p0, Ld2/c;->c:Landroid/support/v4/media/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Ld2/c;->a:Ld2/f1;

    iget-object v1, p0, Ld2/c;->b:Ld2/g2;

    .line 2
    iget-wide v2, v0, Ld2/f1;->Q:J

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    new-array v6, v5, [Ld2/f4;

    .line 4
    invoke-virtual {v0}, Ld2/f1;->s()Ld2/l;

    move-result-object v7

    .line 5
    iget-object v7, v7, Ld2/l;->d:Ld2/f4;

    .line 6
    sget-object v8, Ld2/i3;->a:Ljava/util/concurrent/ExecutorService;

    const-string v8, "ads_to_restore"

    .line 7
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual {v7, v8}, Ld2/f4;->a([Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 9
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-wide/16 v6, 0x0

    cmp-long v9, v2, v6

    if-lez v9, :cond_3

    .line 10
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v7, Ld2/d;

    invoke-direct {v7, v0, v2, v3}, Ld2/d;-><init>(Ld2/f1;J)V

    .line 12
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v7, Ld2/e;

    invoke-direct {v7, v0, v2, v3}, Ld2/e;-><init>(Ld2/f1;J)V

    .line 14
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :try_start_0
    invoke-interface {v3, v6}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v9

    .line 19
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_2

    .line 22
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Future;

    .line 23
    invoke-interface {v9}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_0

    .line 24
    :try_start_1
    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ld2/y1;

    if-eqz v9, :cond_1

    .line 26
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ld2/y1;

    invoke-interface {v9}, Ld2/y1;->a()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :catch_1
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual {v0}, Ld2/f1;->m()Ld2/b2;

    move-result-object v2

    const-wide/16 v6, -0x1

    .line 29
    invoke-virtual {v2, v6, v7}, Ld2/b2;->b(J)Ld2/f4;

    move-result-object v2

    .line 30
    invoke-static {v2}, Ld2/i3;->d(Ld2/f4;)Ld2/f4;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v6, v7}, Ld2/b;->g(J)Ld2/f4;

    move-result-object v2

    .line 32
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_2
    iget-object v0, v0, Ld2/f1;->P:Ld2/f4;

    .line 34
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v0, v8, [Ld2/f4;

    .line 35
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld2/f4;

    invoke-static {v0}, Ld2/e4;->e([Ld2/f4;)Ld2/f4;

    move-result-object v0

    .line 36
    iget v2, v1, Ld2/g2;->b:I

    add-int/2addr v2, v5

    iput v2, v1, Ld2/g2;->b:I

    const-string v1, "signals_count"

    .line 37
    invoke-static {v0, v1, v2}, Ld2/e4;->m(Ld2/f4;Ljava/lang/String;I)Z

    .line 38
    sget-object v1, Ld2/t;->a:Landroid/content/Context;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    .line 39
    :cond_4
    invoke-static {v1}, Ld2/i3;->c(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v1}, Ld2/i3;->r(Landroid/media/AudioManager;)Z

    move-result v1

    :goto_3
    const-string v2, "device_audio"

    .line 40
    invoke-static {v0, v2, v1}, Ld2/e4;->n(Ld2/f4;Ljava/lang/String;Z)Z

    const-string v1, "launch_metadata"

    .line 41
    invoke-virtual {v0, v1}, Ld2/f4;->p(Ljava/lang/String;)V

    .line 42
    iget-object v1, v0, Ld2/f4;->a:Lorg/json/JSONObject;

    monitor-enter v1

    .line 43
    :try_start_2
    invoke-virtual {v0}, Ld2/f4;->d()Ljava/util/Iterator;

    move-result-object v2

    .line 44
    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v3}, Ld2/f4;->n(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 47
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    .line 48
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_7

    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    .line 49
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const-string v4, ""

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 52
    :cond_9
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    invoke-virtual {v0}, Ld2/f4;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    const-string v0, ""

    .line 54
    :goto_5
    new-instance v1, Ld2/c$a;

    invoke-direct {v1, p0, v0}, Ld2/c$a;-><init>(Ld2/c;Ljava/lang/String;)V

    invoke-static {v1}, Ld2/i3;->s(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 55
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
