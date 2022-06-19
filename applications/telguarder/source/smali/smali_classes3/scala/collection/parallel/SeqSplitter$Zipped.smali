.class public Lscala/collection/parallel/SeqSplitter$Zipped;
.super Lscala/collection/parallel/IterableSplitter$Zipped;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/collection/parallel/SeqSplitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/SeqSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Zipped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>.Zipped<TS;>;",
        "Lscala/collection/parallel/SeqSplitter<",
        "Lscala/Tuple2<",
        "TT;TS;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;)V"
        }
    .end annotation

    .line 617
    invoke-direct {p0, p1, p2}, Lscala/collection/parallel/IterableSplitter$Zipped;-><init>(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedSeqIterator$class;->$init$(Lscala/collection/parallel/AugmentedSeqIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->$init$(Lscala/collection/parallel/SeqSplitter;)V

    return-void
.end method


# virtual methods
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
            "Lscala/Tuple2<",
            "TT;TS;>;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->appendParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object p1

    return-object p1
.end method

.method public corresponds(Lscala/Function2;Lscala/collection/Iterator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2<",
            "Lscala/Tuple2<",
            "TT;TS;>;TS;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "TS;>;)Z"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->corresponds(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function2;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Zipped;->dup()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    return-object v0
.end method

.method public dup()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>;"
        }
    .end annotation

    .line 618
    invoke-super {p0}, Lscala/collection/parallel/IterableSplitter$Zipped;->dup()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public indexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TT;TS;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->indexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public lastIndexWhere(Lscala/Function1;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TT;TS;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->lastIndexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 617
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 0

    .line 617
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

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
            "Lscala/Tuple2<",
            "TT;TS;>;TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>.Mapped<TS;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->map(Lscala/collection/parallel/SeqSplitter;Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0

    .line 617
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped;->newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p1

    return-object p1
.end method

.method public newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>.Taken;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->newTaken(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Taken;

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
            "Lscala/Tuple2<",
            "TT;TS;>;>.Patched<TU;>;"
        }
    .end annotation

    .line 617
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
            "Lscala/Tuple2<",
            "TT;TS;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->prefixLength(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public psplit(Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>;>;"
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Zipped;->scala$collection$parallel$SeqSplitter$Zipped$$$outer()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/parallel/SeqSplitter;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$Zipped;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/parallel/SeqSplitter;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lscala/collection/Seq;->zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/TraversableLike;

    new-instance v0, Lscala/collection/parallel/SeqSplitter$Zipped$$anonfun$psplit$3;

    invoke-direct {v0, p0}, Lscala/collection/parallel/SeqSplitter$Zipped$$anonfun$psplit$3;-><init>(Lscala/collection/parallel/SeqSplitter$Zipped;)V

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lscala/collection/TraversableLike;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "Lscala/Tuple2<",
            "TT;TS;>;>;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->psplitWithSignalling(Lscala/collection/parallel/SeqSplitter;Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lscala/collection/parallel/SeqSplitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>;"
        }
    .end annotation

    .line 617
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

    .line 617
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
            "Lscala/Tuple2<",
            "TT;TS;>;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverseMap2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$parallel$SeqSplitter$Zipped$$$outer()Lscala/collection/parallel/SeqSplitter;
    .locals 1

    .line 617
    iget-object v0, p0, Lscala/collection/parallel/SeqSplitter$Zipped;->$outer:Lscala/collection/parallel/IterableSplitter;

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public bridge synthetic slice(II)Lscala/collection/Iterator;
    .locals 0

    .line 617
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$Zipped;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 617
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$Zipped;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public slice(II)Lscala/collection/parallel/SeqSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$class;->slice(Lscala/collection/parallel/SeqSplitter;II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>;>;"
        }
    .end annotation

    .line 619
    invoke-super {p0}, Lscala/collection/parallel/IterableSplitter$Zipped;->split()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public splitWithSignalling()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->splitWithSignalling(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Lscala/collection/Iterator;
    .locals 0

    .line 617
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 617
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public take(I)Lscala/collection/parallel/SeqSplitter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TT;TS;>;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->take(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter;

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

    .line 617
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedSeqIterator$class;->updated2combiner(Lscala/collection/parallel/AugmentedSeqIterator;ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 0

    .line 617
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$Zipped;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

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
            "Lscala/Tuple2<",
            "TT;TS;>;>.ZippedAll<TU;TR;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 0

    .line 617
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

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
            "Lscala/Tuple2<",
            "TT;TS;>;>.Zipped<TS;>;"
        }
    .end annotation

    .line 617
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->zipParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method
