.class public Lscala/collection/parallel/ParIterableLike$SplitAt;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SplitAt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "This:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/Tuple2<",
        "Lscala/collection/parallel/Combiner<",
        "TU;TThis;>;",
        "Lscala/collection/parallel/Combiner<",
        "TU;TThis;>;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.SplitAt<TU;TThis;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final pit:Lscala/collection/parallel/IterableSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParIterableLike$SplitAt$$at:I

.field public final scala$collection$parallel$ParIterableLike$SplitAt$$cbfAfter:Lscala/collection/parallel/CombinerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/CombinerFactory<",
            "TU;TThis;>;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParIterableLike$SplitAt$$cbfBefore:Lscala/collection/parallel/CombinerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/CombinerFactory<",
            "TU;TThis;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;I",
            "Lscala/collection/parallel/CombinerFactory<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/CombinerFactory<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1223
    iput p2, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$at:I

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$cbfBefore:Lscala/collection/parallel/CombinerFactory;

    iput-object p4, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$cbfAfter:Lscala/collection/parallel/CombinerFactory;

    iput-object p5, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->pit:Lscala/collection/parallel/IterableSplitter;

    .line 1222
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 1225
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->result:Lscala/Tuple2;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 1222
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;>;)V"
        }
    .end annotation

    .line 1226
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    iget v1, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$at:I

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v2

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v3, Lscala/Some;

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple2;

    invoke-virtual {v4}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/parallel/Combiner;

    invoke-direct {v3, v4}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$cbfBefore:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v4}, Lscala/collection/parallel/CombinerFactory;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lscala/collection/parallel/ParIterableLike;->reuse(Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v3

    invoke-virtual {p1}, Lscala/Option;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    :cond_1
    new-instance v4, Lscala/Some;

    invoke-virtual {p1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-direct {v4, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v4

    :goto_1
    iget-object v4, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$cbfAfter:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v4}, Lscala/collection/parallel/CombinerFactory;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lscala/collection/parallel/ParIterableLike;->reuse(Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lscala/collection/parallel/IterableSplitter;->splitAt2combiners(ILscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$SplitAt;->result_$eq(Lscala/Tuple2;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 1222
    check-cast p1, Lscala/collection/parallel/ParIterableLike$SplitAt;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$SplitAt;->merge(Lscala/collection/parallel/ParIterableLike$SplitAt;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParIterableLike$SplitAt;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.SplitAt<TU;TThis;>;)V"
        }
    .end annotation

    .line 1233
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->result()Lscala/Tuple2;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$SplitAt;->result()Lscala/Tuple2;

    move-result-object v2

    invoke-virtual {v2}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/parallel/Combiner;

    invoke-interface {v1, v2}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->result()Lscala/Tuple2;

    move-result-object v2

    invoke-virtual {v2}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/parallel/Combiner;

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$SplitAt;->result()Lscala/Tuple2;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-interface {v2, p1}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->result_$eq(Lscala/Tuple2;)V

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

    .line 1222
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 1222
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$SplitAt;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;

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

    .line 1227
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public pit()Lscala/collection/parallel/IterableSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 1223
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->pit:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1222
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

    .line 1222
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->result()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 1225
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->result:Lscala/Tuple2;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 1222
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$SplitAt;->result_$eq(Lscala/Tuple2;)V

    return-void
.end method

.method public result_$eq(Lscala/Tuple2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;)V"
        }
    .end annotation

    .line 1225
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->result:Lscala/Tuple2;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 1222
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$SplitAt$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1222
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->scala$collection$parallel$ParIterableLike$SplitAt$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 1222
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 1222
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
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.SplitAt<TU;TThis;>;>;>;"
        }
    .end annotation

    .line 1229
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$SplitAt;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->splitWithSignalling()Lscala/collection/Seq;

    move-result-object v0

    const/4 v1, 0x0

    .line 1230
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$15;

    invoke-direct {v2, p0}, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$15;-><init>(Lscala/collection/parallel/ParIterableLike$SplitAt;)V

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lscala/collection/Seq;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/Seq;

    .line 1231
    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$11;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$11;-><init>(Lscala/collection/parallel/ParIterableLike$SplitAt;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$SplitAt$$anonfun$split$12;-><init>(Lscala/collection/parallel/ParIterableLike$SplitAt;)V

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

    .line 1222
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 1222
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$SplitAt;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1222
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
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;>;)V"
        }
    .end annotation

    .line 1222
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 1222
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
