package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Option;
import scala.Tuple2;
import scala.collection.SortedMap;
import scala.collection.SortedMapLike;
import scala.collection.generic.Sorted;
import scala.collection.mutable.Builder;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedMapLike$$anon$2.class */
public final class SortedMapLike$$anon$2 extends MapLike<A, B, This>.MappedValues<C> implements SortedMap.Default<A, C> {
    private final /* synthetic */ SortedMapLike $outer;
    public final Function1 f$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SortedMapLike$$anon$2(SortedMapLike sortedMapLike, SortedMapLike<A, B, This> sortedMapLike2) {
        super(sortedMapLike, sortedMapLike2);
        Objects.requireNonNull(sortedMapLike);
        this.$outer = sortedMapLike;
        this.f$1 = sortedMapLike2;
        Sorted.Cclass.$init$(this);
        SortedMapLike.Cclass.$init$(this);
        SortedMap.Cclass.$init$(this);
        SortedMap.Default.Cclass.$init$(this);
    }

    @Override // scala.collection.MapLike.MappedValues, scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public SortedMap<A, C> $minus(A a) {
        return SortedMap.Default.Cclass.$minus(this, a);
    }

    @Override // scala.collection.MapLike.MappedValues, scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2) {
        return SortedMap.Default.Cclass.$plus(this, tuple2);
    }

    @Override // scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> SortedMap<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
        return SortedMapLike.Cclass.$plus(this, tuple2, tuple22, seq);
    }

    @Override // scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> SortedMap<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
        return SortedMapLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Sorted
    public int compare(A a, A a2) {
        return Sorted.Cclass.compare(this, a, a2);
    }

    @Override // scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public SortedMap<A, C> empty() {
        return SortedMap.Cclass.empty(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public SortedMap<A, C> filterKeys(Function1<A, Object> function1) {
        return SortedMapLike.Cclass.filterKeys(this, function1);
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
    public Iterator<Tuple2<A, C>> iteratorFrom(A a) {
        return this.$outer.iteratorFrom(a).map(new SortedMapLike$$anon$2$$anonfun$iteratorFrom$2(this));
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public SortedSet<A> keySet() {
        return SortedMapLike.Cclass.keySet(this);
    }

    @Override // scala.collection.generic.Sorted
    public Iterator<A> keysIteratorFrom(A a) {
        return this.$outer.keysIteratorFrom(a);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public A lastKey() {
        return SortedMapLike.Cclass.lastKey(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <C> SortedMap<A, C> mapValues(Function1<C, C> function1) {
        return SortedMapLike.Cclass.mapValues(this, function1);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<Tuple2<A, C>, SortedMap<A, C>> newBuilder() {
        return SortedMap.Cclass.newBuilder(this);
    }

    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public Ordering<A> ordering() {
        return this.$outer.ordering();
    }

    @Override // scala.collection.generic.Sorted
    public Sorted range(Object obj, Object obj2) {
        return Sorted.Cclass.range(this, obj, obj2);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [scala.collection.SortedMap<A, C>, scala.collection.SortedMap] */
    @Override // scala.collection.SortedMapLike, scala.collection.generic.Sorted
    public SortedMap<A, C> rangeImpl(Option<A> option, Option<A> option2) {
        return this.$outer.rangeImpl((Option) option, (Option) option2).mapValues(this.f$1);
    }

    @Override // scala.collection.generic.Sorted
    /* renamed from: to */
    public Sorted mo124to(Object obj) {
        return Sorted.Cclass.m163to(this, obj);
    }

    @Override // scala.collection.generic.Sorted
    public Sorted until(Object obj) {
        return Sorted.Cclass.until(this, obj);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
    public <B1> SortedMap<A, B1> updated(A a, B1 b1) {
        return SortedMapLike.Cclass.updated(this, a, b1);
    }

    @Override // scala.collection.SortedMapLike
    public Iterator<C> valuesIteratorFrom(A a) {
        return this.$outer.valuesIteratorFrom(a).map(this.f$1);
    }
}
