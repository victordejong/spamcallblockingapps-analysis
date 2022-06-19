package scala.collection;

import scala.Function1;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.Set;
import scala.collection.SetLike;
import scala.collection.TraversableLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericSetTemplate;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParSet;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u00012Q!\u0001\u0002\u0002\u0002\u001d\u00111\"\u00112tiJ\f7\r^*fi*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bD\n\u0004\u0001%I\u0002c\u0001\u0006\f\u001b5\t!!\u0003\u0002\r\u0005\t\u0001\u0012IY:ue\u0006\u001cG/\u0013;fe\u0006\u0014G.\u001a\t\u0003\u001d=a\u0001\u0001B\u0003\u0011\u0001\t\u0007\u0011CA\u0001B#\t\u0011b\u0003\u0005\u0002\u0014)5\tA!\u0003\u0002\u0016\t\t9aj\u001c;iS:<\u0007CA\n\u0018\u0013\tABAA\u0002B]f\u00042A\u0003\u000e\u000e\u0013\tY\"AA\u0002TKRDQ!\b\u0001\u0005\u0002y\ta\u0001P5oSRtD#A\u0010\u0011\u0007)\u0001Q\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/AbstractSet.class */
public abstract class AbstractSet<A> extends AbstractIterable<A> implements Set<A> {
    public AbstractSet() {
        Function1.Cclass.$init$(this);
        GenSetLike.Cclass.$init$(this);
        GenericSetTemplate.Cclass.$init$(this);
        GenSet.Cclass.$init$(this);
        Subtractable.Cclass.$init$(this);
        SetLike.Cclass.$init$(this);
        Set.Cclass.$init$(this);
    }

    @Override // scala.collection.GenSetLike
    public Object $amp(GenSet genSet) {
        Object intersect;
        intersect = intersect(genSet);
        return intersect;
    }

    @Override // scala.collection.GenSetLike
    public Object $amp$tilde(GenSet genSet) {
        Object diff;
        diff = diff(genSet);
        return diff;
    }

    @Override // scala.collection.GenSetLike
    public Object $bar(GenSet genSet) {
        Object union;
        union = union(genSet);
        return union;
    }

    @Override // scala.collection.generic.Subtractable
    public Subtractable $minus(Object obj, Object obj2, Seq seq) {
        Subtractable $minus$minus;
        $minus$minus = $minus((AbstractSet<A>) obj).$minus(obj2).$minus$minus(seq);
        return $minus$minus;
    }

    @Override // scala.collection.generic.Subtractable
    public Subtractable $minus$minus(GenTraversableOnce genTraversableOnce) {
        return Subtractable.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.SetLike
    public Set<A> $plus(A a, A a2, Seq<A> seq) {
        Set<A> $plus$plus;
        $plus$plus = $plus((AbstractSet<A>) ((SetLike) a)).$plus((Set) a2).$plus$plus(seq);
        return $plus$plus;
    }

    @Override // scala.collection.SetLike
    public Set<A> $plus$plus(GenTraversableOnce<A> genTraversableOnce) {
        return SetLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.Function1
    public <A> Function1<A, A> andThen(Function1<Object, A> function1) {
        return Function1.Cclass.andThen(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.Function1
    public boolean apply(A a) {
        return GenSetLike.Cclass.apply(this, a);
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply((AbstractSet<A>) BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply((AbstractSet<A>) BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply((AbstractSet<A>) BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply((AbstractSet<A>) BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractSet<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractSet<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractSet<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractSet<A>) BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Set> companion() {
        return Set.Cclass.companion(this);
    }

    @Override // scala.Function1
    public <A> Function1<A, Object> compose(Function1<A, A> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public Set<A> diff(GenSet<A> genSet) {
        return SetLike.Cclass.diff(this, genSet);
    }

    public GenSet empty() {
        return GenericSetTemplate.Cclass.empty(this);
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return GenSetLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenSetLike
    public int hashCode() {
        return GenSetLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.GenSetLike
    public Object intersect(GenSet genSet) {
        return GenSetLike.Cclass.intersect(this, genSet);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return SetLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public <B, That> That map(Function1<A, B> function1, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
        return (That) SetLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<A, Set<A>> newBuilder() {
        return SetLike.Cclass.newBuilder(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSet<A>> parCombiner() {
        return SetLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.SetLike
    public /* synthetic */ Object scala$collection$SetLike$$super$map(Function1 function1, CanBuildFrom canBuildFrom) {
        return TraversableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<A> seq() {
        return Set.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return SetLike.Cclass.stringPrefix(this);
    }

    public boolean subsetOf(GenSet<A> genSet) {
        return GenSetLike.Cclass.subsetOf(this, genSet);
    }

    @Override // scala.collection.SetLike
    public Iterator<Set<A>> subsets() {
        return SetLike.Cclass.subsets(this);
    }

    @Override // scala.collection.SetLike
    public Iterator<Set<A>> subsets(int i) {
        return SetLike.Cclass.subsets(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Buffer<A1> toBuffer() {
        return SetLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<A> toSeq() {
        return SetLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return SetLike.Cclass.toString(this);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public Set<A> union(GenSet<A> genSet) {
        return SetLike.Cclass.union(this, genSet);
    }
}
