.class public final Lscala/collection/parallel/ThreadPoolTasks$$anonfun$execute$1;
.super Lscala/runtime/AbstractFunction0;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ThreadPoolTasks;->execute(Lscala/collection/parallel/Task;)Lscala/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0<",
        "TR;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final t$1:Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ThreadPoolTasks;Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;)V
    .locals 0

    .line 301
    iput-object p2, p0, Lscala/collection/parallel/ThreadPoolTasks$$anonfun$execute$1;->t$1:Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lscala/collection/parallel/ThreadPoolTasks$$anonfun$execute$1;->t$1:Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;

    invoke-interface {v0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->sync()V

    .line 303
    iget-object v0, p0, Lscala/collection/parallel/ThreadPoolTasks$$anonfun$execute$1;->t$1:Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;

    invoke-interface {v0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/Task;->forwardThrowable()V

    .line 304
    iget-object v0, p0, Lscala/collection/parallel/ThreadPoolTasks$$anonfun$execute$1;->t$1:Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;

    invoke-interface {v0}, Lscala/collection/parallel/ThreadPoolTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
