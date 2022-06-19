.class final Lcom/bumptech/glide/load/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/a$b;,
        Lcom/bumptech/glide/load/engine/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;>;"
        }
    .end annotation
.end field

.field c:Lcom/bumptech/glide/load/engine/p$a;

.field volatile d:Z

.field volatile e:Lcom/bumptech/glide/load/engine/a$a;

.field private final f:Z

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/engine/a$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/a$1;-><init>()V

    .line 34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 32
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/a;-><init>(ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(ZLjava/util/concurrent/Executor;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/a;->b:Ljava/lang/ref/ReferenceQueue;

    .line 54
    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/a;->f:Z

    .line 55
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/a;->g:Ljava/util/concurrent/Executor;

    .line 57
    new-instance p1, Lcom/bumptech/glide/load/engine/a$2;

    invoke-direct {p1, p0}, Lcom/bumptech/glide/load/engine/a$2;-><init>(Lcom/bumptech/glide/load/engine/a;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/bumptech/glide/load/engine/a$b;)V
    .locals 7

    .line 109
    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/a$b;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/u;

    if-nez v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    new-instance v0, Lcom/bumptech/glide/load/engine/p;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/a$b;->c:Lcom/bumptech/glide/load/engine/u;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/f;

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/a;->c:Lcom/bumptech/glide/load/engine/p$a;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/p;-><init>(Lcom/bumptech/glide/load/engine/u;ZZLcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p$a;)V

    .line 120
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->c:Lcom/bumptech/glide/load/engine/p$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/a$b;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/load/engine/p$a;->a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;)V

    return-void

    .line 113
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 115
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/load/f;)V
    .locals 1

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/a$b;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/engine/a$b;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->b:Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/a;->f:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/engine/a$b;-><init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/p;Ljava/lang/ref/ReferenceQueue;Z)V

    .line 79
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/a$b;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/load/engine/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f;",
            ")",
            "Lcom/bumptech/glide/load/engine/p<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 96
    monitor-exit p0

    return-object p1

    .line 99
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/a$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/p;

    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/a$b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
