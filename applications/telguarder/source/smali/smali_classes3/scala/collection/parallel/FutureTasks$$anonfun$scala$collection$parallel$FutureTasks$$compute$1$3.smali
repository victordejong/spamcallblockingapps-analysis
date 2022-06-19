.class public final Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3;
.super Lscala/runtime/AbstractFunction0;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/FutureTasks;->scala$collection$parallel$FutureTasks$$compute$1(Lscala/collection/parallel/Task;ILscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "Lscala/collection/parallel/Task<",
        "TR;TTp;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final task$1:Lscala/collection/parallel/Task;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/FutureTasks;Lscala/collection/parallel/Task;)V
    .locals 0

    .line 501
    iput-object p2, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3;->task$1:Lscala/collection/parallel/Task;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .line 501
    invoke-virtual {p0}, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3;->apply()Lscala/collection/parallel/Task;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/parallel/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3;->task$1:Lscala/collection/parallel/Task;

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-interface {v0, v1}, Lscala/collection/parallel/Task;->tryLeaf(Lscala/Option;)V

    .line 503
    iget-object v0, p0, Lscala/collection/parallel/FutureTasks$$anonfun$scala$collection$parallel$FutureTasks$$compute$1$3;->task$1:Lscala/collection/parallel/Task;

    return-object v0
.end method
