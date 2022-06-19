package scala.collection.mutable;

import scala.Function1;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.SetLike;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericSetTemplate;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.generic.Subtractable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Set;
import scala.collection.mutable.SetLike;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParSet;
import scala.collection.script.Message;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\t2Q!\u0001\u0002\u0002\u0002%\u00111\"\u00112tiJ\f7\r^*fi*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\tQ\u0011cE\u0002\u0001\u0017m\u00012\u0001D\u0007\u0010\u001b\u0005\u0011\u0011B\u0001\b\u0003\u0005A\t%m\u001d;sC\u000e$\u0018\n^3sC\ndW\r\u0005\u0002\u0011#1\u0001A!\u0002\n\u0001\u0005\u0004\u0019\"!A!\u0012\u0005QA\u0002CA\u000b\u0017\u001b\u00051\u0011BA\f\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"!F\r\n\u0005i1!aA!osB\u0019A\u0002H\b\n\u0005u\u0011!aA*fi\")q\u0004\u0001C\u0001A\u00051A(\u001b8jiz\"\u0012!\t\t\u0004\u0019\u0001y\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AbstractSet.class */
public abstract class AbstractSet<A> extends AbstractIterable<A> implements Set<A> {
    public AbstractSet() {
        Function1.Cclass.$init$(this);
        GenSetLike.Cclass.$init$(this);
        GenericSetTemplate.Cclass.$init$(this);
        GenSet.Cclass.$init$(this);
        Subtractable.Cclass.$init$(this);
        SetLike.Cclass.$init$(this);
        Set.Cclass.$init$(this);
        Growable.Cclass.$init$(this);
        Builder.Cclass.$init$(this);
        Shrinkable.Cclass.$init$(this);
        Cloneable.Cclass.$init$(this);
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

    @Override // scala.collection.mutable.SetLike, scala.collection.script.Scriptable
    public void $less$less(Message<A> message) {
        SetLike.Cclass.$less$less(this, message);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    public Set<A> $minus(A a) {
        return SetLike.Cclass.$minus(this, a);
    }

    @Override // scala.collection.generic.Subtractable
    public Set<A> $minus(A a, A a2, Seq<A> seq) {
        return SetLike.Cclass.$minus(this, a, a2, seq);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<A> $minus$eq(A a, A a2, Seq<A> seq) {
        return Shrinkable.Cclass.$minus$eq(this, a, a2, seq);
    }

    @Override // scala.collection.generic.Subtractable
    public Set<A> $minus$minus(GenTraversableOnce<A> genTraversableOnce) {
        return SetLike.Cclass.$minus$minus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Shrinkable
    public Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce) {
        return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public Set<A> $plus(A a) {
        return SetLike.Cclass.$plus(this, a);
    }

    @Override // scala.collection.SetLike
    public Set<A> $plus(A a, A a2, Seq<A> seq) {
        return SetLike.Cclass.$plus(this, a, a2, seq);
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
        Growable<A> $plus$plus$eq;
        $plus$plus$eq = $plus$eq((AbstractSet<A>) a).$plus$eq(a2).$plus$plus$eq(seq);
        return $plus$plus$eq;
    }

    @Override // scala.collection.SetLike
    public Set<A> $plus$plus(GenTraversableOnce<A> genTraversableOnce) {
        return SetLike.Cclass.$plus$plus(this, genTraversableOnce);
    }

    @Override // scala.collection.generic.Growable
    public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
        return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
    }

    public boolean add(A a) {
        return SetLike.Cclass.add(this, a);
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

    public void clear() {
        SetLike.Cclass.clear(this);
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Cloneable
    public Set<A> clone() {
        return SetLike.Cclass.clone(this);
    }

    @Override // scala.collection.mutable.AbstractIterable, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Set> companion() {
        return Set.Cclass.companion(this);
    }

    @Override // scala.Function1
    public <A> Function1<A, Object> compose(Function1<A, A> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public scala.collection.Set diff(GenSet genSet) {
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

    @Override // scala.collection.mutable.Builder
    public <NewTo> Builder<A, NewTo> mapResult(Function1<Set<A>, NewTo> function1) {
        return Builder.Cclass.mapResult(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<A, Set<A>> newBuilder() {
        return SetLike.Cclass.newBuilder(this);
    }

    @Override // scala.collection.mutable.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSet<A>> parCombiner() {
        return SetLike.Cclass.parCombiner(this);
    }

    public boolean remove(A a) {
        return SetLike.Cclass.remove(this, a);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Subtractable repr() {
        return (Subtractable) repr();
    }

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder
    public Set<A> result() {
        return SetLike.Cclass.result(this);
    }

    @Override // scala.collection.mutable.SetLike
    public void retain(Function1<A, Object> function1) {
        SetLike.Cclass.retain(this, function1);
    }

    @Override // scala.collection.SetLike
    public /* synthetic */ Object scala$collection$SetLike$$super$map(Function1 function1, CanBuildFrom canBuildFrom) {
        return TraversableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.mutable.Cloneable
    public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
        return super.clone();
    }

    @Override // scala.collection.mutable.AbstractIterable, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<A> seq() {
        return Set.Cclass.seq(this);
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

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return SetLike.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SortedSetLike
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
    public scala.collection.Set union(GenSet genSet) {
        return SetLike.Cclass.union(this, genSet);
    }

    @Override // scala.collection.mutable.SetLike
    public void update(A a, boolean z) {
        SetLike.Cclass.update(this, a, z);
    }
}
