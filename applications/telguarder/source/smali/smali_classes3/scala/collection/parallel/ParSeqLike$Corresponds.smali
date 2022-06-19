.class public Lscala/collection/parallel/ParSeqLike$Corresponds;
.super Ljava/lang/Object;
.source "ParSeqLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParSeqLike$Accessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParSeqLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Corresponds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Accessor<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Corresponds<TS;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

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

.field private volatile result:Z

.field public final scala$collection$parallel$ParSeqLike$Corresponds$$corr:Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function2<",
            "TT;TS;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function2;Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/Function2<",
            "TT;TS;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)V"
        }
    .end annotation

    .line 464
    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->scala$collection$parallel$ParSeqLike$Corresponds$$corr:Lscala/Function2;

    iput-object p3, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit:Lscala/collection/parallel/SeqSplitter;

    iput-object p4, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->otherpit:Lscala/collection/parallel/SeqSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->$outer:Lscala/collection/parallel/ParSeqLike;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x1

    .line 466
    iput-boolean p1, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->result:Z

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 464
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/SeqSplitter;->isAborted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 468
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->scala$collection$parallel$ParSeqLike$Corresponds$$corr:Lscala/Function2;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->otherpit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/collection/parallel/SeqSplitter;->corresponds(Lscala/Function2;Lscala/collection/Iterator;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Corresponds;->result_$eq(Z)V

    .line 469
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->result()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/SeqSplitter;->abort()V

    :cond_0
    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 464
    check-cast p1, Lscala/collection/parallel/ParSeqLike$Corresponds;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Corresponds;->merge(Lscala/collection/parallel/ParSeqLike$Corresponds;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParSeqLike$Corresponds;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Corresponds<TS;>;)V"
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->result()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$Corresponds;->result()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Corresponds;->result_$eq(Z)V

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

    .line 464
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 464
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Corresponds;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;

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

    .line 471
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

    .line 464
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->otherpit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public bridge synthetic pit()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 464
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit()Lscala/collection/parallel/SeqSplitter;

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

    .line 464
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 464
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

    .line 464
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->result()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public result()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->result:Z

    return v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 464
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$Corresponds;->result_$eq(Z)V

    return-void
.end method

.method public result_$eq(Z)V
    .locals 0

    .line 466
    iput-boolean p1, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->result:Z

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->scala$collection$parallel$ParSeqLike$Corresponds$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 464
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->scala$collection$parallel$ParSeqLike$Corresponds$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParSeqLike$Corresponds$$$outer()Lscala/collection/parallel/ParSeqLike;
    .locals 1

    .line 464
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->$outer:Lscala/collection/parallel/ParSeqLike;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 464
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 464
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->signalAbort(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    return-void
.end method

.method public split()Lscala/collection/Seq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/Task<",
            "Ljava/lang/Object;",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.Corresponds<TS;>;>;>;"
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->remaining()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 474
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/SeqSplitter;->remaining()I

    move-result v2

    sub-int/2addr v2, v0

    .line 475
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v3

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v5, v1, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    aput v2, v5, v7

    invoke-virtual {v4, v5}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-interface {v3, v4}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v3

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$Corresponds;->otherpit()Lscala/collection/parallel/SeqSplitter;

    move-result-object v4

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [I

    aput v0, v1, v6

    aput v2, v1, v7

    invoke-virtual {v5, v1}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-interface {v4, v0}, Lscala/collection/parallel/SeqSplitter;->psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v0

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/parallel/ParSeqLike$Corresponds$$anonfun$split$15;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$Corresponds$$anonfun$split$15;-><init>(Lscala/collection/parallel/ParSeqLike$Corresponds;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParSeqLike$Corresponds$$anonfun$split$16;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParSeqLike$Corresponds$$anonfun$split$16;-><init>(Lscala/collection/parallel/ParSeqLike$Corresponds;)V

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

    .line 464
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$Corresponds;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 464
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
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 464
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 464
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
