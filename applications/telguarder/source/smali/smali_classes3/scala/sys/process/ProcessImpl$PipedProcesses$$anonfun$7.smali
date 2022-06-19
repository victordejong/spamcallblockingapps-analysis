.class public final Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7;
.super Lscala/runtime/AbstractFunction1;
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
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/io/InputStream;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/sys/process/ProcessImpl$PipedProcesses;

.field private final currentSource$1:Lscala/concurrent/SyncVar;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/concurrent/SyncVar;)V
    .locals 0

    .line 127
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7;->$outer:Lscala/sys/process/ProcessImpl$PipedProcesses;

    iput-object p2, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7;->currentSource$1:Lscala/concurrent/SyncVar;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 127
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7;->apply(Ljava/io/InputStream;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/io/InputStream;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7;->$outer:Lscala/sys/process/ProcessImpl$PipedProcesses;

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$7;->currentSource$1:Lscala/concurrent/SyncVar;

    invoke-virtual {v0, p1, v1}, Lscala/sys/process/ProcessImpl$PipedProcesses;->scala$sys$process$ProcessImpl$PipedProcesses$$handleOutOrError$1(Ljava/io/InputStream;Lscala/concurrent/SyncVar;)V

    return-void
.end method
