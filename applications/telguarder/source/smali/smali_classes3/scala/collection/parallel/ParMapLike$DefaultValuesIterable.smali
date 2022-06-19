.class public Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;
.super Ljava/lang/Object;
.source "ParMapLike.scala"

# interfaces
.implements Lscala/collection/parallel/ParIterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/ParMapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultValuesIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/collection/parallel/ParIterable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/ParMapLike;

.field private volatile ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike$ScanLeaf$;"
        }
    .end annotation
.end field

.field private volatile ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/ParIterableLike$ScanNode$;"
        }
    .end annotation
.end field

.field private volatile transient scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParMapLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParMapLike<",
            "TK;TV;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->$outer:Lscala/collection/parallel/ParMapLike;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/GenIterable$class;->$init$(Lscala/collection/GenIterable;)V

    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->$init$(Lscala/collection/generic/GenericParTemplate;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->$init$(Lscala/collection/parallel/ParIterableLike;)V

    invoke-static {p0}, Lscala/collection/parallel/ParIterable$class;->$init$(Lscala/collection/parallel/ParIterable;)V

    return-void
.end method

.method private ScanLeaf$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike$ScanLeaf$;"
        }
    .end annotation

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanLeaf$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ScanNode$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanNode$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike$ScanNode$;"
        }
    .end annotation

    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/parallel/ParIterableLike$ScanNode$;

    invoke-direct {v0, p0}, Lscala/collection/parallel/ParIterableLike$ScanNode$;-><init>(Lscala/collection/parallel/ParIterableLike;)V

    iput-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public $colon$bslash(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TV;TS;TS;>;)TS;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$colon$bslash(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TS;TV;TS;>;)TS;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$div$colon(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "TU;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->$plus$plus(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public ScanLeaf()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike$ScanLeaf$;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanLeaf$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanLeaf$module:Lscala/collection/parallel/ParIterableLike$ScanLeaf$;

    :goto_0
    return-object v0
.end method

.method public ScanNode()Lscala/collection/parallel/ParIterableLike$ScanNode$;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterableLike$ScanNode$;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanNode$lzycompute()Lscala/collection/parallel/ParIterableLike$ScanNode$;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->ScanNode$module:Lscala/collection/parallel/ParIterableLike$ScanNode$;

    :goto_0
    return-object v0
.end method

.method public aggregate(Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TS;>;",
            "Lscala/Function2<",
            "TS;TV;TS;>;",
            "Lscala/Function2<",
            "TS;TS;TS;>;)TS;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->aggregate(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Function2;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bf2seq(Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;TS;TThat;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->bf2seq(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/generic/CanBuildFrom;

    move-result-object p1

    return-object p1
.end method

.method public brokenInvariants()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->brokenInvariants(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public builder2ops(Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Elem:",
            "Ljava/lang/Object;",
            "To:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Builder<",
            "TElem;TTo;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->builder2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/mutable/Builder;)Lscala/collection/parallel/ParIterableLike$BuilderOps;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->canEqual(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public collect(Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TV;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->collect(Lscala/collection/parallel/ParIterableLike;Lscala/PartialFunction;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public combinerFactory()Lscala/collection/parallel/CombinerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->combinerFactory(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/CombinerFactory;

    move-result-object v0

    return-object v0
.end method

.method public combinerFactory(Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->combinerFactory(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Lscala/collection/parallel/CombinerFactory;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/ParIterable;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterable$class;->companion(Lscala/collection/parallel/ParIterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public copyToArray(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;I)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->copyToArray(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->count(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public debugBuffer()Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugBuffer(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugInformation(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public debugclear()V
    .locals 0

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->debugclear(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public debuglog(Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/mutable/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->debuglog(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method public delegatedSignalling2ops(Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PI::",
            "Lscala/collection/generic/DelegatedSignalling;",
            ">(TPI;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->delegatedSignalling2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/DelegatedSignalling;)Lscala/collection/parallel/ParIterableLike$SignallingOps;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->drop(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public drop(I)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->drop(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->dropWhile(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public exists(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->exists(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->filter(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->filterNot(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public find(Lscala/Function1;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->find(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public flatMap(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->flatMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public flatten(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->flatten(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public fold(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->fold(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TS;TV;TS;>;)TS;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->foldLeft(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TV;TS;TS;>;)TS;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->foldRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forall(Lscala/Function1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->forall(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public foreach(Lscala/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TS;>;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->scala$collection$parallel$ParMapLike$DefaultValuesIterable$$$outer()Lscala/collection/parallel/ParMapLike;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable$$anonfun$foreach$3;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable$$anonfun$foreach$3;-><init>(Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParMapLike;->withFilter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable$$anonfun$foreach$4;

    invoke-direct {v1, p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable$$anonfun$foreach$4;-><init>(Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;Lscala/Function1;)V

    invoke-interface {v0, v1}, Lscala/collection/parallel/ParIterable;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public bridge synthetic genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->genericBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public genericBuilder()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TB;",
            "Lscala/collection/parallel/ParIterable<",
            "TB;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->genericBuilder(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public genericCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/Combiner<",
            "TB;",
            "Lscala/collection/parallel/ParIterable<",
            "TB;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->genericCombiner(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TK;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->groupBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public hasDefiniteSize()Z
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->hasDefiniteSize(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->head(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->headOption(Lscala/collection/parallel/ParIterableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->init()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public init()Lscala/collection/parallel/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->init(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public initTaskSupport()V
    .locals 0

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->initTaskSupport(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isEmpty(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public isStrictSplitterCollection()Z
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isStrictSplitterCollection(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->isTraversableAgain(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->iterator()Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lscala/collection/parallel/Splitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Splitter<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->iterator(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->last(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lastOption()Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->lastOption(Lscala/collection/parallel/ParIterableLike;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->map(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public max(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TU;>;)TV;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->max(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public maxBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TS;>;",
            "Lscala/math/Ordering<",
            "TS;>;)TV;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->maxBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public min(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering<",
            "TU;>;)TV;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->min(Lscala/collection/parallel/ParIterableLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public minBy(Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;TS;>;",
            "Lscala/math/Ordering<",
            "TS;>;)TV;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->minBy(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 106
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->mkString(Lscala/collection/parallel/ParIterableLike;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "TV;",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->newBuilder(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TV;",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/generic/GenericParTemplate$class;->newCombiner(Lscala/collection/generic/GenericParTemplate;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->nonEmpty(Lscala/collection/parallel/ParIterableLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->par()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public par()Lscala/collection/parallel/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->par(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TV;",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public partition(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->partition(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public printDebugBuffer()V
    .locals 0

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->printDebugBuffer(Lscala/collection/parallel/ParIterableLike;)V

    return-void
.end method

.method public product(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->product(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduce(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduce(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TV;TU;>;)TU;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceLeft(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TV;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceLeftOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TU;TU;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public reduceRight(Lscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TV;TU;TU;>;)TU;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceRight(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceRightOption(Lscala/Function2;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TV;TU;TU;>;)",
            "Lscala/Option<",
            "TU;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->reduceRightOption(Lscala/collection/parallel/ParIterableLike;Lscala/Function2;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public repr()Lscala/collection/parallel/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->repr(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public reuse(Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Option<",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->reuse(Lscala/collection/parallel/ParIterableLike;Lscala/Option;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TU;>;)Z"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sameElements(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;)Z

    move-result p1

    return p1
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 106
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-object v0
.end method

.method public scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 106
    iput-object p1, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->scala$collection$parallel$ParIterableLike$$_tasksupport:Lscala/collection/parallel/TaskSupport;

    return-void
.end method

.method public synthetic scala$collection$parallel$ParMapLike$DefaultValuesIterable$$$outer()Lscala/collection/parallel/ParMapLike;
    .locals 1

    .line 106
    iget-object v0, p0, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->$outer:Lscala/collection/parallel/ParMapLike;

    return-object v0
.end method

.method public scan(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;TU;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scan(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanBlockSize()I
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->scanBlockSize(Lscala/collection/parallel/ParIterableLike;)I

    move-result v0

    return v0
.end method

.method public scanLeft(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TS;TV;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scanLeft(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public scanRight(Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TS;",
            "Lscala/Function2<",
            "TV;TS;TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;TS;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/ParIterableLike$class;->scanRight(Lscala/collection/parallel/ParIterableLike;Ljava/lang/Object;Lscala/Function2;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public seq()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TV;>;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->scala$collection$parallel$ParMapLike$DefaultValuesIterable$$$outer()Lscala/collection/parallel/ParMapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParMapLike;->seq()Lscala/collection/Iterable;

    move-result-object v0

    check-cast v0, Lscala/collection/MapLike;

    invoke-interface {v0}, Lscala/collection/MapLike;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->seq()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->seq()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public sequentially(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That::",
            "Lscala/collection/Parallel;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/Iterable<",
            "TV;>;",
            "Lscala/collection/Parallelizable<",
            "TS;TThat;>;>;)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sequentially(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 108
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->scala$collection$parallel$ParMapLike$DefaultValuesIterable$$$outer()Lscala/collection/parallel/ParMapLike;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/ParMapLike;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->slice(II)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->slice(Lscala/collection/parallel/ParIterableLike;II)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public span(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->span(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitAt(I)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->splitAt(Lscala/collection/parallel/ParIterableLike;I)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitter()Lscala/collection/parallel/IterableSplitter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/IterableSplitter<",
            "TV;>;"
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->scala$collection$parallel$ParMapLike$DefaultValuesIterable$$$outer()Lscala/collection/parallel/ParMapLike;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->scala$collection$parallel$ParMapLike$DefaultValuesIterable$$$outer()Lscala/collection/parallel/ParMapLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/ParMapLike;->splitter()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    invoke-static {v0, v1}, Lscala/collection/parallel/ParMapLike$class;->scala$collection$parallel$ParMapLike$$valuesIterator(Lscala/collection/parallel/ParMapLike;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterable$class;->stringPrefix(Lscala/collection/parallel/ParIterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->sum(Lscala/collection/parallel/ParIterableLike;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->tail()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/parallel/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->tail(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->take(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->take(Lscala/collection/parallel/ParIterableLike;I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->takeWhile(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public task2ops(Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "Tp:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterableLike<",
            "TV;",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;",
            "Lscala/collection/Iterable<",
            "TV;>;>.StrictSplitterCheckTask<TR;TTp;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->task2ops(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/ParIterableLike$StrictSplitterCheckTask;)Lscala/collection/parallel/ParIterableLike$TaskOps;

    move-result-object p1

    return-object p1
.end method

.method public tasksupport()Lscala/collection/parallel/TaskSupport;
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->tasksupport(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/TaskSupport;

    move-result-object v0

    return-object v0
.end method

.method public tasksupport_$eq(Lscala/collection/parallel/TaskSupport;)V
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->tasksupport_$eq(Lscala/collection/parallel/ParIterableLike;Lscala/collection/parallel/TaskSupport;)V

    return-void
.end method

.method public to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/runtime/Nothing$;",
            "TV;TCol;>;)TCol;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->to(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag<",
            "TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->toArray(Lscala/collection/parallel/ParIterableLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TU;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toBuffer(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toIndexedSeq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toIndexedSeq(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->toIterable()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/parallel/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toIterable(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toIterator(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toList(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less<",
            "TV;",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/parallel/immutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->toMap(Lscala/collection/parallel/ParIterableLike;Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public toParCollection(Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->toParCollection(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toParMap(Lscala/Function0;Lscala/Predef$$less$colon$less;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TK;TV;>;TThat;>;>;",
            "Lscala/Predef$$less$colon$less<",
            "TV;",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->toParMap(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;Lscala/Predef$$less$colon$less;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->toSeq()Lscala/collection/parallel/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/parallel/ParSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/ParSeq<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toSeq(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lscala/collection/parallel/ParMapLike$DefaultValuesIterable;->toSet()Lscala/collection/parallel/immutable/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/parallel/immutable/ParSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/parallel/immutable/ParSet<",
            "TU;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toSet(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/parallel/immutable/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toStream(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toString(Lscala/collection/parallel/ParIterableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/GenTraversable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toTraversable(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/GenTraversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->toVector(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public transpose(Lscala/Function1;)Lscala/collection/GenTraversable;
    .locals 0

    .line 106
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->transpose(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/collection/GenTraversable;

    move-result-object p1

    return-object p1
.end method

.method public unzip(Lscala/Function1;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;",
            "Lscala/Tuple2<",
            "TA1;TA2;>;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/ParIterable<",
            "TA1;>;",
            "Lscala/collection/parallel/ParIterable<",
            "TA2;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public unzip3(Lscala/Function1;)Lscala/Tuple3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "A3:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TV;",
            "Lscala/Tuple3<",
            "TA1;TA2;TA3;>;>;)",
            "Lscala/Tuple3<",
            "Lscala/collection/parallel/ParIterable<",
            "TA1;>;",
            "Lscala/collection/parallel/ParIterable<",
            "TA2;>;",
            "Lscala/collection/parallel/ParIterable<",
            "TA3;>;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/generic/GenericTraversableTemplate$class;->unzip3(Lscala/collection/generic/GenericTraversableTemplate;Lscala/Function1;)Lscala/Tuple3;

    move-result-object p1

    return-object p1
.end method

.method public view()Lscala/collection/IterableView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0}, Lscala/collection/parallel/ParIterableLike$class;->view(Lscala/collection/parallel/ParIterableLike;)Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public withFilter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TV;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->withFilter(Lscala/collection/parallel/ParIterableLike;Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Lscala/Function0;)Lscala/collection/parallel/ParIterableLike$NonDivisible;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0<",
            "TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->wrap(Lscala/collection/parallel/ParIterableLike;Lscala/Function0;)Lscala/collection/parallel/ParIterableLike$NonDivisible;

    move-result-object p1

    return-object p1
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TS;>;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/ParIterableLike$class;->zip(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipAll(Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable<",
            "TS;>;TU;TS;",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/ParIterableLike$class;->zipAll(Lscala/collection/parallel/ParIterableLike;Lscala/collection/GenIterable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom<",
            "Lscala/collection/parallel/ParIterable<",
            "TV;>;",
            "Lscala/Tuple2<",
            "TU;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .line 106
    invoke-static {p0, p1}, Lscala/collection/parallel/ParIterableLike$class;->zipWithIndex(Lscala/collection/parallel/ParIterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
