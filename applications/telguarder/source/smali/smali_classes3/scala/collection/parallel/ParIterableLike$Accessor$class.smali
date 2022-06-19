.class public abstract Lscala/collection/parallel/ParIterableLike$Accessor$class;
.super Ljava/lang/Object;
.source "ParIterableLike.scala"


# direct methods
.method public static $init$(Lscala/collection/parallel/ParIterableLike$Accessor;)V
    .locals 0

    return-void
.end method

.method public static shouldSplitFurther(Lscala/collection/parallel/ParIterableLike$Accessor;)Z
    .locals 2

    .line 901
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$Accessor;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$Accessor;->scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/ParIterableLike;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$Accessor;->scala$collection$parallel$ParIterableLike$Accessor$$$outer()Lscala/collection/parallel/ParIterableLike;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike;->tasksupport()Lscala/collection/parallel/TaskSupport;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/TaskSupport;->parallelismLevel()I

    move-result p0

    invoke-interface {v0, v1, p0}, Lscala/collection/parallel/IterableSplitter;->shouldSplitFurther(Lscala/collection/parallel/ParIterable;I)Z

    move-result p0

    return p0
.end method

.method public static signalAbort(Lscala/collection/parallel/ParIterableLike$Accessor;)V
    .locals 0

    .line 903
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$Accessor;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object p0

    invoke-interface {p0}, Lscala/collection/parallel/IterableSplitter;->abort()V

    return-void
.end method

.method public static split(Lscala/collection/parallel/ParIterableLike$Accessor;)Lscala/collection/Seq;
    .locals 2

    .line 902
    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$Accessor;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/parallel/IterableSplitter;->splitWithSignalling()Lscala/collection/Seq;

    move-result-object v0

    new-instance v1, Lscala/collection/parallel/ParIterableLike$Accessor$$anonfun$split$1;

    invoke-direct {v1, p0}, Lscala/collection/parallel/ParIterableLike$Accessor$$anonfun$split$1;-><init>(Lscala/collection/parallel/ParIterableLike$Accessor;)V

    sget-object p0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {p0}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static toString(Lscala/collection/parallel/ParIterableLike$Accessor;)Ljava/lang/String;
    .locals 2

    .line 904
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$Accessor;->pit()Lscala/collection/parallel/IterableSplitter;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/parallel/IterableSplitter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$Accessor;->result()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, ")(supername: "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/parallel/ParIterableLike$Accessor;->scala$collection$parallel$ParIterableLike$Accessor$$super$toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
