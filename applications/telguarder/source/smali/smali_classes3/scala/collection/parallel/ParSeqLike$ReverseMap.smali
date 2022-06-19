.class public Lscala/collection/parallel/ParSeqLike$ReverseMap;
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
    name = "ReverseMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "That:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/collection/parallel/Combiner<",
        "TS;TThat;>;",
        "Lscala/collection/parallel/ParSeqLike<",
        "TT;TRepr;TSequential;>.ReverseMap<TS;TThat;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParSeqLike;

.field private final f:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TT;TS;>;"
        }
    .end annotation
.end field

.field private final pbf:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;>;"
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
            "TS;TThat;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;Lscala/Function0;Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 408
    iput-object p2, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->f:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->pbf:Lscala/Function0;

    iput-object p4, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->pit:Lscala/collection/parallel/SeqSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->$outer:Lscala/collection/parallel/ParSeqLike;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 410
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 408
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
            "TS;TThat;>;>;)V"
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->pit()Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->f:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->pbf:Lscala/Function0;

    invoke-interface {v1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/Combiner;

    invoke-interface {p1, v0, v1}, Lscala/collection/parallel/SeqSplitter;->reverseMap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 408
    check-cast p1, Lscala/collection/parallel/ParSeqLike$ReverseMap;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->merge(Lscala/collection/parallel/ParSeqLike$ReverseMap;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParSeqLike$ReverseMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.ReverseMap<TS;TThat;>;)V"
        }
    .end annotation

    .line 413
    invoke-virtual {p1}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result()Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 408
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParSeqLike$ReverseMap;

    move-result-object p1

    return-object p1
.end method

.method public newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParSeqLike$ReverseMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.ReverseMap<TS;TThat;>;"
        }
    .end annotation

    .line 412
    new-instance v0, Lscala/collection/parallel/ParSeqLike$ReverseMap;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->scala$collection$parallel$ParSeqLike$ReverseMap$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->f:Lscala/Function1;

    iget-object v3, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->pbf:Lscala/Function0;

    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->scala$collection$parallel$ParSeqLike$ReverseMap$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v4

    invoke-interface {v4, p1}, Lscala/collection/parallel/ParSeqLike;->down(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/collection/parallel/ParSeqLike$ReverseMap;-><init>(Lscala/collection/parallel/ParSeqLike;Lscala/Function1;Lscala/Function0;Lscala/collection/parallel/SeqSplitter;)V

    return-object v0
.end method

.method public bridge synthetic pit()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->pit()Lscala/collection/parallel/SeqSplitter;

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

    .line 408
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->pit:Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 408
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 408
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->requiresStrictSplitters(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result:Lscala/collection/parallel/Combiner;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 408
    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public result_$eq(Lscala/collection/parallel/Combiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)V"
        }
    .end annotation

    .line 410
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->scala$collection$parallel$ParSeqLike$ReverseMap$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 408
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParSeqLike$ReverseMap;->scala$collection$parallel$ParSeqLike$ReverseMap$$$outer()Lscala/collection/parallel/ParSeqLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParSeqLike$ReverseMap$$$outer()Lscala/collection/parallel/ParSeqLike;
    .locals 1

    .line 408
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->$outer:Lscala/collection/parallel/ParSeqLike;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 408
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 408
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
            "TS;TThat;>;",
            "Lscala/collection/parallel/ParSeqLike<",
            "TT;TRepr;TSequential;>.ReverseMap<TS;TThat;>;>;>;"
        }
    .end annotation

    .line 408
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->split(Lscala/collection/parallel/ParIterableLike$Accessor;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 408
    iget-object v0, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lscala/collection/parallel/ParSeqLike$ReverseMap;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 408
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
            "TS;TThat;>;>;)V"
        }
    .end annotation

    .line 408
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 408
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
