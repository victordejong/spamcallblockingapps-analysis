.class final Lio/objectbox/query/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/objectbox/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/objectbox/c/b<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/objectbox/query/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/query/Query<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/objectbox/c/a<",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private d:Lio/objectbox/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/c/a<",
            "Ljava/lang/Class<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private e:Lio/objectbox/c/d;


# direct methods
.method constructor <init>(Lio/objectbox/query/Query;Lio/objectbox/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/query/Query<",
            "TT;>;",
            "Lio/objectbox/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/objectbox/query/e;->c:Ljava/util/Set;

    .line 44
    iput-object p1, p0, Lio/objectbox/query/e;->a:Lio/objectbox/query/Query;

    .line 45
    iput-object p2, p0, Lio/objectbox/query/e;->b:Lio/objectbox/a;

    return-void
.end method

.method private synthetic a()V
    .locals 3

    .line 83
    iget-object v0, p0, Lio/objectbox/query/e;->a:Lio/objectbox/query/Query;

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lio/objectbox/query/e;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/objectbox/c/a;

    .line 85
    invoke-interface {v2, v0}, Lio/objectbox/c/a;->onData(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Lio/objectbox/c/a;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lio/objectbox/query/e;->a:Lio/objectbox/query/Query;

    invoke-virtual {v0}, Lio/objectbox/query/Query;->c()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {p1, v0}, Lio/objectbox/c/a;->onData(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Class;)V
    .locals 1

    .line 4082
    iget-object p1, p0, Lio/objectbox/query/e;->b:Lio/objectbox/a;

    .line 4576
    iget-object p1, p1, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 4082
    new-instance v0, Lio/objectbox/query/-$$Lambda$e$KAIEAGNhRB5PshKBAevJYCg7rE4;

    invoke-direct {v0, p0}, Lio/objectbox/query/-$$Lambda$e$KAIEAGNhRB5PshKBAevJYCg7rE4;-><init>(Lio/objectbox/query/e;)V

    invoke-virtual {p1, v0}, Lio/objectbox/BoxStore;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static synthetic lambda$KAIEAGNhRB5PshKBAevJYCg7rE4(Lio/objectbox/query/e;)V
    .locals 0

    invoke-direct {p0}, Lio/objectbox/query/e;->a()V

    return-void
.end method

.method public static synthetic lambda$ZMIOlQTiiKKlz5MQIOHz15qs024(Lio/objectbox/query/e;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/objectbox/query/e;->a(Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic lambda$dEQGv8z0ZYpO76XoNhrA5xYSmfg(Lio/objectbox/query/e;Lio/objectbox/c/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/objectbox/query/e;->a(Lio/objectbox/c/a;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lio/objectbox/c/a;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/a<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object p2, p0, Lio/objectbox/query/e;->b:Lio/objectbox/a;

    .line 1576
    iget-object p2, p2, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 51
    iget-object v0, p0, Lio/objectbox/query/e;->d:Lio/objectbox/c/a;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lio/objectbox/query/-$$Lambda$e$ZMIOlQTiiKKlz5MQIOHz15qs024;

    invoke-direct {v0, p0}, Lio/objectbox/query/-$$Lambda$e$ZMIOlQTiiKKlz5MQIOHz15qs024;-><init>(Lio/objectbox/query/e;)V

    iput-object v0, p0, Lio/objectbox/query/e;->d:Lio/objectbox/c/a;

    .line 54
    :cond_0
    iget-object v0, p0, Lio/objectbox/query/e;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lio/objectbox/query/e;->e:Lio/objectbox/c/d;

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lio/objectbox/query/e;->b:Lio/objectbox/a;

    .line 1619
    iget-object v0, v0, Lio/objectbox/a;->b:Ljava/lang/Class;

    .line 2153
    new-instance v1, Lio/objectbox/c/k;

    iget-object v2, p2, Lio/objectbox/BoxStore;->h:Lio/objectbox/f;

    iget-object p2, p2, Lio/objectbox/BoxStore;->g:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2, v0, p2}, Lio/objectbox/c/k;-><init>(Lio/objectbox/c/b;Ljava/lang/Object;Ljava/util/concurrent/ExecutorService;)V

    const/4 p2, 0x1

    .line 3081
    iput-boolean p2, v1, Lio/objectbox/c/k;->c:Z

    .line 3091
    iput-boolean p2, v1, Lio/objectbox/c/k;->d:Z

    .line 67
    iget-object p2, p0, Lio/objectbox/query/e;->d:Lio/objectbox/c/a;

    .line 68
    invoke-virtual {v1, p2}, Lio/objectbox/c/k;->a(Lio/objectbox/c/a;)Lio/objectbox/c/d;

    move-result-object p2

    iput-object p2, p0, Lio/objectbox/query/e;->e:Lio/objectbox/c/d;

    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Existing subscription found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    :goto_0
    iget-object p2, p0, Lio/objectbox/query/e;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lio/objectbox/c/a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/a<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object p2, p0, Lio/objectbox/query/e;->c:Ljava/util/Set;

    invoke-static {p2, p1}, Lio/objectbox/c/c;->a(Ljava/util/Set;Lio/objectbox/c/a;)V

    .line 93
    iget-object p1, p0, Lio/objectbox/query/e;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lio/objectbox/query/e;->e:Lio/objectbox/c/d;

    invoke-interface {p1}, Lio/objectbox/c/d;->a()V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lio/objectbox/query/e;->e:Lio/objectbox/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lio/objectbox/c/a;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/c/a<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 75
    iget-object p2, p0, Lio/objectbox/query/e;->b:Lio/objectbox/a;

    .line 3576
    iget-object p2, p2, Lio/objectbox/a;->a:Lio/objectbox/BoxStore;

    .line 75
    new-instance v0, Lio/objectbox/query/-$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg;

    invoke-direct {v0, p0, p1}, Lio/objectbox/query/-$$Lambda$e$dEQGv8z0ZYpO76XoNhrA5xYSmfg;-><init>(Lio/objectbox/query/e;Lio/objectbox/c/a;)V

    invoke-virtual {p2, v0}, Lio/objectbox/BoxStore;->c(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
