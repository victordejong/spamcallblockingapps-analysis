.class public Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;
.super Lscala/concurrent/forkjoin/RecursiveAction;
.source "Tasks.scala"

# interfaces
.implements Lscala/collection/parallel/ForkJoinTasks$WrappedTask;
.implements Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "Tp:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/concurrent/forkjoin/RecursiveAction;",
        "Lscala/collection/parallel/ForkJoinTasks$WrappedTask<",
        "TR;TTp;>;",
        "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
        "TR;TTp;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;

.field private final body:Lscala/collection/parallel/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;"
        }
    .end annotation
.end field

.field private volatile next:Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile shouldWaitFor:Z


# direct methods
.method public constructor <init>(Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;Lscala/collection/parallel/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;)V"
        }
    .end annotation

    .line 443
    iput-object p2, p0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->body:Lscala/collection/parallel/Task;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->$outer:Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;

    .line 444
    invoke-direct {p0}, Lscala/concurrent/forkjoin/RecursiveAction;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Tasks$WrappedTask$class;->$init$(Lscala/collection/parallel/Tasks$WrappedTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask$class;->$init$(Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)V

    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$class;->$init$(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V

    return-void
.end method


# virtual methods
.method public body()Lscala/collection/parallel/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Task<",
            "TR;TTp;>;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->body:Lscala/collection/parallel/Task;

    return-object v0
.end method

.method public compute()V
    .locals 0

    .line 443
    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$class;->compute(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V

    return-void
.end method

.method public internal()V
    .locals 0

    .line 443
    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$class;->internal(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V

    return-void
.end method

.method public next()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->next:Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    return-object v0
.end method

.method public next_$eq(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;)V"
        }
    .end annotation

    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 443
    iput-object p1, p0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->next:Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    return-void
.end method

.method public printChain()V
    .locals 0

    .line 443
    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$class;->printChain(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 443
    invoke-static {p0}, Lscala/collection/parallel/Tasks$WrappedTask$class;->release(Lscala/collection/parallel/Tasks$WrappedTask;)V

    return-void
.end method

.method public synthetic scala$collection$parallel$AdaptiveWorkStealingForkJoinTasks$WrappedTask$$$outer()Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;
    .locals 1

    .line 443
    iget-object v0, p0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->$outer:Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$AdaptiveWorkStealingTasks$WrappedTask$$$outer()Lscala/collection/parallel/AdaptiveWorkStealingTasks;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->scala$collection$parallel$AdaptiveWorkStealingForkJoinTasks$WrappedTask$$$outer()Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ForkJoinTasks$WrappedTask$$$outer()Lscala/collection/parallel/ForkJoinTasks;
    .locals 1

    .line 376
    invoke-virtual {p0}, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->scala$collection$parallel$AdaptiveWorkStealingForkJoinTasks$WrappedTask$$$outer()Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$Tasks$WrappedTask$$$outer()Lscala/collection/parallel/Tasks;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->scala$collection$parallel$AdaptiveWorkStealingForkJoinTasks$WrappedTask$$$outer()Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks;

    move-result-object v0

    return-object v0
.end method

.method public shouldWaitFor()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->shouldWaitFor:Z

    return v0
.end method

.method public shouldWaitFor_$eq(Z)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 443
    iput-boolean p1, p0, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->shouldWaitFor:Z

    return-void
.end method

.method public spawnSubtasks()Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;"
        }
    .end annotation

    .line 443
    invoke-static {p0}, Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask$class;->spawnSubtasks(Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;)Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask;

    move-result-object v0

    return-object v0
.end method

.method public split()Lscala/collection/Seq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/AdaptiveWorkStealingTasks$WrappedTask<",
            "TR;TTp;>;>;"
        }
    .end annotation

    .line 445
    invoke-virtual {p0}, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;->body()Lscala/collection/parallel/Task;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/Task;->split()Lscala/collection/Seq;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask$$anonfun$split$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask$$anonfun$split$1;-><init>(Lscala/collection/parallel/AdaptiveWorkStealingForkJoinTasks$WrappedTask;)V

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method

.method public start()V
    .locals 0

    .line 443
    invoke-static {p0}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask$class;->start(Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)V

    return-void
.end method

.method public sync()V
    .locals 0

    .line 443
    invoke-static {p0}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask$class;->sync(Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)V

    return-void
.end method

.method public tryCancel()Z
    .locals 1

    .line 443
    invoke-static {p0}, Lscala/collection/parallel/ForkJoinTasks$WrappedTask$class;->tryCancel(Lscala/collection/parallel/ForkJoinTasks$WrappedTask;)Z

    move-result v0

    return v0
.end method
