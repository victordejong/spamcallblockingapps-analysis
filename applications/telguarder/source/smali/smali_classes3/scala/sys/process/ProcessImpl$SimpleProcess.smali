.class public Lscala/sys/process/ProcessImpl$SimpleProcess;
.super Ljava/lang/Object;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/sys/process/Process;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleProcess"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/process/Process$;

.field private final inputThread:Ljava/lang/Thread;

.field private final outputThreads:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;Ljava/lang/Process;Ljava/lang/Thread;Lscala/collection/immutable/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/Process$;",
            "Ljava/lang/Process;",
            "Ljava/lang/Thread;",
            "Lscala/collection/immutable/List<",
            "Ljava/lang/Thread;",
            ">;)V"
        }
    .end annotation

    .line 217
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->p:Ljava/lang/Process;

    iput-object p3, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->inputThread:Ljava/lang/Thread;

    iput-object p4, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->outputThreads:Lscala/collection/immutable/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->$outer:Lscala/sys/process/Process$;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 227
    :try_start_0
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->outputThreads:Lscala/collection/immutable/List;

    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->p:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->inputThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    .line 227
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 230
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->inputThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    throw v0
.end method

.method public exitValue()I
    .locals 2

    .line 219
    :try_start_0
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->p:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->inputThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 221
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->outputThreads:Lscala/collection/immutable/List;

    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->p:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    return v0

    .line 221
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 220
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->inputThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    throw v0
.end method

.method public synthetic scala$sys$process$ProcessImpl$SimpleProcess$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 217
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SimpleProcess;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method
