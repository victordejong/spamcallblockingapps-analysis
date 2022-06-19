.class public Lscala/collection/parallel/ParIterableLike$FromScanTree;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParIterableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FromScanTree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "That:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.StrictSplitterCheckTask<",
        "Lscala/collection/parallel/Combiner<",
        "TU;TThat;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.FromScanTree<TU;TThat;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final cbf:Lscala/collection/parallel/CombinerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/CombinerFactory<",
            "TU;TThat;>;"
        }
    .end annotation
.end field

.field private final op:Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function2<",
            "TU;TU;TU;>;"
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

.field private volatile throwable:Ljava/lang/Throwable;

.field private final tree:Lscala/collection/parallel/ParIterableLike$ScanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation
.end field

.field private final z:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/CombinerFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/parallel/CombinerFactory<",
            "TU;TThat;>;)V"
        }
    .end annotation

    .line 1396
    iput-object p2, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->tree:Lscala/collection/parallel/ParIterableLike$ScanTree;

    iput-object p3, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->z:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->op:Lscala/Function2;

    iput-object p5, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->cbf:Lscala/collection/parallel/CombinerFactory;

    .line 1395
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    const/4 p1, 0x0

    .line 1398
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method

.method private iterate(Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/Combiner;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)V"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1404
    instance-of v2, p1, Lscala/collection/parallel/ParIterableLike$ScanNode;

    if-eqz v2, :cond_0

    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanNode;

    .line 1406
    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->iterate(Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/Combiner;)V

    .line 1407
    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    goto :goto_0

    .line 1408
    :cond_0
    instance-of v2, p1, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    move-object v1, p1

    check-cast v1, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object v2

    instance-of v2, v2, Lscala/Some;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object p1

    check-cast p1, Lscala/Some;

    .line 1409
    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v1

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->op:Lscala/Function2;

    invoke-interface {v0, v1, p1, v2, p2}, Lscala/collection/parallel/IterableSplitter;->scanToCombiner(ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 1410
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1411
    iget-object p1, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->z:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lscala/collection/parallel/Combiner;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 1412
    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v0

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->z:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->op:Lscala/Function2;

    invoke-interface {p1, v0, v1, v2, p2}, Lscala/collection/parallel/IterableSplitter;->scanToCombiner(ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 1410
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_2
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 1395
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
            "TU;TThat;>;>;)V"
        }
    .end annotation

    .line 1400
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->scala$collection$parallel$ParIterableLike$FromScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->cbf:Lscala/collection/parallel/CombinerFactory;

    invoke-interface {v1}, Lscala/collection/parallel/CombinerFactory;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/collection/parallel/ParIterableLike;->reuse(Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    .line 1401
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->tree:Lscala/collection/parallel/ParIterableLike$ScanTree;

    invoke-direct {p0, v0, p1}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->iterate(Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/Combiner;)V

    .line 1402
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result_$eq(Lscala/collection/parallel/Combiner;)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 1395
    check-cast p1, Lscala/collection/parallel/ParIterableLike$FromScanTree;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->merge(Lscala/collection/parallel/ParIterableLike$FromScanTree;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParIterableLike$FromScanTree;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.FromScanTree<TU;TThat;>;)V"
        }
    .end annotation

    .line 1425
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result()Lscala/collection/parallel/Combiner;

    move-result-object v0

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result()Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-interface {v0, p1}, Lscala/collection/parallel/Combiner;->combine(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 1395
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1395
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public requiresStrictSplitters()Z
    .locals 1

    .line 1395
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->requiresStrictSplitters(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 1395
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result()Lscala/collection/parallel/Combiner;

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

    .line 1398
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result:Lscala/collection/parallel/Combiner;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 1395
    check-cast p1, Lscala/collection/parallel/Combiner;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result_$eq(Lscala/collection/parallel/Combiner;)V

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

    .line 1398
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->result:Lscala/collection/parallel/Combiner;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$FromScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1395
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->scala$collection$parallel$ParIterableLike$FromScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 2

    .line 1421
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->tree:Lscala/collection/parallel/ParIterableLike$ScanTree;

    .line 1422
    instance-of v1, v0, Lscala/collection/parallel/ParIterableLike$ScanNode;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1423
    :cond_0
    instance-of v1, v0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1421
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public signalAbort()V
    .locals 0

    .line 1395
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public split()Lscala/collection/Seq;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/Task<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.FromScanTree<TU;TThat;>;>;>;"
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->tree:Lscala/collection/parallel/ParIterableLike$ScanTree;

    .line 1415
    instance-of v1, v0, Lscala/collection/parallel/ParIterableLike$ScanNode;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/parallel/ParIterableLike$ScanNode;

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x2

    new-array v3, v3, [Lscala/collection/parallel/ParIterableLike$FromScanTree;

    const/4 v4, 0x0

    .line 1416
    new-instance v11, Lscala/collection/parallel/ParIterableLike$FromScanTree;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->scala$collection$parallel$ParIterableLike$FromScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v6

    invoke-virtual {v0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v7

    iget-object v8, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->z:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->op:Lscala/Function2;

    iget-object v10, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->cbf:Lscala/collection/parallel/CombinerFactory;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lscala/collection/parallel/ParIterableLike$FromScanTree;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/CombinerFactory;)V

    aput-object v11, v3, v4

    const/4 v4, 0x1

    .line 1417
    new-instance v11, Lscala/collection/parallel/ParIterableLike$FromScanTree;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$FromScanTree;->scala$collection$parallel$ParIterableLike$FromScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v6

    invoke-virtual {v0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v7

    iget-object v8, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->z:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->op:Lscala/Function2;

    iget-object v10, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->cbf:Lscala/collection/parallel/CombinerFactory;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lscala/collection/parallel/ParIterableLike$FromScanTree;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/CombinerFactory;)V

    aput-object v11, v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 1415
    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0

    .line 1419
    :cond_0
    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    const-string v1, "Cannot be split further"

    invoke-virtual {v0, v1}, Lscala/collection/parallel/package$;->unsupportedop(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 1395
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 1395
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$FromScanTree;->throwable:Ljava/lang/Throwable;

    return-void
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

    .line 1395
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 1395
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
