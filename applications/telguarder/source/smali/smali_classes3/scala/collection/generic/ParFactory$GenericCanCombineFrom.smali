.class public Lscala/collection/generic/ParFactory$GenericCanCombineFrom;
.super Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;
.source "ParFactory.scala"

# interfaces
.implements Lscala/collection/generic/CanCombineFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/generic/ParFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GenericCanCombineFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/generic/GenTraversableFactory<",
        "TCC;>.GenericCanBuildFrom<TA;>;",
        "Lscala/collection/generic/CanCombineFrom<",
        "TCC;TA;TCC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/generic/ParFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/generic/ParFactory<",
            "TCC;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;-><init>(Lscala/collection/generic/GenTraversableFactory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply()Lscala/collection/mutable/Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;->apply()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 35
    check-cast p1, Lscala/collection/parallel/ParIterable;

    invoke-virtual {p0, p1}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;->apply(Lscala/collection/parallel/ParIterable;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lscala/collection/GenTraversable;)Lscala/collection/mutable/Builder;
    .locals 0

    .line 35
    check-cast p1, Lscala/collection/parallel/ParIterable;

    invoke-virtual {p0, p1}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;->apply(Lscala/collection/parallel/ParIterable;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public apply()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;->scala$collection$generic$ParFactory$GenericCanCombineFrom$$$outer()Lscala/collection/generic/ParFactory;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/ParFactory;->newBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/parallel/Combiner;
    .locals 0

    .line 35
    check-cast p1, Lscala/collection/parallel/ParIterable;

    invoke-virtual {p0, p1}, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;->apply(Lscala/collection/parallel/ParIterable;)Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lscala/collection/parallel/ParIterable;)Lscala/collection/parallel/Combiner;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/parallel/Combiner<",
            "TA;TCC;>;"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Lscala/collection/parallel/ParIterable;->genericCombiner()Lscala/collection/parallel/Combiner;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$generic$ParFactory$GenericCanCombineFrom$$$outer()Lscala/collection/generic/ParFactory;
    .locals 1

    .line 35
    iget-object v0, p0, Lscala/collection/generic/ParFactory$GenericCanCombineFrom;->$outer:Lscala/collection/generic/GenTraversableFactory;

    check-cast v0, Lscala/collection/generic/ParFactory;

    return-object v0
.end method
