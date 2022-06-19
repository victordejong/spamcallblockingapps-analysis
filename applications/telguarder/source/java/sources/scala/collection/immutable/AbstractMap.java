package scala.collection.immutable;

import scala.Function1;
import scala.Function2;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Map;
import scala.collection.immutable.MapLike;
import scala.collection.immutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParMap;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00152Q!\u0001\u0002\u0002\u0002%\u00111\"\u00112tiJ\f7\r^'ba*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)2A\u0003\t\u001c'\r\u00011\"\b\t\u0005\u00195q!$D\u0001\u0005\u0013\t\tA\u0001\u0005\u0002\u0010!1\u0001A!B\t\u0001\u0005\u0004\u0011\"!A!\u0012\u0005M9\u0002C\u0001\u000b\u0016\u001b\u00051\u0011B\u0001\f\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0006\r\n\u0005e1!aA!osB\u0011qb\u0007\u0003\u00079\u0001!)\u0019\u0001\n\u0003\u0003\t\u0003BAH\u0010\u000f55\t!!\u0003\u0002!\u0005\t\u0019Q*\u00199\t\u000b\t\u0002A\u0011A\u0012\u0002\rqJg.\u001b;?)\u0005!\u0003\u0003\u0002\u0010\u0001\u001di\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/AbstractMap.class */
public abstract class AbstractMap<A, B> extends scala.collection.AbstractMap<A, B> implements Map<A, B> {
    public AbstractMap() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        MapLike.Cclass.$init$(this);
        Map.Cclass.$init$(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
        Map<A, B1> $plus$plus;
        $plus$plus = $plus((Tuple2) tuple2).$plus((Tuple2) tuple22).$plus$plus((GenTraversableOnce) seq);
        return $plus$plus;
    }

    @Override // scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> Map<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
        return MapLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Iterable> companion() {
        return Iterable.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public Map<A, B> empty() {
        return Map.Cclass.empty(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Map<A, B> filterKeys(Function1<A, Object> function1) {
        return MapLike.Cclass.filterKeys(this, function1);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public Set<A> keySet() {
        return MapLike.Cclass.keySet(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <C> Map<A, C> mapValues(Function1<B, C> function1) {
        return MapLike.Cclass.mapValues(this, function1);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner() {
        return MapLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Map<A, B> seq() {
        return Map.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<A, B>, Tuple2<T, U>> predef$$less$colon$less) {
        return Map.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.immutable.MapLike
    public <C, That> That transform(Function2<A, B, C> function2, CanBuildFrom<Map<A, B>, Tuple2<A, C>, That> canBuildFrom) {
        return (That) MapLike.Cclass.transform(this, function2, canBuildFrom);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
    public <B1> Map<A, B1> updated(A a, B1 b1) {
        return MapLike.Cclass.updated(this, a, b1);
    }

    @Override // scala.collection.immutable.Map
    public <B1> Map<A, B1> withDefault(Function1<A, B1> function1) {
        return Map.Cclass.withDefault(this, function1);
    }

    @Override // scala.collection.immutable.Map
    public <B1> Map<A, B1> withDefaultValue(B1 b1) {
        return Map.Cclass.withDefaultValue(this, b1);
    }
}
