.class public final Lscala/collection/parallel/ForkJoinTasks$;
.super Ljava/lang/Object;
.source "Tasks.scala"


# static fields
.field public static final MODULE$:Lscala/collection/parallel/ForkJoinTasks$;


# instance fields
.field private volatile bitmap$0:Z

.field private defaultForkJoinPool:Lscala/concurrent/forkjoin/ForkJoinPool;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/parallel/ForkJoinTasks$;

    invoke-direct {v0}, Lscala/collection/parallel/ForkJoinTasks$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/parallel/ForkJoinTasks$;->MODULE$:Lscala/collection/parallel/ForkJoinTasks$;

    return-void
.end method

.method private defaultForkJoinPool$lzycompute()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    .line 436
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lscala/collection/parallel/ForkJoinTasks$;->bitmap$0:Z

    if-nez v0, :cond_0

    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-direct {v0}, Lscala/concurrent/forkjoin/ForkJoinPool;-><init>()V

    iput-object v0, p0, Lscala/collection/parallel/ForkJoinTasks$;->defaultForkJoinPool:Lscala/concurrent/forkjoin/ForkJoinPool;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lscala/collection/parallel/ForkJoinTasks$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/ForkJoinTasks$;->defaultForkJoinPool:Lscala/concurrent/forkjoin/ForkJoinPool;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public defaultForkJoinPool()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    .line 436
    iget-boolean v0, p0, Lscala/collection/parallel/ForkJoinTasks$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/parallel/ForkJoinTasks$;->defaultForkJoinPool:Lscala/concurrent/forkjoin/ForkJoinPool;

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lscala/collection/parallel/ForkJoinTasks$;->defaultForkJoinPool$lzycompute()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object v0

    :goto_0
    return-object v0
.end method
