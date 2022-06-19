package scala.collection.mutable;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.IndexedSeq;
import scala.collection.IndexedSeqLike;
import scala.collection.IndexedSeqOptimized;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableView;
import scala.collection.IterableViewLike;
import scala.collection.Iterator;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.SeqView;
import scala.collection.SeqViewLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableView;
import scala.collection.TraversableViewLike;
import scala.collection.ViewMkString;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.SliceInterval;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Range;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.IndexedSeq;
import scala.collection.mutable.IndexedSeqLike;
import scala.collection.mutable.IndexedSeqView;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Seq;
import scala.collection.mutable.SeqLike;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParSeq;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u000113\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005\u0011b\u0013\u0002\u000f\u0013:$W\r_3e'\u0016\fH*[6f\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0007)!2dE\u0002\u0001\u0017=\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0003\u0011#IQR\"\u0001\u0003\n\u0005\u0005!\u0001CA\n\u0015\u0019\u0001!Q!\u0006\u0001C\u0002Y\u0011\u0011!Q\t\u0003/-\u0001\"\u0001\u0004\r\n\u0005e1!a\u0002(pi\"Lgn\u001a\t\u0003'm!a\u0001\b\u0001\u0005\u0006\u00041\"\u0001\u0002*faJDQA\b\u0001\u0005\u0002}\ta\u0001J5oSR$C#\u0001\u0011\u0011\u00051\t\u0013B\u0001\u0012\u0007\u0005\u0011)f.\u001b;\t\r\u0011\u0002\u0001\u0015\"\u0015&\u00039!\b.[:D_2dWm\u0019;j_:,\u0012A\n\t\u0004O!\u0012R\"\u0001\u0002\n\u0005%\u0012!AC%oI\u0016DX\rZ*fc\"11\u0006\u0001Q\u0005R1\nA\u0002^8D_2dWm\u0019;j_:$\"AJ\u0017\t\u000b9R\u0003\u0019\u0001\u000e\u0002\tI,\u0007O\u001d\u0005\u0006a\u00011\t!M\u0001\u0007kB$\u0017\r^3\u0015\u0007\u0001\u0012t\u0007C\u00034_\u0001\u0007A'A\u0002jIb\u0004\"\u0001D\u001b\n\u0005Y2!aA%oi\")\u0001h\fa\u0001%\u0005!Q\r\\3n\u0011\u0015Q\u0004\u0001\"\u0011<\u0003\u00111\u0018.Z<\u0016\u0003q\u00122!P C\r\u0011q\u0014\b\u0001\u001f\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u00051\u0001\u0015BA!\u0007\u0005\u0019\te.\u001f*fMB!qe\u0011\n\u001b\u0013\t!%A\u0001\bJ]\u0012,\u00070\u001a3TKF4\u0016.Z<\t\u000bi\u0002A\u0011\t$\u0015\u0007\t;\u0015\nC\u0003I\u000b\u0002\u0007A'\u0001\u0003ge>l\u0007\"\u0002&F\u0001\u0004!\u0014!B;oi&d\u0007\u0003B\u0014\u0001%i\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqLike.class */
public interface IndexedSeqLike<A, Repr> extends scala.collection.IndexedSeqLike<A, Repr> {

    /* renamed from: scala.collection.mutable.IndexedSeqLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/IndexedSeqLike$class.class */
    public abstract class Cclass {
        public static void $init$(IndexedSeqLike indexedSeqLike) {
        }

        public static IndexedSeq thisCollection(IndexedSeqLike indexedSeqLike) {
            return (IndexedSeq) indexedSeqLike;
        }

        public static IndexedSeq toCollection(IndexedSeqLike indexedSeqLike, Object obj) {
            return (IndexedSeq) obj;
        }

