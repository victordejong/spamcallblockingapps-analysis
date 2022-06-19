.class public final Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction0$mcI$sp;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;->apply(I)Lscala/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final second$1:Lscala/sys/process/Process;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5;Lscala/sys/process/Process;)V
    .locals 0

    .line 75
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;->second$1:Lscala/sys/process/Process;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()I
    .locals 1

    .line 75
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;->second$1:Lscala/sys/process/Process;

    invoke-interface {v0}, Lscala/sys/process/Process;->exitValue()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;->apply()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcI$sp()I
    .locals 1

    .line 75
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$SequentialProcess$$anonfun$runAndExitValue$5$$anonfun$apply$2;->second$1:Lscala/sys/process/Process;

    invoke-interface {v0}, Lscala/sys/process/Process;->exitValue()I

    move-result v0

    return v0
.end method
