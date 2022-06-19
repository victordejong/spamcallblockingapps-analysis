.class public Lscala/collection/parallel/ParIterableLike$CreateScanTree;
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
    name = "CreateScanTree"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.Transformer<",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.ScanTree<TU;>;",
        "Lscala/collection/parallel/ParIterableLike<",
        "TT;TRepr;TSequential;>.CreateScanTree<TU;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParIterableLike;

.field private final from:I

.field private final len:I

.field private final pit:Lscala/collection/parallel/IterableSplitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Lscala/collection/parallel/ParIterableLike$ScanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParIterableLike$CreateScanTree$$op:Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function2<",
            "TU;TU;TU;>;"
        }
    .end annotation
.end field

.field public final scala$collection$parallel$ParIterableLike$CreateScanTree$$z:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParIterableLike;IILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/IterableSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>;IITU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1358
    iput p2, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->from:I

    iput p3, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->len:I

    iput-object p4, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$z:Ljava/lang/Object;

    iput-object p5, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$op:Lscala/Function2;

    iput-object p6, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->pit:Lscala/collection/parallel/IterableSplitter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->$outer:Lscala/collection/parallel/ParIterableLike;

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask$class;->$init$(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->$init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    const/4 p1, 0x0

    .line 1360
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result:Lscala/collection/parallel/ParIterableLike$ScanTree;

    return-void
.end method

.method private mergeTrees(Lscala/collection/mutable/ArrayBuffer;II)Lscala/collection/parallel/ParIterableLike$ScanTree;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;>;II)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-le p3, v0, :cond_0

    .line 1379
    div-int/lit8 v0, p3, 0x2

    .line 1380
    new-instance v1, Lscala/collection/parallel/ParIterableLike$ScanNode;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v2

    invoke-direct {p0, p1, p2, v0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->mergeTrees(Lscala/collection/mutable/ArrayBuffer;II)Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v3

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-direct {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->mergeTrees(Lscala/collection/mutable/ArrayBuffer;II)Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    goto :goto_0

    .line 1381
    :cond_0
    invoke-virtual {p1, p2}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lscala/collection/parallel/ParIterableLike$ScanTree;

    :goto_0
    return-object v1
.end method

.method private scanBlock(II)Lscala/collection/parallel/ParIterableLike$ScanTree;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation

    .line 1375
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->dup()Lscala/collection/parallel/IterableSplitter;

    move-result-object v3

    .line 1376
    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v2

    iget-object v4, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$op:Lscala/Function2;

    sget-object v7, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    iget-object v5, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$op:Lscala/Function2;

    invoke-interface {v1, p2, v5}, Lscala/collection/parallel/IterableSplitter;->reduceLeft(ILscala/Function2;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v8}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/IterableSplitter;Lscala/Function2;IILscala/Option;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 1358
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;>;)V"
        }
    .end annotation

    .line 1361
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object p1

    invoke-interface {p1}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result p1

    if-lez p1, :cond_1

    .line 1362
    sget-object p1, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p1, v0}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/mutable/ArrayBuffer;

    .line 1363
    iget v0, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->from:I

    .line 1364
    iget v1, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->len:I

    add-int/2addr v1, v0

    .line 1365
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/parallel/ParIterableLike;->scanBlockSize()I

    move-result v2

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1367
    sget-object v3, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v4

    invoke-interface {v4}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lscala/math/package$;->min(II)I

    move-result v3

    invoke-direct {p0, v0, v3}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scanBlock(II)Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v3

    invoke-virtual {p1, v3}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1372
    invoke-virtual {p1}, Lscala/collection/mutable/ArrayBuffer;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->mergeTrees(Lscala/collection/mutable/ArrayBuffer;II)Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result_$eq(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1373
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result_$eq(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 1358
    check-cast p1, Lscala/collection/parallel/ParIterableLike$CreateScanTree;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->merge(Lscala/collection/parallel/ParIterableLike$CreateScanTree;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/ParIterableLike$CreateScanTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.CreateScanTree<TU;>;)V"
        }
    .end annotation

    .line 1389
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1391
    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result_$eq(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    goto :goto_0

    .line 1390
    :cond_0
    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanNode;

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v2

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;-><init>(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$ScanTree;Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    invoke-virtual {p0, v0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result_$eq(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    :cond_1
    :goto_0
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

    .line 1358
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public bridge synthetic newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/ParIterableLike$Accessor;
    .locals 0

    .line 1358
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->newSubtask(Lscala/collection/parallel/IterableSplitter;)Lscala/runtime/Nothing$;

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

    .line 1382
    sget-object p1, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-virtual {p1}, Lscala/collection/parallel/package$;->unsupported()Lscala/runtime/Nothing$;

    move-result-object p1

    return-object p1
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

    .line 1358
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->pit:Lscala/collection/parallel/IterableSplitter;

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 1358
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

    .line 1358
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/parallel/ParIterableLike$ScanTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;"
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result:Lscala/collection/parallel/ParIterableLike$ScanTree;

    return-object v0
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 1358
    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanTree;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result_$eq(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    return-void
.end method

.method public result_$eq(Lscala/collection/parallel/ParIterableLike$ScanTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;)V"
        }
    .end annotation

    .line 1360
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->result:Lscala/collection/parallel/ParIterableLike$ScanTree;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;
    .locals 1

    .line 1358
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$CreateScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 1358
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->$outer:Lscala/collection/parallel/ParIterableLike;

    return-object v0
.end method

.method public synthetic scala$collection$parallel$ParIterableLike$StrictSplitterCheckTask$$$outer()Lscala/collection/parallel/ParIterableLike;
    .locals 1

    .line 886
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->scala$collection$parallel$ParIterableLike$CreateScanTree$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v0

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 1358
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$Accessor$class;->shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z

    move-result v0

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 1358
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
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.CreateScanTree<TU;>;>;>;"
        }
    .end annotation

    .line 1384
    invoke-virtual {p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->splitWithSignalling()Lscala/collection/Seq;

    move-result-object v0

    .line 1385
    iget v1, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->from:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lscala/collection/parallel/ParIterableLike$CreateScanTree$$anonfun$split$25;

    invoke-direct {v2, p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree$$anonfun$split$25;-><init>(Lscala/collection/parallel/ParIterableLike$CreateScanTree;)V

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lscala/collection/Seq;->scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/GenIterable;

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/parallel/ParIterableLike$CreateScanTree$$anonfun$split$26;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree$$anonfun$split$26;-><init>(Lscala/collection/parallel/ParIterableLike$CreateScanTree;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->withFilter(Lscala/Function1;)Lscala/collection/generic/FilterMonadic;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$CreateScanTree$$anonfun$split$27;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$CreateScanTree$$anonfun$split$27;-><init>(Lscala/collection/parallel/ParIterableLike$CreateScanTree;)V

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

    .line 1358
    iget-object v0, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0

    .line 1358
    iput-object p1, p0, Lscala/collection/parallel/ParIterableLike$CreateScanTree;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1358
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
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;TRepr;TSequential;>.ScanTree<TU;>;>;)V"
        }
    .end annotation

    .line 1358
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 1358
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
