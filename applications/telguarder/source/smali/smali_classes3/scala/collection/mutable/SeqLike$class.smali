.class public abstract Lscala/collection/mutable/SeqLike$class;
.super Ljava/lang/Object;
.source "SeqLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/SeqLike;)V
    .locals 0

    return-void
.end method

.method public static parCombiner(Lscala/collection/mutable/SeqLike;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 27
    sget-object p0, Lscala/collection/parallel/mutable/ParSeq$;->MODULE$:Lscala/collection/parallel/mutable/ParSeq$;

    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParSeq$;->newCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p0

    return-object p0
.end method

.method public static transform(Lscala/collection/mutable/SeqLike;Lscala/Function1;)Lscala/collection/mutable/SeqLike;
    .locals 2

    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 45
    new-instance v1, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/mutable/SeqLike$$anonfun$transform$1;-><init>(Lscala/collection/mutable/SeqLike;Lscala/runtime/IntRef;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/mutable/SeqLike;->foreach(Lscala/Function1;)V

    return-object p0
.end method
