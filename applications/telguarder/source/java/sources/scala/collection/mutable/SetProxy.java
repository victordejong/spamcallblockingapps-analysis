package scala.collection.mutable;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Proxy;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenIterable;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableProxyLike;
import scala.collection.IterableView;
import scala.collection.Iterator;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.SetLike;
import scala.collection.SetProxyLike;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableProxyLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.FilterMonadic;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericSetTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Set;
import scala.collection.mutable.SetLike;
import scala.collection.mutable.SetProxy;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParSet;
import scala.collection.script.Message;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001=3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005TKR\u0004&o\u001c=z\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005))2\u0003\u0002\u0001\f\u001fy\u0001\"\u0001D\u0007\u000e\u0003\u0019I!A\u0004\u0004\u0003\r\u0005s\u0017PU3g!\r\u0001\u0012cE\u0007\u0002\u0005%\u0011!C\u0001\u0002\u0004'\u0016$\bC\u0001\u000b\u0016\u0019\u0001!QA\u0006\u0001C\u0002]\u0011\u0011!Q\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\b\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0003 AMyQ\"\u0001\u0003\n\u0005\u0005\"!\u0001D*fiB\u0013x\u000e_=MS.,\u0007\"B\u0012\u0001\t\u0003!\u0013A\u0002\u0013j]&$H\u0005F\u0001&!\taa%\u0003\u0002(\r\t!QK\\5u\u0011\u0015I\u0003\u0001\"\u0011+\u0003\u0011\u0011X\r\u001d:\u0016\u0003-\u00022\u0001\u0005\u0001\u0014\u0011\u0015i\u0003\u0001\"\u0011/\u0003\u0015)W\u000e\u001d;z+\u0005y#c\u0001\u0019\fW\u0019!\u0011\u0007\f\u00010\u00051a$/\u001a4j]\u0016lWM\u001c;?\u0011\u001d\u0019\u0004G1A\u0005\u0002Q\nAa]3mMV\tq\u0002C\u00037\u0001\u0011\u0005s'A\u0003%a2,8\u000f\u0006\u0002,q!)\u0011(\u000ea\u0001'\u0005!Q\r\\3n\u0011\u0015Y\u0004\u0001\"\u0011=\u0003\u0019!S.\u001b8vgR\u00111&\u0010\u0005\u0006si\u0002\ra\u0005\u0005\u0006\u007f\u0001!\t\u0001Q\u0001\tIAdWo\u001d\u0013fcR\u0011\u0011IQ\u0007\u0002\u0001!)\u0011H\u0010a\u0001'!)A\t\u0001C\u0001\u000b\u0006IA%\\5okN$S-\u001d\u000b\u0003\u0003\u001aCQ!O\"A\u0002MAC\u0001\u0001%L\u001bB\u0011A\"S\u0005\u0003\u0015\u001a\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005a\u0015!\u0012)s_bL\u0018N\\4!SN\u0004C-\u001a9sK\u000e\fG/\u001a3!IV,\u0007\u0005^8!Y\u0006\u001c7\u000eI8gAU\u001cX\rI1oI\u0002\u001aw.\u001c9jY\u0016\u0014X\u0006\\3wK2\u00043/\u001e9q_J$h&I\u0001O\u0003\u0019\u0011d&M\u0019/a\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SetProxy.class */
public interface SetProxy<A> extends Set<A>, SetProxyLike<A, Set<A>> {

    /* renamed from: scala.collection.mutable.SetProxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/SetProxy$class.class */
    public abstract class Cclass {
        public static void $init$(SetProxy setProxy) {
        }

