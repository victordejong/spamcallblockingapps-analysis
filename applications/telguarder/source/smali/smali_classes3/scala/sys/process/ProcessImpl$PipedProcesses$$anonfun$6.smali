.class public final Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$6;
.super Lscala/runtime/AbstractFunction0;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/sys/process/ProcessImpl$PipedProcesses;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$PipedProcesses;)V
    .locals 0

    .line 120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$6;->$outer:Lscala/sys/process/ProcessImpl$PipedProcesses;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$6;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$6;->$outer:Lscala/sys/process/ProcessImpl$PipedProcesses;

    iget-object v0, v0, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$b:Lscala/sys/process/ProcessBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
