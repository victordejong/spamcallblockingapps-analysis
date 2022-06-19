.class public Lscala/collection/parallel/mutable/ParMap$WithDefault;
.super Lscala/collection/parallel/ParMap$WithDefault;
.source "ParMap.scala"

# interfaces
.implements Lscala/collection/parallel/mutable/ParMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/parallel/mutable/ParMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WithDefault"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/parallel/ParMap$WithDefault<",
        "TK;TV;>;",
        "Lscala/collection/parallel/mutable/ParMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final d:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final underlying:Lscala/collection/parallel/mutable/ParMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TV;>;",
            "Lscala/Function1<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    iput-object p2, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->d:Lscala/Function1;

    .line 72
    invoke-direct {p0, p1, p2}, Lscala/collection/parallel/ParMap$WithDefault;-><init>(Lscala/collection/parallel/ParMap;Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/ParIterable$class;->$init$(Lscala/collection/parallel/mutable/ParIterable;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/generic/Shrinkable$class;->$init$(Lscala/collection/generic/Shrinkable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/ParMapLike$class;->$init$(Lscala/collection/parallel/mutable/ParMapLike;)V

    invoke-static {p0}, Lscala/collection/parallel/mutable/ParMap$class;->$init$(Lscala/collection/parallel/mutable/ParMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/parallel/mutable/ParMap$WithDefault<",
            "TK;TV;>;"
        }
    .end annotation

    .line 78
    new-instance v0, Lscala/collection/parallel/mutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {v1, p1}, Lscala/collection/parallel/mutable/ParMap;->$minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, p1, v1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$minus(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/generic/Shrinkable;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;",
            "Lscala/collection/Seq<",
            "TK;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TK;>;"
        }
    .end annotation

    .line 71
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Shrinkable$class;->$minus$eq(Lscala/collection/generic/Shrinkable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lscala/collection/parallel/mutable/ParMap$WithDefault<",
            "TK;TV;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {v0, p1}, Lscala/collection/parallel/mutable/ParMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMapLike;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMapLike;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$minus$eq(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TK;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TK;>;"
        }
    .end annotation

    .line 71
    invoke-static {p0, p1}, Lscala/collection/generic/Shrinkable$class;->$minus$minus$eq(Lscala/collection/generic/Shrinkable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap$WithDefault;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TK;TU;>;)",
            "Lscala/collection/parallel/mutable/ParMap$WithDefault<",
            "TK;TU;>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$plus(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 0

    .line 71
    check-cast p1, Lscala/Tuple2;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 71
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap$WithDefault;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/mutable/ParMap$WithDefault<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {v0, p1}, Lscala/collection/parallel/mutable/ParMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMapLike;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMapLike;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->$plus$eq(Lscala/Tuple2;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;)",
            "Lscala/collection/generic/Growable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 71
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 80
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {v0}, Lscala/collection/parallel/mutable/ParMap;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->clone(Lscala/collection/mutable/Cloneable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/parallel/mutable/ParIterable;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParIterable$class;->companion(Lscala/collection/parallel/mutable/ParIterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->drop(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic dropWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->dropWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/ParMap;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->empty()Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/parallel/mutable/ParMap$WithDefault;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParMap$WithDefault<",
            "TK;TV;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Lscala/collection/parallel/mutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {v1}, Lscala/collection/parallel/mutable/ParMap;->empty()Lscala/collection/parallel/mutable/ParMap;

    move-result-object v1

    iget-object v2, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, v1, v2}, Lscala/collection/parallel/mutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/parallel/mutable/ParMap;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->empty()Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->filter(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->filterKeys(Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->filterNot(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->genericBuilder()Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->groupBy(Lscala/Function1;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic init()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->init()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->iterator()Lscala/collection/parallel/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->keySet()Lscala/collection/parallel/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->keys()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keysIterator()Lscala/collection/Iterator;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->keysIterator()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public mapCompanion()Lscala/collection/generic/GenericParMapCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericParMapCompanion<",
            "Lscala/collection/parallel/mutable/ParMap;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParMap$class;->mapCompanion(Lscala/collection/parallel/mutable/ParMap;)Lscala/collection/generic/GenericParMapCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->mapValues(Lscala/Function1;)Lscala/collection/parallel/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public newCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TK;TV;>;",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParMap$class;->newCombiner(Lscala/collection/parallel/mutable/ParMap;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic par()Lscala/collection/Parallel;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->par()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lscala/Option<",
            "TV;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {v0, p1, p2}, Lscala/collection/parallel/mutable/ParMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->repr()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {v0}, Lscala/collection/parallel/mutable/ParMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->d:Lscala/Function1;

    invoke-interface {v0, v1}, Lscala/collection/mutable/Map;->withDefault(Lscala/Function1;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->slice(II)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->tail()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->take(I)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic takeWhile(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->takeWhile(Lscala/Function1;)Lscala/collection/parallel/ParIterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->toIterable()Lscala/collection/parallel/mutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toIterable()Lscala/collection/parallel/ParIterable;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->toIterable()Lscala/collection/parallel/mutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterable()Lscala/collection/parallel/mutable/ParIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParIterable<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParIterable$class;->toIterable(Lscala/collection/parallel/mutable/ParIterable;)Lscala/collection/parallel/mutable/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/GenMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/parallel/immutable/ParMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->toSeq()Lscala/collection/parallel/mutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/parallel/ParSeq;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->toSeq()Lscala/collection/parallel/mutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/parallel/mutable/ParSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/mutable/ParSeq<",
            "Lscala/Tuple2<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lscala/collection/parallel/mutable/ParIterable$class;->toSeq(Lscala/collection/parallel/mutable/ParIterable;)Lscala/collection/parallel/mutable/ParSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSet()Lscala/collection/GenSet;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->toSet()Lscala/collection/parallel/immutable/ParSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/ParMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TK;TU;)",
            "Lscala/collection/parallel/mutable/ParMap$WithDefault<",
            "TK;TU;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lscala/collection/parallel/mutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-interface {v1, p1, p2}, Lscala/collection/parallel/mutable/ParMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;

    move-result-object p1

    iget-object p2, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->d:Lscala/Function1;

    invoke-direct {v0, p1, p2}, Lscala/collection/parallel/mutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap$WithDefault;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->values()Lscala/collection/parallel/ParIterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic valuesIterator()Lscala/collection/Iterator;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscala/collection/parallel/mutable/ParMap$WithDefault;->valuesIterator()Lscala/collection/parallel/IterableSplitter;

    move-result-object v0

    return-object v0
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/parallel/mutable/ParMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TK;TV;>;)",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lscala/collection/parallel/mutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    invoke-direct {v0, v1, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lscala/collection/parallel/mutable/ParMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lscala/collection/parallel/mutable/ParMap$WithDefault;

    iget-object v1, p0, Lscala/collection/parallel/mutable/ParMap$WithDefault;->underlying:Lscala/collection/parallel/mutable/ParMap;

    new-instance v2, Lscala/collection/parallel/mutable/ParMap$WithDefault$$anonfun$withDefaultValue$2;

    invoke-direct {v2, p0, p1}, Lscala/collection/parallel/mutable/ParMap$WithDefault$$anonfun$withDefaultValue$2;-><init>(Lscala/collection/parallel/mutable/ParMap$WithDefault;Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/parallel/mutable/ParMap$WithDefault;-><init>(Lscala/collection/parallel/mutable/ParMap;Lscala/Function1;)V

    return-object v0
.end method
