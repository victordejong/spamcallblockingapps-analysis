.class public Lscala/sys/process/ProcessImpl$PipeSource;
.super Lscala/sys/process/ProcessImpl$PipeThread;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PipeSource"
.end annotation


# instance fields
.field private final currentSource:Lscala/concurrent/SyncVar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/SyncVar<",
            "Lscala/Option<",
            "Ljava/io/InputStream;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pipe:Ljava/io/PipedOutputStream;


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;Lscala/concurrent/SyncVar;Ljava/io/PipedOutputStream;Lscala/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/Process$;",
            "Lscala/concurrent/SyncVar<",
            "Lscala/Option<",
            "Ljava/io/InputStream;",
            ">;>;",
            "Ljava/io/PipedOutputStream;",
            "Lscala/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 172
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$PipeSource;->currentSource:Lscala/concurrent/SyncVar;

    .line 173
    iput-object p3, p0, Lscala/sys/process/ProcessImpl$PipeSource;->pipe:Ljava/io/PipedOutputStream;

    const/4 p2, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p4}, Lscala/sys/process/ProcessImpl$PipeThread;-><init>(Lscala/sys/process/Process$;ZLscala/Function0;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 177
    :goto_0
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeSource;->currentSource:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Option;

    .line 178
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    .line 179
    :try_start_0
    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipeSource;->pipe:Ljava/io/PipedOutputStream;

    invoke-virtual {p0, v0, v1}, Lscala/sys/process/ProcessImpl$PipeSource;->runloop(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeSource;->currentSource:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->unset()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipeSource;->currentSource:Lscala/concurrent/SyncVar;

    invoke-virtual {v1}, Lscala/concurrent/SyncVar;->unset()V

    throw v0

    .line 183
    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeSource;->currentSource:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->unset()V

    .line 185
    sget-object v0, Lscala/sys/process/BasicIO$;->MODULE$:Lscala/sys/process/BasicIO$;

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipeSource;->pipe:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, v1}, Lscala/sys/process/BasicIO$;->close(Ljava/io/Closeable;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 177
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public synthetic scala$sys$process$ProcessImpl$PipeSource$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 171
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipeSource;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method
