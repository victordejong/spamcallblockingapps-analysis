package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.MapLike;
import scala.collection.Seq;
import scala.collection.SortedMap;
import scala.collection.SortedMapLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Sorted;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Map;
import scala.collection.immutable.MapLike;
import scala.collection.immutable.SortedMap;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParMap;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SortedMap$$anon$1.class */
public final class SortedMap$$anon$1 extends MapLike<A, B, SortedMap<A, B>>.FilteredKeys implements SortedMap.Default<A, B> {
    private final /* synthetic */ SortedMap $outer;
    public final Function1 p$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortedMap$$anon$1(SortedMap sortedMap, SortedMap<A, B> sortedMap2) {
        super(sortedMap, sortedMap2);
        Objects.requireNonNull(sortedMap);
        this.$outer = sortedMap;
        this.p$1 = sortedMap2;
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        MapLike.Cclass.$init$(this);
        Map.Cclass.$init$(this);
        Sorted.Cclass.$init$(this);
        SortedMapLike.Cclass.$init$(this);
        SortedMap.Cclass.$init$(this);
        SortedMap.Cclass.$init$(this);
        SortedMap.Default.Cclass.$init$(this);
        SortedMap.Default.Cclass.$init$(this);
    }

    @Override // scala.collection.MapLike.FilteredKeys, scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public SortedMap<A, B> $minus(A a) {
        return SortedMap.Default.Cclass.$minus(this, a);
    }

    @Override // scala.collection.MapLike.FilteredKeys, scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2) {
        return SortedMap.Default.Cclass.$plus(this, tuple2);
    }

    @Override // scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
        SortedMap<A, B1> $plus$plus;
        $plus$plus = $plus((Tuple2) tuple2).$plus((Tuple2) tuple22).$plus$plus((GenTraversableOnce) seq);
        return $plus$plus;
    }

    @Override // scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> SortedMap<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
        return SortedMap.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Iterable> companion() {
        return Iterable.Cclass.companion(this);
    }

    @Override // scala.collection.generic.Sorted
    public int compare(A a, A a2) {
        return Sorted.Cclass.compare(this, a, a2);
    }

    @Override // scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public SortedMap<A, B> empty() {
        return SortedMap.Cclass.empty(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public SortedMap<A, B> filterKeys(Function1<A, Object> function1) {
        return SortedMap.Cclass.filterKeys(this, function1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public A firstKey() {
        return SortedMapLike.Cclass.firstKey(this);
    }

    @Override // scala.collection.generic.Sorted
    public Sorted from(Object obj) {
        return Sorted.Cclass.from(this, obj);
    }

    @Override // scala.collection.generic.Sorted
    public boolean hasAll(Iterator<A> iterator) {
        return Sorted.Cclass.hasAll(this, iterator);
    }

    @Override // scala.collection.SortedMapLike
    public Iterator<Tuple2<A, B>> iteratorFrom(A a) {
        return this.$outer.iteratorFrom(a).filter(new SortedMap$$anon$1$$anonfun$iteratorFrom$1(this));
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public SortedSet<A> keySet() {
        return SortedMap.Cclass.keySet(this);
    }

    @Override // scala.collection.generic.Sorted
    public Iterator<A> keysIteratorFrom(A a) {
        return this.$outer.keysIteratorFrom(a).filter(this.p$1);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public A lastKey() {
        return SortedMapLike.Cclass.lastKey(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <C> SortedMap<A, C> mapValues(Function1<B, C> function1) {
        return SortedMap.Cclass.mapValues(this, function1);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<Tuple2<A, B>, SortedMap<A, B>> newBuilder() {
        return SortedMap.Cclass.newBuilder(this);
    }

    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public Ordering<A> ordering() {
        return this.$outer.ordering();
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner() {
        return MapLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.generic.Sorted
    public Sorted range(Object obj, Object obj2) {
        return Sorted.Cclass.range(this, obj, obj2);
    }

    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public SortedMap<A, B> rangeImpl(Option<A> option, Option<A> option2) {
        return ((SortedMap) this.$outer.rangeImpl((Option) option, (Option) option2)).filterKeys(this.p$1);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Map<A, B> seq() {
        return Map.Cclass.seq(this);
    }

    @Override // scala.collection.generic.Sorted
    /* renamed from: to */
    public Sorted mo124to(Object obj) {
        return Sorted.Cclass.m163to(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<A, B>, Tuple2<T, U>> predef$$less$colon$less) {
        return Map.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.immutable.MapLike
    public <C, That> That transform(Function2<A, B, C> function2, CanBuildFrom<SortedMap<A, B>, Tuple2<A, C>, That> canBuildFrom) {
        return (That) MapLike.Cclass.transform(this, function2, canBuildFrom);
    }

    @Override // scala.collection.generic.Sorted
    public Sorted until(Object obj) {
        return Sorted.Cclass.until(this, obj);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
    public <B1> SortedMap<A, B1> updated(A a, B1 b1) {
        return SortedMap.Cclass.updated(this, a, b1);
    }

    @Override // scala.collection.SortedMapLike
    public Iterator<B> valuesIteratorFrom(A a) {
        return this.$outer.iteratorFrom(a).collect(new SortedMap$$anon$1$$anonfun$valuesIteratorFrom$1(this));
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
