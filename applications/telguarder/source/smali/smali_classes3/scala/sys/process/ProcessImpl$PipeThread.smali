.class public abstract Lscala/sys/process/ProcessImpl$PipeThread;
.super Ljava/lang/Thread;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PipeThread"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/sys/process/Process$;

.field private final isSink:Z

.field private final labelFn:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;ZLscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/Process$;",
            "Z",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 155
    iput-boolean p2, p0, Lscala/sys/process/ProcessImpl$PipeThread;->isSink:Z

    iput-object p3, p0, Lscala/sys/process/ProcessImpl$PipeThread;->labelFn:Lscala/Function0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$PipeThread;->$outer:Lscala/sys/process/Process$;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract run()V
.end method

.method public runloop(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .line 159
    :try_start_0
    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v0, p1, p2}, Lscala/sys/process/BasicIO$;->transferFully(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 160
    :try_start_1
    sget-object v1, Lscala/sys/process/processInternal$;->MODULE$:Lscala/sys/process/processInternal$;

    new-instance v1, Lscala/sys/process/ProcessImpl$PipeThread$$anonfun$10;

    invoke-direct {v1, p0}, Lscala/sys/process/ProcessImpl$PipeThread$$anonfun$10;-><init>(Lscala/sys/process/ProcessImpl$PipeThread;)V

    new-instance v2, Lscala/sys/process/processInternal$$anonfun$ioFailure$1;

    invoke-direct {v2, v1}, Lscala/sys/process/processInternal$$anonfun$ioFailure$1;-><init>(Lscala/Function1;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    invoke-interface {v2, v0}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    :goto_0
    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    .line 162
    iget-boolean v1, p0, Lscala/sys/process/ProcessImpl$PipeThread;->isSink:Z

    if-eqz v1, :cond_0

    move-object p1, p2

    .line 161
    :cond_0
    invoke-virtual {v0, p1}, Lscala/sys/process/BasicIO$;->close(Ljava/io/Closeable;)V

    return-void

    :cond_1
    sget-object v1, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    .line 162
    iget-boolean v2, p0, Lscala/sys/process/ProcessImpl$PipeThread;->isSink:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 161
    sget-object v1, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    .line 162
    iget-boolean v2, p0, Lscala/sys/process/ProcessImpl$PipeThread;->isSink:Z

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object p1, p2

    .line 161
    :cond_3
    :goto_2
    invoke-virtual {v1, p1}, Lscala/sys/process/BasicIO$;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public synthetic scala$sys$process$ProcessImpl$PipeThread$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 155
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeThread;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method

.method public scala$sys$process$ProcessImpl$PipeThread$$ioHandler(Ljava/io/IOException;)V
    .locals 3

    .line 166
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "I/O error "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, " for process: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscala/sys/process/ProcessImpl$PipeThread;->labelFn:Lscala/Function0;

    invoke-interface {v2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$;->println(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