        public static IndexedSeqView view(IndexedSeqLike indexedSeqLike) {
            return new IndexedSeqView<A, Repr>(indexedSeqLike) { // from class: scala.collection.mutable.IndexedSeqLike$$anon$1
                private final /* synthetic */ IndexedSeqLike $outer;
                private volatile boolean bitmap$0;
                private Repr underlying;

                {
                    Objects.requireNonNull(indexedSeqLike);
                    this.$outer = indexedSeqLike;
                    TraversableOnce.Cclass.$init$(this);
                    Parallelizable.Cclass.$init$(this);
                    TraversableLike.Cclass.$init$(this);
                    GenericTraversableTemplate.Cclass.$init$(this);
                    GenTraversable.Cclass.$init$(this);
                    Traversable.Cclass.$init$(this);
                    Traversable.Cclass.$init$(this);
                    GenIterable.Cclass.$init$(this);
                    IterableLike.Cclass.$init$(this);
                    Iterable.Cclass.$init$(this);
                    Iterable.Cclass.$init$(this);
                    Function1.Cclass.$init$(this);
                    PartialFunction.Cclass.$init$(this);
                    GenSeqLike.Cclass.$init$(this);
                    GenSeq.Cclass.$init$(this);
                    SeqLike.Cclass.$init$(this);
                    Seq.Cclass.$init$(this);
                    Cloneable.Cclass.$init$(this);
                    SeqLike.Cclass.$init$(this);
                    Seq.Cclass.$init$(this);
                    IndexedSeqLike.Cclass.$init$(this);
                    IndexedSeq.Cclass.$init$(this);
                    IndexedSeqLike.Cclass.$init$(this);
                    IndexedSeq.Cclass.$init$(this);
                    IndexedSeqOptimized.Cclass.$init$(this);
                    ViewMkString.Cclass.$init$(this);
                    TraversableViewLike.Cclass.$init$(this);
                    IterableViewLike.Cclass.$init$(this);
                    SeqViewLike.Cclass.$init$(this);
                    IndexedSeqView.Cclass.$init$(this);
                }

                private Object underlying$lzycompute() {
                    synchronized (this) {
                        if (!this.bitmap$0) {
                            this.underlying = this.$outer.repr();
                            this.bitmap$0 = true;
                        }
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    }
                    return this.underlying;
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
                    Object foldRight;
                    foldRight = foldRight(b, function2);
                    return (B) foldRight;
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That $colon$plus(B b, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.$colon$plus(this, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $div$colon(B b, Function2<B, A, B> function2) {
                    Object foldLeft;
                    foldLeft = foldLeft(b, function2);
                    return (B) foldLeft;
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That $plus$colon(B b, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.$plus$colon(this, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder) {
                    return TraversableOnce.Cclass.addString(this, stringBuilder);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder, String str) {
                    return TraversableOnce.Cclass.addString(this, stringBuilder, str);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
                    return ViewMkString.Cclass.addString(this, stringBuilder, str, str2, str3);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
                    return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
                }

                @Override // scala.PartialFunction, scala.Function1
                public <C> PartialFunction<Object, C> andThen(Function1<A, C> function1) {
                    return PartialFunction.Cclass.andThen(this, function1);
                }

                @Override // scala.collection.GenSeqLike
                public A apply(int i) {
                    return this.$outer.apply(i);
                }

                @Override // scala.Function1
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return apply(BoxesRunTime.unboxToInt(obj));
                }

                @Override // scala.Function1
                public double apply$mcDD$sp(double d) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDF$sp(float f) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDI$sp(int i) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDJ$sp(long j) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public float apply$mcFD$sp(double d) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFF$sp(float f) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFI$sp(int i) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFJ$sp(long j) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public int apply$mcID$sp(double d) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIF$sp(float f) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcII$sp(int i) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIJ$sp(long j) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public long apply$mcJD$sp(double d) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJF$sp(float f) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJI$sp(int i) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJJ$sp(long j) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public void apply$mcVD$sp(double d) {
                    apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToDouble(d));
                }

                @Override // scala.Function1
                public void apply$mcVF$sp(float f) {
                    apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToFloat(f));
                }

                @Override // scala.Function1
                public void apply$mcVI$sp(int i) {
                    apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToInteger(i));
                }

                @Override // scala.Function1
                public void apply$mcVJ$sp(long j) {
                    apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToLong(j));
                }

                @Override // scala.Function1
                public boolean apply$mcZD$sp(double d) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZF$sp(float f) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZI$sp(int i) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZJ$sp(long j) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((IndexedSeqLike$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToBoolean;
                }

                @Override // scala.PartialFunction
                public Object applyOrElse(Object obj, Function1 function1) {
                    return PartialFunction.Cclass.applyOrElse(this, obj, function1);
                }

                @Override // scala.collection.IterableLike, scala.Equals
                public boolean canEqual(Object obj) {
                    return IterableLike.Cclass.canEqual(this, obj);
                }

                @Override // scala.collection.mutable.Cloneable
                public Object clone() {
                    return Cloneable.Cclass.clone(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.SeqLike
                public Iterator<IndexedSeqView<A, Repr>> combinations(int i) {
                    return SeqViewLike.Cclass.combinations(this, i);
                }

                @Override // scala.collection.mutable.IndexedSeq, scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public GenericCompanion<IndexedSeq> companion() {
                    return IndexedSeq.Cclass.companion(this);
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

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> void copyToArray(Object obj) {
                    TraversableOnce.Cclass.copyToArray(this, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> void copyToArray(Object obj, int i) {
                    TraversableOnce.Cclass.copyToArray(this, obj, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> void copyToArray(Object obj, int i, int i2) {
                    IndexedSeqOptimized.Cclass.copyToArray(this, obj, i, i2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> void copyToBuffer(Buffer<B> buffer) {
                    TraversableOnce.Cclass.copyToBuffer(this, buffer);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> boolean corresponds(GenSeq<B> genSeq, Function2<A, B, Object> function2) {
                    return SeqLike.Cclass.corresponds(this, genSeq, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int count(Function1<A, Object> function1) {
                    return TraversableOnce.Cclass.count(this, function1);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public SeqView diff(GenSeq genSeq) {
                    return SeqViewLike.Cclass.diff(this, genSeq);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public SeqView distinct() {
                    return SeqViewLike.Cclass.distinct(this);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public IndexedSeqView<A, Repr> drop(int i) {
                    return IndexedSeqView.Cclass.drop(this, i);
                }

                @Override // scala.collection.IterableLike
                public IterableView dropRight(int i) {
                    return IterableViewLike.Cclass.dropRight(this, i);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public IndexedSeqView<A, Repr> dropWhile(Function1<A, Object> function1) {
                    return IndexedSeqView.Cclass.dropWhile(this, function1);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> boolean endsWith(GenSeq<B> genSeq) {
                    return IndexedSeqOptimized.Cclass.endsWith(this, genSeq);
                }

                @Override // scala.Equals
                public boolean equals(Object obj) {
                    return GenSeqLike.Cclass.equals(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean exists(Function1<A, Object> function1) {
                    return IndexedSeqOptimized.Cclass.exists(this, function1);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public IndexedSeqView<A, Repr> filter(Function1<A, Object> function1) {
                    return IndexedSeqView.Cclass.filter(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
                public TraversableView filterNot(Function1 function1) {
                    return TraversableViewLike.Cclass.filterNot(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Option<A> find(Function1<A, Object> function1) {
                    return IndexedSeqOptimized.Cclass.find(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
                public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.flatMap(this, function1, canBuildFrom);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> GenTraversable flatten(Function1<A, GenTraversableOnce<B>> function1) {
                    return TraversableViewLike.Cclass.flatten(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B foldLeft(B b, Function2<B, A, B> function2) {
                    return (B) IndexedSeqOptimized.Cclass.foldLeft(this, b, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B foldRight(B b, Function2<A, B, B> function2) {
                    return (B) IndexedSeqOptimized.Cclass.foldRight(this, b, function2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean forall(Function1<A, Object> function1) {
                    return IndexedSeqOptimized.Cclass.forall(this, function1);
                }

                @Override // scala.collection.TraversableViewLike
                public <B, That> That force(CanBuildFrom<Repr, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.force(this, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public <U> void foreach(Function1<A, U> function1) {
                    IndexedSeqOptimized.Cclass.foreach(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> Builder<B, IndexedSeq<B>> genericBuilder() {
                    return GenericTraversableTemplate.Cclass.genericBuilder(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> Map<K, IndexedSeqView<A, Repr>> groupBy(Function1<A, K> function1) {
                    return TraversableViewLike.Cclass.groupBy(this, function1);
                }

                @Override // scala.collection.IterableLike
                public Iterator<IndexedSeqView<A, Repr>> grouped(int i) {
                    return IterableViewLike.Cclass.grouped(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean hasDefiniteSize() {
                    return TraversableLike.Cclass.hasDefiniteSize(this);
                }

                @Override // scala.collection.GenSeqLike
                public int hashCode() {
                    return IndexedSeqLike.Cclass.hashCode(this);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public A head() {
                    return IndexedSeqOptimized.Cclass.head(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> headOption() {
                    return TraversableLike.Cclass.headOption(this);
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
                    return IndexedSeqOptimized.Cclass.indexWhere(this, function1, i);
                }

                @Override // scala.collection.SeqLike
                public Range indices() {
                    return SeqLike.Cclass.indices(this);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public IndexedSeqView<A, Repr> init() {
                    return IndexedSeqView.Cclass.init(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<IndexedSeqView<A, Repr>> inits() {
                    return TraversableViewLike.Cclass.inits(this);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public SeqView intersect(GenSeq genSeq) {
                    return SeqViewLike.Cclass.intersect(this, genSeq);
                }

                @Override // scala.collection.GenSeqLike
                public boolean isDefinedAt(int i) {
                    return GenSeqLike.Cclass.isDefinedAt(this, i);
                }

                @Override // scala.PartialFunction
                public /* bridge */ /* synthetic */ boolean isDefinedAt(Object obj) {
                    return isDefinedAt(BoxesRunTime.unboxToInt(obj));
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public boolean isEmpty() {
                    return IndexedSeqOptimized.Cclass.isEmpty(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
                public final boolean isTraversableAgain() {
                    return TraversableLike.Cclass.isTraversableAgain(this);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
                public Iterator<A> iterator() {
                    return this.$outer.iterator();
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public A last() {
                    return IndexedSeqOptimized.Cclass.last(this);
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
                    return IndexedSeqOptimized.Cclass.lastIndexWhere(this, function1, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> lastOption() {
                    return TraversableLike.Cclass.lastOption(this);
                }

                @Override // scala.collection.GenSeqLike
                public int length() {
                    return this.$outer.length();
                }

                @Override // scala.collection.SeqLike
                public int lengthCompare(int i) {
                    return IndexedSeqOptimized.Cclass.lengthCompare(this, i);
                }

                @Override // scala.PartialFunction
                public Function1<Object, Option<A>> lift() {
                    return PartialFunction.Cclass.lift(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
                public <B, That> That map(Function1<A, B> function1, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.map(this, function1, canBuildFrom);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A max(Ordering<B> ordering) {
                    return TraversableOnce.Cclass.max(this, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering) {
                    return TraversableOnce.Cclass.maxBy(this, function1, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A min(Ordering<B> ordering) {
                    return TraversableOnce.Cclass.min(this, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A minBy(Function1<A, B> function1, Ordering<B> ordering) {
                    return TraversableOnce.Cclass.minBy(this, function1, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString() {
                    return ViewMkString.Cclass.mkString(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString(String str) {
                    return ViewMkString.Cclass.mkString(this, str);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString(String str, String str2, String str3) {
                    return ViewMkString.Cclass.mkString(this, str, str2, str3);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<B> newAppended(GenTraversable<B> genTraversable) {
                    return SeqViewLike.Cclass.newAppended(this, genTraversable);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
                public Builder<A, IndexedSeqView<A, Repr>> newBuilder() {
                    return TraversableViewLike.Cclass.newBuilder(this);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<A> newDropped(int i) {
                    return SeqViewLike.Cclass.newDropped(this, i);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IndexedSeqView<A, Repr>.Transformed<A> newDroppedWhile(Function1<A, Object> function1) {
                    return IndexedSeqView.Cclass.newDroppedWhile(this, function1);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IndexedSeqView<A, Repr>.Transformed<A> newFiltered(Function1<A, Object> function1) {
                    return IndexedSeqView.Cclass.newFiltered(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<B> newFlatMapped(Function1<A, GenTraversableOnce<B>> function1) {
                    return SeqViewLike.Cclass.newFlatMapped(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<B> newForced(Function0<GenSeq<B>> function0) {
                    return SeqViewLike.Cclass.newForced(this, function0);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public <B> SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<B> newMapped(Function1<A, B> function1) {
                    return SeqViewLike.Cclass.newMapped(this, function1);
                }

                @Override // scala.collection.SeqViewLike
                public <B> SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<B> newPatched(int i, GenSeq<B> genSeq, int i2) {
                    return SeqViewLike.Cclass.newPatched(this, i, genSeq, i2);
                }

                @Override // scala.collection.SeqViewLike
                public <B> SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<B> newPrepended(B b) {
                    return SeqViewLike.Cclass.newPrepended(this, b);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.SeqViewLike
                public IndexedSeqView<A, Repr>.Transformed<A> newReversed() {
                    return IndexedSeqView.Cclass.newReversed(this);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IndexedSeqView<A, Repr>.Transformed<A> newSliced(SliceInterval sliceInterval) {
                    return IndexedSeqView.Cclass.newSliced(this, sliceInterval);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<A> newTaken(int i) {
                    return SeqViewLike.Cclass.newTaken(this, i);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.SeqViewLike, scala.collection.IterableViewLike, scala.collection.TraversableViewLike
                public IndexedSeqView<A, Repr>.Transformed<A> newTakenWhile(Function1<A, Object> function1) {
                    return IndexedSeqView.Cclass.newTakenWhile(this, function1);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
                public <B> SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<Tuple2<A, B>> newZipped(GenIterable<B> genIterable) {
                    return SeqViewLike.Cclass.newZipped(this, genIterable);
                }

                @Override // scala.collection.SeqViewLike, scala.collection.IterableViewLike
                public <A1, B> SeqViewLike<A, Repr, IndexedSeqView<A, Repr>>.Transformed<Tuple2<A1, B>> newZippedAll(GenIterable<B> genIterable, A1 a1, B b) {
                    return SeqViewLike.Cclass.newZippedAll(this, genIterable, a1, b);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean nonEmpty() {
                    return TraversableOnce.Cclass.nonEmpty(this);
                }

                @Override // scala.PartialFunction
                public <A1, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
                    return PartialFunction.Cclass.orElse(this, partialFunction);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That padTo(int i, B b, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.padTo(this, i, b, canBuildFrom);
                }

                @Override // scala.collection.Parallelizable
                public Parallel par() {
                    return Parallelizable.Cclass.par(this);
                }

                @Override // scala.collection.mutable.Iterable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
                public Combiner<A, ParSeq<A>> parCombiner() {
                    return SeqLike.Cclass.parCombiner(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<IndexedSeqView<A, Repr>, IndexedSeqView<A, Repr>> partition(Function1<A, Object> function1) {
                    return TraversableViewLike.Cclass.partition(this, function1);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
                }

                @Override // scala.collection.SeqLike
                public Iterator<IndexedSeqView<A, Repr>> permutations() {
                    return SeqViewLike.Cclass.permutations(this);
                }

                @Override // scala.collection.GenSeqLike
                public int prefixLength(Function1<A, Object> function1) {
                    return GenSeqLike.Cclass.prefixLength(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B product(Numeric<B> numeric) {
                    return (B) TraversableOnce.Cclass.product(this, numeric);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.reduce(this, function2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> B reduceLeft(Function2<B, A, B> function2) {
                    return (B) IndexedSeqOptimized.Cclass.reduceLeft(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceLeftOption(Function2<B, A, B> function2) {
                    return TraversableOnce.Cclass.reduceLeftOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                    return TraversableOnce.Cclass.reduceOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B reduceRight(Function2<A, B, B> function2) {
                    return (B) IndexedSeqOptimized.Cclass.reduceRight(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
                    return TraversableOnce.Cclass.reduceRightOption(this, function2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
                public Object repr() {
                    return TraversableLike.Cclass.repr(this);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.GenSeqLike, scala.collection.SeqLike
                public IndexedSeqView<A, Repr> reverse() {
                    return IndexedSeqView.Cclass.reverse(this);
                }

                @Override // scala.collection.SeqLike
                public Iterator<A> reverseIterator() {
                    return IndexedSeqOptimized.Cclass.reverseIterator(this);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.reverseMap(this, function1, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public List<A> reversed() {
                    return TraversableOnce.Cclass.reversed(this);
                }

                @Override // scala.PartialFunction
                public <U> Function1<Object, Object> runWith(Function1<A, U> function1) {
                    return PartialFunction.Cclass.runWith(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B> boolean sameElements(GenIterable<B> genIterable) {
                    return IndexedSeqOptimized.Cclass.sameElements(this, genIterable);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$endsWith(GenSeq genSeq) {
                    return SeqLike.Cclass.endsWith(this, genSeq);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$head() {
                    return IterableLike.Cclass.head(this);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$init() {
                    return TraversableLike.Cclass.init(this);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$last() {
                    return TraversableLike.Cclass.last(this);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceLeft(Function2 function2) {
                    return TraversableOnce.Cclass.reduceLeft(this, function2);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$reduceRight(Function2 function2) {
                    return IterableLike.Cclass.reduceRight(this, function2);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ boolean scala$collection$IndexedSeqOptimized$$super$sameElements(GenIterable genIterable) {
                    return IterableLike.Cclass.sameElements(this, genIterable);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$tail() {
                    return TraversableLike.Cclass.tail(this);
                }

                @Override // scala.collection.IndexedSeqOptimized
                public /* synthetic */ Object scala$collection$IndexedSeqOptimized$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom) {
                    return IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.TraversableViewLike
                public /* synthetic */ TraversableView scala$collection$TraversableViewLike$$super$tail() {
                    return (TraversableView) IndexedSeqOptimized.Cclass.tail(this);
                }

                @Override // scala.collection.mutable.Cloneable
                public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
                    return super.clone();
                }

                @Override // scala.collection.mutable.IndexedSeqView
                public /* synthetic */ IndexedSeqView scala$collection$mutable$IndexedSeqView$$super$tail() {
                    return (IndexedSeqView) TraversableViewLike.Cclass.tail(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) TraversableViewLike.Cclass.scanRight(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public int segmentLength(Function1<A, Object> function1, int i) {
                    return IndexedSeqOptimized.Cclass.segmentLength(this, function1, i);
                }

                @Override // scala.collection.mutable.IndexedSeq, scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public IndexedSeq<A> seq() {
                    return IndexedSeq.Cclass.seq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int size() {
                    return SeqLike.Cclass.size(this);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public IndexedSeqView<A, Repr> slice(int i, int i2) {
                    return IndexedSeqView.Cclass.slice(this, i, i2);
                }

                @Override // scala.collection.TraversableLike
                public Object sliceWithKnownBound(int i, int i2) {
                    return TraversableLike.Cclass.sliceWithKnownBound(this, i, i2);
                }

                @Override // scala.collection.TraversableLike
                public Object sliceWithKnownDelta(int i, int i2, int i3) {
                    return TraversableLike.Cclass.sliceWithKnownDelta(this, i, i2, i3);
                }

                @Override // scala.collection.IterableLike
                public Iterator<IndexedSeqView<A, Repr>> sliding(int i) {
                    return IterableViewLike.Cclass.sliding(this, i);
                }

                @Override // scala.collection.IterableLike
                public Iterator<IndexedSeqView<A, Repr>> sliding(int i, int i2) {
                    return IterableViewLike.Cclass.sliding(this, i, i2);
                }

                @Override // scala.collection.SeqLike
                public SeqView sortBy(Function1 function1, Ordering ordering) {
                    return SeqViewLike.Cclass.sortBy(this, function1, ordering);
                }

                @Override // scala.collection.SeqLike
                public SeqView sortWith(Function2 function2) {
                    return SeqViewLike.Cclass.sortWith(this, function2);
                }

                @Override // scala.collection.SeqLike
                public SeqView sorted(Ordering ordering) {
                    return SeqViewLike.Cclass.sorted(this, ordering);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<IndexedSeqView<A, Repr>, IndexedSeqView<A, Repr>> span(Function1<A, Object> function1) {
                    return IndexedSeqView.Cclass.span(this, function1);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<IndexedSeqView<A, Repr>, IndexedSeqView<A, Repr>> splitAt(int i) {
                    return IndexedSeqView.Cclass.splitAt(this, i);
                }

                @Override // scala.collection.GenSeqLike
                public <B> boolean startsWith(GenSeq<B> genSeq) {
                    return GenSeqLike.Cclass.startsWith(this, genSeq);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
                    return IndexedSeqOptimized.Cclass.startsWith(this, genSeq, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
                public String stringPrefix() {
                    return SeqViewLike.Cclass.stringPrefix(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B sum(Numeric<B> numeric) {
                    return (B) TraversableOnce.Cclass.sum(this, numeric);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public IndexedSeqView<A, Repr> tail() {
                    return IndexedSeqView.Cclass.tail(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<IndexedSeqView<A, Repr>> tails() {
                    return TraversableViewLike.Cclass.tails(this);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public IndexedSeqView<A, Repr> take(int i) {
                    return IndexedSeqView.Cclass.take(this, i);
                }

                @Override // scala.collection.IterableLike
                public IterableView takeRight(int i) {
                    return IterableViewLike.Cclass.takeRight(this, i);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public IndexedSeqView<A, Repr> takeWhile(Function1<A, Object> function1) {
                    return IndexedSeqView.Cclass.takeWhile(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public IndexedSeq<A> thisCollection() {
                    return IndexedSeqLike.Cclass.thisCollection(this);
                }

                @Override // scala.collection.ViewMkString
                public scala.collection.Seq<A> thisSeq() {
                    return ViewMkString.Cclass.thisSeq(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                /* renamed from: to */
                public <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom) {
                    return (Col) TraversableLike.Cclass.m184to(this, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Object toArray(ClassTag<B> classTag) {
                    return TraversableOnce.Cclass.toArray(this, classTag);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> Buffer<A1> toBuffer() {
                    return IndexedSeqLike.Cclass.toBuffer(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public IndexedSeq toCollection(Object obj) {
                    return IndexedSeqLike.Cclass.toCollection(this, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public scala.collection.immutable.IndexedSeq<A> toIndexedSeq() {
                    return TraversableOnce.Cclass.toIndexedSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public scala.collection.Iterable<A> toIterable() {
                    return IterableLike.Cclass.toIterable(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Iterator<A> toIterator() {
                    return IterableLike.Cclass.toIterator(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public List<A> toList() {
                    return TraversableOnce.Cclass.toList(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <T, U> Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less) {
                    return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
                public scala.collection.Seq<A> toSeq() {
                    return SeqLike.Cclass.toSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
                public <B> Set<B> toSet() {
                    return TraversableOnce.Cclass.toSet(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Stream<A> toStream() {
                    return IterableLike.Cclass.toStream(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
                public String toString() {
                    return TraversableViewLike.Cclass.toString(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public scala.collection.Traversable<A> toTraversable() {
                    return TraversableLike.Cclass.toTraversable(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Vector<A> toVector() {
                    return TraversableOnce.Cclass.toVector(this);
                }

                @Override // scala.collection.mutable.SeqLike
                public SeqLike<A, Seq<A>> transform(Function1<A, A> function1) {
                    return SeqLike.Cclass.transform(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public GenTraversable transpose(Function1 function1) {
                    return GenericTraversableTemplate.Cclass.transpose(this, function1);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // scala.collection.TraversableViewLike
                public Repr underlying() {
                    return this.bitmap$0 ? this.underlying : underlying$lzycompute();
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.union(this, genSeq, canBuildFrom);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<A, Tuple2<A1, A2>> function1) {
                    return TraversableViewLike.Cclass.unzip(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1) {
                    return TraversableViewLike.Cclass.unzip3(this, function1);
                }

                @Override // scala.collection.mutable.IndexedSeqView, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
                public void update(int i, A a) {
                    this.$outer.update(i, a);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That updated(int i, B b, CanBuildFrom<IndexedSeqView<A, Repr>, B, That> canBuildFrom) {
                    return (That) SeqViewLike.Cclass.updated(this, i, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Object view() {
                    return IndexedSeqLike.Cclass.view(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public IndexedSeqView<A, IndexedSeqView<A, Repr>> view(int i, int i2) {
                    return IndexedSeqLike.Cclass.view(this, i, i2);
                }

                @Override // scala.collection.TraversableViewLike
                public String viewIdString() {
                    return TraversableViewLike.Cclass.viewIdString(this);
                }

                @Override // scala.collection.TraversableViewLike
                public String viewIdentifier() {
                    return TraversableViewLike.Cclass.viewIdentifier(this);
                }

                @Override // scala.collection.TraversableViewLike
                public String viewToString() {
                    return TraversableViewLike.Cclass.viewToString(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
                public TraversableView withFilter(Function1 function1) {
                    return TraversableViewLike.Cclass.withFilter(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<IndexedSeqView<A, Repr>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<IndexedSeqView<A, Repr>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, That> That zipWithIndex(CanBuildFrom<IndexedSeqView<A, Repr>, Tuple2<A1, Object>, That> canBuildFrom) {
                    return (That) IterableViewLike.Cclass.zipWithIndex(this, canBuildFrom);
                }
            };
        }

        public static IndexedSeqView view(IndexedSeqLike indexedSeqLike, int i, int i2) {
            return indexedSeqLike.view().slice(i, i2);
        }
    }

    @Override // scala.collection.IndexedSeqLike, scala.collection.SeqLike, scala.collection.IterableLike
    IndexedSeq<A> thisCollection();

    @Override // scala.collection.IndexedSeqLike, scala.collection.SeqLike, scala.collection.IterableLike
    IndexedSeq<A> toCollection(Repr repr);

    void update(int i, A a);

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    Object view();

    @Override // scala.collection.SeqLike, scala.collection.IterableLike
    IndexedSeqView<A, Repr> view(int i, int i2);
}
