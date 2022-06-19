.class public abstract Lscala/collection/parallel/IterableSplitter$class;
.super Ljava/lang/Object;
.source "RemainsIterator.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/IterableSplitter;)V
    .locals 1

    .line 385
    sget-object v0, Lscala/collection/generic/IdleSignalling$;->MODULE$:Lscala/collection/generic/IdleSignalling$;

    invoke-interface {p0, v0}, Lscala/collection/parallel/IterableSplitter;->signalDelegate_$eq(Lscala/collection/generic/Signalling;)V

    return-void
.end method

.method public static appendParIterable(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter;)Lscala/collection/parallel/IterableSplitter$Appended;
    .locals 1

    .line 490
    new-instance v0, Lscala/collection/parallel/IterableSplitter$Appended;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/IterableSplitter$Appended;-><init>(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter;)V

    return-object v0
.end method

.method public static final appendln$1(Lscala/collection/parallel/IterableSplitter;Ljava/lang/String;Lscala/runtime/ObjectRef;)V
    .locals 1

    .line 422
    new-instance p0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v0, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method

.method public static buildString(Lscala/collection/parallel/IterableSplitter;Lscala/Function1;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 421
    invoke-static {v0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 423
    new-instance v1, Lscala/collection/parallel/IterableSplitter$$anonfun$buildString$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/parallel/IterableSplitter$$anonfun$buildString$1;-><init>(Lscala/collection/parallel/IterableSplitter;Lscala/runtime/ObjectRef;)V

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iget-object p0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static debugInformation(Lscala/collection/parallel/IterableSplitter;)Ljava/lang/String;
    .locals 2

    .line 429
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "Parallel iterator: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static map(Lscala/collection/parallel/IterableSplitter;Lscala/Function1;)Lscala/collection/parallel/IterableSplitter$Mapped;
    .locals 1

    .line 471
    new-instance v0, Lscala/collection/parallel/IterableSplitter$Mapped;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/IterableSplitter$Mapped;-><init>(Lscala/collection/parallel/IterableSplitter;Lscala/Function1;)V

    return-object v0
.end method

.method public static newSliceInternal(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 0

    :goto_0
    if-lez p2, :cond_0

    .line 453
    invoke-virtual {p1}, Lscala/collection/parallel/IterableSplitter$Taken;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p1}, Lscala/collection/parallel/IterableSplitter$Taken;->next()Ljava/lang/Object;

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public static newTaken(Lscala/collection/parallel/IterableSplitter;I)Lscala/collection/parallel/IterableSplitter$Taken;
    .locals 1

    .line 450
    new-instance v0, Lscala/collection/parallel/IterableSplitter$Taken;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/IterableSplitter$Taken;-><init>(Lscala/collection/parallel/IterableSplitter;I)V

    return-object v0
.end method

.method public static shouldSplitFurther(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/ParIterable;I)Z
    .locals 1

    .line 398
    invoke-interface {p0}, Lscala/collection/parallel/IterableSplitter;->remaining()I

    move-result p0

    sget-object v0, Lscala/collection/parallel/package$;->MODULE$:Lscala/collection/parallel/package$;

    invoke-interface {p1}, Lscala/collection/parallel/ParIterable;->size()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lscala/collection/parallel/package$;->thresholdFromSize(II)I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static slice(Lscala/collection/parallel/IterableSplitter;II)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 460
    invoke-interface {p0, p2}, Lscala/collection/parallel/IterableSplitter;->newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lscala/collection/parallel/IterableSplitter;->newSliceInternal(Lscala/collection/parallel/IterableSplitter$Taken;I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p0

    return-object p0
.end method

.method public static splitWithSignalling(Lscala/collection/parallel/IterableSplitter;)Lscala/collection/Seq;
    .locals 2

    .line 393
    invoke-interface {p0}, Lscala/collection/parallel/IterableSplitter;->split()Lscala/collection/Seq;

    move-result-object v0

    .line 394
    new-instance v1, Lscala/collection/parallel/IterableSplitter$$anonfun$splitWithSignalling$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/IterableSplitter$$anonfun$splitWithSignalling$1;-><init>(Lscala/collection/parallel/IterableSplitter;)V

    invoke-interface {v0, v1}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    return-object v0
.end method

.method public static take(Lscala/collection/parallel/IterableSplitter;I)Lscala/collection/parallel/IterableSplitter;
    .locals 0

    .line 459
    invoke-interface {p0, p1}, Lscala/collection/parallel/IterableSplitter;->newTaken(I)Lscala/collection/parallel/IterableSplitter$Taken;

    move-result-object p0

    return-object p0
.end method

.method public static zipAllParSeq(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/IterableSplitter$ZippedAll;
    .locals 1

    .line 529
    new-instance v0, Lscala/collection/parallel/IterableSplitter$ZippedAll;

    invoke-direct {v0, p0, p1, p2, p3}, Lscala/collection/parallel/IterableSplitter$ZippedAll;-><init>(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static zipParSeq(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)Lscala/collection/parallel/IterableSplitter$Zipped;
    .locals 1

    .line 506
    new-instance v0, Lscala/collection/parallel/IterableSplitter$Zipped;

    invoke-direct {v0, p0, p1}, Lscala/collection/parallel/IterableSplitter$Zipped;-><init>(Lscala/collection/parallel/IterableSplitter;Lscala/collection/parallel/SeqSplitter;)V

    return-object v0
.end method
