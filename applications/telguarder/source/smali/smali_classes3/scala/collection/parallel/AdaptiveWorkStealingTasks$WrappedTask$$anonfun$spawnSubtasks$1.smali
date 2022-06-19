.class public final Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1;
.super Lscala/runtime/AbstractFunction1;
.source "Tasks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->spawnSubtasks()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
        "TR;TTp;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final last$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;Lscala/runtime/ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;)V"
        }
    .end annotation

    .line 186
    iput-object p2, p0, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1;->last$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    check-cast p1, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1;->apply(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1;->last$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    invoke-interface {p1, v0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->next_$eq(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V

    .line 188
    iget-object v0, p0, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$$anonfun$spawnSubtasks$1;->last$1:Lscala/runtime/ObjectRef;

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 189
    invoke-interface {p1}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;->start()V

    return-void
.end method
