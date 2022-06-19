.class public Lscala/sys/process/ProcessImpl$PipedProcesses;
.super Lscala/sys/process/ProcessImpl$CompoundProcess;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipedProcesses"
.end annotation


# instance fields
.field private final defaultIO:Lscala/sys/process/ProcessIO;

.field public final scala$sys$process$ProcessImpl$PipedProcesses$$a:Lscala/sys/process/ProcessBuilder;

.field public final scala$sys$process$ProcessImpl$PipedProcesses$$b:Lscala/sys/process/ProcessBuilder;

.field private final toError:Z


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessIO;Z)V
    .locals 0

    .line 111
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$a:Lscala/sys/process/ProcessBuilder;

    iput-object p3, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$b:Lscala/sys/process/ProcessBuilder;

    iput-object p4, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->defaultIO:Lscala/sys/process/ProcessIO;

    iput-boolean p5, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->toError:Z

    invoke-direct {p0, p1}, Lscala/sys/process/ProcessImpl$CompoundProcess;-><init>(Lscala/sys/process/Process$;)V

    return-void
.end method


# virtual methods
.method public runAndExitValue()Lscala/Option;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v2, Lscala/concurrent/SyncVar;

    invoke-direct {v2}, Lscala/concurrent/SyncVar;-><init>()V

    .line 114
    new-instance v6, Ljava/io/PipedOutputStream;

    invoke-direct {v6}, Ljava/io/PipedOutputStream;-><init>()V

    .line 115
    new-instance v0, Lscala/sys/process/ProcessImpl$PipeSource;

    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$$outer()Lscala/sys/process/Process$;

    move-result-object v1

    new-instance v3, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$5;

    invoke-direct {v3, p0}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$5;-><init>(Lscala/sys/process/ProcessImpl$PipedProcesses;)V

    invoke-direct {v0, v1, v2, v6, v3}, Lscala/sys/process/ProcessImpl$PipeSource;-><init>(Lscala/sys/process/Process$;Lscala/concurrent/SyncVar;Ljava/io/PipedOutputStream;Lscala/Function0;)V

    .line 116
    invoke-virtual {v0}, Lscala/sys/process/ProcessImpl$PipeSource;->start()V

    .line 118
    new-instance v7, Ljava/io/PipedInputStream;

    invoke-direct {v7, v6}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 119
    new-instance v3, Lscala/concurrent/SyncVar;

    invoke-direct {v3}, Lscala/concurrent/SyncVar;-><init>()V

    .line 120
    new-instance v0, Lscala/sys/process/ProcessImpl$PipeSink;

    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$$outer()Lscala/sys/process/Process$;

    move-result-object v1

    new-instance v4, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$6;

    invoke-direct {v4, p0}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$6;-><init>(Lscala/sys/process/ProcessImpl$PipedProcesses;)V

    invoke-direct {v0, v1, v7, v3, v4}, Lscala/sys/process/ProcessImpl$PipeSink;-><init>(Lscala/sys/process/Process$;Ljava/io/PipedInputStream;Lscala/concurrent/SyncVar;Lscala/Function0;)V

    .line 121
    invoke-virtual {v0}, Lscala/sys/process/ProcessImpl$PipeSink;->start()V

    .line 126
    iget-boolean v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->toError:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->defaultIO:Lscala/sys/process/ProcessIO;

    new-instance v1, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7;

    invoke-direct {v1, p0, v2}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7;-><init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/concurrent/SyncVar;)V

    invoke-virtual {v0, v1}, Lscala/sys/process/ProcessIO;->withError(Lscala/Function1;)Lscala/sys/process/ProcessIO;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->defaultIO:Lscala/sys/process/ProcessIO;

    new-instance v1, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$8;

    invoke-direct {v1, p0, v2}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$8;-><init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/concurrent/SyncVar;)V

    invoke-virtual {v0, v1}, Lscala/sys/process/ProcessIO;->withOutput(Lscala/Function1;)Lscala/sys/process/ProcessIO;

    move-result-object v0

    .line 130
    :goto_0
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->defaultIO:Lscala/sys/process/ProcessIO;

    new-instance v4, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$9;

    invoke-direct {v4, p0, v3}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$9;-><init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/concurrent/SyncVar;)V

    invoke-virtual {v1, v4}, Lscala/sys/process/ProcessIO;->withInput(Lscala/Function1;)Lscala/sys/process/ProcessIO;

    move-result-object v1

    .line 132
    iget-object v4, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$b:Lscala/sys/process/ProcessBuilder;

    invoke-interface {v4, v1}, Lscala/sys/process/ProcessBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object v8

    .line 133
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$a:Lscala/sys/process/ProcessBuilder;

    invoke-interface {v1, v0}, Lscala/sys/process/ProcessBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object v9

    .line 135
    :try_start_0
    new-instance v10, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;

    move-object v0, v10

    move-object v1, p0

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;-><init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/concurrent/SyncVar;Lscala/concurrent/SyncVar;Lscala/sys/process/Process;Lscala/sys/process/Process;)V

    .line 143
    new-instance v0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;

    invoke-direct {v0, p0, v8, v9}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;-><init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/sys/process/Process;Lscala/sys/process/Process;)V

    invoke-virtual {p0, v10, v0}, Lscala/sys/process/ProcessImpl$PipedProcesses;->runInterruptible(Lscala/Function0;Lscala/Function0;)Lscala/Option;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    sget-object v1, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v1, v7}, Lscala/sys/process/BasicIO$;->close(Ljava/io/Closeable;)V

    .line 150
    sget-object v1, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v1, v6}, Lscala/sys/process/BasicIO$;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 149
    sget-object v1, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v1, v7}, Lscala/sys/process/BasicIO$;->close(Ljava/io/Closeable;)V

    .line 150
    sget-object v1, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    invoke-virtual {v1, v6}, Lscala/sys/process/BasicIO$;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public synthetic scala$sys$process$ProcessImpl$PipedProcesses$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 111
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method

.method public final scala$sys$process$ProcessImpl$PipedProcesses$$handleOutOrError$1(Ljava/io/InputStream;Lscala/concurrent/SyncVar;)V
    .locals 1

    .line 123
    new-instance v0, Lscala/Some;

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lscala/concurrent/SyncVar;->put(Ljava/lang/Object;)V

    return-void
.end method
