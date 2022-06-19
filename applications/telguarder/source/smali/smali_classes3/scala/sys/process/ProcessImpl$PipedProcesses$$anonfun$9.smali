.class public final Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$9;
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
        "Ljava/io/OutputStream;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final currentSink$1:Lscala/concurrent/SyncVar;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$PipedProcesses;Lscala/concurrent/SyncVar;)V
    .locals 0

    .line 130
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$9;->currentSink$1:Lscala/concurrent/SyncVar;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 130
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$9;->apply(Ljava/io/OutputStream;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/io/OutputStream;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$PipedProcesses$$anonfun$9;->currentSink$1:Lscala/concurrent/SyncVar;

    new-instance v1, Lscala/Some;

    invoke-direct {v1, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lscala/concurrent/SyncVar;->put(Ljava/lang/Object;)V

    return-void
.end method
