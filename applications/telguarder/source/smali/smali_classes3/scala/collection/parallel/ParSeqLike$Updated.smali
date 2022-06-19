.class public Lscala/collection/parallel/ParSeqLike$Updated;
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
    name = "Updated"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "That:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/collection/parallel/Combiner<",
        "TU;TThat;>;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Updated<TU;TThat;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

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
            "TU;TThat;>;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParSeqLike$Updated$$elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParSeqLike$Updated$$pbf:Lscala/collection/parallel/CombinerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/CombinerFactory<",
            "TU;TThat;>;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParSeqLike$Updated$$pos:I

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;ILjava/lang/Object;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;ITU;",
            "Lscala/collection/parallel/CombinerFactory<",
            "TU;TThat;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 433
    iput p2, p0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$pos:I

    iput-object p3, p0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$elem:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$pbf:Lscala/collection/parallel/CombinerFactory;

    iput-object p5, p0, Lscala/collection/parallel/ParSeqLike$Updated;->pit:Lscala/collection/parallel/SeqSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Updated;->$outer:Lscala/collection/parallel/ParSeqLike;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 435
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Updated;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 433
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
            "TU;TThat;>;>;)V"
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Updated;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    iget v0, p0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$pos:I

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$elem:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$pbf:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v2}, Lscala/collection/parallel/CombinerFactory;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lscala/collection/parallel/SeqSplitter;->updated2combiner(ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Updated;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 433
    check-cast p1, Lscala/collection/parallel/ParSeqLike$Updated;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Updated;->merge(Lscala/collection/parallel/ParSeqLike$Updated;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParSeqLike$Updated;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Updated<TU;TThat;>;)V"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Updated;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$Updated;->result()Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Updated;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 433
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 433
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Updated;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method public newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/runtime/Nothing$;"
        }
    .end annotation

    .line 437
    sget-object p1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p1}, Lscala/collection/parallel/package$;->unsupported()Lscala/runtime/Nothing$;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pit()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Updated;->pit()Lscala/collection/parallel/SeqSplitter;

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

    .line 433
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Updated;->pit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 433
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Updated;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Updated;->result:Lscala/collection/parallel/Combiner;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 433
    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Updated;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public result_$eq(Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)V"
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Updated;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 433
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Updated;->scala$collection$parallel$ParSeqLike$Updated$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParSeqLike$Updated$$$outer()Lscala/collection/parallel/ParSeqLike;
    .locals 1

    .line 433
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Updated;->$outer:Lscala/collection/parallel/ParSeqLike;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 433
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 433
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->signalAbort(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    return-void
.end method

.method public split()Lscala/collection/Seq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/Task<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Updated<TU;TThat;>;>;>;"
        }
    .end annotation

    .line 439
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Updated;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->splitWithSignalling()Lscala/collection/Seq;

    move-result-object v0

    const/4 v1, 0x0

    .line 440
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$12;

    invoke-direct {v2, p0}, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$12;-><init>(Lscala/collection/parallel/ParSeqLike$Updated;)V

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lscala/collection/Seq;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/GenIterable;

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$13;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$13;-><init>(Lscala/collection/parallel/ParSeqLike$Updated;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$Updated$$anonfun$split$14;-><init>(Lscala/collection/parallel/ParSeqLike$Updated;)V

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/generic/FilterMonadic;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 433
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Updated;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Updated;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 433
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
            "TU;TThat;>;>;)V"
        }
    .end annotation

    .line 433
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 433
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
