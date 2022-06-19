.class public Lscala/collection/parallel/mutable/ParTrieMap$Size;
.super Ljava/lang/Object;
.source "ParTrieMap.scala"

# interfaces
.implements Lscala/collection/parallel/Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/Task<",
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/mutable/ParTrieMap<",
        "TK;TV;>.Size;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/mutable/ParTrieMap;

.field private final array:[Lscala/collection/concurrent/BasicNode;

.field private final howmany:I

.field private final offset:I

.field private result:I

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParTrieMap;II[Lscala/collection/concurrent/BasicNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>;II[",
            "Lscala/collection/concurrent/BasicNode;",
            ")V"
        }
    .end annotation

    .line 94
    iput p2, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->offset:I

    iput p3, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->howmany:I

    iput-object p4, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->array:[Lscala/collection/concurrent/BasicNode;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->$outer:Lscala/collection/parallel/mutable/ParTrieMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/parallel/Task$class;->$init$(Lscala/collection/parallel/Task;)V

    const/4 p1, -0x1

    .line 95
    iput p1, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result:I

    return-void
.end method


# virtual methods
.method public forwardThrowable()V
    .locals 0

    .line 94
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->forwardThrowable(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public leaf(Lscala/Option;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget p1, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->offset:I

    .line 99
    iget v0, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->howmany:I

    add-int/2addr v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 101
    iget-object v2, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->array:[Lscala/collection/concurrent/BasicNode;

    aget-object v2, v2, p1

    .line 102
    instance-of v3, v2, Lscala/collection/concurrent/SNode;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 103
    :cond_0
    instance-of v3, v2, Lscala/collection/concurrent/INode;

    if-eqz v3, :cond_1

    check-cast v2, Lscala/collection/concurrent/INode;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->scala$collection$parallel$mutable$ParTrieMap$Size$$$outer()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/parallel/mutable/ParTrieMap;->scala$collection$parallel$mutable$ParTrieMap$$ctrie()Lscala/collection/concurrent/TrieMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/concurrent/INode;->cachedSize(Lscala/collection/concurrent/TrieMap;)I

    move-result v2

    add-int/2addr v1, v2

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 107
    :cond_2
    invoke-virtual {p0, v1}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result_$eq(I)V

    return-void
.end method

.method public bridge synthetic merge(Ljava/lang/Object;)V
    .locals 0

    .line 94
    check-cast p1, Lscala/collection/parallel/mutable/ParTrieMap$Size;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->merge(Lscala/collection/parallel/mutable/ParTrieMap$Size;)V

    return-void
.end method

.method public merge(Lscala/collection/parallel/mutable/ParTrieMap$Size;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>.Size;)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result_$eq(I)V

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

    .line 94
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->mergeThrowables(Lscala/collection/parallel/Task;Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->repr(Lscala/collection/parallel/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public result()I
    .locals 1

    .line 95
    iget v0, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result:I

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public result_$eq(I)V
    .locals 0

    .line 95
    iput p1, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result:I

    return-void
.end method

.method public bridge synthetic result_$eq(Ljava/lang/Object;)V
    .locals 0

    .line 94
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->result_$eq(I)V

    return-void
.end method

.method public synthetic scala$collection$parallel$mutable$ParTrieMap$Size$$$outer()Lscala/collection/parallel/mutable/ParTrieMap;
    .locals 1

    .line 94
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->$outer:Lscala/collection/parallel/mutable/ParTrieMap;

    return-object v0
.end method

.method public shouldSplitFurther()Z
    .locals 2

    .line 113
    iget v0, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->howmany:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public signalAbort()V
    .locals 0

    .line 94
    invoke-static {p0}, Lscala/collection/parallel/Task$class;->signalAbort(Lscala/collection/parallel/Task;)V

    return-void
.end method

.method public split()Lscala/collection/Seq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/mutable/ParTrieMap<",
            "TK;TV;>.Size;>;"
        }
    .end annotation

    .line 110
    iget v0, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->howmany:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 111
    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [Lscala/collection/parallel/mutable/ParTrieMap$Size;

    new-instance v4, Lscala/collection/parallel/mutable/ParTrieMap$Size;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->scala$collection$parallel$mutable$ParTrieMap$Size$$$outer()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v5

    iget v6, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->offset:I

    iget-object v7, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->array:[Lscala/collection/concurrent/BasicNode;

    invoke-direct {v4, v5, v6, v0, v7}, Lscala/collection/parallel/mutable/ParTrieMap$Size;-><init>(Lscala/collection/parallel/mutable/ParTrieMap;II[Lscala/collection/concurrent/BasicNode;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    new-instance v4, Lscala/collection/parallel/mutable/ParTrieMap$Size;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParTrieMap$Size;->scala$collection$parallel$mutable$ParTrieMap$Size$$$outer()Lscala/collection/parallel/mutable/ParTrieMap;

    move-result-object v5

    iget v6, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->offset:I

    add-int/2addr v6, v0

    iget v7, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->howmany:I

    sub-int/2addr v7, v0

    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->array:[Lscala/collection/concurrent/BasicNode;

    invoke-direct {v4, v5, v6, v7, v0}, Lscala/collection/parallel/mutable/ParTrieMap$Size;-><init>(Lscala/collection/parallel/mutable/ParTrieMap;II[Lscala/collection/concurrent/BasicNode;)V

    const/4 v0, 0x1

    aput-object v4, v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    return-object v0
.end method

.method public throwable()Ljava/lang/Throwable;
    .locals 1

    .line 94
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public throwable_$eq(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 94
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParTrieMap$Size;->throwable:Ljava/lang/Throwable;

    return-void
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

    .line 94
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryLeaf(Lscala/collection/parallel/Task;Lscala/Option;)V

    return-void
.end method

.method public tryMerge(Ljava/lang/Object;)V
    .locals 0

    .line 94
    invoke-static {p0, p1}, Lscala/collection/parallel/Task$class;->tryMerge(Lscala/collection/parallel/Task;Ljava/lang/Object;)V

    return-void
.end method
