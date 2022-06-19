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
import scala.collection.GenMapLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.IterableProxyLike;
import scala.collection.IterableView;
import scala.collection.Iterator;
import scala.collection.Map;
import scala.collection.MapLike;
import scala.collection.MapProxyLike;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Set;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.TraversableProxyLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.FilterMonadic;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.generic.Growable;
import scala.collection.generic.Shrinkable;
import scala.collection.generic.Shrinkable$$anonfun$$minus$minus$eq$1;
import scala.collection.generic.Subtractable;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Map;
import scala.collection.mutable.MapLike;
import scala.collection.mutable.MapProxy;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParMap;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0005=aaB\u0001\u0003!\u0003\r\t!\u0003\u0002\t\u001b\u0006\u0004\bK]8ys*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQQcH\n\u0005\u0001-y\u0011\u0005\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u0004B\u0001E\t\u0014=5\t!!\u0003\u0002\u0013\u0005\t\u0019Q*\u00199\u0011\u0005Q)B\u0002\u0001\u0003\u0006-\u0001\u0011\ra\u0006\u0002\u0002\u0003F\u0011\u0001d\u0007\t\u0003\u0019eI!A\u0007\u0004\u0003\u000f9{G\u000f[5oOB\u0011A\u0002H\u0005\u0003;\u0019\u00111!\u00118z!\t!r\u0004B\u0003!\u0001\t\u0007qCA\u0001C!\u0015\u00113e\u0005\u0010\u0010\u001b\u0005!\u0011B\u0001\u0013\u0005\u00051i\u0015\r\u001d)s_bLH*[6f\u0011\u00151\u0003\u0001\"\u0001(\u0003\u0019!\u0013N\\5uIQ\t\u0001\u0006\u0005\u0002\rS%\u0011!F\u0002\u0002\u0005+:LG\u000fC\u0003-\u0001\u0011%Q&\u0001\u0005oK^\u0004&o\u001c=z+\tq\u0013\u0007\u0006\u00020iA!\u0001\u0003A\n1!\t!\u0012\u0007B\u00033W\t\u00071G\u0001\u0002CcE\u0011ad\u0007\u0005\u0006k-\u0002\rAN\u0001\b]\u0016<8+\u001a7g!\u0011\u0001\u0012c\u0005\u0019\t\u000ba\u0002A\u0011I\u001d\u0002\tI,\u0007O]\u000b\u0002uA!\u0001\u0003A\n\u001f\u0011\u0015a\u0004\u0001\"\u0011:\u0003\u0015)W\u000e\u001d;z\u0011\u0015q\u0004\u0001\"\u0011@\u0003\u001d)\b\u000fZ1uK\u0012,\"\u0001Q\"\u0015\u0007\u0005#e\t\u0005\u0003\u0011\u0001M\u0011\u0005C\u0001\u000bD\t\u0015\u0011TH1\u00014\u0011\u0015)U\b1\u0001\u0014\u0003\rYW-\u001f\u0005\u0006\u000fv\u0002\rAQ\u0001\u0006m\u0006dW/\u001a\u0005\u0006\u0013\u0002!\tES\u0001\u0006IAdWo]\u000b\u0003\u0017:#\"\u0001T(\u0011\tA\t2#\u0014\t\u0003)9#QA\r%C\u0002MBQ\u0001\u0015%A\u0002E\u000b!a\u001b<\u0011\t1\u00116#T\u0005\u0003'\u001a\u0011a\u0001V;qY\u0016\u0014\u0004\"B%\u0001\t\u0003*VC\u0001,Z)\u00119&,X0\u0011\tA\u00011\u0003\u0017\t\u0003)e#QA\r+C\u0002MBQa\u0017+A\u0002q\u000bQ!\u001a7f[F\u0002B\u0001\u0004*\u00141\")a\f\u0016a\u00019\u0006)Q\r\\3ne!)\u0001\r\u0016a\u0001C\u0006)Q\r\\3ngB\u0019AB\u0019/\n\u0005\r4!A\u0003\u001fsKB,\u0017\r^3e}!)Q\r\u0001C!M\u0006QA\u0005\u001d7vg\u0012\u0002H.^:\u0016\u0005\u001dTGC\u00015l!\u0011\u0001\u0002aE5\u0011\u0005QQG!\u0002\u001ae\u0005\u0004\u0019\u0004\"\u00027e\u0001\u0004i\u0017A\u0001=t!\r\u0011c\u000e]\u0005\u0003_\u0012\u0011!cR3o)J\fg/\u001a:tC\ndWm\u00148dKB!ABU\nj\u0011\u0015\u0011\b\u0001\"\u0011t\u0003\u0019!S.\u001b8vgR\u0011!\b\u001e\u0005\u0006\u000bF\u0004\ra\u0005\u0005\u0006m\u0002!\te^\u0001\tIAdWo\u001d\u0013fcR\u0011\u00010_\u0007\u0002\u0001!)\u0001+\u001ea\u0001uB!ABU\n\u001f\u0011\u0015a\b\u0001\"\u0011~\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0002y}\")Qi\u001fa\u0001'!:\u0001!!\u0001\u0002\b\u0005-\u0001c\u0001\u0007\u0002\u0004%\u0019\u0011Q\u0001\u0004\u0003\u0015\u0011,\u0007O]3dCR,G-\t\u0002\u0002\n\u0005)\u0005K]8ys&tw\rI5tA\u0011,\u0007O]3dCR,G\r\t3vK\u0002\"x\u000e\t7bG.\u0004sN\u001a\u0011vg\u0016\u0004\u0013M\u001c3!G>l\u0007/\u001b7fe6bWM^3mAM,\b\u000f]8si:\n#!!\u0004\u0002\rIr\u0013'\r\u00181\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MapProxy.class */
public interface MapProxy<A, B> extends Map<A, B>, MapProxyLike<A, B, Map<A, B>> {

    /* renamed from: scala.collection.mutable.MapProxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/MapProxy$class.class */
    public abstract class Cclass {
        public static void $init$(MapProxy mapProxy) {
        }

        public static MapProxy empty(MapProxy mapProxy) {
            return new MapProxy<A, B>(mapProxy) { // from class: scala.collection.mutable.MapProxy$$anon$2
                private final Map<A, B> self;

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
                    GenMapLike.Cclass.$init$(this);
                    Function1.Cclass.$init$(this);
                    PartialFunction.Cclass.$init$(this);
                    Subtractable.Cclass.$init$(this);
                    MapLike.Cclass.$init$(this);
                    Map.Cclass.$init$(this);
                    Growable.Cclass.$init$(this);
                    Builder.Cclass.$init$(this);
                    Shrinkable.Cclass.$init$(this);
                    Cloneable.Cclass.$init$(this);
                    MapLike.Cclass.$init$(this);
                    Map.Cclass.$init$(this);
                    Proxy.Cclass.$init$(this);
                    TraversableProxyLike.Cclass.$init$(this);
                    IterableProxyLike.Cclass.$init$(this);
                    MapProxyLike.Cclass.$init$(this);
                    MapProxy.Cclass.$init$(this);
                    this.self = ((Map) mapProxy.self()).empty();
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $colon$bslash(B b, Function2<Tuple2<A, B>, B, B> function2) {
                    Object $colon$bslash;
                    $colon$bslash = self().$colon$bslash(b, function2);
                    return (B) $colon$bslash;
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $div$colon(B b, Function2<B, Tuple2<A, B>, B> function2) {
                    Object $div$colon;
                    $div$colon = self().$div$colon(b, function2);
                    return (B) $div$colon;
                }

                @Override // scala.collection.generic.Subtractable
                public Map<A, B> $minus(A a, A a2, Seq<A> seq) {
                    return MapLike.Cclass.$minus(this, a, a2, seq);
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
                public MapProxy<A, B> $minus(A a) {
                    MapProxy<A, B> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$minus((MapLike) a));
                    return newProxy;
                }

                @Override // scala.collection.generic.Shrinkable
                public Shrinkable<A> $minus$eq(A a, A a2, Seq<A> seq) {
                    return Shrinkable.Cclass.$minus$eq(this, a, a2, seq);
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
                public MapProxy<A, B> $minus$eq(A a) {
                    return ((MapLike) self()).$minus$eq((MapLike) a);
                }

                @Override // scala.collection.generic.Subtractable
                public Map<A, B> $minus$minus(GenTraversableOnce<A> genTraversableOnce) {
                    return MapLike.Cclass.$minus$minus(this, genTraversableOnce);
                }

                @Override // scala.collection.generic.Shrinkable
                public Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce) {
                    return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.GenMapLike, scala.collection.MapLike
                public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
                    Map<A, B1> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$plus((Tuple2) tuple2));
                    return newProxy;
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.MapLike
                public <B1> MapProxy<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
                    MapProxy<A, B1> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$plus((Tuple2) tuple2, (Tuple2) tuple22, (Seq) seq));
                    return newProxy;
                }

                @Override // scala.collection.generic.Growable
                public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
                    Growable $plus$plus$eq;
                    $plus$plus$eq = $plus$eq((MapProxy$$anon$2) obj).$plus$eq(obj2).$plus$plus$eq(seq);
                    return $plus$plus$eq;
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.mutable.MapLike
                public MapProxy<A, B> $plus$eq(Tuple2<A, B> tuple2) {
                    return ((MapLike) self()).$plus$eq((Tuple2) tuple2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
                    Object $plus$plus;
                    $plus$plus = self().$plus$plus(genTraversableOnce, canBuildFrom);
                    return (That) $plus$plus;
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.MapLike
                public <B1> MapProxy<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
                    MapProxy<A, B1> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$plus$plus((GenTraversableOnce) genTraversableOnce.seq()));
                    return newProxy;
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
                }

                @Override // scala.collection.generic.Growable
                public Growable<Tuple2<A, B>> $plus$plus$eq(TraversableOnce<Tuple2<A, B>> traversableOnce) {
                    return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
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
                    return MapProxyLike.Cclass.addString(this, stringBuilder, str, str2, str3);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<A, B>, B> function2, Function2<B, B, B> function22) {
                    return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
                }

                @Override // scala.PartialFunction, scala.Function1
                public <C> PartialFunction<A, C> andThen(Function1<B, C> function1) {
                    return PartialFunction.Cclass.andThen(this, function1);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
                @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
                public B apply(A a) {
                    return MapProxyLike.Cclass.apply(this, a);
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

                @Override // scala.collection.IterableLike, scala.Equals
                public boolean canEqual(Object obj) {
                    return IterableLike.Cclass.canEqual(this, obj);
                }

                @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
                public void clear() {
                    MapLike.Cclass.clear(this);
                }

                @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Cloneable
                public Map<A, B> clone() {
                    return MapLike.Cclass.clone(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<Tuple2<A, B>, B> partialFunction, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<Tuple2<A, B>, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public GenericCompanion<Iterable> companion() {
                    return Iterable.Cclass.companion(this);
                }

                @Override // scala.Function1
                public <A> Function1<A, B> compose(Function1<A, A> function1) {
                    return Function1.Cclass.compose(this, function1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public boolean contains(A a) {
                    return MapProxyLike.Cclass.contains(this, a);
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
                public int count(Function1<Tuple2<A, B>, Object> function1) {
                    return TraversableProxyLike.Cclass.count(this, function1);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                /* renamed from: default */
                public B mo6041default(A a) {
                    return MapProxyLike.Cclass.m6059default(this, a);
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

                @Override // scala.collection.mutable.MapProxy, scala.collection.mutable.Map, scala.collection.Map, scala.collection.MapLike
                public MapProxy<A, B> empty() {
                    return MapProxy.Cclass.empty(this);
                }

                @Override // scala.Equals
                public boolean equals(Object obj) {
                    return Proxy.Cclass.equals(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean exists(Function1<Tuple2<A, B>, Object> function1) {
                    return TraversableProxyLike.Cclass.exists(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public scala.collection.Traversable filter(Function1 function1) {
                    return TraversableProxyLike.Cclass.filter(this, function1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public scala.collection.Map<A, B> filterKeys(Function1<A, Object> function1) {
                    return MapProxyLike.Cclass.filterKeys(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
                public scala.collection.Map filterNot(Function1 function1) {
                    return MapProxyLike.Cclass.filterNot(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Option<Tuple2<A, B>> find(Function1<Tuple2<A, B>, Object> function1) {
                    return TraversableProxyLike.Cclass.find(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
                public <B, That> That flatMap(Function1<Tuple2<A, B>, GenTraversableOnce<B>> function1, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
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
                public <B> B foldLeft(B b, Function2<B, Tuple2<A, B>, B> function2) {
                    return (B) TraversableProxyLike.Cclass.foldLeft(this, b, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B foldRight(B b, Function2<Tuple2<A, B>, B, B> function2) {
                    return (B) TraversableProxyLike.Cclass.foldRight(this, b, function2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean forall(Function1<Tuple2<A, B>, Object> function1) {
                    return TraversableProxyLike.Cclass.forall(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public <B> void foreach(Function1<Tuple2<A, B>, B> function1) {
                    TraversableProxyLike.Cclass.foreach(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> Builder<B, Iterable<B>> genericBuilder() {
                    return GenericTraversableTemplate.Cclass.genericBuilder(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public Option<B> get(A a) {
                    return MapProxyLike.Cclass.get(this, a);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public <B1> B1 getOrElse(A a, Function0<B1> function0) {
                    return (B1) MapProxyLike.Cclass.getOrElse(this, a, function0);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [B, java.lang.Object] */
                @Override // scala.collection.mutable.MapLike
                public B getOrElseUpdate(A a, Function0<B> function0) {
                    return MapLike.Cclass.getOrElseUpdate(this, a, function0);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> scala.collection.immutable.Map<K, Map<A, B>> groupBy(Function1<Tuple2<A, B>, K> function1) {
                    return TraversableProxyLike.Cclass.groupBy(this, function1);
                }

                @Override // scala.collection.IterableLike
                public Iterator<Map<A, B>> grouped(int i) {
                    return IterableProxyLike.Cclass.grouped(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean hasDefiniteSize() {
                    return TraversableProxyLike.Cclass.hasDefiniteSize(this);
                }

                @Override // scala.collection.GenMapLike
                public int hashCode() {
                    return Proxy.Cclass.hashCode(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public Object head() {
                    return TraversableProxyLike.Cclass.head(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<Tuple2<A, B>> headOption() {
                    return TraversableProxyLike.Cclass.headOption(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public scala.collection.Traversable init() {
                    return TraversableProxyLike.Cclass.init(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<Map<A, B>> inits() {
                    return TraversableLike.Cclass.inits(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
                public boolean isDefinedAt(A a) {
                    return MapProxyLike.Cclass.isDefinedAt(this, a);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public boolean isEmpty() {
                    return MapProxyLike.Cclass.isEmpty(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
                public final boolean isTraversableAgain() {
                    return TraversableLike.Cclass.isTraversableAgain(this);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
                public Iterator<Tuple2<A, B>> iterator() {
                    return MapProxyLike.Cclass.iterator(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public Set<A> keySet() {
                    return MapProxyLike.Cclass.keySet(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public scala.collection.Iterable<A> keys() {
                    return MapProxyLike.Cclass.keys(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public Iterator<A> keysIterator() {
                    return MapProxyLike.Cclass.keysIterator(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Object last() {
                    return TraversableProxyLike.Cclass.last(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<Tuple2<A, B>> lastOption() {
                    return TraversableProxyLike.Cclass.lastOption(this);
                }

                @Override // scala.PartialFunction
                public Function1<A, Option<B>> lift() {
                    return PartialFunction.Cclass.lift(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
                public <B, That> That map(Function1<Tuple2<A, B>, B> function1, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.map(this, function1, canBuildFrom);
                }

                @Override // scala.collection.mutable.Builder
                public <NewTo> Builder<Tuple2<A, B>, NewTo> mapResult(Function1<Map<A, B>, NewTo> function1) {
                    return Builder.Cclass.mapResult(this, function1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public <C> scala.collection.Map<A, C> mapValues(Function1<B, C> function1) {
                    return MapProxyLike.Cclass.mapValues(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Object max(Ordering ordering) {
                    return TraversableProxyLike.Cclass.max(this, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Object maxBy(Function1 function1, Ordering ordering) {
                    return TraversableOnce.Cclass.maxBy(this, function1, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Object min(Ordering ordering) {
                    return TraversableProxyLike.Cclass.min(this, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Object minBy(Function1 function1, Ordering ordering) {
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
                public Builder<Tuple2<A, B>, Map<A, B>> newBuilder() {
                    return MapLike.Cclass.newBuilder(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean nonEmpty() {
                    return TraversableProxyLike.Cclass.nonEmpty(this);
                }

                @Override // scala.PartialFunction
                public <A1 extends A, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
                    return PartialFunction.Cclass.orElse(this, partialFunction);
                }

                @Override // scala.collection.Parallelizable
                public Parallel par() {
                    return Parallelizable.Cclass.par(this);
                }

                @Override // scala.collection.mutable.Iterable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
                public Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner() {
                    return MapLike.Cclass.parCombiner(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Map<A, B>, Map<A, B>> partition(Function1<Tuple2<A, B>, Object> function1) {
                    return TraversableProxyLike.Cclass.partition(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B product(Numeric<B> numeric) {
                    return (B) TraversableProxyLike.Cclass.product(this, numeric);
                }

                @Override // scala.collection.mutable.MapLike
                public Option<B> put(A a, B b) {
                    return MapLike.Cclass.put(this, a, b);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.reduce(this, function2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> B reduceLeft(Function2<B, Tuple2<A, B>, B> function2) {
                    return (B) TraversableProxyLike.Cclass.reduceLeft(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<A, B>, B> function2) {
                    return TraversableProxyLike.Cclass.reduceLeftOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                    return TraversableOnce.Cclass.reduceOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B reduceRight(Function2<Tuple2<A, B>, B, B> function2) {
                    return (B) TraversableProxyLike.Cclass.reduceRight(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceRightOption(Function2<Tuple2<A, B>, B, B> function2) {
                    return TraversableProxyLike.Cclass.reduceRightOption(this, function2);
                }

                @Override // scala.collection.mutable.MapLike
                public Option<B> remove(A a) {
                    return MapLike.Cclass.remove(this, a);
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
                public MapProxy<A, B> repr() {
                    return MapProxy.Cclass.repr(this);
                }

                @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder
                public Map<A, B> result() {
                    return MapLike.Cclass.result(this);
                }

                @Override // scala.collection.mutable.MapLike
                public MapLike<A, B, Map<A, B>> retain(Function2<A, B, Object> function2) {
                    return MapLike.Cclass.retain(this, function2);
                }

                @Override // scala.collection.TraversableOnce
                public List<Tuple2<A, B>> reversed() {
                    return TraversableOnce.Cclass.reversed(this);
                }

                @Override // scala.PartialFunction
                public <U> Function1<A, Object> runWith(Function1<B, U> function1) {
                    return PartialFunction.Cclass.runWith(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B> boolean sameElements(GenIterable<B> genIterable) {
                    return IterableProxyLike.Cclass.sameElements(this, genIterable);
                }

                @Override // scala.collection.mutable.Cloneable
                public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
                    return super.clone();
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanLeft(B b, Function2<B, Tuple2<A, B>, B> function2, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanRight(B b, Function2<Tuple2<A, B>, B, B> function2, CanBuildFrom<Map<A, B>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.scanRight(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableProxyLike, scala.Proxy
                public Map<A, B> self() {
                    return this.self;
                }

                @Override // scala.collection.mutable.Map, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Map<A, B> seq() {
                    return Map.Cclass.seq(this);
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
                public Iterator<Map<A, B>> sliding(int i) {
                    return IterableProxyLike.Cclass.sliding(this, i);
                }

                @Override // scala.collection.IterableLike
                public Iterator<Map<A, B>> sliding(int i, int i2) {
                    return IterableProxyLike.Cclass.sliding(this, i, i2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Map<A, B>, Map<A, B>> span(Function1<Tuple2<A, B>, Object> function1) {
                    return TraversableProxyLike.Cclass.span(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Map<A, B>, Map<A, B>> splitAt(int i) {
                    return TraversableProxyLike.Cclass.splitAt(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
                public String stringPrefix() {
                    return TraversableProxyLike.Cclass.stringPrefix(this);
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
                public Iterator<Map<A, B>> tails() {
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
                public scala.collection.Iterable<Tuple2<A, B>> thisCollection() {
                    return IterableLike.Cclass.thisCollection(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                /* renamed from: to */
                public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<A, B>, Col> canBuildFrom) {
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
                public IndexedSeq<Tuple2<A, B>> toIndexedSeq() {
                    return TraversableProxyLike.Cclass.toIndexedSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public scala.collection.Iterable<Tuple2<A, B>> toIterable() {
                    return TraversableProxyLike.Cclass.toIterable(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Iterator<Tuple2<A, B>> toIterator() {
                    return TraversableProxyLike.Cclass.toIterator(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public List<Tuple2<A, B>> toList() {
                    return TraversableProxyLike.Cclass.toList(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <T, U> scala.collection.immutable.Map<T, U> toMap(Predef$$less$colon$less<Tuple2<A, B>, Tuple2<T, U>> predef$$less$colon$less) {
                    return TraversableProxyLike.Cclass.toMap(this, predef$$less$colon$less);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
                public Seq<Tuple2<A, B>> toSeq() {
                    return TraversableProxyLike.Cclass.toSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
                public <B> scala.collection.immutable.Set<B> toSet() {
                    return TraversableProxyLike.Cclass.toSet(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Stream<Tuple2<A, B>> toStream() {
                    return TraversableProxyLike.Cclass.toStream(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
                public String toString() {
                    return Proxy.Cclass.toString(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public scala.collection.Traversable<Tuple2<A, B>> toTraversable() {
                    return TraversableProxyLike.Cclass.toTraversable(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Vector<Tuple2<A, B>> toVector() {
                    return TraversableOnce.Cclass.toVector(this);
                }

                @Override // scala.collection.mutable.MapLike
                public MapLike<A, B, Map<A, B>> transform(Function2<A, B, B> function2) {
                    return MapLike.Cclass.transform(this, function2);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public GenTraversable transpose(Function1 function1) {
                    return GenericTraversableTemplate.Cclass.transpose(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<Tuple2<A, B>, Tuple2<A1, A2>> function1) {
                    return GenericTraversableTemplate.Cclass.unzip(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<Tuple2<A, B>, Tuple3<A1, A2, A3>> function1) {
                    return GenericTraversableTemplate.Cclass.unzip3(this, function1);
                }

                @Override // scala.collection.mutable.MapLike
                public void update(A a, B b) {
                    MapLike.Cclass.update(this, a, b);
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.GenMap, scala.collection.MapLike
                public <B1> MapProxy<A, B1> updated(A a, B1 b1) {
                    return MapProxy.Cclass.updated(this, a, b1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public scala.collection.Iterable<B> values() {
                    return MapProxyLike.Cclass.values(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public Iterator<B> valuesIterator() {
                    return MapProxyLike.Cclass.valuesIterator(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Object view() {
                    return IterableProxyLike.Cclass.view(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public IterableView<Tuple2<A, B>, Map<A, B>> view(int i, int i2) {
                    return IterableProxyLike.Cclass.view(this, i, i2);
                }

                @Override // scala.collection.mutable.Map
                public Map<A, B> withDefault(Function1<A, B> function1) {
                    return Map.Cclass.withDefault(this, function1);
                }

                @Override // scala.collection.mutable.Map
                public Map<A, B> withDefaultValue(B b) {
                    return Map.Cclass.withDefaultValue(this, b);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
                public FilterMonadic<Tuple2<A, B>, Map<A, B>> withFilter(Function1<Tuple2<A, B>, Object> function1) {
                    return TraversableLike.Cclass.withFilter(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Map<A, B>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<Map<A, B>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, That> That zipWithIndex(CanBuildFrom<Map<A, B>, Tuple2<A1, Object>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zipWithIndex(this, canBuildFrom);
                }
            };
        }

        public static MapProxy newProxy(MapProxy mapProxy, Map map) {
            return new MapProxy<A, Object>(mapProxy, map) { // from class: scala.collection.mutable.MapProxy$$anon$1
                private final Map<A, Object> self;

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
                    GenMapLike.Cclass.$init$(this);
                    Function1.Cclass.$init$(this);
                    PartialFunction.Cclass.$init$(this);
                    Subtractable.Cclass.$init$(this);
                    MapLike.Cclass.$init$(this);
                    Map.Cclass.$init$(this);
                    Growable.Cclass.$init$(this);
                    Builder.Cclass.$init$(this);
                    Shrinkable.Cclass.$init$(this);
                    Cloneable.Cclass.$init$(this);
                    MapLike.Cclass.$init$(this);
                    Map.Cclass.$init$(this);
                    Proxy.Cclass.$init$(this);
                    TraversableProxyLike.Cclass.$init$(this);
                    IterableProxyLike.Cclass.$init$(this);
                    MapProxyLike.Cclass.$init$(this);
                    MapProxy.Cclass.$init$(this);
                    this.self = map;
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $colon$bslash(B b, Function2<Tuple2<A, Object>, B, B> function2) {
                    Object $colon$bslash;
                    $colon$bslash = self().$colon$bslash(b, function2);
                    return (B) $colon$bslash;
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $div$colon(B b, Function2<B, Tuple2<A, Object>, B> function2) {
                    Object $div$colon;
                    $div$colon = self().$div$colon(b, function2);
                    return (B) $div$colon;
                }

                @Override // scala.collection.generic.Subtractable
                public Map<A, Object> $minus(A a, A a2, Seq<A> seq) {
                    return MapLike.Cclass.$minus(this, a, a2, seq);
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
                public MapProxy<A, Object> $minus(A a) {
                    MapProxy<A, Object> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$minus((MapLike) a));
                    return newProxy;
                }

                @Override // scala.collection.generic.Shrinkable
                public Shrinkable<A> $minus$eq(A a, A a2, Seq<A> seq) {
                    return Shrinkable.Cclass.$minus$eq(this, a, a2, seq);
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
                public MapProxy<A, Object> $minus$eq(A a) {
                    return ((MapLike) self()).$minus$eq((MapLike) a);
                }

                @Override // scala.collection.generic.Subtractable
                public Map<A, Object> $minus$minus(GenTraversableOnce<A> genTraversableOnce) {
                    return MapLike.Cclass.$minus$minus(this, genTraversableOnce);
                }

                @Override // scala.collection.generic.Shrinkable
                public Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce) {
                    return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.GenMapLike, scala.collection.MapLike
                public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
                    Map<A, B1> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$plus((Tuple2) tuple2));
                    return newProxy;
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.MapLike
                public <B1> MapProxy<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
                    MapProxy<A, B1> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$plus((Tuple2) tuple2, (Tuple2) tuple22, (Seq) seq));
                    return newProxy;
                }

                @Override // scala.collection.generic.Growable
                public Growable $plus$eq(Object obj, Object obj2, Seq seq) {
                    Growable $plus$plus$eq;
                    $plus$plus$eq = $plus$eq((MapProxy$$anon$1) obj).$plus$eq(obj2).$plus$plus$eq(seq);
                    return $plus$plus$eq;
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.mutable.MapLike
                public MapProxy<A, Object> $plus$eq(Tuple2<A, Object> tuple2) {
                    return ((MapLike) self()).$plus$eq((Tuple2) tuple2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    Object $plus$plus;
                    $plus$plus = self().$plus$plus(genTraversableOnce, canBuildFrom);
                    return (That) $plus$plus;
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.MapLike
                public <B1> MapProxy<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce) {
                    MapProxy<A, B1> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$plus$plus((GenTraversableOnce) genTraversableOnce.seq()));
                    return newProxy;
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
                }

                @Override // scala.collection.generic.Growable
                public Growable<Tuple2<A, Object>> $plus$plus$eq(TraversableOnce<Tuple2<A, Object>> traversableOnce) {
                    return Growable.Cclass.$plus$plus$eq(this, traversableOnce);
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
                    return MapProxyLike.Cclass.addString(this, stringBuilder, str, str2, str3);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B aggregate(Function0<B> function0, Function2<B, Tuple2<A, Object>, B> function2, Function2<B, B, B> function22) {
                    return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
                }

                @Override // scala.PartialFunction, scala.Function1
                public <C> PartialFunction<A, C> andThen(Function1<Object, C> function1) {
                    return PartialFunction.Cclass.andThen(this, function1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
                public Object apply(A a) {
                    return MapProxyLike.Cclass.apply(this, a);
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

                @Override // scala.collection.IterableLike, scala.Equals
                public boolean canEqual(Object obj) {
                    return IterableLike.Cclass.canEqual(this, obj);
                }

                @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
                public void clear() {
                    MapLike.Cclass.clear(this);
                }

                @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Cloneable
                public Map<A, Object> clone() {
                    return MapLike.Cclass.clone(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<Tuple2<A, Object>, B> partialFunction, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<Tuple2<A, Object>, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public GenericCompanion<Iterable> companion() {
                    return Iterable.Cclass.companion(this);
                }

                @Override // scala.Function1
                public <A> Function1<A, Object> compose(Function1<A, A> function1) {
                    return Function1.Cclass.compose(this, function1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public boolean contains(A a) {
                    return MapProxyLike.Cclass.contains(this, a);
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
                public int count(Function1<Tuple2<A, Object>, Object> function1) {
                    return TraversableProxyLike.Cclass.count(this, function1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                /* renamed from: default */
                public Object mo6041default(A a) {
                    return MapProxyLike.Cclass.m6059default(this, a);
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

                @Override // scala.collection.mutable.MapProxy, scala.collection.mutable.Map, scala.collection.Map, scala.collection.MapLike
                public MapProxy<A, Object> empty() {
                    return MapProxy.Cclass.empty(this);
                }

                @Override // scala.Equals
                public boolean equals(Object obj) {
                    return Proxy.Cclass.equals(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean exists(Function1<Tuple2<A, Object>, Object> function1) {
                    return TraversableProxyLike.Cclass.exists(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public scala.collection.Traversable filter(Function1 function1) {
                    return TraversableProxyLike.Cclass.filter(this, function1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public scala.collection.Map<A, Object> filterKeys(Function1<A, Object> function1) {
                    return MapProxyLike.Cclass.filterKeys(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
                public scala.collection.Map filterNot(Function1 function1) {
                    return MapProxyLike.Cclass.filterNot(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Option<Tuple2<A, Object>> find(Function1<Tuple2<A, Object>, Object> function1) {
                    return TraversableProxyLike.Cclass.find(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
                public <B, That> That flatMap(Function1<Tuple2<A, Object>, GenTraversableOnce<B>> function1, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
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
                public <B> B foldLeft(B b, Function2<B, Tuple2<A, Object>, B> function2) {
                    return (B) TraversableProxyLike.Cclass.foldLeft(this, b, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B foldRight(B b, Function2<Tuple2<A, Object>, B, B> function2) {
                    return (B) TraversableProxyLike.Cclass.foldRight(this, b, function2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean forall(Function1<Tuple2<A, Object>, Object> function1) {
                    return TraversableProxyLike.Cclass.forall(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public <B> void foreach(Function1<Tuple2<A, Object>, B> function1) {
                    TraversableProxyLike.Cclass.foreach(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> Builder<B, Iterable<B>> genericBuilder() {
                    return GenericTraversableTemplate.Cclass.genericBuilder(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public Option<Object> get(A a) {
                    return MapProxyLike.Cclass.get(this, a);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public <B1> B1 getOrElse(A a, Function0<B1> function0) {
                    return (B1) MapProxyLike.Cclass.getOrElse(this, a, function0);
                }

                @Override // scala.collection.mutable.MapLike
                public Object getOrElseUpdate(A a, Function0<Object> function0) {
                    return MapLike.Cclass.getOrElseUpdate(this, a, function0);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> scala.collection.immutable.Map<K, Map<A, Object>> groupBy(Function1<Tuple2<A, Object>, K> function1) {
                    return TraversableProxyLike.Cclass.groupBy(this, function1);
                }

                @Override // scala.collection.IterableLike
                public Iterator<Map<A, Object>> grouped(int i) {
                    return IterableProxyLike.Cclass.grouped(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean hasDefiniteSize() {
                    return TraversableProxyLike.Cclass.hasDefiniteSize(this);
                }

                @Override // scala.collection.GenMapLike
                public int hashCode() {
                    return Proxy.Cclass.hashCode(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public Object head() {
                    return TraversableProxyLike.Cclass.head(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<Tuple2<A, Object>> headOption() {
                    return TraversableProxyLike.Cclass.headOption(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public scala.collection.Traversable init() {
                    return TraversableProxyLike.Cclass.init(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<Map<A, Object>> inits() {
                    return TraversableLike.Cclass.inits(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
                public boolean isDefinedAt(A a) {
                    return MapProxyLike.Cclass.isDefinedAt(this, a);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public boolean isEmpty() {
                    return MapProxyLike.Cclass.isEmpty(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
                public final boolean isTraversableAgain() {
                    return TraversableLike.Cclass.isTraversableAgain(this);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
                public Iterator<Tuple2<A, Object>> iterator() {
                    return MapProxyLike.Cclass.iterator(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public Set<A> keySet() {
                    return MapProxyLike.Cclass.keySet(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public scala.collection.Iterable<A> keys() {
                    return MapProxyLike.Cclass.keys(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public Iterator<A> keysIterator() {
                    return MapProxyLike.Cclass.keysIterator(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Object last() {
                    return TraversableProxyLike.Cclass.last(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<Tuple2<A, Object>> lastOption() {
                    return TraversableProxyLike.Cclass.lastOption(this);
                }

                @Override // scala.PartialFunction
                public Function1<A, Option<Object>> lift() {
                    return PartialFunction.Cclass.lift(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
                public <B, That> That map(Function1<Tuple2<A, Object>, B> function1, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.map(this, function1, canBuildFrom);
                }

                @Override // scala.collection.mutable.Builder
                public <NewTo> Builder<Tuple2<A, Object>, NewTo> mapResult(Function1<Map<A, Object>, NewTo> function1) {
                    return Builder.Cclass.mapResult(this, function1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public <C> scala.collection.Map<A, C> mapValues(Function1<Object, C> function1) {
                    return MapProxyLike.Cclass.mapValues(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Object max(Ordering ordering) {
                    return TraversableProxyLike.Cclass.max(this, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Object maxBy(Function1 function1, Ordering ordering) {
                    return TraversableOnce.Cclass.maxBy(this, function1, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Object min(Ordering ordering) {
                    return TraversableProxyLike.Cclass.min(this, ordering);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Object minBy(Function1 function1, Ordering ordering) {
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
                public Builder<Tuple2<A, Object>, Map<A, Object>> newBuilder() {
                    return MapLike.Cclass.newBuilder(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean nonEmpty() {
                    return TraversableProxyLike.Cclass.nonEmpty(this);
                }

                @Override // scala.PartialFunction
                public <A1 extends A, B1> PartialFunction<A1, B1> orElse(PartialFunction<A1, B1> partialFunction) {
                    return PartialFunction.Cclass.orElse(this, partialFunction);
                }

                @Override // scala.collection.Parallelizable
                public Parallel par() {
                    return Parallelizable.Cclass.par(this);
                }

                @Override // scala.collection.mutable.Iterable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
                public Combiner<Tuple2<A, Object>, ParMap<A, Object>> parCombiner() {
                    return MapLike.Cclass.parCombiner(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Map<A, Object>, Map<A, Object>> partition(Function1<Tuple2<A, Object>, Object> function1) {
                    return TraversableProxyLike.Cclass.partition(this, function1);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B product(Numeric<B> numeric) {
                    return (B) TraversableProxyLike.Cclass.product(this, numeric);
                }

                @Override // scala.collection.mutable.MapLike
                public Option<Object> put(A a, Object obj) {
                    return MapLike.Cclass.put(this, a, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.reduce(this, function2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> B reduceLeft(Function2<B, Tuple2<A, Object>, B> function2) {
                    return (B) TraversableProxyLike.Cclass.reduceLeft(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceLeftOption(Function2<B, Tuple2<A, Object>, B> function2) {
                    return TraversableProxyLike.Cclass.reduceLeftOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                    return TraversableOnce.Cclass.reduceOption(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B reduceRight(Function2<Tuple2<A, Object>, B, B> function2) {
                    return (B) TraversableProxyLike.Cclass.reduceRight(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceRightOption(Function2<Tuple2<A, Object>, B, B> function2) {
                    return TraversableProxyLike.Cclass.reduceRightOption(this, function2);
                }

                @Override // scala.collection.mutable.MapLike
                public Option<Object> remove(A a) {
                    return MapLike.Cclass.remove(this, a);
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
                public MapProxy<A, Object> repr() {
                    return MapProxy.Cclass.repr(this);
                }

                @Override // scala.collection.mutable.MapLike, scala.collection.mutable.Builder
                public Map<A, Object> result() {
                    return MapLike.Cclass.result(this);
                }

                @Override // scala.collection.mutable.MapLike
                public MapLike<A, Object, Map<A, Object>> retain(Function2<A, Object, Object> function2) {
                    return MapLike.Cclass.retain(this, function2);
                }

                @Override // scala.collection.TraversableOnce
                public List<Tuple2<A, Object>> reversed() {
                    return TraversableOnce.Cclass.reversed(this);
                }

                @Override // scala.PartialFunction
                public <U> Function1<A, Object> runWith(Function1<Object, U> function1) {
                    return PartialFunction.Cclass.runWith(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B> boolean sameElements(GenIterable<B> genIterable) {
                    return IterableProxyLike.Cclass.sameElements(this, genIterable);
                }

                @Override // scala.collection.mutable.Cloneable
                public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
                    return super.clone();
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanLeft(B b, Function2<B, Tuple2<A, Object>, B> function2, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanRight(B b, Function2<Tuple2<A, Object>, B, B> function2, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.scanRight(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableProxyLike, scala.Proxy
                public Map<A, Object> self() {
                    return this.self;
                }

                @Override // scala.collection.mutable.Map, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Map<A, Object> seq() {
                    return Map.Cclass.seq(this);
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
                public Iterator<Map<A, Object>> sliding(int i) {
                    return IterableProxyLike.Cclass.sliding(this, i);
                }

                @Override // scala.collection.IterableLike
                public Iterator<Map<A, Object>> sliding(int i, int i2) {
                    return IterableProxyLike.Cclass.sliding(this, i, i2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Map<A, Object>, Map<A, Object>> span(Function1<Tuple2<A, Object>, Object> function1) {
                    return TraversableProxyLike.Cclass.span(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Map<A, Object>, Map<A, Object>> splitAt(int i) {
                    return TraversableProxyLike.Cclass.splitAt(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
                public String stringPrefix() {
                    return TraversableProxyLike.Cclass.stringPrefix(this);
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
                public Iterator<Map<A, Object>> tails() {
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
                public scala.collection.Iterable<Tuple2<A, Object>> thisCollection() {
                    return IterableLike.Cclass.thisCollection(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                /* renamed from: to */
                public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<A, Object>, Col> canBuildFrom) {
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
                public IndexedSeq<Tuple2<A, Object>> toIndexedSeq() {
                    return TraversableProxyLike.Cclass.toIndexedSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public scala.collection.Iterable<Tuple2<A, Object>> toIterable() {
                    return TraversableProxyLike.Cclass.toIterable(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Iterator<Tuple2<A, Object>> toIterator() {
                    return TraversableProxyLike.Cclass.toIterator(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public List<Tuple2<A, Object>> toList() {
                    return TraversableProxyLike.Cclass.toList(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <T, U> scala.collection.immutable.Map<T, U> toMap(Predef$$less$colon$less<Tuple2<A, Object>, Tuple2<T, U>> predef$$less$colon$less) {
                    return TraversableProxyLike.Cclass.toMap(this, predef$$less$colon$less);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
                public Seq<Tuple2<A, Object>> toSeq() {
                    return TraversableProxyLike.Cclass.toSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
                public <B> scala.collection.immutable.Set<B> toSet() {
                    return TraversableProxyLike.Cclass.toSet(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Stream<Tuple2<A, Object>> toStream() {
                    return TraversableProxyLike.Cclass.toStream(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
                public String toString() {
                    return Proxy.Cclass.toString(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public scala.collection.Traversable<Tuple2<A, Object>> toTraversable() {
                    return TraversableProxyLike.Cclass.toTraversable(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public Vector<Tuple2<A, Object>> toVector() {
                    return TraversableOnce.Cclass.toVector(this);
                }

                @Override // scala.collection.mutable.MapLike
                public MapLike<A, Object, Map<A, Object>> transform(Function2<A, Object, Object> function2) {
                    return MapLike.Cclass.transform(this, function2);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public GenTraversable transpose(Function1 function1) {
                    return GenericTraversableTemplate.Cclass.transpose(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<Tuple2<A, Object>, Tuple2<A1, A2>> function1) {
                    return GenericTraversableTemplate.Cclass.unzip(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<Tuple2<A, Object>, Tuple3<A1, A2, A3>> function1) {
                    return GenericTraversableTemplate.Cclass.unzip3(this, function1);
                }

                @Override // scala.collection.mutable.MapLike
                public void update(A a, Object obj) {
                    MapLike.Cclass.update(this, a, obj);
                }

                @Override // scala.collection.mutable.MapProxy, scala.collection.GenMap, scala.collection.MapLike
                public <B1> MapProxy<A, B1> updated(A a, B1 b1) {
                    return MapProxy.Cclass.updated(this, a, b1);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public scala.collection.Iterable<Object> values() {
                    return MapProxyLike.Cclass.values(this);
                }

                @Override // scala.collection.GenMapLike, scala.collection.MapLike
                public Iterator<Object> valuesIterator() {
                    return MapProxyLike.Cclass.valuesIterator(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Object view() {
                    return IterableProxyLike.Cclass.view(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public IterableView<Tuple2<A, Object>, Map<A, Object>> view(int i, int i2) {
                    return IterableProxyLike.Cclass.view(this, i, i2);
                }

                @Override // scala.collection.mutable.Map
                public Map<A, Object> withDefault(Function1<A, Object> function1) {
                    return Map.Cclass.withDefault(this, function1);
                }

                @Override // scala.collection.mutable.Map
                public Map<A, Object> withDefaultValue(Object obj) {
                    return Map.Cclass.withDefaultValue(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
                public FilterMonadic<Tuple2<A, Object>, Map<A, Object>> withFilter(Function1<Tuple2<A, Object>, Object> function1) {
                    return TraversableLike.Cclass.withFilter(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Map<A, Object>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<Map<A, Object>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, That> That zipWithIndex(CanBuildFrom<Map<A, Object>, Tuple2<A1, Object>, That> canBuildFrom) {
                    return (That) IterableProxyLike.Cclass.zipWithIndex(this, canBuildFrom);
                }
            };
        }

        public static MapProxy repr(MapProxy mapProxy) {
            return mapProxy;
        }

        public static MapProxy updated(MapProxy mapProxy, Object obj, Object obj2) {
            return newProxy(mapProxy, ((MapLike) mapProxy.self()).updated((MapLike) obj, obj2));
        }
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    MapProxy<A, B> $minus(A a);

    @Override // scala.collection.mutable.MapLike, scala.collection.generic.Shrinkable
    MapProxy<A, B> $minus$eq(A a);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2);

    @Override // scala.collection.MapLike
    <B1> MapProxy<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq);

    @Override // scala.collection.mutable.MapLike
    MapProxy<A, B> $plus$eq(Tuple2<A, B> tuple2);

    @Override // scala.collection.MapLike
    <B1> MapProxy<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce);

    @Override // scala.collection.mutable.Map, scala.collection.Map, scala.collection.MapLike
    MapProxy<A, B> empty();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    MapProxy<A, B> repr();

    @Override // scala.collection.GenMap, scala.collection.MapLike
    <B1> MapProxy<A, B1> updated(A a, B1 b1);
}
