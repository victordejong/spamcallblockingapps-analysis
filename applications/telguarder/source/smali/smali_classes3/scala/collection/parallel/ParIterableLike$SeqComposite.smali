.class public abstract Lscala/collection/parallel/ParIterableLike$SeqComposite;
.super Lscala/collection/parallel/ParIterableLike$Composite;
.source "ParIterableLike.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SeqComposite"
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

    .line 933
    invoke-direct {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$Composite;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    return-void
.end method


# virtual methods
.method public leaf(Lscala/Option;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TR;>;)V"
        }
    .end annotation

    .line 935
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SeqComposite;->scala$collection$parallel$ParIterableLike$SeqComposite$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SeqComposite;->ft()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    .line 936
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SeqComposite;->scala$collection$parallel$ParIterableLike$SeqComposite$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SeqComposite;->st()Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/TaskSupport;->executeAndWaitResult(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    .line 937
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SeqComposite;->mergeSubtasks()V

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$SeqComposite$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 931
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$SeqComposite;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method
