package scala.collection.immutable;

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
import scala.collection.GenSet;
import scala.collection.GenSetLike;
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
import scala.collection.generic.Subtractable;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Map;
import scala.collection.immutable.MapLike;
import scala.collection.immutable.MapProxy;
import scala.collection.immutable.Set;
import scala.collection.immutable.SetProxy;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParMap;
import scala.collection.parallel.immutable.ParSet;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u0005MbaB\u0001\u0003!\u0003\r\t!\u0003\u0002\t\u001b\u0006\u0004\bK]8ys*\u00111\u0001B\u0001\nS6lW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001)2AC\u000b '\u0011\u00011bD\u0011\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\r\u0005\u0003\u0011#MqR\"\u0001\u0002\n\u0005I\u0011!aA'baB\u0011A#\u0006\u0007\u0001\t\u00151\u0002A1\u0001\u0018\u0005\u0005\t\u0015C\u0001\r\u001c!\ta\u0011$\u0003\u0002\u001b\r\t9aj\u001c;iS:<\u0007C\u0001\u0007\u001d\u0013\tibAA\u0002B]f\u0004\"\u0001F\u0010\u0005\r\u0001\u0002AQ1\u0001\u0018\u0005\u0005\u0011\u0005#\u0002\u0012$'yyQ\"\u0001\u0003\n\u0005\u0011\"!\u0001D'baB\u0013x\u000e_=MS.,\u0007\"\u0002\u0014\u0001\t\u00039\u0013A\u0002\u0013j]&$H\u0005F\u0001)!\ta\u0011&\u0003\u0002+\r\t!QK\\5u\u0011\u0015a\u0003\u0001\"\u0011.\u0003\u0011\u0011X\r\u001d:\u0016\u00039\u0002B\u0001\u0005\u0001\u0014=!)\u0001\u0007\u0001C\u0005c\u0005Aa.Z<Qe>D\u00180\u0006\u00023kQ\u00111\u0007\u000f\t\u0005!\u0001\u0019B\u0007\u0005\u0002\u0015k\u0011)ag\fb\u0001o\t\u0011!)M\t\u0003=mAQ!O\u0018A\u0002i\nqA\\3x'\u0016dg\r\u0005\u0003\u0011#M!\u0004\"\u0002\u001f\u0001\t\u0003j\u0013!B3naRL\b\"\u0002 \u0001\t\u0003z\u0014aB;qI\u0006$X\rZ\u000b\u0003\u0001\u000e#2!\u0011#G!\u0011\u0001\u0002a\u0005\"\u0011\u0005Q\u0019E!\u0002\u001c>\u0005\u00049\u0004\"B#>\u0001\u0004\u0019\u0012aA6fs\")q)\u0010a\u0001\u0005\u0006)a/\u00197vK\")\u0011\n\u0001C!\u0015\u00061A%\\5okN$\"AL&\t\u000b\u0015C\u0005\u0019A\n\t\u000b5\u0003A\u0011\t(\u0002\u000b\u0011\u0002H.^:\u0016\u0005=\u0013FC\u0001)T!\u0011\u0001\u0012cE)\u0011\u0005Q\u0011F!\u0002\u001cM\u0005\u00049\u0004\"\u0002+M\u0001\u0004)\u0016AA6w!\u0011aakE)\n\u0005]3!A\u0002+va2,'\u0007C\u0003N\u0001\u0011\u0005\u0013,\u0006\u0002[;R!1LX1d!\u0011\u0001\u0002a\u0005/\u0011\u0005QiF!\u0002\u001cY\u0005\u00049\u0004\"B0Y\u0001\u0004\u0001\u0017!B3mK6\f\u0004\u0003\u0002\u0007W'qCQA\u0019-A\u0002\u0001\fQ!\u001a7f[JBQ\u0001\u001a-A\u0002\u0015\fQ!\u001a7f[N\u00042\u0001\u00044a\u0013\t9gA\u0001\u0006=e\u0016\u0004X-\u0019;fIzBQ!\u001b\u0001\u0005B)\f!\u0002\n9mkN$\u0003\u000f\\;t+\tYg\u000e\u0006\u0002m_B!\u0001\u0003A\nn!\t!b\u000eB\u00037Q\n\u0007q\u0007C\u0003qQ\u0002\u0007\u0011/\u0001\u0002ygB\u0019!E\u001d;\n\u0005M$!AE$f]R\u0013\u0018M^3sg\u0006\u0014G.Z(oG\u0016\u0004B\u0001\u0004,\u0014[\")a\u000f\u0001C!o\u000611.Z=TKR,\u0012\u0001\u001f\t\u0004!e\u001c\u0012B\u0001>\u0003\u0005\r\u0019V\r\u001e\u0005\u0006y\u0002!\t%`\u0001\u000bM&dG/\u001a:LKf\u001cHCA\b\u007f\u0011\u0019y8\u00101\u0001\u0002\u0002\u0005\t\u0001\u000f\u0005\u0004\r\u0003\u0007\u0019\u0012qA\u0005\u0004\u0003\u000b1!!\u0003$v]\u000e$\u0018n\u001c82!\ra\u0011\u0011B\u0005\u0004\u0003\u00171!a\u0002\"p_2,\u0017M\u001c\u0005\b\u0003\u001f\u0001A\u0011IA\t\u0003%i\u0017\r\u001d,bYV,7/\u0006\u0003\u0002\u0014\u0005eA\u0003BA\u000b\u0003;\u0001R\u0001E\t\u0014\u0003/\u00012\u0001FA\r\t\u001d\tY\"!\u0004C\u0002]\u0011\u0011a\u0011\u0005\t\u0003?\ti\u00011\u0001\u0002\"\u0005\ta\r\u0005\u0004\r\u0003\u0007q\u0012q\u0003\u0015\b\u0001\u0005\u0015\u00121FA\u0018!\ra\u0011qE\u0005\u0004\u0003S1!A\u00033faJ,7-\u0019;fI\u0006\u0012\u0011QF\u0001F!J|\u00070_5oO\u0002J7\u000f\t3faJ,7-\u0019;fI\u0002\"W/\u001a\u0011u_\u0002b\u0017mY6!_\u001a\u0004So]3!C:$\u0007eY8na&dWM]\u0017mKZ,G\u000eI:vaB|'\u000f\u001e\u0018\"\u0005\u0005E\u0012A\u0002\u001a/cEr\u0003\u0007")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/MapProxy.class */
public interface MapProxy<A, B> extends Map<A, B>, MapProxyLike<A, B, Map<A, B>> {

