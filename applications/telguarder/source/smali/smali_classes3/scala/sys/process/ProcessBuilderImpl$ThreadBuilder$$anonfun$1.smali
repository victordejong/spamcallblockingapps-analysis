.class public final Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ProcessBuilderImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;->run(Lscala/sys/process/ProcessIO;)Lscala/sys/process/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;

.field private final io$1:Lscala/sys/process/ProcessIO;

.field private final success$1:Lscala/concurrent/SyncVar;


# direct methods
.method public constructor <init>(Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;Lscala/sys/process/ProcessIO;Lscala/concurrent/SyncVar;)V
    .locals 0

    .line 57
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;->$outer:Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;

    iput-object p2, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;->io$1:Lscala/sys/process/ProcessIO;

    iput-object p3, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;->success$1:Lscala/concurrent/SyncVar;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .line 58
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;->$outer:Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;

    iget-object v0, v0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder;->scala$sys$process$ProcessBuilderImpl$ThreadBuilder$$runImpl:Lscala/Function1;

    iget-object v1, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;->io$1:Lscala/sys/process/ProcessIO;

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lscala/sys/process/ProcessBuilderImpl$ThreadBuilder$$anonfun$1;->success$1:Lscala/concurrent/SyncVar;

    const/4 v1, 0x1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/concurrent/SyncVar;->set(Ljava/lang/Object;)V

    return-void
.end method
