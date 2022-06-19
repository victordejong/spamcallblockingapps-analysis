.class public final Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;
.super Lscala/runtime/AbstractFunction1;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$SequentialProcess;->runAndExitValue()Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/Option<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/sys/process/ProcessImpl$SequentialProcess;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$SequentialProcess;)V
    .locals 0

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;->$outer:Lscala/sys/process/ProcessImpl$SequentialProcess;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;->apply(I)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;->$outer:Lscala/sys/process/ProcessImpl$SequentialProcess;

    iget-object v0, v0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$evaluateSecondProcess:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply$mcZI$sp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object p1, p0, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;->$outer:Lscala/sys/process/ProcessImpl$SequentialProcess;

    iget-object p1, p1, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$b:Lscala/sys/process/ProcessBuilder;

    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;->$outer:Lscala/sys/process/ProcessImpl$SequentialProcess;

    iget-object v0, v0, Lscala/sys/process/ProcessImpl$SequentialProcess;->scala$sys$process$ProcessImpl$SequentialProcess$$io:Lscala/sys/process/ProcessIO;

    invoke-interface {p1, v0}, Lscala/sys/process/ProcessBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;->$outer:Lscala/sys/process/ProcessImpl$SequentialProcess;

    new-instance v1, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;

    invoke-direct {v1, p0, p1}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;-><init>(Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;Lscala/sys/process/Process;)V

    new-instance v2, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$3;

    invoke-direct {v2, p0, p1}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$3;-><init>(Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;Lscala/sys/process/Process;)V

    invoke-virtual {v0, v1, v2}, Lscala/sys/process/ProcessImpl$SequentialProcess;->runInterruptible(Lscala/Function0;Lscala/Function0;)Lscala/Option;

    move-result-object p1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v0, Lscala/Some;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
