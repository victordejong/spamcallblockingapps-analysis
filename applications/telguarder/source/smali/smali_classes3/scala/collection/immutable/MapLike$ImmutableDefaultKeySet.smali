.class public Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;
.super Lscala/collection/MapLike$DefaultKeySet;
.source "MapLike.scala"

# interfaces
.implements Lscala/collection/immutable/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/MapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImmutableDefaultKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/MapLike<",
        "TA;TB;TThis;>.DefaultKeySet;",
        "Lscala/collection/immutable/Set<",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/MapLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/MapLike<",
            "TA;TB;TThis;>;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lscala/collection/MapLike$DefaultKeySet;-><init>(Lscala/collection/MapLike;)V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/SetLike;

    invoke-interface {v0, p0}, Lscala/collection/SetLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$minus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Set;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    goto :goto_0

    .line 112
    :cond_0
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Set$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/SetLike;

    invoke-interface {v0, p0}, Lscala/collection/SetLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/Set;

    :goto_0
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/immutable/Set;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->companion(Lscala/collection/immutable/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic diff(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "TA;",
            "Lscala/collection/parallel/immutable/ParSet<",
            "TA;>;>;"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->parCombiner(Lscala/collection/immutable/Set;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public synthetic scala$collection$immutable$MapLike$ImmutableDefaultKeySet$$$outer()Lscala/collection/immutable/MapLike;
    .locals 1

    .line 109
    iget-object v0, p0, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->$outer:Lscala/collection/MapLike;

    check-cast v0, Lscala/collection/immutable/MapLike;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Iterable;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set<",
            "TA;>;"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/immutable/Traversable;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set<",
            "TB;>;"
        }
    .end annotation

    .line 109
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->toSet(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic union(Lscala/collection/GenSet;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->union(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/MapLike$ImmutableDefaultKeySet;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
