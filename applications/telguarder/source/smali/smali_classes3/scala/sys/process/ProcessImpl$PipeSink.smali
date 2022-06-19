.class public Lscala/sys/process/ProcessImpl$PipeSink;
.super Lscala/sys/process/ProcessImpl$PipeThread;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipeSink"
.end annotation


# instance fields
.field private final currentSink:Lscala/concurrent/SyncVar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/SyncVar<",
            "Lscala/Option<",
            "Ljava/io/OutputStream;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pipe:Ljava/io/PipedInputStream;


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;Ljava/io/PipedInputStream;Lscala/concurrent/SyncVar;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/Process$;",
            "Ljava/io/PipedInputStream;",
            "Lscala/concurrent/SyncVar<",
            "Lscala/Option<",
            "Ljava/io/OutputStream;",
            ">;>;",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 189
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$PipeSink;->pipe:Ljava/io/PipedInputStream;

    .line 190
    iput-object p3, p0, Lscala/sys/process/ProcessImpl$PipeSink;->currentSink:Lscala/concurrent/SyncVar;

    const/4 p2, 0x1

    .line 192
    invoke-direct {p0, p1, p2, p4}, Lscala/sys/process/ProcessImpl$PipeThread;-><init>(Lscala/sys/process/Process$;ZLscala/Function0;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 194
    :goto_0
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeSink;->currentSink:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Option;

    .line 195
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    .line 196
    :try_start_0
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipeSink;->pipe:Ljava/io/PipedInputStream;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    invoke-virtual {p0, v1, v0}, Lscala/sys/process/ProcessImpl$PipeSink;->runloop(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeSink;->currentSink:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->unset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipeSink;->currentSink:Lscala/concurrent/SyncVar;

    invoke-virtual {v1}, Lscala/concurrent/SyncVar;->unset()V

    throw v0

    .line 200
    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeSink;->currentSink:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->unset()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 194
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public synthetic scala$sys$process$ProcessImpl$PipeSink$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 188
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeSink;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method
