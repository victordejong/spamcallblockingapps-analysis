.class public Lscala/collection/parallel/ParIterableLike$Min;
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
    name = "Min"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Accessor<",
        "Lscala/Option<",
        "TU;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Min<TU;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final ord:Lscala/math/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/math/Ordering<",
            "TU;>;"
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

.field private volatile result:Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;Lscala/collection/parallel/IterableSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/math/Ordering<",
            "TU;>;",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1029
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$Min;->ord:Lscala/math/Ordering;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$Min;->pit:Lscala/collection/parallel/IterableSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Min;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    .line 1031
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Min;->result:Lscala/Option;

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 1029
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/Option<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lscala/Some;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$Min;->ord:Lscala/math/Ordering;

    invoke-interface {v0, v1}, Lscala/collection/parallel/IterableSplitter;->min(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Min;->result_$eq(Lscala/Option;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 1029
    check-cast p1, Lscala/collection/parallel/ParIterableLike$Min;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Min;->merge(Lscala/collection/parallel/ParIterableLike$Min;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParIterableLike$Min;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Min<TU;>;)V"
        }
    .end annotation

    .line 1035
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->result()Lscala/Option;

    move-result-object v0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$Min;->result()Lscala/Option;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Min;->result_$eq(Lscala/Option;)V

    goto :goto_3

    .line 1036
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$Min;->result()Lscala/Option;

    move-result-object v0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_1
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Min;->ord:Lscala/math/Ordering;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->result()Lscala/Option;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$Min;->result()Lscala/Option;

    move-result-object v2

    invoke-virtual {v2}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/math/Ordering;->lteq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->result()Lscala/Option;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$Min;->result()Lscala/Option;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Min;->result_$eq(Lscala/Option;)V

    :cond_4
    :goto_3
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

    .line 1029
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 1029
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Min;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Min;

    move-result-object p1

    return-object p1
.end method

.method public newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Min;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Min<TU;>;"
        }
    .end annotation

    .line 1033
    new-instance v0, Lscala/collection/parallel/ParIterableLike$Min;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->scala$collection$parallel$ParIterableLike$Min$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$Min;->ord:Lscala/math/Ordering;

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/parallel/ParIterableLike$Min;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;Lscala/collection/parallel/IterableSplitter;)V

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

    .line 1029
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Min;->pit:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1029
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

    .line 1029
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->result()Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 1031
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Min;->result:Lscala/Option;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 1029
    check-cast p1, Lscala/Option;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$Min;->result_$eq(Lscala/Option;)V

    return-void
.end method

.method public result_$eq(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "TU;>;)V"
        }
    .end annotation

    .line 1031
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Min;->result:Lscala/Option;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->scala$collection$parallel$ParIterableLike$Min$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 1029
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Min$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1029
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Min;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$Min;->scala$collection$parallel$ParIterableLike$Min$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 1029
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 1029
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
            "Lscala/Option<",
            "TU;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.Min<TU;>;>;>;"
        }
    .end annotation

    .line 1029
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->split(Lscala/collection/parallel/ParIterableLike$Accessor;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 1029
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$Min;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 1029
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$Min;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1029
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
            "Lscala/Option<",
            "TU;>;>;)V"
        }
    .end annotation

    .line 1029
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 1029
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
