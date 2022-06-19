package scala.collection;

import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.Range;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParSeq;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u00012Q!\u0001\u0002\u0002\u0002\u001d\u00111\"\u00112tiJ\f7\r^*fc*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bD\n\u0004\u0001%I\u0002c\u0001\u0006\f\u001b5\t!!\u0003\u0002\r\u0005\t\u0001\u0012IY:ue\u0006\u001cG/\u0013;fe\u0006\u0014G.\u001a\t\u0003\u001d=a\u0001\u0001\u0002\u0004\u0011\u0001\u0011\u0015\r!\u0005\u0002\u0002\u0003F\u0011!C\u0006\t\u0003'Qi\u0011\u0001B\u0005\u0003+\u0011\u0011qAT8uQ&tw\r\u0005\u0002\u0014/%\u0011\u0001\u0004\u0002\u0002\u0004\u0003:L\bc\u0001\u0006\u001b\u001b%\u00111D\u0001\u0002\u0004'\u0016\f\b\"B\u000f\u0001\t\u0003q\u0012A\u0002\u001fj]&$h\bF\u0001 !\rQ\u0001!\u0004")
/* loaded from: classes3-dex2jar.jar:scala/collection/AbstractSeq.class */
public abstract class AbstractSeq<A> extends AbstractIterable<A> implements Seq<A> {
    public AbstractSeq() {
        Function1.Cclass.$init$(this);
        PartialFunction.Cclass.$init$(this);
        GenSeqLike.Cclass.$init$(this);
        GenSeq.Cclass.$init$(this);
        SeqLike.Cclass.$init$(this);
        Seq.Cclass.$init$(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That $colon$plus(B b, CanBuildFrom<Seq<A>, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.$colon$plus(this, b, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That $plus$colon(B b, CanBuildFrom<Seq<A>, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.$plus$colon(this, b, canBuildFrom);
    }

    @Override // scala.PartialFunction, scala.Function1
    public <C> PartialFunction<Object, C> andThen(Function1<A, C> function1) {
        return PartialFunction.Cclass.andThen(this, function1);
    }

    @Override // scala.Function1
    public double apply$mcDD$sp(double d) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractSeq<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDF$sp(float f) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractSeq<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDI$sp(int i) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractSeq<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public double apply$mcDJ$sp(long j) {
        double unboxToDouble;
        unboxToDouble = BoxesRunTime.unboxToDouble(apply((AbstractSeq<A>) BoxesRunTime.boxToLong(j)));
        return unboxToDouble;
    }

    @Override // scala.Function1
    public float apply$mcFD$sp(double d) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractSeq<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFF$sp(float f) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractSeq<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFI$sp(int i) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractSeq<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public float apply$mcFJ$sp(long j) {
        float unboxToFloat;
        unboxToFloat = BoxesRunTime.unboxToFloat(apply((AbstractSeq<A>) BoxesRunTime.boxToLong(j)));
        return unboxToFloat;
    }

    @Override // scala.Function1
    public int apply$mcID$sp(double d) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractSeq<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIF$sp(float f) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractSeq<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcII$sp(int i) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractSeq<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public int apply$mcIJ$sp(long j) {
        int unboxToInt;
        unboxToInt = BoxesRunTime.unboxToInt(apply((AbstractSeq<A>) BoxesRunTime.boxToLong(j)));
        return unboxToInt;
    }

    @Override // scala.Function1
    public long apply$mcJD$sp(double d) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractSeq<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJF$sp(float f) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractSeq<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJI$sp(int i) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractSeq<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public long apply$mcJJ$sp(long j) {
        long unboxToLong;
        unboxToLong = BoxesRunTime.unboxToLong(apply((AbstractSeq<A>) BoxesRunTime.boxToLong(j)));
        return unboxToLong;
    }

    @Override // scala.Function1
    public void apply$mcVD$sp(double d) {
        apply((AbstractSeq<A>) BoxesRunTime.boxToDouble(d));
    }

    @Override // scala.Function1
    public void apply$mcVF$sp(float f) {
        apply((AbstractSeq<A>) BoxesRunTime.boxToFloat(f));
    }

    @Override // scala.Function1
    public void apply$mcVI$sp(int i) {
        apply((AbstractSeq<A>) BoxesRunTime.boxToInteger(i));
    }

    @Override // scala.Function1
    public void apply$mcVJ$sp(long j) {
        apply((AbstractSeq<A>) BoxesRunTime.boxToLong(j));
    }

    @Override // scala.Function1
    public boolean apply$mcZD$sp(double d) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractSeq<A>) BoxesRunTime.boxToDouble(d)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZF$sp(float f) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractSeq<A>) BoxesRunTime.boxToFloat(f)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZI$sp(int i) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractSeq<A>) BoxesRunTime.boxToInteger(i)));
        return unboxToBoolean;
    }

    @Override // scala.Function1
    public boolean apply$mcZJ$sp(long j) {
        boolean unboxToBoolean;
        unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((AbstractSeq<A>) BoxesRunTime.boxToLong(j)));
        return unboxToBoolean;
    }

    @Override // scala.PartialFunction
    public Object applyOrElse(Object obj, Function1 function1) {
        return PartialFunction.Cclass.applyOrElse(this, obj, function1);
    }

    @Override // scala.collection.SeqLike
    public Iterator<Seq<A>> combinations(int i) {
        return SeqLike.Cclass.combinations(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Seq> companion() {
        return Seq.Cclass.companion(this);
    }

    @Override // scala.Function1
    public <A> Function1<A, A> compose(Function1<A, Object> function1) {
        return Function1.Cclass.compose(this, function1);
    }

    @Override // scala.collection.SeqLike
    public <A1> boolean contains(A1 a1) {
        return SeqLike.Cclass.contains(this, a1);
    }

    @Override // scala.collection.SeqLike
    public <B> boolean containsSlice(GenSeq<B> genSeq) {
        return SeqLike.Cclass.containsSlice(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
        return SeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public Object diff(GenSeq genSeq) {
        return SeqLike.Cclass.diff(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public Object distinct() {
        return SeqLike.Cclass.distinct(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean endsWith(GenSeq<B> genSeq) {
        return SeqLike.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.Equals
    public boolean equals(Object obj) {
        return GenSeqLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenSeqLike
    public int hashCode() {
        return GenSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b) {
        return GenSeqLike.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b, int i) {
        return GenSeqLike.Cclass.indexOf(this, b, i);
    }

    @Override // scala.collection.SeqLike
    public <B> int indexOfSlice(GenSeq<B> genSeq) {
        return SeqLike.Cclass.indexOfSlice(this, genSeq);
    }

    @Override // scala.collection.SeqLike
    public <B> int indexOfSlice(GenSeq<B> genSeq, int i) {
        return SeqLike.Cclass.indexOfSlice(this, genSeq, i);
    }

    @Override // scala.collection.GenSeqLike
    public int indexWhere(Function1<A, Object> function1) {
        return GenSeqLike.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<A, Object> function1, int i) {
        return SeqLike.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.SeqLike
    public Range indices() {
        return SeqLike.Cclass.indices(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public Object intersect(GenSeq genSeq) {
        return SeqLike.Cclass.intersect(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return GenSeqLike.Cclass.isDefinedAt(this, i);
    }

    @Override // scala.PartialFunction
    public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
        return isDefinedAt(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return SeqLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b) {
        return GenSeqLike.Cclass.lastIndexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b, int i) {
        return GenSeqLike.Cclass.lastIndexOf(this, b, i);
    }

    @Override // scala.collection.SeqLike
    public <B> int lastIndexOfSlice(GenSeq<B> genSeq) {
        return SeqLike.Cclass.lastIndexOfSlice(this, genSeq);
    }

    @Override // scala.collection.SeqLike
    public <B> int lastIndexOfSlice(GenSeq<B> genSeq, int i) {
        return SeqLike.Cclass.lastIndexOfSlice(this, genSeq, i);
    }

    @Override // scala.collection.GenSeqLike
    public int lastIndexWhere(Function1<A, Object> function1) {
        return GenSeqLike.Cclass.lastIndexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<A, Object> function1, int i) {
        return SeqLike.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.SeqLike
    public int lengthCompare(int i) {
        return SeqLike.Cclass.lengthCompare(this, i);
    }

    @Override // scala.PartialFunction
    public Function1<Object, Option<A>> lift() {
        return PartialFunction.Cclass.lift(this);
    }

    @Override // scala.PartialFunction
    public <A1, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
        return PartialFunction.Cclass.orElse(this, partialFunction);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That padTo(int i, B b, CanBuildFrom<Seq<A>, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.padTo(this, i, b, canBuildFrom);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParSeq<A>> parCombiner() {
        return SeqLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<Seq<A>, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
    }

    @Override // scala.collection.SeqLike
    public Iterator<Seq<A>> permutations() {
        return SeqLike.Cclass.permutations(this);
    }

    @Override // scala.collection.GenSeqLike
    public int prefixLength(Function1<A, Object> function1) {
        return GenSeqLike.Cclass.prefixLength(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public Object reverse() {
        return SeqLike.Cclass.reverse(this);
    }

    @Override // scala.collection.SeqLike
    public Iterator<A> reverseIterator() {
        return SeqLike.Cclass.reverseIterator(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<Seq<A>, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.reverseMap(this, function1, canBuildFrom);
    }

    @Override // scala.PartialFunction
    public <U> Function1<Object, Object> runWith(Function1<A, U> function1) {
        return PartialFunction.Cclass.runWith(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<A, Object> function1, int i) {
        return SeqLike.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Seq<A> seq() {
        return Seq.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return SeqLike.Cclass.size(this);
    }

    @Override // scala.collection.SeqLike
    public Object sortBy(Function1 function1, Ordering ordering) {
        return SeqLike.Cclass.sortBy(this, function1, ordering);
    }

    @Override // scala.collection.SeqLike
    public Object sortWith(Function2 function2) {
        return SeqLike.Cclass.sortWith(this, function2);
    }

    @Override // scala.collection.SeqLike
    public Object sorted(Ordering ordering) {
        return SeqLike.Cclass.sorted(this, ordering);
    }

    @Override // scala.collection.GenSeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq) {
        return GenSeqLike.Cclass.startsWith(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
        return SeqLike.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Seq<A> thisCollection() {
        return SeqLike.Cclass.thisCollection(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Seq toCollection(Object obj) {
        return SeqLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<A> toSeq() {
        return SeqLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return SeqLike.Cclass.toString(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<Seq<A>, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.union(this, genSeq, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That updated(int i, B b, CanBuildFrom<Seq<A>, B, That> canBuildFrom) {
        return (That) SeqLike.Cclass.updated(this, i, b, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return SeqLike.Cclass.view(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public SeqView<A, Seq<A>> view(int i, int i2) {
        return SeqLike.Cclass.view(this, i, i2);
    }
}
