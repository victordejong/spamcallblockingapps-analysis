.class public Lscala/collection/parallel/SeqSplitter$ZippedAll;
.super Lscala/collection/parallel/IterableSplitter$ZippedAll;
.source "RemainsIterator.scala"

# interfaces
.implements Lscala/collection/parallel/SeqSplitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/SeqSplitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZippedAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/parallel/IterableSplitter<",
        "TT;>.ZippedAll<TU;TS;>;",
        "Lscala/collection/parallel/SeqSplitter<",
        "Lscala/Tuple2<",
        "TU;TS;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/SeqSplitter<",
            "TT;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;TU;TS;)V"
        }
    .end annotation

    .line 625
    invoke-direct {p0, p1, p2, p3, p4}, Lscala/collection/parallel/IterableSplitter$ZippedAll;-><init>(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0}, Lscala/collection/parallel/AugmentedSeqIterator$class;->$init$(Lscala/collection/parallel/AugmentedSeqIterator;)V

    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->$init$(Lscala/collection/parallel/SeqSplitter;)V

    return-void
.end method

.method private patchem()Lscala/Tuple2;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2<",
            "Lscala/collection/parallel/SeqSplitter<",
            "TU;>;",
            "Lscala/collection/parallel/SeqSplitter<",
            "TS;>;>;"
        }
    .end annotation

    .line 628
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->scala$collection$parallel$SeqSplitter$ZippedAll$$$outer()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/SeqSplitter;->remaining()I

    move-result v0

    .line 629
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/SeqSplitter;->remaining()I

    move-result v1

    .line 630
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->scala$collection$parallel$SeqSplitter$ZippedAll$$$outer()Lscala/collection/parallel/SeqSplitter;

    move-result-object v2

    if-ge v0, v1, :cond_0

    sget-object v3, Lscala/collection/parallel/immutable/package$;->MODULE$:Lscala/collection/parallel/immutable/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->thiselem()Ljava/lang/Object;

    move-result-object v4

    sub-int v5, v1, v0

    invoke-virtual {v3, v4, v5}, Lscala/collection/parallel/immutable/package$;->repetition(Ljava/lang/Object;I)Lscala/collection/parallel/immutable/Repetition;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/parallel/immutable/Repetition;->splitter()Lscala/collection/parallel/immutable/Repetition$ParIterator;

    move-result-object v3

    invoke-interface {v2, v3}, Lscala/collection/parallel/SeqSplitter;->appendParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object v2

    :cond_0
    if-le v0, v1, :cond_1

    .line 631
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v3

    sget-object v4, Lscala/collection/parallel/immutable/package$;->MODULE$:Lscala/collection/parallel/immutable/package$;

    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->thatelem()Ljava/lang/Object;

    move-result-object v5

    sub-int/2addr v0, v1

    invoke-virtual {v4, v5, v0}, Lscala/collection/parallel/immutable/package$;->repetition(Ljava/lang/Object;I)Lscala/collection/parallel/immutable/Repetition;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/immutable/Repetition;->splitter()Lscala/collection/parallel/immutable/Repetition$ParIterator;

    move-result-object v0

    invoke-interface {v3, v0}, Lscala/collection/parallel/SeqSplitter;->appendParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->that()Lscala/collection/parallel/SeqSplitter;

    move-result-object v0

    .line 632
    :goto_0
    new-instance v1, Lscala/Tuple2;

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
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
            "TU;TS;>;>.Appended<TU;TPI;>;"
        }
    .end annotation

    .line 625
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
            "TU;TS;>;TS;",
            "Ljava/lang/Object;",
            ">;",
            "Lscala/collection/Iterator<",
            "TS;>;)Z"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->corresponds(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function2;Lscala/collection/Iterator;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dup()Lscala/collection/parallel/IterableSplitter;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->dup()Lscala/collection/parallel/SeqSplitter;

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
            "TU;TS;>;>;"
        }
    .end annotation

    .line 626
    invoke-super {p0}, Lscala/collection/parallel/IterableSplitter$ZippedAll;->dup()Lscala/collection/parallel/IterableSplitter;

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
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 625
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
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->lastIndexWhere(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/Iterator;
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic map(Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->map(Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

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
            "TU;TS;>;TS;>;)",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>.Mapped<TS;>;"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->map(Lscala/collection/parallel/SeqSplitter;Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;

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
            "TU;TS;>;>.Taken;"
        }
    .end annotation

    .line 625
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
            "TU;TS;>;>.Patched<TU;>;"
        }
    .end annotation

    .line 625
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
            "TU;TS;>;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1}, Lscala/collection/parallel/AugmentedSeqIterator$class;->prefixLength(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;)I

    move-result p1

    return p1
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
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 640
    invoke-direct {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->patchem()Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/SeqSplitter;

    .line 641
    invoke-interface {v0, v1}, Lscala/collection/parallel/SeqSplitter;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object v0

    .line 642
    invoke-virtual {v0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    return-object p1

    .line 640
    :cond_0
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
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
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 625
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
            "TU;TS;>;>;"
        }
    .end annotation

    .line 625
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

    .line 625
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
            "TU;TS;>;TS;>;",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;)",
            "Lscala/collection/parallel/Combiner<",
            "TS;TThat;>;"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/AugmentedSeqIterator$class;->reverseMap2combiner(Lscala/collection/parallel/AugmentedSeqIterator;Lscala/Function1;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$parallel$SeqSplitter$ZippedAll$$$outer()Lscala/collection/parallel/SeqSplitter;
    .locals 1

    .line 625
    iget-object v0, p0, Lscala/collection/parallel/SeqSplitter$ZippedAll;->$outer:Lscala/collection/parallel/IterableSplitter;

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    return-object v0
.end method

.method public bridge synthetic slice(II)Lscala/collection/Iterator;
    .locals 0

    .line 625
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->slice(II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic slice(II)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 625
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->slice(II)Lscala/collection/parallel/SeqSplitter;

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
            "TU;TS;>;>;"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1, p2}, Lscala/collection/parallel/SeqSplitter$class;->slice(Lscala/collection/parallel/SeqSplitter;II)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public split()Lscala/collection/Seq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 635
    invoke-direct {p0}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->patchem()Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lscala/Tuple2;

    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/SeqSplitter;

    invoke-virtual {v1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/parallel/SeqSplitter;

    .line 636
    invoke-interface {v0, v1}, Lscala/collection/parallel/SeqSplitter;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lscala/collection/parallel/SeqSplitter$Zipped;->split()Lscala/collection/Seq;

    move-result-object v0

    return-object v0

    .line 635
    :cond_0
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public splitWithSignalling()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/collection/parallel/SeqSplitter<",
            "Lscala/Tuple2<",
            "TU;TS;>;>;>;"
        }
    .end annotation

    .line 625
    invoke-static {p0}, Lscala/collection/parallel/SeqSplitter$class;->splitWithSignalling(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Lscala/collection/Iterator;
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->take(I)Lscala/collection/parallel/SeqSplitter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic take(I)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->take(I)Lscala/collection/parallel/SeqSplitter;

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
            "TU;TS;>;>;"
        }
    .end annotation

    .line 625
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

    .line 625
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/AugmentedSeqIterator$class;->updated2combiner(Lscala/collection/parallel/AugmentedSeqIterator;ILjava/lang/Object;Lscala/collection/parallel/Combiner;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 0

    .line 625
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

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
            "TU;TS;>;>.ZippedAll<TU;TR;>;"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$class;->zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lscala/collection/parallel/SeqSplitter$ZippedAll;->zipParSeq(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

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
            "TU;TS;>;>.Zipped<TS;>;"
        }
    .end annotation

    .line 625
    invoke-static {p0, p1}, Lscala/collection/parallel/SeqSplitter$class;->zipParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;

    move-result-object p1

    return-object p1
.end method
