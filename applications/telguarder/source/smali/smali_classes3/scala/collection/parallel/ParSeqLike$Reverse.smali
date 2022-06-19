.class public Lscala/collection/parallel/ParSeqLike$Reverse;
.super Ljava/lang/Object;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParSeqLike$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParSeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reverse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "This:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/collection/parallel/Combiner<",
        "TU;TThis;>;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Reverse<TU;TThis;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field private final cbf:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation
.end field

.field private final pit:Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Lscala/collection/parallel/Combiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function0;Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 400
    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->cbf:Lscala/Function0;

    iput-object p3, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->pit:Lscala/collection/parallel/SeqSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->$outer:Lscala/collection/parallel/ParSeqLike;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 402
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 400
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;)V"
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->scala$collection$parallel$ParSeqLike$Reverse$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->cbf:Lscala/Function0;

    invoke-interface {v2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/parallel/Combiner;

    invoke-interface {v1, p1, v2}, Lscala/collection/parallel/ParSeqLike;->reuse(Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/SeqSplitter;->reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Reverse;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 400
    check-cast p1, Lscala/collection/parallel/ParSeqLike$Reverse;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Reverse;->merge(Lscala/collection/parallel/ParSeqLike$Reverse;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParSeqLike$Reverse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Reverse<TU;TThis;>;)V"
        }
    .end annotation

    .line 405
    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$Reverse;->result()Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Reverse;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public mergeThrowables(Lscala/collection/parallel/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Task<",
            "**>;)V"
        }
    .end annotation

    .line 400
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 400
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Reverse;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParSeqLike$Reverse;

    move-result-object p1

    return-object p1
.end method

.method public newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParSeqLike$Reverse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Reverse<TU;TThis;>;"
        }
    .end annotation

    .line 404
    new-instance v0, Lscala/collection/parallel/ParSeqLike$Reverse;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->scala$collection$parallel$ParSeqLike$Reverse$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->cbf:Lscala/Function0;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->scala$collection$parallel$ParSeqLike$Reverse$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v3

    invoke-interface {v3, p1}, Lscala/collection/parallel/ParSeqLike;->down(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/parallel/ParSeqLike$Reverse;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function0;Lscala/collection/parallel/SeqSplitter;)V

    return-object v0
.end method

.method public bridge synthetic pit()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public pit()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->pit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 400
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 400
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->requiresStrictSplitters(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->result:Lscala/collection/parallel/Combiner;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 400
    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Reverse;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public result_$eq(Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)V"
        }
    .end annotation

    .line 402
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->scala$collection$parallel$ParSeqLike$Reverse$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 400
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Reverse;->scala$collection$parallel$ParSeqLike$Reverse$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParSeqLike$Reverse$$$outer()Lscala/collection/parallel/ParSeqLike;
    .locals 1

    .line 400
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->$outer:Lscala/collection/parallel/ParSeqLike;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 400
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 400
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->signalAbort(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    return-void
.end method

.method public split()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/Task<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Reverse<TU;TThis;>;>;>;"
        }
    .end annotation

    .line 400
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->split(Lscala/collection/parallel/ParIterableLike$Accessor;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 400
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Reverse;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 400
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->toString(Lscala/collection/parallel/ParIterableLike$Accessor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;)V"
        }
    .end annotation

    .line 400
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 400
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
