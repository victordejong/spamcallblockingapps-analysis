.class public Lscala/collection/parallel/mutable/ParArray$ScanToArray;
.super Ljava/lang/Object;
.source "ParArray.scala"

# interfaces
.implements Lscala/collection/parallel/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScanToArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/collection/parallel/mutable/ParArray<",
        "TT;>.ScanToArray<TU;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParArray;

.field private final op:Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function2<",
            "TU;TU;TU;>;"
        }
    .end annotation
.end field

.field private result:Lscala/runtime/BoxedUnit;

.field private final targetarr:[Ljava/lang/Object;

.field private volatile throwable:Ljava/lang/Throwable;

.field private final tree:Lscala/collection/parallel/ParIterableLike$ScanTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;",
            "Lscala/collection/mutable/ArraySeq<",
            "TT;>;>.ScanTree<TU;>;"
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
.method public constructor <init>(Lscala/collection/parallel/mutable/ParArray;Lscala/collection/parallel/ParIterableLike$ScanTree;Ljava/lang/Object;Lscala/Function2;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;",
            "Lscala/collection/mutable/ArraySeq<",
            "TT;>;>.ScanTree<TU;>;TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 610
    iput-object p2, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->tree:Lscala/collection/parallel/ParIterableLike$ScanTree;

    iput-object p3, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->z:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->op:Lscala/Function2;

    iput-object p5, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->targetarr:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->$outer:Lscala/collection/parallel/mutable/ParArray;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    .line 612
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private iterate(Lscala/collection/parallel/ParIterableLike$ScanTree;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TT;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>;",
            "Lscala/collection/mutable/ArraySeq<",
            "TT;>;>.ScanTree<TU;>;)V"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 615
    instance-of v2, p1, Lscala/collection/parallel/ParIterableLike$ScanNode;

    if-eqz v2, :cond_0

    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanNode;

    .line 617
    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->iterate(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    .line 618
    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object p1

    goto :goto_0

    .line 619
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

    .line 620
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray;->scala$collection$parallel$mutable$ParArray$$array()[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->targetarr:[Ljava/lang/Object;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result v5

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v6

    invoke-virtual {p1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/parallel/ParIterableLike$ScanLeaf;

    invoke-virtual {p1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->acc()Ljava/lang/Object;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->scanLeaf([Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 621
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->prev()Lscala/Option;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParArray;->scala$collection$parallel$mutable$ParArray$$array()[Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->targetarr:[Ljava/lang/Object;

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->from()I

    move-result v5

    invoke-virtual {v1}, Lscala/collection/parallel/ParIterableLike$ScanLeaf;->len()I

    move-result v6

    iget-object v7, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->z:Ljava/lang/Object;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->scanLeaf([Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 615
    :goto_1
    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    :cond_2
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private scanLeaf([Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "IITU;)V"
        }
    .end annotation

    add-int/2addr p4, p3

    .line 628
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->op:Lscala/Function2;

    :goto_0
    if-ge p3, p4, :cond_0

    .line 630
    aget-object v1, p1, p3

    invoke-interface {v0, p5, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p3, p3, 0x1

    .line 632
    aput-object p5, p2, p3

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 610
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 614
    iget-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->tree:Lscala/collection/parallel/ParIterableLike$ScanTree;

    invoke-direct {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->iterate(Lscala/collection/parallel/ParIterableLike$ScanTree;)V

    return-void
.end method

.method public merge(Ljava/lang/Object;)V
    .locals 0

    .line 610
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->merge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

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

    .line 610
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 610
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 610
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->result()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public result()V
    .locals 0

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 610
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->result_$eq(Lscala/runtime/BoxedUnit;)V

    return-void
.end method

.method public result_$eq(Lscala/runtime/BoxedUnit;)V
    .locals 0

    .line 612
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->result:Lscala/runtime/BoxedUnit;

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer()Lscala/collection/parallel/mutable/ParArray;
    .locals 1

    .line 610
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->$outer:Lscala/collection/parallel/mutable/ParArray;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 1

    .line 642
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->tree:Lscala/collection/parallel/ParIterableLike$ScanTree;

    .line 643
    instance-of v0, v0, Lscala/collection/parallel/ParIterableLike$ScanNode;

    return v0
.end method

.method public signalAbort()V
    .locals 0

    .line 610
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
            "Lscala/runtime/BoxedUnit;",
            "Lscala/collection/parallel/mutable/ParArray<",
            "TT;>.ScanToArray<TU;>;>;>;"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->tree:Lscala/collection/parallel/ParIterableLike$ScanTree;

    .line 636
    instance-of v1, v0, Lscala/collection/parallel/ParIterableLike$ScanNode;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/collection/parallel/ParIterableLike$ScanNode;

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x2

    new-array v3, v3, [Lscala/collection/parallel/mutable/ParArray$ScanToArray;

    const/4 v4, 0x0

    .line 637
    new-instance v11, Lscala/collection/parallel/mutable/ParArray$ScanToArray;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v6

    invoke-virtual {v0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->left()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v7

    iget-object v8, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->z:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->op:Lscala/Function2;

    iget-object v10, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->targetarr:[Ljava/lang/Object;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;-><init>(Lscala/collection/parallel/mutable/ParArray;Lscala/collection/parallel/ParIterableLike$ScanTree;Ljava/lang/Object;Lscala/Function2;[Ljava/lang/Object;)V

    aput-object v11, v3, v4

    const/4 v4, 0x1

    .line 638
    new-instance v11, Lscala/collection/parallel/mutable/ParArray$ScanToArray;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->scala$collection$parallel$mutable$ParArray$ScanToArray$$$outer()Lscala/collection/parallel/mutable/ParArray;

    move-result-object v6

    invoke-virtual {v0}, Lscala/collection/parallel/ParIterableLike$ScanNode;->right()Lscala/collection/parallel/ParIterableLike$ScanTree;

    move-result-object v7

    iget-object v8, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->z:Ljava/lang/Object;

    iget-object v9, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->op:Lscala/Function2;

    iget-object v10, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->targetarr:[Ljava/lang/Object;

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lscala/collection/parallel/mutable/ParArray$ScanToArray;-><init>(Lscala/collection/parallel/mutable/ParArray;Lscala/collection/parallel/ParIterableLike$ScanTree;Ljava/lang/Object;Lscala/Function2;[Ljava/lang/Object;)V

    aput-object v11, v3, v4

    check-cast v3, [Ljava/lang/Object;

    .line 636
    invoke-virtual {v2, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0

    .line 640
    :cond_0
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v1, "Can only split scan tree internal nodes."

    invoke-virtual {v0, v1}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 610
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 610
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParArray$ScanToArray;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public tryLeaf(Lscala/Option;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .line 610
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 610
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
