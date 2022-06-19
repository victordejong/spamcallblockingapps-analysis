.class public Lscala/collection/parallel/ParIterableLike$Aggregate;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$Accessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Aggregate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Accessor<TS;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Aggregate<TS;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final combop:Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function2<",
            "TS;TS;TS;>;"
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

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final seqop:Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function2<",
            "TS;TT;TS;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;

.field private final z:Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function0<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Function2;Lscala/Function2;Lscala/collection/parallel/IterableSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/Function0<",
            "TS;>;",
            "Lscala/Function2<",
            "TS;TT;TS;>;",
            "Lscala/Function2<",
            "TS;TS;TS;>;",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1005
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->z:Lscala/Function0;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->seqop:Lscala/Function2;

    iput-object p4, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->combop:Lscala/Function2;

    iput-object p5, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->pit:Lscala/collection/parallel/IterableSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 1007
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 1005
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TS;>;)V"
        }
    .end annotation

    .line 1008
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Aggregate;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->z:Lscala/Function0;

    invoke-interface {v0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->seqop:Lscala/Function2;

    invoke-interface {p1, v0, v1}, Lscala/collection/parallel/IterableSplitter;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Aggregate;->result_$eq(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 1005
    check-cast p1, Lscala/collection/parallel/ParIterableLike$Aggregate;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Aggregate;->merge(Lscala/collection/parallel/ParIterableLike$Aggregate;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParIterableLike$Aggregate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Aggregate<TS;>;)V"
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->combop:Lscala/Function2;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Aggregate;->result()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$Aggregate;->result()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Aggregate;->result_$eq(Ljava/lang/Object;)V

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

    .line 1005
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 1005
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Aggregate;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Aggregate;

    move-result-object p1

    return-object p1
.end method

.method public newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Aggregate;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Aggregate<TS;>;"
        }
    .end annotation

    .line 1009
    new-instance v6, Lscala/collection/parallel/ParIterableLike$Aggregate;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Aggregate;->scala$collection$parallel$ParIterableLike$Aggregate$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->z:Lscala/Function0;

    iget-object v3, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->seqop:Lscala/Function2;

    iget-object v4, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->combop:Lscala/Function2;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lscala/collection/parallel/ParIterableLike$Aggregate;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Function2;Lscala/Function2;Lscala/collection/parallel/IterableSplitter;)V

    return-object v6
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

    .line 1005
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->pit:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1005
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 1005
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->requiresStrictSplitters(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Z

    move-result v0

    return v0
.end method

.method public result()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public result_$eq(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1007
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->result:Ljava/lang/Object;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Aggregate;->scala$collection$parallel$ParIterableLike$Aggregate$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 1005
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Aggregate$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1005
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Aggregate;->scala$collection$parallel$ParIterableLike$Aggregate$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 1005
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 1005
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
            "TS;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Aggregate<TS;>;>;>;"
        }
    .end annotation

    .line 1005
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->split(Lscala/collection/parallel/ParIterableLike$Accessor;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 1005
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 1005
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Aggregate;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1005
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
            "TS;>;)V"
        }
    .end annotation

    .line 1005
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 1005
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
