.class Lcom/bytedance/sdk/adnet/core/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/adnet/core/Request$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/adnet/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/bytedance/sdk/adnet/core/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/adnet/core/d;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    .line 240
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->b:Lcom/bytedance/sdk/adnet/core/d;

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/core/d$a;Lcom/bytedance/sdk/adnet/core/Request;)Z
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->b(Lcom/bytedance/sdk/adnet/core/Request;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized b(Lcom/bytedance/sdk/adnet/core/Request;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 307
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const-string v4, "waiting-for-response"

    .line 316
    invoke-virtual {p1, v4}, Lcom/bytedance/sdk/adnet/core/Request;->addMarker(Ljava/lang/String;)V

    .line 317
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-boolean p1, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "Request for cacheKey=%s is in flight, putting on hold."

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 320
    invoke-static {p1, v1}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_1
    monitor-exit p0

    return v2

    .line 326
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/Request$a;)V

    .line 328
    sget-boolean p1, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    if-eqz p1, :cond_3

    const-string p1, "new request, sending to network %s"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v3

    .line 329
    invoke-static {p1, v1}, Lcom/bytedance/sdk/adnet/core/o;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :cond_3
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized a(Lcom/bytedance/sdk/adnet/core/Request;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 275
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    .line 276
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 277
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    sget-boolean v1, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "%d waiting requests for cacheKey=%s; resend to network"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 281
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    .line 279
    invoke-static {v1, v4}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/adnet/core/Request;

    .line 284
    iget-object v4, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-virtual {v1, p0}, Lcom/bytedance/sdk/adnet/core/Request;->a(Lcom/bytedance/sdk/adnet/core/Request$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->b:Lcom/bytedance/sdk/adnet/core/d;

    invoke-static {p1}, Lcom/bytedance/sdk/adnet/core/d;->a(Lcom/bytedance/sdk/adnet/core/d;)Ljava/util/concurrent/BlockingQueue;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Couldn\'t add request to queue. %s"

    new-array v1, v2, [Ljava/lang/Object;

    .line 289
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Lcom/bytedance/sdk/adnet/core/o;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 293
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->b:Lcom/bytedance/sdk/adnet/core/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/d;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "*>;)V"
        }
    .end annotation

    .line 248
    iget-object v0, p2, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/bytedance/sdk/adnet/core/m;->b:Lcom/bytedance/sdk/adnet/face/a$a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/face/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/d$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 256
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 258
    sget-boolean v1, Lcom/bytedance/sdk/adnet/core/o;->a:Z

    if-eqz v1, :cond_1

    const-string v1, "Releasing %d waiting requests for cacheKey=%s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 261
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 259
    invoke-static {v1, v2}, Lcom/bytedance/sdk/adnet/core/o;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/adnet/core/Request;

    .line 265
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/d$a;->b:Lcom/bytedance/sdk/adnet/core/d;

    invoke-static {v1}, Lcom/bytedance/sdk/adnet/core/d;->b(Lcom/bytedance/sdk/adnet/core/d;)Lcom/bytedance/sdk/adnet/face/c;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/bytedance/sdk/adnet/face/c;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 256
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 249
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/d$a;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    return-void
.end method
