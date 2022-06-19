.class public Lscala/collection/parallel/ParSeqLike$Zip;
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
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "That:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/collection/parallel/Combiner<",
        "Lscala/Tuple2<",
        "TU;TS;>;TThat;>;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Zip<TU;TS;TThat;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field private final cf:Lscala/collection/parallel/CombinerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/CombinerFactory<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation
.end field

.field private final len:I

.field private final otherpit:Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;"
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
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;I",
            "Lscala/collection/parallel/CombinerFactory<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)V"
        }
    .end annotation

    .line 446
    iput p2, p0, Lscala/collection/parallel/ParSeqLike$Zip;->len:I

    iput-object p3, p0, Lscala/collection/parallel/ParSeqLike$Zip;->cf:Lscala/collection/parallel/CombinerFactory;

    iput-object p4, p0, Lscala/collection/parallel/ParSeqLike$Zip;->pit:Lscala/collection/parallel/SeqSplitter;

    iput-object p5, p0, Lscala/collection/parallel/ParSeqLike$Zip;->otherpit:Lscala/collection/parallel/SeqSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Zip;->$outer:Lscala/collection/parallel/ParSeqLike;

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 448
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Zip;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 446
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;>;)V"
        }
    .end annotation

    .line 449
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->otherpit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$Zip;->cf:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v1}, Lscala/collection/parallel/CombinerFactory;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/collection/parallel/SeqSplitter;->zip2combiner(Lscala/collection/parallel/RemainsIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Zip;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 446
    check-cast p1, Lscala/collection/parallel/ParSeqLike$Zip;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Zip;->merge(Lscala/collection/parallel/ParSeqLike$Zip;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParSeqLike$Zip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Zip<TU;TS;TThat;>;)V"
        }
    .end annotation

    .line 461
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$Zip;->result()Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Zip;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 446
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 446
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Zip;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;

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

    .line 450
    sget-object p1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p1}, Lscala/collection/parallel/package$;->unsupported()Lscala/runtime/Nothing$;

    move-result-object p1

    return-object p1
.end method

.method public otherpit()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;"
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Zip;->otherpit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public bridge synthetic pit()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->pit()Lscala/collection/parallel/SeqSplitter;

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

    .line 446
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Zip;->pit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 446
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 446
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->requiresStrictSplitters(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Zip;->result:Lscala/collection/parallel/Combiner;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 446
    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Zip;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public result_$eq(Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Zip;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->scala$collection$parallel$ParSeqLike$Zip$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 446
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->scala$collection$parallel$ParSeqLike$Zip$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParSeqLike$Zip$$$outer()Lscala/collection/parallel/ParSeqLike;
    .locals 1

    .line 446
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Zip;->$outer:Lscala/collection/parallel/ParSeqLike;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 446
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 446
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->signalAbort(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    return-void
.end method

.method public split()Lscala/collection/Seq;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Zip<TU;TS;TThat;>;>;"
        }
    .end annotation

    .line 452
    iget v0, p0, Lscala/collection/parallel/ParSeqLike$Zip;->len:I

    div-int/lit8 v3, v0, 0x2

    .line 453
    div-int/lit8 v1, v0, 0x2

    sub-int/2addr v0, v1

    .line 454
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v7, 0x0

    aput v3, v5, v7

    const/4 v10, 0x1

    aput v0, v5, v10

    invoke-virtual {v2, v5}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v8

    .line 455
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->otherpit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v5, v4, [I

    aput v3, v5, v7

    aput v0, v5, v10

    invoke-virtual {v2, v5}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v9

    .line 456
    sget-object v11, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v13, v4, [Lscala/collection/parallel/ParSeqLike$Zip;

    .line 457
    new-instance v14, Lscala/collection/parallel/ParSeqLike$Zip;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->scala$collection$parallel$ParSeqLike$Zip$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v2

    iget-object v4, p0, Lscala/collection/parallel/ParSeqLike$Zip;->cf:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v8, v7}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {v9, v7}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lscala/collection/parallel/SeqSplitter;

    move-object v1, v14

    invoke-direct/range {v1 .. v6}, Lscala/collection/parallel/ParSeqLike$Zip;-><init>(Lscala/collection/parallel/ParSeqLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    aput-object v14, v13, v7

    .line 458
    new-instance v1, Lscala/collection/parallel/ParSeqLike$Zip;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Zip;->scala$collection$parallel$ParSeqLike$Zip$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v5

    iget-object v7, p0, Lscala/collection/parallel/ParSeqLike$Zip;->cf:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v8, v10}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lscala/collection/parallel/SeqSplitter;

    invoke-interface {v9, v10}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lscala/collection/parallel/SeqSplitter;

    move-object v4, v1

    move v6, v0

    invoke-direct/range {v4 .. v9}, Lscala/collection/parallel/ParSeqLike$Zip;-><init>(Lscala/collection/parallel/ParSeqLike;ILscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    aput-object v1, v13, v10

    check-cast v13, [Ljava/lang/Object;

    .line 456
    invoke-virtual {v12, v13}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v11, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 446
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Zip;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 446
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Zip;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 446
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
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;>;)V"
        }
    .end annotation

    .line 446
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 446
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
