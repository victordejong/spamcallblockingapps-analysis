package scala.collection;

import scala.Function0;
import scala.Function1;
import scala.Option;
import scala.PartialFunction;
import scala.Tuple2;
import scala.collection.GenMapLike;
import scala.collection.Map;
import scala.collection.MapLike;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParMap;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u00192Q!\u0001\u0002\u0002\u0002\u001d\u00111\"\u00112tiJ\f7\r^'ba*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0019\u0001bE\u000f\u0014\u0007\u0001Iq\u0004E\u0002\u000b\u00175i\u0011AA\u0005\u0003\u0019\t\u0011\u0001#\u00112tiJ\f7\r^%uKJ\f'\r\\3\u0011\t9y\u0011\u0003H\u0007\u0002\t%\u0011\u0001\u0003\u0002\u0002\u0007)V\u0004H.\u001a\u001a\u0011\u0005I\u0019B\u0002\u0001\u0003\u0006)\u0001\u0011\r!\u0006\u0002\u0002\u0003F\u0011a#\u0007\t\u0003\u001d]I!\u0001\u0007\u0003\u0003\u000f9{G\u000f[5oOB\u0011aBG\u0005\u00037\u0011\u00111!\u00118z!\t\u0011R\u0004\u0002\u0004\u001f\u0001\u0011\u0015\r!\u0006\u0002\u0002\u0005B!!\u0002I\t\u001d\u0013\t\t#AA\u0002NCBDQa\t\u0001\u0005\u0002\u0011\na\u0001P5oSRtD#A\u0013\u0011\t)\u0001\u0011\u0003\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/AbstractMap.class */
public abstract class AbstractMap<A, B> extends AbstractIterable<Tuple2<A, B>> implements Map<A, B> {
    public AbstractMap() {
        GenMapLike.Cclass.$init$(this);
        Function1.Cclass.$init$(this);
        PartialFunction.Cclass.$init$(this);
        Subtractable.Cclass.$init$(this);
        MapLike.Cclass.$init$(this);
        Map.Cclass.$init$(this);
    }

    @Override // scala.collection.generic.Subtractable
    public Subtractable $minus(Object obj, Object obj2, Seq seq) {
        Subtractable $minus$minus;
        $minus$minus = $minus((AbstractMap<A, B>) obj).$minus(obj2).$minus$minus(seq);
        return $minus$minus;
    }

    @Override // scala.collection.generic.Subtractable
    public Subtractable $minus$minus(GenTraversableOnce genTraversableOnce) {
        return Subtractable.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.MapLike
    public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
        Map<A, B1> $plus$plus;
        $plus$plus = $plus((Tuple2) tuple2).$plus((Tuple2) tuple22).$plus$plus(seq);
        return $plus$plus;
    }

    @Override // scala.collection.MapLike
    public <B1> Map<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
        return MapLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        return MapLike.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.PartialFunction, scala.Function1
    public <C> PartialFunction<A, C> andThen(Function1<B, C> function1) {
        return PartialFunction.Cclass.andThen(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public B apply(A a) {
        return (B) MapLike.Cclass.apply(this, a);
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply(BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply(BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply(BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply(BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply(BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply(BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply(BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply(BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply(BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.PartialFunction
    public <A1 extends A, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        return (B1) PartialFunction.Cclass.applyOrElse(this, a1, function1);
    }

    @Override // scala.Function1
    public <A> Function1<A, B> compose(Function1<A, A> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public boolean contains(A a) {
        return MapLike.Cclass.contains(this, a);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    public B mo6041default(A a) {
        return (B) MapLike.Cclass.m6058default(this, a);
    }

    @Override // scala.collection.Map, scala.collection.MapLike
    public Map<A, B> empty() {
        return Map.Cclass.empty(this);
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return GenMapLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Map<A, B> filterKeys(Function1<A, Object> function1) {
        return MapLike.Cclass.filterKeys(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    public Map<A, B> filterNot(Function1<Tuple2<A, B>, Object> function1) {
        return MapLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <B1> B1 getOrElse(A a, Function0<B1> function0) {
        return (B1) MapLike.Cclass.getOrElse(this, a, function0);
    }

    @Override // scala.collection.GenMapLike
    public int hashCode() {
        return GenMapLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
    public boolean isDefinedAt(A a) {
        return MapLike.Cclass.isDefinedAt(this, a);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return MapLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Set<A> keySet() {
        return MapLike.Cclass.keySet(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Iterable<A> keys() {
        return MapLike.Cclass.keys(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<A> keysIterator() {
        return MapLike.Cclass.keysIterator(this);
    }

    @Override // scala.PartialFunction
    public Function1<A, Option<B>> lift() {
        return PartialFunction.Cclass.lift(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <C> Map<A, C> mapValues(Function1<B, C> function1) {
        return MapLike.Cclass.mapValues(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<Tuple2<A, B>, Map<A, B>> newBuilder() {
        return MapLike.Cclass.newBuilder(this);
    }

    @Override // scala.PartialFunction
    public <A1 extends A, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
        return PartialFunction.Cclass.orElse(this, partialFunction);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner() {
        return MapLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.PartialFunction
    public <U> Function1<A, Object> runWith(Function1<B, U> function1) {
        return PartialFunction.Cclass.runWith(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Map<A, B> seq() {
        return Map.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return MapLike.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <C> Buffer<C> toBuffer() {
        return MapLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<Tuple2<A, B>> toSeq() {
        return MapLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return MapLike.Cclass.toString(this);
    }

    @Override // scala.collection.GenMap, scala.collection.MapLike
    public <B1> Map<A, B1> updated(A a, B1 b1) {
        return MapLike.Cclass.updated(this, a, b1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Iterable<B> values() {
        return MapLike.Cclass.values(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Iterator<B> valuesIterator() {
        return MapLike.Cclass.valuesIterator(this);
    }
}
