.class public abstract Lscala/collection/parallel/ParIterableLike$ParComposite;
.super Lscala/collection/parallel/ParIterableLike$Composite;
.source "ParIterableLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ParComposite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FR:",
        "Ljava/lang/Object;",
        "SR:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "First::",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TFR;*>;Second::",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.StrictSplitterCheckTask<TSR;*>;>",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Composite<TFR;TSR;TR;TFirst;TSecond;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;TFirst;TSecond;)V"
        }
    .end annotation

    .line 944
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$Composite;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    return-void
.end method


# virtual methods
.method public leaf(Lscala/Option;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TR;>;)V"
        }
    .end annotation

    .line 946
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ParComposite;->scala$collection$parallel$ParIterableLike$ParComposite$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ParComposite;->ft()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/TaskSupport;->execute(Lscala/collection/parallel/Task;)Lscala/Function0;

    move-result-object p1

    .line 947
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ParComposite;->scala$collection$parallel$ParIterableLike$ParComposite$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ParComposite;->st()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    .line 948
    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    .line 949
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ParComposite;->mergeSubtasks()V

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$ParComposite$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 942
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ParComposite;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method
