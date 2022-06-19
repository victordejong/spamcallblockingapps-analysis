.class public Lscala/collection/parallel/ParIterableLike$ZipAll;
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
    name = "ZipAll"
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
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/collection/parallel/Combiner<",
        "Lscala/Tuple2<",
        "TU;TS;>;TThat;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.ZipAll<TU;TS;TThat;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final len:I

.field private final othpit:Lscala/collection/parallel/SeqSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final pit:Lscala/collection/parallel/IterableSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/IterableSplitter<",
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

.field public final scala$collection$parallel$ParIterableLike$ZipAll$$pbf:Lscala/collection/parallel/CombinerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/CombinerFactory<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParIterableLike$ZipAll$$thatelem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParIterableLike$ZipAll$$thiselem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;ILjava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;ITU;TS;",
            "Lscala/collection/parallel/CombinerFactory<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)V"
        }
    .end annotation

    .line 1299
    iput p2, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->len:I

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thiselem:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thatelem:Ljava/lang/Object;

    iput-object p5, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$pbf:Lscala/collection/parallel/CombinerFactory;

    iput-object p6, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit:Lscala/collection/parallel/IterableSplitter;

    iput-object p7, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->othpit:Lscala/collection/parallel/SeqSplitter;

    .line 1298
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 1301
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 1298
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;>;)V"
        }
    .end annotation

    .line 1302
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->othpit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thiselem:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thatelem:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$pbf:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v3}, Lscala/collection/parallel/CombinerFactory;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lscala/collection/parallel/IterableSplitter;->zipAll2combiner(Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ZipAll;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 1298
    check-cast p1, Lscala/collection/parallel/ParIterableLike$ZipAll;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ZipAll;->merge(Lscala/collection/parallel/ParIterableLike$ZipAll;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParIterableLike$ZipAll;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ZipAll<TU;TS;TThat;>;)V"
        }
    .end annotation

    .line 1317
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ZipAll;->result()Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ZipAll;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 1298
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 1298
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ZipAll;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;

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

    .line 1303
    sget-object p1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p1}, Lscala/collection/parallel/package$;->unsupported()Lscala/runtime/Nothing$;

    move-result-object p1

    return-object p1
.end method

.method public othpit()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;"
        }
    .end annotation

    .line 1299
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->othpit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
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

    .line 1299
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1298
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

    .line 1298
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->result()Lscala/collection/parallel/Combiner;

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

    .line 1301
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->result:Lscala/collection/parallel/Combiner;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 1298
    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$ZipAll;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 1301
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 1298
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$ZipAll$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1298
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 1298
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 1298
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->signalAbort(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    return-void
.end method

.method public split()Lscala/collection/Seq;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/Task<",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ZipAll<TU;TS;TThat;>;>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1304
    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v1

    iget v2, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->len:I

    if-gt v1, v2, :cond_0

    .line 1305
    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->splitWithSignalling()Lscala/collection/Seq;

    move-result-object v1

    .line 1306
    new-instance v2, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$17;

    invoke-direct {v2, v0}, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$17;-><init>(Lscala/collection/parallel/ParIterableLike$ZipAll;)V

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/Seq;

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->othpit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v3

    invoke-interface {v3, v2}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v3

    .line 1308
    sget-object v4, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v4}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/IterableLike;

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/IterableLike;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableLike;

    new-instance v2, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;

    invoke-direct {v2, v0}, Lscala/collection/parallel/ParIterableLike$ZipAll$$anonfun$split$20;-><init>(Lscala/collection/parallel/ParIterableLike$ZipAll;)V

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/TraversableLike;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/Seq;

    goto/16 :goto_0

    .line 1310
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->othpit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v4, v3, [I

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v5

    invoke-interface {v5}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-virtual {v2, v4}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v1

    .line 1311
    iget v2, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->len:I

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v4

    invoke-interface {v4}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v4

    sub-int v9, v2, v4

    .line 1312
    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x2

    new-array v5, v5, [Lscala/collection/parallel/ParIterableLike$ZipAll;

    .line 1313
    new-instance v7, Lscala/collection/parallel/ParIterableLike$ZipAll;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v8

    invoke-interface {v8}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v12

    iget-object v13, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thiselem:Ljava/lang/Object;

    iget-object v14, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thatelem:Ljava/lang/Object;

    iget-object v15, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$pbf:Lscala/collection/parallel/CombinerFactory;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v16

    invoke-interface {v1, v6}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v8

    check-cast v17, Lscala/collection/parallel/SeqSplitter;

    move-object v10, v7

    invoke-direct/range {v10 .. v17}, Lscala/collection/parallel/ParIterableLike$ZipAll;-><init>(Lscala/collection/parallel/ParIterableLike;ILjava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V

    aput-object v7, v5, v6

    .line 1314
    new-instance v6, Lscala/collection/parallel/ParIterableLike$ZipAll;

    invoke-virtual/range {p0 .. p0}, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v8

    iget-object v10, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thiselem:Ljava/lang/Object;

    iget-object v11, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thatelem:Ljava/lang/Object;

    iget-object v12, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$pbf:Lscala/collection/parallel/CombinerFactory;

    sget-object v7, Lscala/collection/parallel/immutable/package$;->MODULE$:Lscala/collection/parallel/immutable/package$;

    iget-object v13, v0, Lscala/collection/parallel/ParIterableLike$ZipAll;->scala$collection$parallel$ParIterableLike$ZipAll$$thiselem:Ljava/lang/Object;

    invoke-virtual {v7, v13, v9}, Lscala/collection/parallel/immutable/package$;->repetition(Ljava/lang/Object;I)Lscala/collection/parallel/immutable/Repetition;

    move-result-object v7

    invoke-virtual {v7}, Lscala/collection/parallel/immutable/Repetition;->splitter()Lscala/collection/parallel/immutable/Repetition$ParIterator;

    move-result-object v13

    invoke-interface {v1, v3}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lscala/collection/parallel/SeqSplitter;

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Lscala/collection/parallel/ParIterableLike$ZipAll;-><init>(Lscala/collection/parallel/ParIterableLike;ILjava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V

    aput-object v6, v5, v3

    check-cast v5, [Ljava/lang/Object;

    .line 1312
    invoke-virtual {v4, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v1

    check-cast v1, Lscala/collection/Seq;

    :goto_0
    return-object v1
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 1298
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 1298
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$ZipAll;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1298
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

    .line 1298
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 1298
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
