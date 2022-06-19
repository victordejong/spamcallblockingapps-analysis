.class public abstract Lscala/collection/parallel/SeqSplitter$class;
.super Ljava/lang/Object;
.source "RemainsIterator.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/SeqSplitter;)V
    .locals 0

    return-void
.end method

.method public static appendParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Appended;
    .locals 1

    .line 615
    new-instance v0, Lscala/collection/parallel/SeqSplitter$Appended;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/SeqSplitter$Appended;-><init>(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    return-object v0
.end method

.method public static map(Lscala/collection/parallel/SeqSplitter;Lscala/Function1;)Lscala/collection/parallel/SeqSplitter$Mapped;
    .locals 1

    .line 584
    new-instance v0, Lscala/collection/parallel/SeqSplitter$Mapped;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/SeqSplitter$Mapped;-><init>(Lscala/collection/parallel/SeqSplitter;Lscala/Function1;)V

    return-object v0
.end method

.method public static newTaken(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Taken;
    .locals 1

    .line 574
    new-instance v0, Lscala/collection/parallel/SeqSplitter$Taken;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/SeqSplitter$Taken;-><init>(Lscala/collection/parallel/SeqSplitter;I)V

    return-object v0
.end method

.method public static patchParSeq(Lscala/collection/parallel/SeqSplitter;ILscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter$Patched;
    .locals 1

    .line 669
    new-instance v0, Lscala/collection/parallel/SeqSplitter$Patched;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$Patched;-><init>(Lscala/collection/parallel/SeqSplitter;ILscala/collection/parallel/SeqSplitter;I)V

    return-object v0
.end method

.method public static psplitWithSignalling(Lscala/collection/parallel/SeqSplitter;Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 1

    .line 553
    invoke-interface {p0, p1}, Lscala/collection/parallel/SeqSplitter;->psplit(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object p1

    .line 554
    new-instance v0, Lscala/collection/parallel/SeqSplitter$$anonfun$psplitWithSignalling$1;

    invoke-direct {v0, p0}, Lscala/collection/parallel/SeqSplitter$$anonfun$psplitWithSignalling$1;-><init>(Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {p1, v0}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    return-object p1
.end method

.method public static reverse(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter;
    .locals 4

    .line 649
    sget-object v0, Lscala/collection/parallel/mutable/ParArray$;->MODULE$:Lscala/collection/parallel/mutable/ParArray$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Lscala/collection/GenTraversableOnce;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/parallel/mutable/ParArray$;->fromTraversables(Lscala/collection/Seq;)Lscala/collection/parallel/mutable/ParArray;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/parallel/mutable/ParArray;->reverse()Lscala/collection/parallel/ParSeq;

    move-result-object v0

    check-cast v0, Lscala/collection/parallel/mutable/ParArray;

    .line 650
    new-instance v1, Lscala/collection/parallel/SeqSplitter$$anon$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/parallel/SeqSplitter$$anon$1;-><init>(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/mutable/ParArray;)V

    return-object v1
.end method

.method public static slice(Lscala/collection/parallel/SeqSplitter;II)Lscala/collection/parallel/SeqSplitter;
    .locals 0

    .line 576
    invoke-interface {p0, p2}, Lscala/collection/parallel/SeqSplitter;->newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lscala/collection/parallel/SeqSplitter;->newSliceInternal(Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p0

    check-cast p0, Lscala/collection/parallel/SeqSplitter;

    return-object p0
.end method

.method public static splitWithSignalling(Lscala/collection/parallel/SeqSplitter;)Lscala/collection/Seq;
    .locals 2

    .line 547
    invoke-interface {p0}, Lscala/collection/parallel/SeqSplitter;->split()Lscala/collection/Seq;

    move-result-object v0

    .line 548
    new-instance v1, Lscala/collection/parallel/SeqSplitter$$anonfun$splitWithSignalling$2;

    invoke-direct {v1, p0}, Lscala/collection/parallel/SeqSplitter$$anonfun$splitWithSignalling$2;-><init>(Lscala/collection/parallel/SeqSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public static take(Lscala/collection/parallel/SeqSplitter;I)Lscala/collection/parallel/SeqSplitter;
    .locals 0

    .line 575
    invoke-interface {p0, p1}, Lscala/collection/parallel/SeqSplitter;->newTaken(I)Lscala/collection/parallel/SeqSplitter$Taken;

    move-result-object p0

    return-object p0
.end method

.method public static zipAllParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/SeqSplitter$ZippedAll;
    .locals 1

    .line 646
    new-instance v0, Lscala/collection/parallel/SeqSplitter$ZippedAll;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/parallel/SeqSplitter$ZippedAll;-><init>(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zipParSeq(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/SeqSplitter$Zipped;
    .locals 1

    .line 623
    new-instance v0, Lscala/collection/parallel/SeqSplitter$Zipped;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/SeqSplitter$Zipped;-><init>(Lscala/collection/parallel/SeqSplitter;Lscala/collection/parallel/SeqSplitter;)V

    return-object v0
.end method
