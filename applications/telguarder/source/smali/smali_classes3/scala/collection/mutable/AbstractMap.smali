.class public abstract Lscala/collection/mutable/AbstractMap;
.super Lscala/collection/AbstractMap;
.source "Map.scala"

# interfaces
.implements Lscala/collection/mutable/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractMap<",
        "TA;TB;>;",
        "Lscala/collection/mutable/Map<",
        "TA;TB;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00152Q!\u0001\u0002\u0002\u0002%\u00111\"\u00112tiJ\u000c7\r^\'ba*\u00111\u0001B\u0001\u0008[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\u000cG.Y\u0002\u0001+\rQ\u0001cG\n\u0004\u0001-i\u0002\u0003\u0002\u0007\u000e\u001dii\u0011\u0001B\u0005\u0003\u0003\u0011\u0001\"a\u0004\t\r\u0001\u0011)\u0011\u0003\u0001b\u0001%\t\t\u0011)\u0005\u0002\u0014/A\u0011A#F\u0007\u0002\r%\u0011aC\u0002\u0002\u0008\u001d>$\u0008.\u001b8h!\t!\u0002$\u0003\u0002\u001a\r\t\u0019\u0011I\\=\u0011\u0005=YB!\u0002\u000f\u0001\u0005\u0004\u0011\"!\u0001\"\u0011\tyybBG\u0007\u0002\u0005%\u0011\u0001E\u0001\u0002\u0004\u001b\u0006\u0004\u0008\"\u0002\u0012\u0001\t\u0003\u0019\u0013A\u0002\u001fj]&$h\u0008F\u0001%!\u0011q\u0002A\u0004\u000e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lscala/collection/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/generic/Shrinkable$class;->$init$(Lscala/collection/generic/Shrinkable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->$init$(Lscala/collection/mutable/MapLike;)V

    invoke-static {p0}, Lscala/collection/mutable/Map$class;->$init$(Lscala/collection/mutable/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/AbstractMap;->$minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$minus(Lscala/collection/mutable/MapLike;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/MapLike$class;->$minus(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq<",
            "TA;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TA;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Shrinkable$class;->$minus$eq(Lscala/collection/generic/Shrinkable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce<",
            "TA;>;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$minus$minus(Lscala/collection/mutable/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce<",
            "TA;>;)",
            "Lscala/collection/generic/Shrinkable<",
            "TA;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/generic/Shrinkable$class;->$minus$minus$eq(Lscala/collection/generic/Shrinkable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Shrinkable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/Map;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/mutable/AbstractMap;->$plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$plus(Lscala/collection/mutable/MapLike;Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/Tuple2<",
            "TA;TB1;>;",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/MapLike$class;->$plus(Lscala/collection/mutable/MapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 0

    .line 80
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$plus$plus(Lscala/collection/mutable/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Map;

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
            "TA;TB;>;>;)",
            "Lscala/collection/generic/Growable<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 0

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->clear(Lscala/collection/mutable/MapLike;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->clone(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion<",
            "Lscala/collection/mutable/Iterable;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->companion(Lscala/collection/mutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->empty()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/Map$class;->empty(Lscala/collection/mutable/Map;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public getOrElseUpdate(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lscala/Function0<",
            "TB;>;)TB;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MapLike$class;->getOrElseUpdate(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;TNewTo;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->newBuilder(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/parallel/mutable/ParMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->parCombiner(Lscala/collection/mutable/MapLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MapLike$class;->put(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lscala/Option;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option<",
            "TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->remove(Lscala/collection/mutable/MapLike;Ljava/lang/Object;)Lscala/Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->result(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public retain(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TA;TB;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/MapLike<",
            "TA;TB;",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->retain(Lscala/collection/mutable/MapLike;Lscala/Function2;)Lscala/collection/mutable/MapLike;

    move-result-object p1

    return-object p1
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Iterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lscala/collection/mutable/Map$class;->seq(Lscala/collection/mutable/Map;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Traversable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike<",
            "**>;I)V"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike<",
            "**>;)V"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lscala/Function2;)Lscala/collection/mutable/MapLike;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2<",
            "TA;TB;TB;>;)",
            "Lscala/collection/mutable/MapLike<",
            "TA;TB;",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->transform(Lscala/collection/mutable/MapLike;Lscala/Function2;)Lscala/collection/mutable/MapLike;

    move-result-object p1

    return-object p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MapLike$class;->update(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AbstractMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AbstractMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MapLike$class;->updated(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 80
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/AbstractMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method

.method public withDefault(Lscala/Function1;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;TB;>;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/Map$class;->withDefault(Lscala/collection/mutable/Map;Lscala/Function1;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public withDefaultValue(Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)",
            "Lscala/collection/mutable/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/Map$class;->withDefaultValue(Lscala/collection/mutable/Map;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object p1

    return-object p1
.end method