        public static SetProxy empty(SetProxy setProxy) {
            return new SetProxy<A>(setProxy) { // from class: scala.collection.mutable.SetProxy$$anon$1
                private final Set<A> self;

                {
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
                    Proxy.Cclass.$init$(this);
                    TraversableProxyLike.Cclass.$init$(this);
                    IterableProxyLike.Cclass.$init$(this);
                    SetProxyLike.Cclass.$init$(this);
                    SetProxy.Cclass.$init$(this);
                    this.self = (Set) ((GenericSetTemplate) setProxy.self()).empty();
                }

                @Override // scala.collection.GenSetLike
                public scala.collection.Set $amp(GenSet genSet) {
                    return SetProxyLike.Cclass.$amp(this, genSet);
                }

                @Override // scala.collection.GenSetLike
                public scala.collection.Set $amp$tilde(GenSet genSet) {
                    return SetProxyLike.Cclass.$amp$tilde(this, genSet);
                }

                @Override // scala.collection.GenSetLike
                public scala.collection.Set $bar(GenSet genSet) {
                    return SetProxyLike.Cclass.$bar(this, genSet);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
                    Object $colon$bslash;
                    $colon$bslash = self().$colon$bslash(b, function2);
                    return (B) $colon$bslash;
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $div$colon(B b, Function2<B, A, B> function2) {
                    Object $div$colon;
                    $div$colon = self().$div$colon(b, function2);
                    return (B) $div$colon;
                }

                @Override // scala.collection.mutable.SetLike, scala.collection.script.Scriptable
                public void $less$less(Message<A> message) {
                    SetLike.Cclass.$less$less(this, message);
                }

                @Override // scala.collection.generic.Subtractable
                public Set<A> $minus(A a, A a2, Seq<A> seq) {
                    return SetLike.Cclass.$minus(this, a, a2, seq);
                }

                @Override // scala.collection.mutable.SetProxy, scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
                public SetProxy<A> $minus(A a) {
                    return ((SetLike) self()).$minus$eq((SetLike) a);
                }

                @Override // scala.collection.generic.Shrinkable
                public Shrinkable<A> $minus$eq(A a, A a2, Seq<A> seq) {
                    return Shrinkable.Cclass.$minus$eq(this, a, a2, seq);
                }

                @Override // scala.collection.mutable.SetProxy, scala.collection.mutable.SetLike, scala.collection.generic.Shrinkable
                public SetProxy<A> $minus$eq(A a) {
                    return ((SetLike) self()).$minus$eq((SetLike) a);
                }

                @Override // scala.collection.generic.Subtractable
                public Set<A> $minus$minus(GenTraversableOnce<A> genTraversableOnce) {
                    return SetLike.Cclass.$minus$minus(this, genTraversableOnce);
                }

                @Override // scala.collection.generic.Shrinkable
                public Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce) {
                    return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
                }

                @Override // scala.collection.SetLike
                public Set<A> $plus(A a, A a2, Seq<A> seq) {
                    return SetLike.Cclass.$plus(this, a, a2, seq);
                }

                @Override // scala.collection.mutable.SetProxy, scala.collection.GenSetLike, scala.collection.SetLike
                public SetProxy<A> $plus(A a) {
                    return ((SetLike) self()).$plus$eq((SetLike) a);
                }

                @Override // scala.collection.generic.Growable
                public Growable<A> $plus$eq(A a, A a2, Seq<A> seq) {
                    Growable<A> $plus$plus$eq;
                    $plus$plus$eq = $plus$eq((SetProxy$$anon$1) a).$plus$eq(a2).$plus$plus$eq(seq);
                    return $plus$plus$eq;
                }

                @Override // scala.collection.mutable.SetProxy, scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable
                public SetProxy<A> $plus$eq(A a) {
                    return ((SetLike) self()).$plus$eq((SetLike) a);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    Object $plus$plus;
                    $plus$plus = self().$plus$plus(genTraversableOnce, canBuildFrom);
                    return (That) $plus$plus;
                }

                @Override // scala.collection.SetLike
                public Set<A> $plus$plus(GenTraversableOnce<A> genTraversableOnce) {
                    return SetLike.Cclass.$plus$plus(this, genTraversableOnce);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
                }

                @Override // scala.collection.generic.Growable
                public Growable<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
                    return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
                }

                @Override // scala.collection.mutable.SetLike
                public boolean add(A a) {
                    return SetLike.Cclass.add(this, a);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder) {
                    return TraversableProxyLike.Cclass.addString(this, stringBuilder);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder, String str) {
                    return TraversableProxyLike.Cclass.addString(this, stringBuilder, str);
                }

                @Override // scala.collection.TraversableOnce
                public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
                    return TraversableProxyLike.Cclass.addString(this, stringBuilder, str, str2, str3);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
                    return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
                }

