.class public final Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
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
.field public final first$2:Lscala/sys/process/Process;

.field public final second$2:Lscala/sys/process/Process;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/sys/process/Process;Lscala/sys/process/Process;)V
    .locals 0

    .line 143
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;->second$2:Lscala/sys/process/Process;

    iput-object p3, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;->first$2:Lscala/sys/process/Process;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 1

    .line 143
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;->first$2:Lscala/sys/process/Process;

    invoke-interface {v0}, Lscala/sys/process/Process;->destroy()V

    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;->second$2:Lscala/sys/process/Process;

    invoke-interface {v0}, Lscala/sys/process/Process;->destroy()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .line 144
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;->first$2:Lscala/sys/process/Process;

    invoke-interface {v0}, Lscala/sys/process/Process;->destroy()V

    .line 145
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$runAndExitValue$4;->second$2:Lscala/sys/process/Process;

    invoke-interface {v0}, Lscala/sys/process/Process;->destroy()V

    return-void
.end method
