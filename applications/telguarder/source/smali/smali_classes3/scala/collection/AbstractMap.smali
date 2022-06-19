.class public abstract Lscala/collection/AbstractMap;
.super Lscala/collection/AbstractIterable;
.source "Map.scala"

# interfaces
.implements Lscala/collection/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable<",
        "Lscala/Tuple2<",
        "TA;TB;>;>;",
        "Lscala/collection/Map<",
        "TA;TB;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00192Q!\u0001\u0002\u0002\u0002\u001d\u00111\"\u00112tiJ\u000c7\r^\'ba*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t\'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0019\u0001bE\u000f\u0014\u0007\u0001Iq\u0004E\u0002\u000b\u00175i\u0011AA\u0005\u0003\u0019\t\u0011\u0001#\u00112tiJ\u000c7\r^%uKJ\u000c\'\r\\3\u0011\t9y\u0011\u0003H\u0007\u0002\t%\u0011\u0001\u0003\u0002\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0005I\u0019B\u0002\u0001\u0003\u0006)\u0001\u0011\r!\u0006\u0002\u0002\u0003F\u0011a#\u0007\t\u0003\u001d]I!\u0001\u0007\u0003\u0003\u000f9{G\u000f[5oOB\u0011aBG\u0005\u00037\u0011\u00111!\u00118z!\t\u0011R\u0004\u0002\u0004\u001f\u0001\u0011\u0015\r!\u0006\u0002\u0002\u0005B!!\u0002I\t\u001d\u0013\t\t#AA\u0002NCBDQa\t\u0001\u0005\u0002\u0011\na\u0001P5oSRtD#A\u0013\u0011\t)\u0001\u0011\u0003\u0008"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/collection/GenMapLike$class;->$init$(Lscala/collection/GenMapLike;)V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/MapLike$class;->$init$(Lscala/collection/MapLike;)V

    invoke-static {p0}, Lscala/collection/Map$class;->$init$(Lscala/collection/Map;)V

    return-void
.end method


