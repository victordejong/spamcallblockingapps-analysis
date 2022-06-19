.class public final Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/sys/process/ProcessImpl$CompoundProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final synthetic $outer:Lscala/sys/process/ProcessImpl$CompoundProcess;

.field public final code$1:Lscala/concurrent/SyncVar;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$CompoundProcess;Lscala/concurrent/SyncVar;)V
    .locals 0

    .line 94
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;->$outer:Lscala/sys/process/ProcessImpl$CompoundProcess;

    iput-object p2, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;->code$1:Lscala/concurrent/SyncVar;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 2

    .line 94
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;->code$1:Lscala/concurrent/SyncVar;

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;->$outer:Lscala/sys/process/ProcessImpl$CompoundProcess;

    invoke-virtual {v1}, Lscala/sys/process/ProcessImpl$CompoundProcess;->runAndExitValue()Lscala/Option;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .line 94
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;->code$1:Lscala/concurrent/SyncVar;

    iget-object v1, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$1;->$outer:Lscala/sys/process/ProcessImpl$CompoundProcess;

    invoke-virtual {v1}, Lscala/sys/process/ProcessImpl$CompoundProcess;->runAndExitValue()Lscala/Option;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    return-void
.end method
