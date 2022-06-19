.class public Lscala/sys/process/ProcessImpl$SequentialProcess;
.super Lscala/sys/process/ProcessImpl$CompoundProcess;
.source "ProcessImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SequentialProcess"
.end annotation


# instance fields
.field private final a:Lscala/sys/process/ProcessBuilder;

.field public final scala$sys$process$ProcessImpl$SequentialProcess$$b:Lscala/sys/process/ProcessBuilder;

.field public final scala$sys$process$ProcessImpl$SequentialProcess$$evaluateSecondProcess:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$sys$process$ProcessImpl$SequentialProcess$$io:Lscala/sys/process/ProcessIO;


# direct methods
.method public constructor <init>(Lscala/sys/process/Process$;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessBuilder;Lscala/sys/process/ProcessIO;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/sys/process/Process$;",
            "Lscala/sys/process/ProcessBuilder;",
            "Lscala/sys/process/ProcessBuilder;",
            "Lscala/sys/process/ProcessIO;",
            "Lscala/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->a:Lscala/sys/process/ProcessBuilder;

    .line 65
    iput-object p3, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$b:Lscala/sys/process/ProcessBuilder;

    .line 66
    iput-object p4, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$io:Lscala/sys/process/ProcessIO;

    .line 67
    iput-object p5, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$evaluateSecondProcess:Lscala/Function1;

    .line 68
    invoke-direct {p0, p1}, Lscala/sys/process/ProcessImpl$CompoundProcess;-><init>(Lscala/sys/process/Process$;)V

    return-void
.end method


# virtual methods
.method public runAndExitValue()Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->a:Lscala/sys/process/ProcessBuilder;

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$io:Lscala/sys/process/ProcessIO;

    invoke-interface {v0, v1}, Lscala/sys/process/ProcessBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object v0

    .line 72
    new-instance v1, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$1;

    invoke-direct {v1, p0, v0}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$1;-><init>(Lscala/sys/process/ProcessImpl$SequentialProcess;Lscala/sys/process/Process;)V

    new-instance v2, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$2;

    invoke-direct {v2, p0, v0}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$2;-><init>(Lscala/sys/process/ProcessImpl$SequentialProcess;Lscala/sys/process/Process;)V

    invoke-virtual {p0, v1, v2}, Lscala/sys/process/ProcessImpl$SequentialProcess;->runInterruptible(Lscala/Function0;Lscala/Function0;)Lscala/Option;

    move-result-object v0

    new-instance v1, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;

    invoke-direct {v1, p0}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;-><init>(Lscala/sys/process/ProcessImpl$SequentialProcess;)V

    invoke-virtual {v0}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$evaluateSecondProcess:Lscala/Function1;

    invoke-interface {v2, v0}, Lscala/Function1;->apply$mcZI$sp(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$b:Lscala/sys/process/ProcessBuilder;

    iget-object v2, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$io:Lscala/sys/process/ProcessIO;

    invoke-interface {v0, v2}, Lscala/sys/process/ProcessBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object v0

    new-instance v2, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;

    invoke-direct {v2, v1, v0}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;-><init>(Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;Lscala/sys/process/Process;)V

    new-instance v3, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$3;

    invoke-direct {v3, v1, v0}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$3;-><init>(Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;Lscala/sys/process/Process;)V

    invoke-virtual {p0, v2, v3}, Lscala/sys/process/ProcessImpl$SequentialProcess;->runInterruptible(Lscala/Function0;Lscala/Function0;)Lscala/Option;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lscala/Some;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    check-cast v0, Lscala/Option;

    :goto_1
    return-object v0
.end method

.method public synthetic scala$sys$process$ProcessImpl$SequentialProcess$$$outer()Lscala/sys/process/Process$;
    .locals 1

    .line 63
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SequentialProcess;->$outer:Lscala/sys/process/Process$;

    return-object v0
.end method