# virtual methods
.method public $minus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 59
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Subtractable$class;->$minus(Lscala/collection/generic/Subtractable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Subtractable;

    move-result-object p1

    return-object p1
.end method

.method public $minus$minus(Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/collection/generic/Subtractable$class;->$minus$minus(Lscala/collection/generic/Subtractable;Lscala/collection/GenTraversableOnce;)Lscala/collection/generic/Subtractable;

    move-result-object p1

    return-object p1
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;
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
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1, p2, p3}, Lscala/collection/MapLike$class;->$plus(Lscala/collection/MapLike;Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce<",
            "Lscala/Tuple2<",
            "TA;TB1;>;>;)",
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->$plus$plus(Lscala/collection/MapLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 0

    .line 59
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/MapLike$class;->addString(Lscala/collection/MapLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic andThen(Lscala/Function1;)Lscala/Function1;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/AbstractMap;->andThen(Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public andThen(Lscala/Function1;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TC;>;)",
            "Lscala/PartialFunction<",
            "TA;TC;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->andThen(Lscala/PartialFunction;Lscala/Function1;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->apply(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply$mcDD$sp(D)D
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDD$sp(Lscala/Function1;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcDF$sp(F)D
    .locals 2

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDF$sp(Lscala/Function1;F)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcDJ$sp(J)D
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcDJ$sp(Lscala/Function1;J)D

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcFD$sp(D)F
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFD$sp(Lscala/Function1;D)F

    move-result p1

    return p1
.end method

.method public apply$mcFF$sp(F)F
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFF$sp(Lscala/Function1;F)F

    move-result p1

    return p1
.end method

.method public apply$mcFI$sp(I)F
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result p1

    return p1
.end method

.method public apply$mcFJ$sp(J)F
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcFJ$sp(Lscala/Function1;J)F

    move-result p1

    return p1
.end method

.method public apply$mcID$sp(D)I
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcID$sp(Lscala/Function1;D)I

    move-result p1

    return p1
.end method

.method public apply$mcIF$sp(F)I
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcIF$sp(Lscala/Function1;F)I

    move-result p1

    return p1
.end method

.method public apply$mcII$sp(I)I
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result p1

    return p1
.end method

.method public apply$mcIJ$sp(J)I
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcIJ$sp(Lscala/Function1;J)I

    move-result p1

    return p1
.end method

.method public apply$mcJD$sp(D)J
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJD$sp(Lscala/Function1;D)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcJF$sp(F)J
    .locals 2

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJF$sp(Lscala/Function1;F)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcJJ$sp(J)J
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcJJ$sp(Lscala/Function1;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public apply$mcVD$sp(D)V
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVD$sp(Lscala/Function1;D)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVF$sp(Lscala/Function1;F)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcVJ$sp(Lscala/Function1;J)V

    return-void
.end method

.method public apply$mcZD$sp(D)Z
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZD$sp(Lscala/Function1;D)Z

    move-result p1

    return p1
.end method

.method public apply$mcZF$sp(F)Z
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZF$sp(Lscala/Function1;F)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 0

    .line 59
    invoke-static {p0, p1, p2}, Lscala/Function1$class;->apply$mcZJ$sp(Lscala/Function1;J)Z

    move-result p1

    return p1
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TA;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1<",
            "TA1;TB1;>;)TB1;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public compose(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TA;>;)",
            "Lscala/Function1<",
            "TA;TB;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->compose(Lscala/Function1;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->contains(Lscala/collection/MapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->default(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public empty()Lscala/collection/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/Map$class;->empty(Lscala/collection/Map;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lscala/collection/GenMapLike$class;->equals(Lscala/collection/GenMapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic filterKeys(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/AbstractMap;->filterKeys(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public filterKeys(Lscala/Function1;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->filterKeys(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/AbstractMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->filterNot(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/Function0<",
            "TB1;>;)TB1;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1, p2}, Lscala/collection/MapLike$class;->getOrElse(Lscala/collection/MapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic groupBy(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/AbstractMap;->groupBy(Lscala/Function1;)Lscala/collection/immutable/Map;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 59
    invoke-static {p0}, Lscala/collection/GenMapLike$class;->hashCode(Lscala/collection/GenMapLike;)I

    move-result v0

    return v0
.end method

.method public isDefinedAt(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->isDefinedAt(Lscala/collection/MapLike;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->isEmpty(Lscala/collection/MapLike;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Lscala/collection/GenSet;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->keySet()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set<",
            "TA;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->keySet(Lscala/collection/MapLike;)Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lscala/collection/GenIterable;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->keys()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TA;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->keys(Lscala/collection/MapLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public keysIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->keysIterator(Lscala/collection/MapLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lift()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1<",
            "TA;",
            "Lscala/Option<",
            "TB;>;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/PartialFunction$class;->lift(Lscala/PartialFunction;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapValues(Lscala/Function1;)Lscala/collection/GenMap;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/AbstractMap;->mapValues(Lscala/Function1;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public mapValues(Lscala/Function1;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TC;>;)",
            "Lscala/collection/Map<",
            "TA;TC;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->mapValues(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;

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
            "Lscala/collection/Map<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->newBuilder(Lscala/collection/MapLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public orElse(Lscala/PartialFunction;)Lscala/PartialFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TA;B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;)",
            "Lscala/PartialFunction<",
            "TA1;TB1;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->orElse(Lscala/PartialFunction;Lscala/PartialFunction;)Lscala/PartialFunction;

    move-result-object p1

    return-object p1
.end method

.method public parCombiner()Lscala/collection/parallel/Combiner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/parallel/Combiner<",
            "Lscala/Tuple2<",
            "TA;TB;>;",
            "Lscala/collection/parallel/ParMap<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->parCombiner(Lscala/collection/MapLike;)Lscala/collection/parallel/Combiner;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Lscala/collection/generic/Subtractable;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Subtractable;

    return-object v0
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TB;TU;>;)",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->seq()Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Map<",
            "TA;TB;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/Map$class;->seq(Lscala/collection/Map;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->seq()Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->seq()Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->stringPrefix(Lscala/collection/MapLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer<",
            "TC;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->toBuffer(Lscala/collection/MapLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Traversable;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/AbstractMap;->toCollection(Ljava/lang/Object;)Lscala/collection/Iterable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toIterable()Lscala/collection/GenIterable;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->toIterable()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/GenSeq;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq<",
            "Lscala/Tuple2<",
            "TA;TB;>;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->toSeq(Lscala/collection/MapLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->toString(Lscala/collection/MapLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toTraversable()Lscala/collection/GenTraversable;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->toTraversable()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/GenMap;
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lscala/collection/AbstractMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/Map<",
            "TA;TB1;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0, p1, p2}, Lscala/collection/MapLike$class;->updated(Lscala/collection/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Lscala/collection/GenIterable;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->values()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public values()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable<",
            "TB;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->values(Lscala/collection/MapLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valuesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TB;>;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->valuesIterator(Lscala/collection/MapLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view()Lscala/collection/TraversableView;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->view()Lscala/collection/IterableView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic view(II)Lscala/collection/TraversableView;
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lscala/collection/AbstractMap;->view(II)Lscala/collection/IterableView;

    move-result-object p1

    return-object p1
.end method
