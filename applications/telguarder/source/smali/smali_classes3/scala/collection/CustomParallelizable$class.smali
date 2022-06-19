.class public abstract Lscala/collection/CustomParallelizable$class;
.super Ljava/lang/Object;
.source "CustomParallelizable.scala"


# direct methods
.method public static $init$(Lscala/collection/CustomParallelizable;)V
    .locals 0

    return-void
.end method

.method public static parCombiner(Lscala/collection/CustomParallelizable;)Lscala/collection/parallel/Combiner;
    .locals 1

    .line 16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
