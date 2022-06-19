.class public Lscala/collection/parallel/ParIterableLike$FlatMap;
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
    name = "FlatMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "That:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/collection/parallel/Combiner<",
        "TS;TThat;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.FlatMap<TS;TThat;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final f:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TT;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private final pbf:Lscala/collection/parallel/CombinerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/CombinerFactory<",
            "TS;TThat;>;"
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
            "TS;TThat;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/Function1<",
            "TT;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;",
            "Lscala/collection/parallel/CombinerFactory<",
            "TS;TThat;>;",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1069
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->f:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->pbf:Lscala/collection/parallel/CombinerFactory;

    iput-object p4, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->pit:Lscala/collection/parallel/IterableSplitter;

    .line 1068
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 1071
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 1068
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

    .line 1072
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FlatMap;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->f:Lscala/Function1;

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->pbf:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v1}, Lscala/collection/parallel/CombinerFactory;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/collection/parallel/IterableSplitter;->flatmap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FlatMap;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 1068
    check-cast p1, Lscala/collection/parallel/ParIterableLike$FlatMap;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FlatMap;->merge(Lscala/collection/parallel/ParIterableLike$FlatMap;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParIterableLike$FlatMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.FlatMap<TS;TThat;>;)V"
        }
    .end annotation

    .line 1076
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FlatMap;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$FlatMap;->result()Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FlatMap;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 1068
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 1068
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FlatMap;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$FlatMap;

    move-result-object p1

    return-object p1
.end method

.method public newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$FlatMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.FlatMap<TS;TThat;>;"
        }
    .end annotation

    .line 1073
    new-instance v0, Lscala/collection/parallel/ParIterableLike$FlatMap;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FlatMap;->scala$collection$parallel$ParIterableLike$FlatMap$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->f:Lscala/Function1;

    iget-object v3, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->pbf:Lscala/collection/parallel/CombinerFactory;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/collection/parallel/ParIterableLike$FlatMap;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/parallel/CombinerFactory;Lscala/collection/parallel/IterableSplitter;)V

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

    .line 1069
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->pit:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1068
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 1068
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->requiresStrictSplitters(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 1068
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FlatMap;->result()Lscala/collection/parallel/Combiner;

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

    .line 1071
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->result:Lscala/collection/parallel/Combiner;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 1068
    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FlatMap;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 1071
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FlatMap;->scala$collection$parallel$ParIterableLike$FlatMap$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 1068
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$FlatMap$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1068
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FlatMap;->scala$collection$parallel$ParIterableLike$FlatMap$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 1068
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 1068
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
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.FlatMap<TS;TThat;>;>;>;"
        }
    .end annotation

    .line 1068
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->split(Lscala/collection/parallel/ParIterableLike$Accessor;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 1068
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$FlatMap;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1068
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

    .line 1068
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 1068
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
