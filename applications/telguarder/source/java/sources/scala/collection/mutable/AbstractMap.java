package scala.collection.mutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Seq;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Map;
import scala.collection.mutable.MapLike;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParMap;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00152Q!\u0001\u0002\u0002\u0002%\u00111\"\u00112tiJ\f7\r^'ba*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQ\u0001cG\n\u0004\u0001-i\u0002\u0003\u0002\u0007\u000e\u001dii\u0011\u0001B\u0005\u0003\u0003\u0011\u0001\"a\u0004\t\r\u0001\u0011)\u0011\u0003\u0001b\u0001%\t\t\u0011)\u0005\u0002\u0014/A\u0011A#F\u0007\u0002\r%\u0011aC\u0002\u0002\b\u001d>$\b.\u001b8h!\t!\u0002$\u0003\u0002\u001a\r\t\u0019\u0011I\\=\u0011\u0005=YB!\u0002\u000f\u0001\u0005\u0004\u0011\"!\u0001\"\u0011\tyybBG\u0007\u0002\u0005%\u0011\u0001E\u0001\u0002\u0004\u001b\u0006\u0004\b\"\u0002\u0012\u0001\t\u0003\u0019\u0013A\u0002\u001fj]&$h\bF\u0001%!\u0011q\u0002A\u0004\u000e")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AbstractMap.class */
public abstract class AbstractMap<A, B> extends scala.collection.AbstractMap<A, B> implements Map<A, B> {
    public AbstractMap() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        Shrinkable.Cclass.$init$(this);
        Cloneable.Cclass.$init$(this);
        MapLike.Cclass.$init$(this);
        Map.Cclass.$init$(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public Map<A, B> $minus(A a) {
        return MapLike.Cclass.$minus(this, a);
    }

    @Override // scala.collection.AbstractMap, scala.collection.generic.Subtractable
    public Map<A, B> $minus(A a, A a2, Seq<A> seq) {
        return MapLike.Cclass.$minus(this, a, a2, seq);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<A> $minus$eq(A a, A a2, Seq<A> seq) {
        return Shrinkable.Cclass.$minus$eq(this, a, a2, seq);
    }

    @Override // scala.collection.AbstractMap, scala.collection.generic.Subtractable
    public Map<A, B> $minus$minus(GenTraversableOnce<A> genTraversableOnce) {
        return MapLike.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce) {
        return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
        return MapLike.Cclass.$plus(this, tuple2);
    }

    @Override // scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
        return MapLike.Cclass.$plus(this, tuple2, tuple22, seq);
    }

    @Override // scala.collection.generic.Growable
    public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
        Growable $plus$plus$eq;
        $plus$plus$eq = $plus$eq((AbstractMap<A, B>) obj).$plus$eq(obj2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.AbstractMap, scala.collection.MapLike
    public <B1> Map<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
        return MapLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Growable
    public Growable<Tuple2<A, B>> $plus$plus$eq(TraversableOnce<Tuple2<A, B>> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    public void clear() {
        MapLike.Cclass.clear(this);
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Cloneable
    public Map<A, B> clone() {
        return MapLike.Cclass.clone(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Iterable> companion() {
        return Iterable.Cclass.companion(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.Map, scala.collection.MapLike
    public Map<A, B> empty() {
        return Map.Cclass.empty(this);
    }

    @Override // scala.collection.mutable.MapLike
    public B getOrElseUpdate(A a, Function0<B> function0) {
        return (B) MapLike.Cclass.getOrElseUpdate(this, a, function0);
    }

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<Tuple2<A, B>, NewTo> mapResult(Function1<Map<A, B>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<Tuple2<A, B>, Map<A, B>> newBuilder() {
        return MapLike.Cclass.newBuilder(this);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner() {
        return MapLike.Cclass.parCombiner(this);
    }

    public Option<B> put(A a, B b) {
        return MapLike.Cclass.put(this, a, b);
    }

    public Option<B> remove(A a) {
        return MapLike.Cclass.remove(this, a);
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder
    public Map<A, B> result() {
        return MapLike.Cclass.result(this);
    }

    @Override // scala.collection.mutable.MapLike
    public MapLike<A, B, Map<A, B>> retain(Function2<A, B, Object> function2) {
        return MapLike.Cclass.retain(this, function2);
    }

    @Override // scala.collection.mutable.Cloneable
    public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
        return super.clone();
    }

    @Override // scala.collection.AbstractMap, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Map<A, B> seq() {
        return Map.Cclass.seq(this);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(int i) {
        Builder.Cclass.sizeHint(this, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHint(this, traversableLike);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHint(TraversableLike<?, ?> traversableLike, int i) {
        Builder.Cclass.sizeHint(this, traversableLike, i);
    }

    @Override // scala.collection.mutable.Builder
    public void sizeHintBounded(int i, TraversableLike<?, ?> traversableLike) {
        Builder.Cclass.sizeHintBounded(this, i, traversableLike);
    }

    @Override // scala.collection.mutable.MapLike
    public MapLike<A, B, Map<A, B>> transform(Function2<A, B, B> function2) {
        return MapLike.Cclass.transform(this, function2);
    }

    public void update(A a, B b) {
        MapLike.Cclass.update(this, a, b);
    }

    @Override // scala.collection.AbstractMap, scala.collection.GenMap, scala.collection.MapLike
    public <B1> Map<A, B1> updated(A a, B1 b1) {
        return MapLike.Cclass.updated(this, a, b1);
    }

    @Override // scala.collection.mutable.Map
    public Map<A, B> withDefault(Function1<A, B> function1) {
        return Map.Cclass.withDefault(this, function1);
    }

    @Override // scala.collection.mutable.Map
    public Map<A, B> withDefaultValue(B b) {
        return Map.Cclass.withDefaultValue(this, b);
    }
}
