.class public abstract Lscala/sys/process/ProcessImpl$CompoundProcess;
.super Lscala/sys/process/ProcessImpl$BasicProcess;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CompoundProcess"
.end annotation


# instance fields
.field private volatile bitmap$0:B

.field private destroyer:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private getExitValue:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private x$4:Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Tuple2<",
            "Lscala/Function0<",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lscala/sys/process/ProcessImpl$BasicProcess;-><init>(Lscala/sys/process/Process$;)V

    return-void
.end method

.method private destroyer$lzycompute()Lscala/Function0;
    .locals 1

    .line 91
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->x$4()Lscala/Tuple2;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Function0;

    iput-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->destroyer:Lscala/Function0;

    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->destroyer:Lscala/Function0;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getExitValue$lzycompute()Lscala/Function0;
    .locals 1

    .line 91
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->x$4()Lscala/Tuple2;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Function0;

    iput-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->getExitValue:Lscala/Function0;

    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->getExitValue:Lscala/Function0;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private synthetic x$4()Lscala/Tuple2;
    .locals 1

    .line 91
    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->x$4$lzycompute()Lscala/Tuple2;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->x$4:Lscala/Tuple2;

    :goto_0
    return-object v0
.end method

.method private x$4$lzycompute()Lscala/Tuple2;
    .locals 8

    .line 91
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lscala/concurrent/SyncVar;

    invoke-direct {v0}, Lscala/concurrent/SyncVar;-><init>()V

    .line 93
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v0, v1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->scala$sys$process$ProcessImpl$CompoundProcess$$$outer()Lscala/sys/process/Process$;

    move-result-object v1

    invoke-virtual {v1}, Lscala/sys/process/Process$;->Spawn()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object v1

    new-instance v2, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;

    invoke-direct {v2, p0, v0}, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;-><init>(Lscala/sys/process/ProcessImpl$CompoundProcess;Lscala/concurrent/SyncVar;)V

    new-instance v3, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;

    invoke-direct {v3, v1, v2}, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;-><init>(Lscala/sys/process/ProcessImpl$Spawn$;Lscala/Function0;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 96
    new-instance v2, Lscala/Tuple2;

    .line 97
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->scala$sys$process$ProcessImpl$CompoundProcess$$$outer()Lscala/sys/process/Process$;

    move-result-object v4

    invoke-virtual {v4}, Lscala/sys/process/Process$;->Future()Lscala/sys/process/ProcessImpl$Future$;

    move-result-object v4

    new-instance v5, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3;

    invoke-direct {v5, p0, v0, v3}, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3;-><init>(Lscala/sys/process/ProcessImpl$CompoundProcess;Lscala/concurrent/SyncVar;Ljava/lang/Thread;)V

    new-instance v0, Lscala/concurrent/SyncVar;

    invoke-direct {v0}, Lscala/concurrent/SyncVar;-><init>()V

    iget-object v6, v4, Lscala/sys/process/ProcessImpl$Future$;->$outer:Lscala/sys/process/Process$;

    invoke-virtual {v6}, Lscala/sys/process/Process$;->Spawn()Lscala/sys/process/ProcessImpl$Spawn$;

    move-result-object v6

    new-instance v7, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;

    invoke-direct {v7, v4, v5, v0}, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$1;-><init>(Lscala/sys/process/ProcessImpl$Future$;Lscala/Function0;Lscala/concurrent/SyncVar;)V

    new-instance v5, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;

    invoke-direct {v5, v6, v7}, Lscala/sys/process/ProcessImpl$Spawn$$anon$1;-><init>(Lscala/sys/process/ProcessImpl$Spawn$;Lscala/Function0;)V

    invoke-virtual {v5, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    new-instance v1, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$4;

    invoke-direct {v1, v4, v0}, Lscala/sys/process/ProcessImpl$Future$$anonfun$apply$4;-><init>(Lscala/sys/process/ProcessImpl$Future$;Lscala/concurrent/SyncVar;)V

    .line 98
    new-instance v0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$2;

    invoke-direct {v0, p0, v3}, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$2;-><init>(Lscala/sys/process/ProcessImpl$CompoundProcess;Ljava/lang/Thread;)V

    .line 96
    invoke-direct {v2, v1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {v2}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->x$4:Lscala/Tuple2;

    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->x$4:Lscala/Tuple2;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->destroyer()Lscala/Function0;

    move-result-object v0

    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V

    return-void
.end method

.method public destroyer()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .line 91
    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->destroyer$lzycompute()Lscala/Function0;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->destroyer:Lscala/Function0;

    :goto_0
    return-object v0
.end method

.method public exitValue()I
    .locals 2

    .line 88
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->getExitValue()Lscala/Function0;

    move-result-object v0

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Option;

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No exit code: process destroyed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExitValue()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0<",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 91
    iget-byte v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->getExitValue$lzycompute()Lscala/Function0;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->getExitValue:Lscala/Function0;

    :goto_0
    return-object v0
.end method

.method public abstract runAndExitValue()Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public runInterruptible(Lscala/Function0;Lscala/Function0;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TT;>;",
            "Lscala/Function0<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/Option<",
            "TT;>;"
        }
    .end annotation

    .line 106
    :try_start_0
    new-instance v0, Lscala/Some;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 107
    sget-object v0, Lscala/sys/process/processInternal$;->MODULE$:Lscala/sys/process/processInternal$;

    new-instance v0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$4;

    invoke-direct {v0, p0, p2}, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$4;-><init>(Lscala/sys/process/ProcessImpl$CompoundProcess;Lscala/Function0;)V

    new-instance p2, Lscala/sys/process/processInternal$$anonfun$onInterrupt$1;

    invoke-direct {p2, v0}, Lscala/sys/process/processInternal$$anonfun$onInterrupt$1;-><init>(Lscala/Function0;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lscala/Option;

    :goto_0
    return-object v0

    :cond_0
    throw p1
.end method

.method public synthetic scala$sys$process$ProcessImpl$CompoundProcess$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 86
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method

.method public start()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess;->getExitValue()Lscala/Function0;

    return-void
.end method
