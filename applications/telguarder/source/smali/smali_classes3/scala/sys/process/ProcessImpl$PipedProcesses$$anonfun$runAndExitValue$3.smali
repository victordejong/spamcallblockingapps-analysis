.class public final Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$PipedProcesses;->runAndExitValue()Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/sys/process/ProcessImpl$PipedProcesses;

.field private final currentSink$1:Lscala/concurrent/SyncVar;

.field private final currentSource$1:Lscala/concurrent/SyncVar;

.field private final first$2:Lscala/sys/process/Process;

.field private final second$2:Lscala/sys/process/Process;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/concurrent/SyncVar;Lscala/concurrent/SyncVar;Lscala/sys/process/Process;Lscala/sys/process/Process;)V
    .locals 0

    .line 135
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->$outer:Lscala/sys/process/ProcessImpl$PipedProcesses;

    iput-object p2, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->currentSource$1:Lscala/concurrent/SyncVar;

    iput-object p3, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->currentSink$1:Lscala/concurrent/SyncVar;

    iput-object p4, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->second$2:Lscala/sys/process/Process;

    iput-object p5, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->first$2:Lscala/sys/process/Process;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 1

    .line 135
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->apply$mcI$sp()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 3

    .line 136
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->first$2:Lscala/sys/process/Process;

    invoke-interface {v0}, Lscala/sys/process/Process;->exitValue()I

    move-result v0

    .line 137
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->currentSource$1:Lscala/concurrent/SyncVar;

    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v2}, Lscala/concurrent/SyncVar;->put(Ljava/lang/Object;)V

    .line 138
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->currentSink$1:Lscala/concurrent/SyncVar;

    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v2}, Lscala/concurrent/SyncVar;->put(Ljava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->second$2:Lscala/sys/process/Process;

    invoke-interface {v1}, Lscala/sys/process/Process;->exitValue()I

    move-result v1

    .line 142
    iget-object v2, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$3;->$outer:Lscala/sys/process/ProcessImpl$PipedProcesses;

    iget-object v2, v2, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$b:Lscala/sys/process/ProcessBuilder;

    invoke-interface {v2}, Lscala/sys/process/ProcessBuilder;->hasExitValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method
