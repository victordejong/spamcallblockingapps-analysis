.class public final Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$2;
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
.field public final thread$1:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessImpl$CompoundProcess;Ljava/lang/Thread;)V
    .locals 0

    .line 98
    iput-object p2, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$2;->thread$1:Ljava/lang/Thread;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$2;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 1

    .line 98
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$2;->thread$1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .line 98
    iget-object v0, p0, Lscala/sys/process/ProcessImpl$CompoundProcess$$anonfun$2;->thread$1:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