                @Override // scala.Function1
                public <A> Function1<A, A> andThen(Function1<Object, A> function1) {
                    return Function1.Cclass.andThen(this, function1);
                }

                @Override // scala.collection.GenSetLike, scala.Function1
                public boolean apply(A a) {
                    return SetProxyLike.Cclass.apply(this, a);
                }

                @Override // scala.Function1
                public double apply$mcDD$sp(double d) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((SetProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDF$sp(float f) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((SetProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDI$sp(int i) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((SetProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDJ$sp(long j) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((SetProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public float apply$mcFD$sp(double d) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((SetProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFF$sp(float f) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((SetProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFI$sp(int i) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((SetProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFJ$sp(long j) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((SetProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public int apply$mcID$sp(double d) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((SetProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIF$sp(float f) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((SetProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcII$sp(int i) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((SetProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIJ$sp(long j) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((SetProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public long apply$mcJD$sp(double d) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((SetProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJF$sp(float f) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((SetProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJI$sp(int i) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((SetProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJJ$sp(long j) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((SetProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public void apply$mcVD$sp(double d) {
                    apply((SetProxy$$anon$1) BoxesRunTime.boxToDouble(d));
                }

                @Override // scala.Function1
                public void apply$mcVF$sp(float f) {
                    apply((SetProxy$$anon$1) BoxesRunTime.boxToFloat(f));
                }

                @Override // scala.Function1
                public void apply$mcVI$sp(int i) {
                    apply((SetProxy$$anon$1) BoxesRunTime.boxToInteger(i));
                }

                @Override // scala.Function1
                public void apply$mcVJ$sp(long j) {
                    apply((SetProxy$$anon$1) BoxesRunTime.boxToLong(j));
                }

                @Override // scala.Function1
                public boolean apply$mcZD$sp(double d) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((SetProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZF$sp(float f) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((SetProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZI$sp(int i) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((SetProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZJ$sp(long j) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((SetProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToBoolean;
                }

                @Override // scala.collection.IterableLike, scala.Equals
                public boolean canEqual(Object obj) {
                    return IterableLike.Cclass.canEqual(this, obj);
                }

                @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
                public void clear() {
                    SetLike.Cclass.clear(this);
                }

                @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Cloneable
                public Set<A> clone() {
                    return SetLike.Cclass.clone(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.mutable.Set, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public GenericCompanion<Set> companion() {
                    return Set.Cclass.companion(this);
                }

                @Override // scala.Function1
                public <A> Function1<A, Object> compose(Function1<A, A> function1) {
                    return Function1.Cclass.compose(this, function1);
                }

                @Override // scala.collection.GenSetLike, scala.collection.SetLike
                public boolean contains(A a) {
                    return SetProxyLike.Cclass.contains(this, a);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> void copyToArray(Object obj) {
                    TraversableProxyLike.Cclass.copyToArray(this, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> void copyToArray(Object obj, int i) {
                    TraversableProxyLike.Cclass.copyToArray(this, obj, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> void copyToArray(Object obj, int i, int i2) {
                    TraversableProxyLike.Cclass.copyToArray(this, obj, i, i2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> void copyToBuffer(Buffer<B> buffer) {
                    TraversableProxyLike.Cclass.copyToBuffer(this, buffer);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int count(Function1<A, Object> function1) {
                    return TraversableProxyLike.Cclass.count(this, function1);
                }

                @Override // scala.collection.GenSetLike, scala.collection.SetLike
                public scala.collection.Set diff(GenSet genSet) {
                    return SetProxyLike.Cclass.diff(this, genSet);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public scala.collection.Traversable drop(int i) {
                    return TraversableProxyLike.Cclass.drop(this, i);
                }

                @Override // scala.collection.IterableLike
                public scala.collection.Iterable dropRight(int i) {
                    return IterableProxyLike.Cclass.dropRight(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public scala.collection.Traversable dropWhile(Function1 function1) {
                    return TraversableProxyLike.Cclass.dropWhile(this, function1);
                }

                @Override // scala.collection.mutable.SetProxy, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
                public Object empty() {
                    return SetProxy.Cclass.empty(this);
                }

                @Override // scala.Equals
                public boolean equals(Object obj) {
                    return Proxy.Cclass.equals(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean exists(Function1<A, Object> function1) {
                    return TraversableProxyLike.Cclass.exists(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public scala.collection.Traversable filter(Function1 function1) {
                    return TraversableProxyLike.Cclass.filter(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
                public scala.collection.Traversable filterNot(Function1 function1) {
                    return TraversableProxyLike.Cclass.filterNot(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Option<A> find(Function1<A, Object> function1) {
                    return TraversableProxyLike.Cclass.find(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
                public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.flatMap(this, function1, canBuildFrom);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public GenTraversable flatten(Function1 function1) {
                    return GenericTraversableTemplate.Cclass.flatten(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B foldLeft(B b, Function2<B, A, B> function2) {
                    return (B) TraversableProxyLike.Cclass.foldLeft(this, b, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B foldRight(B b, Function2<A, B, B> function2) {
                    return (B) TraversableProxyLike.Cclass.foldRight(this, b, function2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean forall(Function1<A, Object> function1) {
                    return TraversableProxyLike.Cclass.forall(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public <B> void foreach(Function1<A, B> function1) {
                    TraversableProxyLike.Cclass.foreach(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> Builder<B, Set<B>> genericBuilder() {
                    return GenericTraversableTemplate.Cclass.genericBuilder(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> Map<K, Set<A>> groupBy(Function1<A, K> function1) {
                    return TraversableProxyLike.Cclass.groupBy(this, function1);
                }

                @Override // scala.collection.IterableLike
                public Iterator<Set<A>> grouped(int i) {
                    return IterableProxyLike.Cclass.grouped(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean hasDefiniteSize() {
                    return TraversableProxyLike.Cclass.hasDefiniteSize(this);
                }

                @Override // scala.collection.GenSetLike
                public int hashCode() {
                    return Proxy.Cclass.hashCode(this);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public A head() {
                    return TraversableProxyLike.Cclass.head(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> headOption() {
                    return TraversableProxyLike.Cclass.headOption(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public scala.collection.Traversable init() {
                    return TraversableProxyLike.Cclass.init(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<Set<A>> inits() {
                    return TraversableLike.Cclass.inits(this);
                }

                @Override // scala.collection.GenSetLike
                public scala.collection.Set intersect(GenSet genSet) {
                    return SetProxyLike.Cclass.intersect(this, genSet);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public boolean isEmpty() {
                    return SetProxyLike.Cclass.isEmpty(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
                public final boolean isTraversableAgain() {
                    return TraversableLike.Cclass.isTraversableAgain(this);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
                public Iterator<A> iterator() {
                    return IterableProxyLike.Cclass.iterator(this);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public A last() {
                    return TraversableProxyLike.Cclass.last(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> lastOption() {
                    return TraversableProxyLike.Cclass.lastOption(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
                public <B, That> That map(Function1<A, B> function1, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.map(this, function1, canBuildFrom);
                }

                @Override // scala.collection.mutable.Builder
                public <NewTo> Builder<A, NewTo> mapResult(Function1<Set<A>, NewTo> function1) {
                    return Builder.Cclass.mapResult(this, function1);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A max(Ordering<B> ordering) {
                    return TraversableProxyLike.Cclass.max(this, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering) {
                    return TraversableOnce.Cclass.maxBy(this, function1, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A min(Ordering<B> ordering) {
                    return TraversableProxyLike.Cclass.min(this, ordering);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> A minBy(Function1<A, B> function1, Ordering<B> ordering) {
                    return TraversableOnce.Cclass.minBy(this, function1, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString() {
                    return TraversableProxyLike.Cclass.mkString(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString(String str) {
                    return TraversableProxyLike.Cclass.mkString(this, str);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString(String str, String str2, String str3) {
                    return TraversableProxyLike.Cclass.mkString(this, str, str2, str3);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
                public Builder<A, Set<A>> newBuilder() {
                    return SetLike.Cclass.newBuilder(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean nonEmpty() {
                    return TraversableProxyLike.Cclass.nonEmpty(this);
                }

                @Override // scala.collection.Parallelizable
                public Parallel par() {
                    return Parallelizable.Cclass.par(this);
                }

                @Override // scala.collection.mutable.Iterable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
                public Combiner<A, ParSet<A>> parCombiner() {
                    return SetLike.Cclass.parCombiner(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Set<A>, Set<A>> partition(Function1<A, Object> function1) {
                    return TraversableProxyLike.Cclass.partition(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B product(Numeric<B> numeric) {
                    return (B) TraversableProxyLike.Cclass.product(this, numeric);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.reduce(this, function2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> B reduceLeft(Function2<B, A, B> function2) {
                    return (B) TraversableProxyLike.Cclass.reduceLeft(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceLeftOption(Function2<B, A, B> function2) {
                    return TraversableProxyLike.Cclass.reduceLeftOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                    return TraversableOnce.Cclass.reduceOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B reduceRight(Function2<A, B, B> function2) {
                    return (B) TraversableProxyLike.Cclass.reduceRight(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
                    return TraversableProxyLike.Cclass.reduceRightOption(this, function2);
                }

                @Override // scala.collection.mutable.SetLike
                public boolean remove(A a) {
                    return SetLike.Cclass.remove(this, a);
                }

                @Override // scala.collection.mutable.SetProxy, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
                public SetProxy<A> repr() {
                    return SetProxy.Cclass.repr(this);
                }

                @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder
                public Set<A> result() {
                    return SetLike.Cclass.result(this);
                }

                @Override // scala.collection.mutable.SetLike
                public void retain(Function1<A, Object> function1) {
                    SetLike.Cclass.retain(this, function1);
                }

                @Override // scala.collection.TraversableOnce
                public List<A> reversed() {
                    return TraversableOnce.Cclass.reversed(this);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B> boolean sameElements(GenIterable<B> genIterable) {
                    return IterableProxyLike.Cclass.sameElements(this, genIterable);
                }

                @Override // scala.collection.SetLike
                public /* synthetic */ Object scala$collection$SetLike$$super$map(Function1 function1, CanBuildFrom canBuildFrom) {
                    return TraversableLike.Cclass.map(this, function1, canBuildFrom);
                }

                @Override // scala.collection.mutable.Cloneable
                public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
                    return super.clone();
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.scanRight(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableProxyLike, scala.Proxy
                public Set<A> self() {
                    return this.self;
                }

                @Override // scala.collection.mutable.Set, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Set<A> seq() {
                    return Set.Cclass.seq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int size() {
                    return TraversableProxyLike.Cclass.size(this);
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

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public scala.collection.Traversable slice(int i, int i2) {
                    return TraversableProxyLike.Cclass.slice(this, i, i2);
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
                public Iterator<Set<A>> sliding(int i) {
                    return IterableProxyLike.Cclass.sliding(this, i);
                }

                @Override // scala.collection.IterableLike
                public Iterator<Set<A>> sliding(int i, int i2) {
                    return IterableProxyLike.Cclass.sliding(this, i, i2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Set<A>, Set<A>> span(Function1<A, Object> function1) {
                    return TraversableProxyLike.Cclass.span(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Set<A>, Set<A>> splitAt(int i) {
                    return TraversableProxyLike.Cclass.splitAt(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
                public String stringPrefix() {
                    return TraversableProxyLike.Cclass.stringPrefix(this);
                }

                @Override // scala.collection.GenSetLike, scala.collection.SortedSetLike
                public boolean subsetOf(GenSet<A> genSet) {
                    return SetProxyLike.Cclass.subsetOf(this, genSet);
                }

                @Override // scala.collection.SetLike
                public Iterator<Set<A>> subsets() {
                    return SetLike.Cclass.subsets(this);
                }

                @Override // scala.collection.SetLike
                public Iterator<Set<A>> subsets(int i) {
                    return SetLike.Cclass.subsets(this, i);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B sum(Numeric<B> numeric) {
                    return (B) TraversableProxyLike.Cclass.sum(this, numeric);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public scala.collection.Traversable tail() {
                    return TraversableProxyLike.Cclass.tail(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<Set<A>> tails() {
                    return TraversableLike.Cclass.tails(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public scala.collection.Traversable take(int i) {
                    return TraversableProxyLike.Cclass.take(this, i);
                }

                @Override // scala.collection.IterableLike
                public scala.collection.Iterable takeRight(int i) {
                    return IterableProxyLike.Cclass.takeRight(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public scala.collection.Traversable takeWhile(Function1 function1) {
                    return TraversableProxyLike.Cclass.takeWhile(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public scala.collection.Iterable<A> thisCollection() {
                    return IterableLike.Cclass.thisCollection(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                /* renamed from: to */
                public <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom) {
                    return (Col) TraversableLike.Cclass.m184to(this, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Object toArray(ClassTag<B> classTag) {
                    return TraversableProxyLike.Cclass.toArray(this, classTag);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Buffer<B> toBuffer() {
                    return TraversableProxyLike.Cclass.toBuffer(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public scala.collection.Iterable toCollection(Object obj) {
                    return IterableLike.Cclass.toCollection(this, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public IndexedSeq<A> toIndexedSeq() {
                    return TraversableProxyLike.Cclass.toIndexedSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public scala.collection.Iterable<A> toIterable() {
                    return TraversableProxyLike.Cclass.toIterable(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Iterator<A> toIterator() {
                    return TraversableProxyLike.Cclass.toIterator(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public List<A> toList() {
                    return TraversableProxyLike.Cclass.toList(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <T, U> Map<T, U> toMap(Predef$$less$colon$less<A, Tuple2<T, U>> predef$$less$colon$less) {
                    return TraversableProxyLike.Cclass.toMap(this, predef$$less$colon$less);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
                public Seq<A> toSeq() {
                    return TraversableProxyLike.Cclass.toSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
                public <B> scala.collection.immutable.Set<B> toSet() {
                    return TraversableProxyLike.Cclass.toSet(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Stream<A> toStream() {
                    return TraversableProxyLike.Cclass.toStream(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
                public String toString() {
                    return Proxy.Cclass.toString(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public scala.collection.Traversable<A> toTraversable() {
                    return TraversableProxyLike.Cclass.toTraversable(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Vector<A> toVector() {
                    return TraversableOnce.Cclass.toVector(this);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public GenTraversable transpose(Function1 function1) {
                    return GenericTraversableTemplate.Cclass.transpose(this, function1);
                }

                @Override // scala.collection.GenSetLike, scala.collection.SetLike
                public scala.collection.Set union(GenSet genSet) {
                    return SetProxyLike.Cclass.union(this, genSet);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<A, Tuple2<A1, A2>> function1) {
                    return GenericTraversableTemplate.Cclass.unzip(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1) {
                    return GenericTraversableTemplate.Cclass.unzip3(this, function1);
                }

                @Override // scala.collection.mutable.SetLike
                public void update(A a, boolean z) {
                    SetLike.Cclass.update(this, a, z);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Object view() {
                    return IterableProxyLike.Cclass.view(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public IterableView<A, Set<A>> view(int i, int i2) {
                    return IterableProxyLike.Cclass.view(this, i, i2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
                public FilterMonadic<A, Set<A>> withFilter(Function1<A, Object> function1) {
                    return TraversableLike.Cclass.withFilter(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Set<A>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<Set<A>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, That> That zipWithIndex(CanBuildFrom<Set<A>, Tuple2<A1, Object>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zipWithIndex(this, canBuildFrom);
                }
            };
        }

        public static SetProxy repr(SetProxy setProxy) {
            return setProxy;
        }
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    SetProxy<A> $minus(A a);

    @Override // scala.collection.mutable.SetLike, scala.collection.generic.Shrinkable
    SetProxy<A> $minus$eq(A a);

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    SetProxy<A> $plus(A a);

    @Override // scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable
    SetProxy<A> $plus$eq(A a);

    @Override // scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    Object empty();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    SetProxy<A> repr();
}
