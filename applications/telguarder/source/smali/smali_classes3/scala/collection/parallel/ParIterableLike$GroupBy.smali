.class public Lscala/collection/parallel/ParIterableLike$GroupBy;
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
    name = "GroupBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/collection/parallel/immutable/HashMapCombiner<",
        "TK;TU;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.GroupBy<TK;TU;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final f:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TU;TK;>;"
        }
    .end annotation
.end field

.field private final mcf:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TU;>;>;"
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

.field private volatile result:Lscala/collection/parallel/immutable/HashMapCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TU;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/Function0;Lscala/collection/parallel/IterableSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/Function1<",
            "TU;TK;>;",
            "Lscala/Function0<",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TU;>;>;",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1143
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->f:Lscala/Function1;

    .line 1144
    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->mcf:Lscala/Function0;

    .line 1145
    iput-object p4, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->pit:Lscala/collection/parallel/IterableSplitter;

    .line 1142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 1147
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->result:Lscala/collection/parallel/immutable/HashMapCombiner;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 1142
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public final leaf(Lscala/Option;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TU;>;>;)V"
        }
    .end annotation

    .line 1150
    iget-object p1, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->mcf:Lscala/Function0;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/immutable/HashMapCombiner;

    .line 1151
    :goto_0
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$GroupBy;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$GroupBy;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1153
    sget-object v1, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->f:Lscala/Function1;

    invoke-interface {v2, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->ArrowAssoc(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/Tuple2;

    invoke-direct {v2, v1, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v2}, Lscala/collection/parallel/immutable/HashMapCombiner;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/immutable/HashMapCombiner;

    goto :goto_0

    .line 1155
    :cond_0
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$GroupBy;->result_$eq(Lscala/collection/parallel/immutable/HashMapCombiner;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 1142
    check-cast p1, Lscala/collection/parallel/ParIterableLike$GroupBy;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$GroupBy;->merge(Lscala/collection/parallel/ParIterableLike$GroupBy;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParIterableLike$GroupBy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.GroupBy<TK;TU;>;)V"
        }
    .end annotation

    .line 1161
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$GroupBy;->result()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$GroupBy;->result()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object p1

    invoke-virtual {v0, p1}, Lscala/collection/parallel/immutable/HashMapCombiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/immutable/HashMapCombiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$GroupBy;->result_$eq(Lscala/collection/parallel/immutable/HashMapCombiner;)V

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

    .line 1142
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 1142
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$GroupBy;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$GroupBy;

    move-result-object p1

    return-object p1
.end method

.method public newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$GroupBy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.GroupBy<TK;TU;>;"
        }
    .end annotation

    .line 1157
    new-instance v0, Lscala/collection/parallel/ParIterableLike$GroupBy;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$GroupBy;->scala$collection$parallel$ParIterableLike$GroupBy$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->f:Lscala/Function1;

    iget-object v3, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->mcf:Lscala/Function0;

    invoke-direct {v0, v1, v2, v3, p1}, Lscala/collection/parallel/ParIterableLike$GroupBy;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/Function0;Lscala/collection/parallel/IterableSplitter;)V

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

    .line 1145
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->pit:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1142
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 1142
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->requiresStrictSplitters(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 1142
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$GroupBy;->result()Lscala/collection/parallel/immutable/HashMapCombiner;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/immutable/HashMapCombiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TU;>;"
        }
    .end annotation

    .line 1147
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->result:Lscala/collection/parallel/immutable/HashMapCombiner;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 1142
    check-cast p1, Lscala/collection/parallel/immutable/HashMapCombiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$GroupBy;->result_$eq(Lscala/collection/parallel/immutable/HashMapCombiner;)V

    return-void
.end method

.method public result_$eq(Lscala/collection/parallel/immutable/HashMapCombiner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TU;>;)V"
        }
    .end annotation

    .line 1147
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->result:Lscala/collection/parallel/immutable/HashMapCombiner;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$GroupBy;->scala$collection$parallel$ParIterableLike$GroupBy$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 1142
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$GroupBy$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1142
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$GroupBy;->scala$collection$parallel$ParIterableLike$GroupBy$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 1142
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 1142
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
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TU;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.GroupBy<TK;TU;>;>;>;"
        }
    .end annotation

    .line 1142
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->split(Lscala/collection/parallel/ParIterableLike$Accessor;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 1142
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$GroupBy;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1142
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
            "Lscala/collection/parallel/immutable/HashMapCombiner<",
            "TK;TU;>;>;)V"
        }
    .end annotation

    .line 1142
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 1142
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