    /* renamed from: scala.collection.immutable.MapProxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/MapProxy$class.class */
    public abstract class Cclass {
        public static void $init$(MapProxy mapProxy) {
        }

        public static MapProxy empty(MapProxy mapProxy) {
            return newProxy(mapProxy, ((Map) mapProxy.self()).empty());
        }

        public static Map filterKeys(MapProxy mapProxy, Function1 function1) {
            return ((MapLike) mapProxy.self()).filterKeys(function1);
        }

        public static Set keySet(MapProxy mapProxy) {
            return new SetProxy<A>(mapProxy) { // from class: scala.collection.immutable.MapProxy$$anon$2
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
                    Set.Cclass.$init$(this);
                    Proxy.Cclass.$init$(this);
                    TraversableProxyLike.Cclass.$init$(this);
                    IterableProxyLike.Cclass.$init$(this);
                    SetProxyLike.Cclass.$init$(this);
                    SetProxy.Cclass.$init$(this);
                    this.self = ((MapLike) mapProxy.self()).keySet();
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

                @Override // scala.collection.generic.Subtractable
                public Subtractable $minus(Object obj, Object obj2, Seq seq) {
                    Subtractable $minus$minus;
                    $minus$minus = $minus((MapProxy$$anon$2) obj).$minus(obj2).$minus$minus(seq);
                    return $minus$minus;
                }

                @Override // scala.collection.immutable.SetProxy, scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
                public SetProxy<A> $minus(A a) {
                    SetProxy<A> newProxy;
                    newProxy = SetProxy.Cclass.newProxy(this, (Set) ((SetLike) self()).$minus((SetLike) a));
                    return newProxy;
                }

                @Override // scala.collection.generic.Subtractable
                public Subtractable $minus$minus(GenTraversableOnce genTraversableOnce) {
                    return Subtractable.Cclass.$minus$minus(this, genTraversableOnce);
                }

                @Override // scala.collection.SetLike
                public scala.collection.Set $plus(Object obj, Object obj2, Seq seq) {
                    scala.collection.Set $plus$plus;
                    $plus$plus = $plus((MapProxy$$anon$2) ((SetLike) obj)).$plus((scala.collection.Set) obj2).$plus$plus(seq);
                    return $plus$plus;
                }

                @Override // scala.collection.immutable.SetProxy, scala.collection.GenSetLike, scala.collection.SetLike
                public SetProxy<A> $plus(A a) {
                    SetProxy<A> newProxy;
                    newProxy = SetProxy.Cclass.newProxy(this, (Set) ((SetLike) self()).$plus((SetLike) a));
                    return newProxy;
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    Object $plus$plus;
                    $plus$plus = self().$plus$plus(genTraversableOnce, canBuildFrom);
                    return (That) $plus$plus;
                }

                @Override // scala.collection.SetLike
                public scala.collection.Set $plus$plus(GenTraversableOnce genTraversableOnce) {
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
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((MapProxy$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDF$sp(float f) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((MapProxy$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDI$sp(int i) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((MapProxy$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDJ$sp(long j) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((MapProxy$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public float apply$mcFD$sp(double d) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((MapProxy$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFF$sp(float f) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((MapProxy$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFI$sp(int i) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((MapProxy$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFJ$sp(long j) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((MapProxy$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public int apply$mcID$sp(double d) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((MapProxy$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIF$sp(float f) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((MapProxy$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcII$sp(int i) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((MapProxy$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIJ$sp(long j) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((MapProxy$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public long apply$mcJD$sp(double d) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((MapProxy$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJF$sp(float f) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((MapProxy$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJI$sp(int i) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((MapProxy$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJJ$sp(long j) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((MapProxy$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public void apply$mcVD$sp(double d) {
                    apply((MapProxy$$anon$2) BoxesRunTime.boxToDouble(d));
                }

                @Override // scala.Function1
                public void apply$mcVF$sp(float f) {
                    apply((MapProxy$$anon$2) BoxesRunTime.boxToFloat(f));
                }

                @Override // scala.Function1
                public void apply$mcVI$sp(int i) {
                    apply((MapProxy$$anon$2) BoxesRunTime.boxToInteger(i));
                }

                @Override // scala.Function1
                public void apply$mcVJ$sp(long j) {
                    apply((MapProxy$$anon$2) BoxesRunTime.boxToLong(j));
                }

                @Override // scala.Function1
                public boolean apply$mcZD$sp(double d) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((MapProxy$$anon$2) BoxesRunTime.boxToDouble(d)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZF$sp(float f) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((MapProxy$$anon$2) BoxesRunTime.boxToFloat(f)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZI$sp(int i) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((MapProxy$$anon$2) BoxesRunTime.boxToInteger(i)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZJ$sp(long j) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((MapProxy$$anon$2) BoxesRunTime.boxToLong(j)));
                    return unboxToBoolean;
                }

                @Override // scala.collection.IterableLike, scala.Equals
                public boolean canEqual(Object obj) {
                    return IterableLike.Cclass.canEqual(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<Set<A>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
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

                @Override // scala.collection.immutable.SetProxy, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
                public SetProxy<A> empty() {
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

                @Override // scala.collection.immutable.Set, scala.collection.immutable.Iterable
                public Combiner<A, ParSet<A>> parCombiner() {
                    return Set.Cclass.parCombiner(this);
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

                @Override // scala.collection.immutable.SetProxy, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
                public SetProxy<A> repr() {
                    return SetProxy.Cclass.repr(this);
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

                @Override // scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Set<A> seq() {
                    return Set.Cclass.seq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int size() {
                    return TraversableProxyLike.Cclass.size(this);
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

                @Override // scala.collection.immutable.Set
                public <B> Set<B> toSet() {
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

        public static Map mapValues(MapProxy mapProxy, Function1 function1) {
            return ((MapLike) mapProxy.self()).mapValues(function1);
        }

        public static MapProxy newProxy(MapProxy mapProxy, Map map) {
            return new MapProxy<A, Object>(mapProxy, map) { // from class: scala.collection.immutable.MapProxy$$anon$1
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
                public Subtractable $minus(Object obj, Object obj2, Seq seq) {
                    Subtractable $minus$minus;
                    $minus$minus = $minus((MapProxy$$anon$1) obj).$minus(obj2).$minus$minus(seq);
                    return $minus$minus;
                }

                @Override // scala.collection.immutable.MapProxy, scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
                public MapProxy<A, Object> $minus(A a) {
                    MapProxy<A, Object> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, (Map) ((scala.collection.MapLike) self()).$minus((scala.collection.MapLike) a));
                    return newProxy;
                }

                @Override // scala.collection.generic.Subtractable
                public Subtractable $minus$minus(GenTraversableOnce genTraversableOnce) {
                    return Subtractable.Cclass.$minus$minus(this, genTraversableOnce);
                }

                @Override // scala.collection.immutable.MapProxy, scala.collection.immutable.Map, scala.collection.GenMapLike, scala.collection.MapLike
                public <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2) {
                    Map<A, B1> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((Map) self()).$plus((Tuple2) tuple2));
                    return newProxy;
                }

                @Override // scala.collection.immutable.MapProxy, scala.collection.MapLike
                public <B1> MapProxy<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq) {
                    MapProxy<A, B1> newProxy;
                    newProxy = MapProxy.Cclass.newProxy(this, ((MapLike) self()).$plus((Tuple2) tuple2, (Tuple2) tuple22, (Seq) seq));
                    return newProxy;
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    Object $plus$plus;
                    $plus$plus = self().$plus$plus(genTraversableOnce, canBuildFrom);
                    return (That) $plus$plus;
                }

                @Override // scala.collection.immutable.MapProxy, scala.collection.MapLike
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

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<Tuple2<A, Object>, B> partialFunction, CanBuildFrom<Map<A, Object>, B, That> canBuildFrom) {
                    return (That) TraversableProxyLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<Tuple2<A, Object>, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
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

                @Override // scala.collection.immutable.MapProxy, scala.collection.immutable.Map, scala.collection.Map, scala.collection.MapLike
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

                @Override // scala.collection.immutable.MapProxy, scala.collection.GenMapLike, scala.collection.MapLike
                public Map<A, Object> filterKeys(Function1<A, Object> function1) {
                    return MapProxy.Cclass.filterKeys(this, function1);
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

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> Map<K, Map<A, Object>> groupBy(Function1<Tuple2<A, Object>, K> function1) {
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

                @Override // scala.collection.immutable.MapProxy, scala.collection.GenMapLike, scala.collection.MapLike
                public Set<A> keySet() {
                    return MapProxy.Cclass.keySet(this);
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

                @Override // scala.collection.immutable.MapProxy, scala.collection.GenMapLike, scala.collection.MapLike
                public <C> Map<A, C> mapValues(Function1<Object, C> function1) {
                    return MapProxy.Cclass.mapValues(this, function1);
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

                @Override // scala.collection.immutable.Iterable
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

                @Override // scala.collection.immutable.MapProxy, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
                public MapProxy<A, Object> repr() {
                    return MapProxy.Cclass.repr(this);
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

                @Override // scala.collection.immutable.Map, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Map<A, Object> seq() {
                    return Map.Cclass.seq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int size() {
                    return TraversableProxyLike.Cclass.size(this);
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

                @Override // scala.collection.immutable.Map, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Tuple2<A, Object>, Tuple2<T, U>> predef$$less$colon$less) {
                    return TraversableProxyLike.Cclass.toMap(this, predef$$less$colon$less);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
                public Seq<Tuple2<A, Object>> toSeq() {
                    return TraversableProxyLike.Cclass.toSeq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
                public <B> Set<B> toSet() {
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

                @Override // scala.collection.immutable.MapLike
                public <C, That> That transform(Function2<A, Object, C> function2, CanBuildFrom<Map<A, Object>, Tuple2<A, C>, That> canBuildFrom) {
                    return (That) MapLike.Cclass.transform(this, function2, canBuildFrom);
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

                @Override // scala.collection.immutable.MapProxy, scala.collection.immutable.Map, scala.collection.GenMap, scala.collection.MapLike
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

                @Override // scala.collection.immutable.Map
                public <B1> Map<A, B1> withDefault(Function1<A, B1> function1) {
                    return Map.Cclass.withDefault(this, function1);
                }

                @Override // scala.collection.immutable.Map
                public <B1> Map<A, B1> withDefaultValue(B1 b1) {
                    return Map.Cclass.withDefaultValue(this, b1);
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

    @Override // scala.collection.immutable.Map, scala.collection.GenMapLike, scala.collection.MapLike
    <B1> Map<A, B1> $plus(Tuple2<A, B1> tuple2);

    @Override // scala.collection.MapLike
    <B1> MapProxy<A, B1> $plus(Tuple2<A, B1> tuple2, Tuple2<A, B1> tuple22, Seq<Tuple2<A, B1>> seq);

    @Override // scala.collection.MapLike
    <B1> MapProxy<A, B1> $plus$plus(GenTraversableOnce<Tuple2<A, B1>> genTraversableOnce);

    @Override // scala.collection.immutable.Map, scala.collection.Map, scala.collection.MapLike
    MapProxy<A, B> empty();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Map<A, B> filterKeys(Function1<A, Object> function1);

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    Set<A> keySet();

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    <C> Map<A, C> mapValues(Function1<B, C> function1);

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    MapProxy<A, B> repr();

    @Override // scala.collection.immutable.Map, scala.collection.GenMap, scala.collection.MapLike
    <B1> MapProxy<A, B1> updated(A a, B1 b1);
}
