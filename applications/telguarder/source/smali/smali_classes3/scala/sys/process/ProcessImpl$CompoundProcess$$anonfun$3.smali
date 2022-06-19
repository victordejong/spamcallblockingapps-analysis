.class public final Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3;
.super Lscala/runtime/AbstractFunction0;
.source "ProcessImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessImpl$CompoundProcess;->x$4()Lscala/Tuple2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/Option<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final code$1:Lscala/concurrent/SyncVar;

.field private final thread$1:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$CompoundProcess;Lscala/concurrent/SyncVar;Ljava/lang/Thread;)V
    .locals 0

    .line 97
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3;->code$1:Lscala/concurrent/SyncVar;

    iput-object p3, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3;->thread$1:Ljava/lang/Thread;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3;->apply()Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3;->thread$1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$3;->code$1:Lscala/concurrent/SyncVar;

    invoke-virtual {v0}, Lscala/concurrent/SyncVar;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Option;

    return-object v0
.end method
