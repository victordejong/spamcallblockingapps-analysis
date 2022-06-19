.class public Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;
.super Lscala/collection/immutable/VectorIterator;
.source "ParVector.scala"

# interfaces
.implements Lscala/collection/parallel/SeqSplitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/immutable/ParVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParVectorIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/VectorIterator<",
        "TT;>;",
        "Lscala/collection/parallel/SeqSplitter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/parallel/immutable/ParVector;

.field private signalDelegate:Lscala/collection/generic/Signalling;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/immutable/ParVector;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>;II)V"
        }
    .end annotation

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->$outer:Lscala/collection/parallel/immutable/ParVector;

    invoke-direct {p0, p2, p3}, Lscala/collection/immutable/VectorIterator;-><init>(II)V

    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->$init$(Lscala/collection/parallel/RemainsIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedIterableIterator$class;->$init$(Lscala/collection/parallel/AugmentedIterableIterator;)V

    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->$init$(Lscala/collection/generic/DelegatedSignalling;)V

    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->$init$(Lscala/collection/parallel/IterableSplitter;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedSeqIterator$class;->$init$(Lscala/collection/parallel/AugmentedSeqIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->$init$(Lscala/collection/parallel/SeqSplitter;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .line 62
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->abort(Lscala/collection/generic/DelegatedSignalling;)V

    return-void
.end method

.method public appendParIterable(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "PI::",
            "Lscala/collection/parallel/IterableSplitter<",
            "TU;>;>(TPI;)",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->appendParIterable(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public appendParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "PI::",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;>(TPI;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->appendParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public buildString(Lscala/Function1;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Function1<",
            "Ljava/lang/String;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/IterableSplitter$class;->buildString(Lscala/collection/parallel/IterableSplitter;Lscala/Function1;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public collect2combiner(Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TT;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->collect2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/PartialFunction;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public copy2builder(Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "Coll:",
            "Ljava/lang/Object;",
            "Bld::",
            "Lscala/collection/mutable/Builder<",
            "TU;TColl;>;>(TBld;)TBld;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->copy2builder(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/mutable/Builder;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
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

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->copyToArray(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;II)V

    return-void
.end method

.method public corresponds(Lscala/Function2;Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "TT;TS;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "TS;>;)Z"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->corresponds(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function2;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public count(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->count(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public debugInformation()Ljava/lang/String;
    .locals 1

    .line 62
    invoke-static {p0}, Lscala/collection/parallel/IterableSplitter$class;->debugInformation(Lscala/collection/parallel/IterableSplitter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public drop2combiner(ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->drop2combiner(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->dup()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public dup()Lscala/collection/parallel/SeqSplitter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lscala/collection/parallel/immutable/ParVector;

    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->remainingVector()Lscala/collection/immutable/Vector;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/parallel/immutable/ParVector;-><init>(Lscala/collection/immutable/Vector;)V

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/ParVector;->splitter()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public filter2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->filter2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public filterNot2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->filterNot2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public flatmap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Lscala/collection/GenTraversableOnce<",
            "TS;>;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->flatmap2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

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

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->fold(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexFlag()I
    .locals 1

    .line 62
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->indexFlag(Lscala/collection/generic/DelegatedSignalling;)I

    move-result v0

    return v0
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->indexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public isAborted()Z
    .locals 1

    .line 62
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->isAborted(Lscala/collection/generic/DelegatedSignalling;)Z

    move-result v0

    return v0
.end method

.method public isRemainingCheap()Z
    .locals 1

    .line 62
    invoke-static {p0}, Lscala/collection/parallel/RemainsIterator$class;->isRemainingCheap(Lscala/collection/parallel/RemainsIterator;)Z

    move-result v0

    return v0
.end method

.method public lastIndexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->lastIndexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Mapped<TS;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->map(Lscala/collection/parallel/SeqSplitter;Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public map2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->map2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

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
            "TU;>;)TT;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->max(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;

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
            "TU;>;)TT;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->min(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public newSliceInternal(Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Lscala/collection/parallel/IterableSplitter<",
            "TT;>.Taken;>(TU;I)TU;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->newSliceInternal(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Taken;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->newTaken(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public partition2combiners(Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->partition2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public patchParSeq(ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Patched<TU;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->patchParSeq(Lscala/collection/parallel/SeqSplitter;ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;

    move-result-object p1

    return-object p1
.end method

.method public prefixLength(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->prefixLength(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
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

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->product(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>.ParVectorIterator;>;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->remainingVector()Lscala/collection/immutable/Vector;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 72
    new-instance v1, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    .line 73
    new-instance v2, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;

    invoke-direct {v2, p0, v0, v1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$1;-><init>(Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;Lscala/runtime/ObjectRef;Lscala/collection/mutable/ArrayBuffer;)V

    invoke-interface {p1, v2}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 77
    new-instance p1, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$2;

    invoke-direct {p1, p0}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator$$anonfun$psplit$2;-><init>(Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;)V

    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lscala/collection/mutable/ArrayBuffer;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    return-object p1
.end method

.method public psplitWithSignalling(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->psplitWithSignalling(Lscala/collection/parallel/SeqSplitter;Lscala/collection/Seq;)Lscala/collection/Seq;

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

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->reduce(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public reduceLeft(ILscala/Function2;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/Function2<",
            "TU;TU;TU;>;)TU;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->reduceLeft(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remaining()I
    .locals 1

    .line 63
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->remainingElementCount()I

    move-result v0

    return v0
.end method

.method public reverse()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->reverse(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public reverse2combiner(Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverse2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public reverseMap2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverseMap2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$parallel$immutable$ParVector$ParVectorIterator$$$outer()Lscala/collection/parallel/immutable/ParVector;
    .locals 1

    .line 62
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->$outer:Lscala/collection/parallel/immutable/ParVector;

    return-object v0
.end method

.method public scanToArray(Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToArray(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;Ljava/lang/Object;I)V

    return-void
.end method

.method public scanToCombiner(ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITU;",
            "Lscala/Function2<",
            "TU;TU;TU;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToCombiner(Lscala/collection/parallel/AugmentedIterableIterator;ILjava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public scanToCombiner(Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
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
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->scanToCombiner(Lscala/collection/parallel/AugmentedIterableIterator;Ljava/lang/Object;Lscala/Function2;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public setIndexFlag(I)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlag(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfGreater(I)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlagIfGreater(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public setIndexFlagIfLesser(I)V
    .locals 0

    .line 62
    invoke-static {p0, p1}, Lscala/collection/generic/DelegatedSignalling$class;->setIndexFlagIfLesser(Lscala/collection/generic/DelegatedSignalling;I)V

    return-void
.end method

.method public shouldSplitFurther(Lscala/collection/parallel/ParIterable;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/ParIterable<",
            "TS;>;I)Z"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$class;->shouldSplitFurther(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/ParIterable;I)Z

    move-result p1

    return p1
.end method

.method public signalDelegate()Lscala/collection/generic/Signalling;
    .locals 1

    .line 62
    iget-object v0, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->signalDelegate:Lscala/collection/generic/Signalling;

    return-object v0
.end method

.method public signalDelegate_$eq(Lscala/collection/generic/Signalling;)V
    .locals 0
    .annotation runtime Lscala/runtime/TraitSetter;
    .end annotation

    .line 62
    iput-object p1, p0, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->signalDelegate:Lscala/collection/generic/Signalling;

    return-void
.end method

.method public bridge synthetic slice(II)Lscala/collection/Iterator;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/SeqSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$class;->slice(Lscala/collection/parallel/SeqSplitter;II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice2combiner(IILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(II",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->slice2combiner(Lscala/collection/parallel/AugmentedIterableIterator;IILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public span2combiners(Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->span2combiners(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/immutable/ParVector<",
            "TT;>.ParVectorIterator;>;"
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 67
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v3, v3, [I

    div-int/lit8 v5, v0, 0x2

    aput v5, v3, v1

    sub-int/2addr v0, v5

    aput v0, v3, v2

    invoke-virtual {v4, v3}, Lscala/Predef$;->wrapIntArray([I)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v2, [Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;

    aput-object p0, v2, v1

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/Seq;

    :goto_0
    return-object v0
.end method

.method public splitAt2combiners(ILscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedIterableIterator$class;->splitAt2combiners(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public splitWithSignalling()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->splitWithSignalling(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/Seq;

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

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedIterableIterator$class;->sum(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public tag()I
    .locals 1

    .line 62
    invoke-static {p0}, Lscala/collection/generic/DelegatedSignalling$class;->tag(Lscala/collection/generic/DelegatedSignalling;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic take(I)Lscala/collection/Iterator;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/SeqSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->take(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take2combiner(ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->take2combiner(Lscala/collection/parallel/AugmentedIterableIterator;ILscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public takeWhile2combiner(Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "This:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;)",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThis;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->takeWhile2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public updated2combiner(ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(ITU;",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TU;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedSeqIterator$class;->updated2combiner(Lscala/collection/parallel/AugmentedSeqIterator;ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public zip2combiner(Lscala/collection/parallel/RemainsIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
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
            "Lscala/collection/parallel/RemainsIterator<",
            "TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedIterableIterator$class;->zip2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public zipAll2combiner(Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;
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
            "Lscala/collection/parallel/RemainsIterator<",
            "TS;>;TU;TS;",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TU;TS;>;TThat;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/parallel/AugmentedIterableIterator$class;->zipAll2combiner(Lscala/collection/parallel/AugmentedIterableIterator;Lscala/collection/parallel/RemainsIterator;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;TU;TR;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.ZippedAll<TU;TR;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/parallel/immutable/ParVector$ParVectorIterator;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method

.method public zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>.Zipped<TS;>;"
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->zipParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method
