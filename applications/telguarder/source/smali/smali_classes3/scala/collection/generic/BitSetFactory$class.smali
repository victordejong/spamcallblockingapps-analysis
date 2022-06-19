.class public abstract Lscala/collection/generic/BitSetFactory$class;
.super Ljava/lang/Object;
.source "BitSetFactory.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/BitSetFactory;)V
    .locals 0

    return-void
.end method

.method public static apply(Lscala/collection/generic/BitSetFactory;Lscala/collection/Seq;)Lscala/collection/BitSet;
    .locals 2

    .line 33
    invoke-interface {p0}, Lscala/collection/generic/BitSetFactory;->empty()Lscala/collection/BitSet;

    move-result-object v0

    new-instance v1, Lscala/collection/generic/BitSetFactory$$anonfun$apply$1;

    invoke-direct {v1, p0}, Lscala/collection/generic/BitSetFactory$$anonfun$apply$1;-><init>(Lscala/collection/generic/BitSetFactory;)V

    invoke-interface {p1, v0, v1}, Lscala/collection/Seq;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lscala/collection/BitSet;

    return-object p0
.end method

.method public static bitsetCanBuildFrom(Lscala/collection/generic/BitSetFactory;)Lscala/collection/generic/CanBuildFrom;
    .locals 1

    .line 34
    new-instance v0, Lscala/collection/generic/BitSetFactory$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/generic/BitSetFactory$$anon$1;-><init>(Lscala/collection/generic/BitSetFactory;)V

    return-object v0
.end method
