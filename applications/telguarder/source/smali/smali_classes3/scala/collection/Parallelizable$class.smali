.class public abstract Lscala/collection/Parallelizable$class;
.super Ljava/lang/Object;
.source "Parallelizable.scala"


# direct methods
.method public static $init$(Lscala/collection/Parallelizable;)V
    .locals 0

    return-void
.end method

.method public static par(Lscala/collection/Parallelizable;)Lscala/collection/Parallel;
    .locals 3

    .line 41
    invoke-interface {p0}, Lscala/collection/Parallelizable;->parCombiner()Lscala/collection/parallel/Combiner;

    move-result-object v0

    .line 42
    invoke-interface {p0}, Lscala/collection/Parallelizable;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    new-instance v2, Lscala/collection/Parallelizable$$anonfun$par$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/Parallelizable$$anonfun$par$1;-><init>(Lscala/collection/Parallelizable;Lscala/collection/parallel/Combiner;)V

    invoke-interface {v1, v2}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 43
    invoke-interface {v0}, Lscala/collection/parallel/Combiner;->result()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/Parallel;

    return-object p0
.end method
