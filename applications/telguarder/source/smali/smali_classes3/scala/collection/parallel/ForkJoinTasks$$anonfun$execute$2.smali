.class public final Lscala/collection/parallel/ForkJoinTasks$$anonfun$execute$2;
.super Lscala/runtime/AbstractFunction0;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ForkJoinTasks;->execute(Lscala/collection/parallel/Task;)Lscala/Function0;
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
.field private final fjtask$1:Lscala/collection/parallel/ForkJoinTasks$WrappedTask;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ForkJoinTasks;Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)V
    .locals 0

    .line 403
    iput-object p2, p0, Lscala/collection/parallel/ForkJoinTasks$$anonfun$execute$2;->fjtask$1:Lscala/collection/parallel/ForkJoinTasks$WrappedTask;

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

    .line 404
    iget-object v0, p0, Lscala/collection/parallel/ForkJoinTasks$$anonfun$execute$2;->fjtask$1:Lscala/collection/parallel/ForkJoinTasks$WrappedTask;

    invoke-interface {v0}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask;->sync()V

    .line 405
    iget-object v0, p0, Lscala/collection/parallel/ForkJoinTasks$$anonfun$execute$2;->fjtask$1:Lscala/collection/parallel/ForkJoinTasks$WrappedTask;

    invoke-interface {v0}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/Task;->forwardThrowable()V

    .line 406
    iget-object v0, p0, Lscala/collection/parallel/ForkJoinTasks$$anonfun$execute$2;->fjtask$1:Lscala/collection/parallel/ForkJoinTasks$WrappedTask;

    invoke-interface {v0}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/Task;->result()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
