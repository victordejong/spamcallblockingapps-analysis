.class final Lcom/danikula/videocache/g;
.super Ljava/lang/Object;
.source "HttpProxyCacheServerClients.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/g$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/danikula/videocache/e;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/danikula/videocache/b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/danikula/videocache/b;

.field private final f:Lcom/danikula/videocache/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/danikula/videocache/g;->d:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lcom/danikula/videocache/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/danikula/videocache/g;->b:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/danikula/videocache/k;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/danikula/videocache/c;

    iput-object p2, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    .line 6
    new-instance p2, Lcom/danikula/videocache/g$a;

    invoke-direct {p2, p1, v0}, Lcom/danikula/videocache/g$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p2, p0, Lcom/danikula/videocache/g;->e:Lcom/danikula/videocache/b;

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v0}, Lcom/danikula/videocache/l;->m()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Lcom/danikula/videocache/e;
    .locals 4

    .line 1
    new-instance v0, Lcom/danikula/videocache/h;

    iget-object v1, p0, Lcom/danikula/videocache/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    iget-object v3, v2, Lcom/danikula/videocache/c;->d:Lcom/danikula/videocache/s/c;

    iget-object v2, v2, Lcom/danikula/videocache/c;->e:Lcom/danikula/videocache/r/b;

    invoke-direct {v0, v1, v3, v2}, Lcom/danikula/videocache/h;-><init>(Ljava/lang/String;Lcom/danikula/videocache/s/c;Lcom/danikula/videocache/r/b;)V

    .line 2
    new-instance v1, Lcom/danikula/videocache/q/b;

    iget-object v2, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    iget-object v3, p0, Lcom/danikula/videocache/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/danikula/videocache/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/danikula/videocache/g;->f:Lcom/danikula/videocache/c;

    iget-object v3, v3, Lcom/danikula/videocache/c;->c:Lcom/danikula/videocache/q/a;

    invoke-direct {v1, v2, v3}, Lcom/danikula/videocache/q/b;-><init>(Ljava/io/File;Lcom/danikula/videocache/q/a;)V

    .line 3
    new-instance v2, Lcom/danikula/videocache/e;

    invoke-direct {v2, v0, v1}, Lcom/danikula/videocache/e;-><init>(Lcom/danikula/videocache/h;Lcom/danikula/videocache/q/b;)V

    .line 4
    iget-object v0, p0, Lcom/danikula/videocache/g;->e:Lcom/danikula/videocache/b;

    invoke-virtual {v2, v0}, Lcom/danikula/videocache/e;->t(Lcom/danikula/videocache/b;)V

    return-object v2
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/danikula/videocache/g;->c()Lcom/danikula/videocache/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    :goto_0
    iput-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public d(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/g;->e()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/g;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    iget-object v0, p0, Lcom/danikula/videocache/g;->c:Lcom/danikula/videocache/e;

    invoke-virtual {v0, p1, p2}, Lcom/danikula/videocache/e;->s(Lcom/danikula/videocache/d;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-direct {p0}, Lcom/danikula/videocache/g;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/danikula/videocache/g;->a()V

    .line 5
    throw p1
.end method
