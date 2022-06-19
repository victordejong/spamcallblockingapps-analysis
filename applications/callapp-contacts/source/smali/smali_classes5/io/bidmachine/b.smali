.class Lio/bidmachine/b;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# static fields
.field private static volatile instance:Lio/bidmachine/b;


# instance fields
.field private isEnabled:Z

.field private pendingCommands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 7

    .line 32
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lio/bidmachine/b;->isEnabled:Z

    return-void
.end method

.method public static get()Lio/bidmachine/b;
    .locals 3

    .line 16
    sget-object v0, Lio/bidmachine/b;->instance:Lio/bidmachine/b;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lio/bidmachine/b;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lio/bidmachine/b;->instance:Lio/bidmachine/b;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lio/bidmachine/b;

    .line 20
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lio/bidmachine/b;-><init>(I)V

    sput-object v1, Lio/bidmachine/b;->instance:Lio/bidmachine/b;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lio/bidmachine/b;->instance:Lio/bidmachine/b;

    return-object v0
.end method


# virtual methods
.method enable()V
    .locals 2

    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lio/bidmachine/b;->isEnabled:Z

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/b;->pendingCommands:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 63
    invoke-virtual {p0, v1}, Lio/bidmachine/b;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lio/bidmachine/b;->pendingCommands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    iget-boolean v0, p0, Lio/bidmachine/b;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 40
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 43
    :cond_0
    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lio/bidmachine/b;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 47
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lio/bidmachine/b;->pendingCommands:Ljava/util/List;

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/b;->pendingCommands:Ljava/util/List;

    .line 52
    :cond_2
    iget-object v0, p0, Lio/bidmachine/b;->pendingCommands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
