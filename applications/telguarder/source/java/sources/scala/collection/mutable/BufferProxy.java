package scala.collection.mutable;

import java.util.Objects;
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
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.IterableLike;
import scala.collection.Iterator;
import scala.collection.Parallel;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.SeqLike;
import scala.collection.SeqView;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
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
import scala.collection.immutable.Map;
import scala.collection.immutable.Range;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.BufferLike;
import scala.collection.mutable.BufferProxy;
import scala.collection.mutable.Cloneable;
import scala.collection.mutable.Iterable;
import scala.collection.mutable.Seq;
import scala.collection.mutable.SeqLike;
import scala.collection.mutable.Traversable;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.mutable.ParSeq;
import scala.collection.script.Message;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u00055caB\u0001\u0003!\u0003\r\t!\u0003\u0002\f\u0005V4g-\u001a:Qe>D\u0018P\u0003\u0002\u0004\t\u00059Q.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mC\u000e\u0001QC\u0001\u0006\u0016'\u0011\u00011b\u0004\u0010\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\rE\u0002\u0011#Mi\u0011AA\u0005\u0003%\t\u0011aAQ;gM\u0016\u0014\bC\u0001\u000b\u0016\u0019\u0001!QA\u0006\u0001C\u0002]\u0011\u0011!Q\t\u00031m\u0001\"\u0001D\r\n\u0005i1!a\u0002(pi\"Lgn\u001a\t\u0003\u0019qI!!\b\u0004\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\r?%\u0011\u0001E\u0002\u0002\u0006!J|\u00070\u001f\u0005\u0006E\u0001!\taI\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0011\u0002\"\u0001D\u0013\n\u0005\u00192!\u0001B+oSRDQ\u0001\u000b\u0001\u0007\u0002%\nAa]3mMV\tq\u0002C\u0003,\u0001\u0011\u0005A&\u0001\u0004mK:<G\u000f[\u000b\u0002[A\u0011ABL\u0005\u0003_\u0019\u00111!\u00138u\u0011\u0015\t\u0004\u0001\"\u00113\u0003!IG/\u001a:bi>\u0014X#A\u001a\u0011\u0007Q*4#D\u0001\u0005\u0013\t1DA\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0011\u0015A\u0004\u0001\"\u0001:\u0003\u0015\t\u0007\u000f\u001d7z)\t\u0019\"\bC\u0003<o\u0001\u0007Q&A\u0001o\u0011\u0015i\u0004\u0001\"\u0001?\u0003!!\u0003\u000f\\;tI\u0015\fHCA A\u001b\u0005\u0001\u0001\"B!=\u0001\u0004\u0019\u0012\u0001B3mK6DQa\u0011\u0001\u0005B\u0011\u000b\u0001B]3bI>sG._\u000b\u0002\u000bB\u0019AGR\n\n\u0005\u001d#!aA*fc\")\u0011\n\u0001C!\u0015\u0006iA\u0005\u001d7vg\u0012\u0002H.^:%KF$\"aP&\t\u000b1C\u0005\u0019A'\u0002\u0005a\u001c\bc\u0001\u001bO'%\u0011q\n\u0002\u0002\u0010)J\fg/\u001a:tC\ndWm\u00148dK\")\u0011\u000b\u0001C!%\u00061\u0011\r\u001d9f]\u0012$\"\u0001J*\t\u000bQ\u0003\u0006\u0019A+\u0002\u000b\u0015dW-\\:\u0011\u0007116#\u0003\u0002X\r\tQAH]3qK\u0006$X\r\u001a \t\u000be\u0003A\u0011\t.\u0002\u0013\u0005\u0004\b/\u001a8e\u00032dGC\u0001\u0013\\\u0011\u0015a\u0005\f1\u0001N\u0011\u0015i\u0006\u0001\"\u0001_\u00039!\u0003\u000f\\;tI\u0015\fHeY8m_:$\"aP0\t\u000b\u0005c\u0006\u0019A\n\t\u000b\u0005\u0004A\u0011\t2\u0002'\u0011\u0002H.^:%a2,8\u000fJ3rI\r|Gn\u001c8\u0015\u0005}\u001a\u0007\"\u0002'a\u0001\u0004i\u0005\"B3\u0001\t\u00032\u0017a\u00029sKB,g\u000e\u001a\u000b\u0003I\u001dDQ\u0001\u00163A\u0002UCQ!\u001b\u0001\u0005B)\f!\u0002\u001d:fa\u0016tG-\u00117m)\t!3\u000eC\u0003MQ\u0002\u0007Q\nC\u0003n\u0001\u0011\u0005c.\u0001\u0004j]N,'\u000f\u001e\u000b\u0004I=\u0004\b\"B\u001em\u0001\u0004i\u0003\"\u0002+m\u0001\u0004)\u0006\"\u0002:\u0001\t\u0003\u0019\u0018!C5og\u0016\u0014H/\u00117m)\r!C/\u001e\u0005\u0006wE\u0004\r!\f\u0005\u0006mF\u0004\ra^\u0001\u0005SR,'\u000fE\u00025qNI!!\u001f\u0003\u0003\u0011%#XM]1cY\u0016DQA\u001d\u0001\u0005Bm$2\u0001\n?~\u0011\u0015Y$\u00101\u0001.\u0011\u00151(\u00101\u0001\u007f!\r!tpE\u0005\u0004\u0003\u0003!!a\u0003+sCZ,'o]1cY\u0016Dq!!\u0002\u0001\t\u0003\t9!\u0001\u0004va\u0012\fG/\u001a\u000b\u0006I\u0005%\u00111\u0002\u0005\u0007w\u0005\r\u0001\u0019A\u0017\t\u000f\u00055\u00111\u0001a\u0001'\u00059a.Z<fY\u0016l\u0007bBA\t\u0001\u0011\u0005\u00111C\u0001\u0007e\u0016lwN^3\u0015\u0007M\t)\u0002\u0003\u0004<\u0003\u001f\u0001\r!\f\u0005\u0007\u00033\u0001A\u0011A\u0012\u0002\u000b\rdW-\u0019:\t\u000f\u0005u\u0001\u0001\"\u0011\u0002 \u0005QA\u0005\\3tg\u0012bWm]:\u0015\u0007\u0011\n\t\u0003\u0003\u0005\u0002$\u0005m\u0001\u0019AA\u0013\u0003\r\u0019W\u000e\u001a\t\u0006\u0003O\ticE\u0007\u0003\u0003SQ1!a\u000b\u0005\u0003\u0019\u00198M]5qi&!\u0011qFA\u0015\u0005\u001diUm]:bO\u0016D\u0003\"a\u0007\u00024\u0005e\u0012Q\b\t\u0004\u0019\u0005U\u0012bAA\u001c\r\tQA-\u001a9sK\u000e\fG/\u001a3\"\u0005\u0005m\u0012\u0001G*de&\u0004H/\u001b8hA%\u001c\b\u0005Z3qe\u0016\u001c\u0017\r^3e]\u0005\u0012\u0011qH\u0001\u0007e9\n\u0014G\f\u0019\t\u000f\u0005\r\u0003\u0001\"\u0011\u0002F\u0005)1\r\\8oKR\tq\u0002K\u0004\u0001\u0003g\tI%!\u0010\"\u0005\u0005-\u0013!\u0012)s_bL\u0018N\\4!SN\u0004C-\u001a9sK\u000e\fG/\u001a3!IV,\u0007\u0005^8!Y\u0006\u001c7\u000eI8gAU\u001cX\rI1oI\u0002\u001aw.\u001c9jY\u0016\u0014X\u0006\\3wK2\u00043/\u001e9q_J$h\u0006")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/BufferProxy.class */
public interface BufferProxy<A> extends Buffer<A>, Proxy {

    /* renamed from: scala.collection.mutable.BufferProxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/mutable/BufferProxy$class.class */
    public abstract class Cclass {
        public static void $init$(BufferProxy bufferProxy) {
        }

        public static void append(BufferProxy bufferProxy, Seq seq) {
            bufferProxy.self().$plus$plus$eq(seq);
        }

        public static void appendAll(BufferProxy bufferProxy, TraversableOnce traversableOnce) {
            bufferProxy.self().appendAll(traversableOnce);
        }

        public static Object apply(BufferProxy bufferProxy, int i) {
            return bufferProxy.self().apply(i);
        }

        public static void clear(BufferProxy bufferProxy) {
            bufferProxy.self().clear();
        }

        public static Buffer clone(BufferProxy bufferProxy) {
            return new BufferProxy<A>(bufferProxy) { // from class: scala.collection.mutable.BufferProxy$$anon$1
                private final /* synthetic */ BufferProxy $outer;

                {
                    Objects.requireNonNull(bufferProxy);
                    this.$outer = bufferProxy;
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
                    Growable.Cclass.$init$(this);
                    Shrinkable.Cclass.$init$(this);
                    Subtractable.Cclass.$init$(this);
                    BufferLike.Cclass.$init$(this);
                    Buffer.Cclass.$init$(this);
                    Proxy.Cclass.$init$(this);
                    BufferProxy.Cclass.$init$(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
                    Object foldRight;
                    foldRight = foldRight(b, function2);
                    return (B) foldRight;
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That $colon$plus(B b, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) SeqLike.Cclass.$colon$plus(this, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B $div$colon(B b, Function2<B, A, B> function2) {
                    Object foldLeft;
                    foldLeft = foldLeft(b, function2);
                    return (B) foldLeft;
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike, scala.collection.script.Scriptable
                public void $less$less(Message<A> message) {
                    self().$less$less(message);
                }

                @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Subtractable
                public Buffer<A> $minus(A a) {
                    Buffer<A> $minus$eq;
                    $minus$eq = clone().$minus$eq(a);
                    return $minus$eq;
                }

                @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Subtractable
                public Buffer<A> $minus(A a, A a2, scala.collection.Seq<A> seq) {
                    return BufferLike.Cclass.$minus(this, a, a2, seq);
                }

                @Override // scala.collection.generic.Shrinkable
                public Shrinkable<A> $minus$eq(A a, A a2, scala.collection.Seq<A> seq) {
                    return Shrinkable.Cclass.$minus$eq(this, a, a2, seq);
                }

                @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Shrinkable
                public Buffer $minus$eq(Object obj) {
                    return BufferLike.Cclass.$minus$eq(this, obj);
                }

                @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Subtractable
                public Buffer<A> $minus$minus(GenTraversableOnce<A> genTraversableOnce) {
                    return BufferLike.Cclass.$minus$minus(this, genTraversableOnce);
                }

                @Override // scala.collection.generic.Shrinkable
                public Shrinkable<A> $minus$minus$eq(TraversableOnce<A> traversableOnce) {
                    return traversableOnce.foreach(new Shrinkable$$anonfun$$minus$minus$eq$1(this));
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That $plus$colon(B b, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) SeqLike.Cclass.$plus$colon(this, b, canBuildFrom);
                }

                @Override // scala.collection.generic.Growable
                public Growable<A> $plus$eq(A a, A a2, scala.collection.Seq<A> seq) {
                    Growable<A> $plus$plus$eq;
                    $plus$plus$eq = $plus$eq((BufferProxy$$anon$1) a).$plus$eq(a2).$plus$plus$eq(seq);
                    return $plus$plus$eq;
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike, scala.collection.generic.Growable
                public BufferProxy<A> $plus$eq(A a) {
                    return self().$plus$eq((Buffer<A>) a);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public BufferProxy<A> $plus$eq$colon(A a) {
                    return self().$plus$eq$colon(a);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
                }

                @Override // scala.collection.mutable.BufferLike
                public Buffer<A> $plus$plus(GenTraversableOnce<A> genTraversableOnce) {
                    return BufferLike.Cclass.$plus$plus(this, genTraversableOnce);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(scala.collection.Traversable<B> traversable, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (scala.collection.Traversable) traversable, (CanBuildFrom) canBuildFrom);
                }

                @Override // scala.collection.TraversableLike
                public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.generic.Growable
                public BufferProxy<A> $plus$plus$eq(TraversableOnce<A> traversableOnce) {
                    return self().$plus$plus$eq(traversableOnce);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public BufferProxy<A> $plus$plus$eq$colon(TraversableOnce<A> traversableOnce) {
                    return self().$plus$plus$eq$colon(traversableOnce);
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
                    return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
                    return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
                }

                @Override // scala.PartialFunction, scala.Function1
                public <C> PartialFunction<Object, C> andThen(Function1<A, C> function1) {
                    return PartialFunction.Cclass.andThen(this, function1);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public void append(scala.collection.Seq<A> seq) {
                    BufferProxy.Cclass.append(this, seq);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public void appendAll(TraversableOnce<A> traversableOnce) {
                    BufferProxy.Cclass.appendAll(this, traversableOnce);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.mutable.BufferProxy, scala.collection.GenSeqLike
                public A apply(int i) {
                    return BufferProxy.Cclass.apply(this, i);
                }

                @Override // scala.Function1
                public /* bridge */ /* synthetic */ Object apply(Object obj) {
                    return apply(BoxesRunTime.unboxToInt(obj));
                }

                @Override // scala.Function1
                public double apply$mcDD$sp(double d) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((BufferProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDF$sp(float f) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((BufferProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDI$sp(int i) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((BufferProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public double apply$mcDJ$sp(long j) {
                    double unboxToDouble;
                    unboxToDouble = BoxesRunTime.unboxToDouble(apply((BufferProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToDouble;
                }

                @Override // scala.Function1
                public float apply$mcFD$sp(double d) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((BufferProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFF$sp(float f) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((BufferProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFI$sp(int i) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((BufferProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public float apply$mcFJ$sp(long j) {
                    float unboxToFloat;
                    unboxToFloat = BoxesRunTime.unboxToFloat(apply((BufferProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToFloat;
                }

                @Override // scala.Function1
                public int apply$mcID$sp(double d) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((BufferProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIF$sp(float f) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((BufferProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcII$sp(int i) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((BufferProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public int apply$mcIJ$sp(long j) {
                    int unboxToInt;
                    unboxToInt = BoxesRunTime.unboxToInt(apply((BufferProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToInt;
                }

                @Override // scala.Function1
                public long apply$mcJD$sp(double d) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((BufferProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJF$sp(float f) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((BufferProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJI$sp(int i) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((BufferProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public long apply$mcJJ$sp(long j) {
                    long unboxToLong;
                    unboxToLong = BoxesRunTime.unboxToLong(apply((BufferProxy$$anon$1) BoxesRunTime.boxToLong(j)));
                    return unboxToLong;
                }

                @Override // scala.Function1
                public void apply$mcVD$sp(double d) {
                    apply((BufferProxy$$anon$1) BoxesRunTime.boxToDouble(d));
                }

                @Override // scala.Function1
                public void apply$mcVF$sp(float f) {
                    apply((BufferProxy$$anon$1) BoxesRunTime.boxToFloat(f));
                }

                @Override // scala.Function1
                public void apply$mcVI$sp(int i) {
                    apply((BufferProxy$$anon$1) BoxesRunTime.boxToInteger(i));
                }

                @Override // scala.Function1
                public void apply$mcVJ$sp(long j) {
                    apply((BufferProxy$$anon$1) BoxesRunTime.boxToLong(j));
                }

                @Override // scala.Function1
                public boolean apply$mcZD$sp(double d) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((BufferProxy$$anon$1) BoxesRunTime.boxToDouble(d)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZF$sp(float f) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((BufferProxy$$anon$1) BoxesRunTime.boxToFloat(f)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZI$sp(int i) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((BufferProxy$$anon$1) BoxesRunTime.boxToInteger(i)));
                    return unboxToBoolean;
                }

                @Override // scala.Function1
                public boolean apply$mcZJ$sp(long j) {
                    boolean unboxToBoolean;
                    unboxToBoolean = BoxesRunTime.unboxToBoolean(apply((BufferProxy$$anon$1) BoxesRunTime.boxToLong(j)));
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

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike, scala.collection.generic.Growable, scala.collection.generic.Clearable
                public void clear() {
                    BufferProxy.Cclass.clear(this);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.Cloneable
                public Buffer<A> clone() {
                    return BufferProxy.Cclass.clone(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
                }

                @Override // scala.collection.TraversableOnce
                public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
                    return TraversableOnce.Cclass.collectFirst(this, partialFunction);
                }

                @Override // scala.collection.SeqLike
                public Iterator<Buffer<A>> combinations(int i) {
                    return SeqLike.Cclass.combinations(this, i);
                }

                @Override // scala.collection.mutable.Buffer, scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public GenericCompanion<Buffer> companion() {
                    return Buffer.Cclass.companion(this);
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
                    IterableLike.Cclass.copyToArray(this, obj, i, i2);
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
                public Object diff(GenSeq genSeq) {
                    return SeqLike.Cclass.diff(this, genSeq);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public Object distinct() {
                    return SeqLike.Cclass.distinct(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public Object drop(int i) {
                    return IterableLike.Cclass.drop(this, i);
                }

                @Override // scala.collection.IterableLike
                public Object dropRight(int i) {
                    return IterableLike.Cclass.dropRight(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Object dropWhile(Function1 function1) {
                    return TraversableLike.Cclass.dropWhile(this, function1);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> boolean endsWith(GenSeq<B> genSeq) {
                    return SeqLike.Cclass.endsWith(this, genSeq);
                }

                @Override // scala.Equals
                public boolean equals(Object obj) {
                    return Proxy.Cclass.equals(this, obj);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean exists(Function1<A, Object> function1) {
                    return IterableLike.Cclass.exists(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Object filter(Function1 function1) {
                    return TraversableLike.Cclass.filter(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
                public Object filterNot(Function1 function1) {
                    return TraversableLike.Cclass.filterNot(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public Option<A> find(Function1<A, Object> function1) {
                    return IterableLike.Cclass.find(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
                public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.flatMap(this, function1, canBuildFrom);
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
                    return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public <B> B foldRight(B b, Function2<A, B, B> function2) {
                    return (B) IterableLike.Cclass.foldRight(this, b, function2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
                public boolean forall(Function1<A, Object> function1) {
                    return IterableLike.Cclass.forall(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public <U> void foreach(Function1<A, U> function1) {
                    IterableLike.Cclass.foreach(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <B> Builder<B, Buffer<B>> genericBuilder() {
                    return GenericTraversableTemplate.Cclass.genericBuilder(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <K> Map<K, Buffer<A>> groupBy(Function1<A, K> function1) {
                    return TraversableLike.Cclass.groupBy(this, function1);
                }

                @Override // scala.collection.IterableLike
                public Iterator<Buffer<A>> grouped(int i) {
                    return IterableLike.Cclass.grouped(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public boolean hasDefiniteSize() {
                    return TraversableLike.Cclass.hasDefiniteSize(this);
                }

                @Override // scala.collection.GenSeqLike
                public int hashCode() {
                    return Proxy.Cclass.hashCode(this);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public A head() {
                    return IterableLike.Cclass.head(this);
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
                    return SeqLike.Cclass.indexWhere(this, function1, i);
                }

                @Override // scala.collection.SeqLike
                public Range indices() {
                    return SeqLike.Cclass.indices(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Object init() {
                    return TraversableLike.Cclass.init(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<Buffer<A>> inits() {
                    return TraversableLike.Cclass.inits(this);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public void insert(int i, scala.collection.Seq<A> seq) {
                    BufferProxy.Cclass.insert(this, i, seq);
                }

                @Override // scala.collection.mutable.BufferProxy
                public void insertAll(int i, scala.collection.Iterable<A> iterable) {
                    BufferProxy.Cclass.insertAll((BufferProxy) this, i, (scala.collection.Iterable) iterable);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public void insertAll(int i, scala.collection.Traversable<A> traversable) {
                    BufferProxy.Cclass.insertAll(this, i, traversable);
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

                @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
                public boolean isEmpty() {
                    return SeqLike.Cclass.isEmpty(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
                public final boolean isTraversableAgain() {
                    return TraversableLike.Cclass.isTraversableAgain(this);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
                public Iterator<A> iterator() {
                    return BufferProxy.Cclass.iterator(this);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public A last() {
                    return TraversableLike.Cclass.last(this);
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

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Option<A> lastOption() {
                    return TraversableLike.Cclass.lastOption(this);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.GenSeqLike
                public int length() {
                    return BufferProxy.Cclass.length(this);
                }

                @Override // scala.collection.SeqLike
                public int lengthCompare(int i) {
                    return SeqLike.Cclass.lengthCompare(this, i);
                }

                @Override // scala.PartialFunction
                public Function1<Object, Option<A>> lift() {
                    return PartialFunction.Cclass.lift(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
                public <B, That> That map(Function1<A, B> function1, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.map(this, function1, canBuildFrom);
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
                    return TraversableOnce.Cclass.mkString(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString(String str) {
                    return TraversableOnce.Cclass.mkString(this, str);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public String mkString(String str, String str2, String str3) {
                    return TraversableOnce.Cclass.mkString(this, str, str2, str3);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
                public Builder<A, Buffer<A>> newBuilder() {
                    return GenericTraversableTemplate.Cclass.newBuilder(this);
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
                public <B, That> That padTo(int i, B b, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) SeqLike.Cclass.padTo(this, i, b, canBuildFrom);
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
                public Tuple2<Buffer<A>, Buffer<A>> partition(Function1<A, Object> function1) {
                    return TraversableLike.Cclass.partition(this, function1);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That patch(int i, GenSeq<B> genSeq, int i2, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) SeqLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
                }

                @Override // scala.collection.SeqLike
                public Iterator<Buffer<A>> permutations() {
                    return SeqLike.Cclass.permutations(this);
                }

                @Override // scala.collection.GenSeqLike
                public int prefixLength(Function1<A, Object> function1) {
                    return GenSeqLike.Cclass.prefixLength(this, function1);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public void prepend(scala.collection.Seq<A> seq) {
                    BufferProxy.Cclass.prepend(this, seq);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public void prependAll(TraversableOnce<A> traversableOnce) {
                    BufferProxy.Cclass.prependAll(this, traversableOnce);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B product(Numeric<B> numeric) {
                    return (B) TraversableOnce.Cclass.product(this, numeric);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public scala.collection.Seq<A> readOnly() {
                    return BufferProxy.Cclass.readOnly(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <A1> A1 reduce(Function2<A1, A1, A1> function2) {
                    return (A1) TraversableOnce.Cclass.reduce(this, function2);
                }

                @Override // scala.collection.TraversableOnce
                public <B> B reduceLeft(Function2<B, A, B> function2) {
                    return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
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
                    return (B) IterableLike.Cclass.reduceRight(this, function2);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
                    return TraversableOnce.Cclass.reduceRightOption(this, function2);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [A, java.lang.Object] */
                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.BufferLike
                public A remove(int i) {
                    return BufferProxy.Cclass.remove(this, i);
                }

                @Override // scala.collection.mutable.BufferLike
                public void remove(int i, int i2) {
                    BufferLike.Cclass.remove(this, i, i2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
                public Object repr() {
                    return TraversableLike.Cclass.repr(this);
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
                public <B, That> That reverseMap(Function1<A, B> function1, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) SeqLike.Cclass.reverseMap(this, function1, canBuildFrom);
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
                    return IterableLike.Cclass.sameElements(this, genIterable);
                }

                @Override // scala.collection.mutable.Cloneable
                public /* synthetic */ Object scala$collection$mutable$Cloneable$$super$clone() {
                    return super.clone();
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) TraversableLike.Cclass.scanRight(this, b, function2, canBuildFrom);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public int segmentLength(Function1<A, Object> function1, int i) {
                    return SeqLike.Cclass.segmentLength(this, function1, i);
                }

                /* JADX WARN: Type inference failed for: r0v3, types: [scala.collection.mutable.Buffer, scala.collection.mutable.Buffer<A>] */
                @Override // scala.collection.mutable.BufferProxy, scala.Proxy
                public Buffer<A> self() {
                    return this.$outer.self().clone();
                }

                @Override // scala.collection.mutable.Seq, scala.collection.mutable.Iterable, scala.collection.mutable.Traversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
                public Seq<A> seq() {
                    return Seq.Cclass.seq(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public int size() {
                    return SeqLike.Cclass.size(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public Object slice(int i, int i2) {
                    return IterableLike.Cclass.slice(this, i, i2);
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
                public Iterator<Buffer<A>> sliding(int i) {
                    return IterableLike.Cclass.sliding(this, i);
                }

                @Override // scala.collection.IterableLike
                public Iterator<Buffer<A>> sliding(int i, int i2) {
                    return IterableLike.Cclass.sliding(this, i, i2);
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

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Buffer<A>, Buffer<A>> span(Function1<A, Object> function1) {
                    return TraversableLike.Cclass.span(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Tuple2<Buffer<A>, Buffer<A>> splitAt(int i) {
                    return TraversableLike.Cclass.splitAt(this, i);
                }

                @Override // scala.collection.GenSeqLike
                public <B> boolean startsWith(GenSeq<B> genSeq) {
                    return GenSeqLike.Cclass.startsWith(this, genSeq);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B> boolean startsWith(GenSeq<B> genSeq, int i) {
                    return SeqLike.Cclass.startsWith(this, genSeq, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
                public String stringPrefix() {
                    return BufferLike.Cclass.stringPrefix(this);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public <B> B sum(Numeric<B> numeric) {
                    return (B) TraversableOnce.Cclass.sum(this, numeric);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
                public Object tail() {
                    return TraversableLike.Cclass.tail(this);
                }

                @Override // scala.collection.TraversableLike
                public Iterator<Buffer<A>> tails() {
                    return TraversableLike.Cclass.tails(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public Object take(int i) {
                    return IterableLike.Cclass.take(this, i);
                }

                @Override // scala.collection.IterableLike
                public Object takeRight(int i) {
                    return IterableLike.Cclass.takeRight(this, i);
                }

                @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
                public Object takeWhile(Function1 function1) {
                    return IterableLike.Cclass.takeWhile(this, function1);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public scala.collection.Seq<A> thisCollection() {
                    return SeqLike.Cclass.thisCollection(this);
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
                public <B> Buffer<B> toBuffer() {
                    return TraversableOnce.Cclass.toBuffer(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public scala.collection.Seq toCollection(Object obj) {
                    return SeqLike.Cclass.toCollection(this, obj);
                }

                @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
                public IndexedSeq<A> toIndexedSeq() {
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
                    return Proxy.Cclass.toString(this);
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
                public SeqLike<A, Buffer<A>> transform(Function1<A, A> function1) {
                    return SeqLike.Cclass.transform(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public GenTraversable transpose(Function1 function1) {
                    return GenericTraversableTemplate.Cclass.transpose(this, function1);
                }

                @Override // scala.collection.mutable.BufferLike
                public void trimEnd(int i) {
                    BufferLike.Cclass.trimEnd(this, i);
                }

                @Override // scala.collection.mutable.BufferLike
                public void trimStart(int i) {
                    BufferLike.Cclass.trimStart(this, i);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) SeqLike.Cclass.union(this, genSeq, canBuildFrom);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<A, Tuple2<A1, A2>> function1) {
                    return GenericTraversableTemplate.Cclass.unzip(this, function1);
                }

                @Override // scala.collection.generic.GenericTraversableTemplate
                public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<A, Tuple3<A1, A2, A3>> function1) {
                    return GenericTraversableTemplate.Cclass.unzip3(this, function1);
                }

                @Override // scala.collection.mutable.BufferProxy, scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
                public void update(int i, A a) {
                    BufferProxy.Cclass.update(this, i, a);
                }

                @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
                public <B, That> That updated(int i, B b, CanBuildFrom<Buffer<A>, B, That> canBuildFrom) {
                    return (That) SeqLike.Cclass.updated(this, i, b, canBuildFrom);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public Object view() {
                    return SeqLike.Cclass.view(this);
                }

                @Override // scala.collection.TraversableLike, scala.collection.IterableLike
                public SeqView<A, Buffer<A>> view(int i, int i2) {
                    return SeqLike.Cclass.view(this, i, i2);
                }

                @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
                public FilterMonadic<A, Buffer<A>> withFilter(Function1<A, Object> function1) {
                    return TraversableLike.Cclass.withFilter(this, function1);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Buffer<A>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableLike.Cclass.zip(this, genIterable, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<Buffer<A>, Tuple2<A1, B>, That> canBuildFrom) {
                    return (That) IterableLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
                }

                @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
                public <A1, That> That zipWithIndex(CanBuildFrom<Buffer<A>, Tuple2<A1, Object>, That> canBuildFrom) {
                    return (That) IterableLike.Cclass.zipWithIndex(this, canBuildFrom);
                }
            };
        }

        public static void insert(BufferProxy bufferProxy, int i, scala.collection.Seq seq) {
            bufferProxy.self().insertAll(i, seq);
        }

        public static void insertAll(BufferProxy bufferProxy, int i, scala.collection.Iterable iterable) {
            bufferProxy.self().insertAll(i, iterable);
        }

        public static void insertAll(BufferProxy bufferProxy, int i, scala.collection.Traversable traversable) {
            bufferProxy.self().insertAll(i, traversable);
        }

        public static Iterator iterator(BufferProxy bufferProxy) {
            return bufferProxy.self().iterator();
        }

        public static int length(BufferProxy bufferProxy) {
            return bufferProxy.self().length();
        }

        public static void prepend(BufferProxy bufferProxy, scala.collection.Seq seq) {
            bufferProxy.self().prependAll(seq);
        }

        public static void prependAll(BufferProxy bufferProxy, TraversableOnce traversableOnce) {
            bufferProxy.self().prependAll(traversableOnce);
        }

        public static scala.collection.Seq readOnly(BufferProxy bufferProxy) {
            return bufferProxy.self().readOnly();
        }

        public static Object remove(BufferProxy bufferProxy, int i) {
            return bufferProxy.self().remove(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static void update(BufferProxy bufferProxy, int i, Object obj) {
            bufferProxy.self().update(i, obj);
        }
    }

    @Override // scala.collection.mutable.BufferLike, scala.collection.script.Scriptable
    void $less$less(Message<A> message);

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Growable
    BufferProxy<A> $plus$eq(A a);

    @Override // scala.collection.mutable.BufferLike
    BufferProxy<A> $plus$eq$colon(A a);

    @Override // scala.collection.generic.Growable
    BufferProxy<A> $plus$plus$eq(TraversableOnce<A> traversableOnce);

    @Override // scala.collection.mutable.BufferLike
    BufferProxy<A> $plus$plus$eq$colon(TraversableOnce<A> traversableOnce);

    @Override // scala.collection.mutable.BufferLike
    void append(scala.collection.Seq<A> seq);

    @Override // scala.collection.mutable.BufferLike
    void appendAll(TraversableOnce<A> traversableOnce);

    @Override // scala.collection.GenSeqLike
    A apply(int i);

    @Override // scala.collection.mutable.BufferLike, scala.collection.generic.Growable, scala.collection.generic.Clearable
    void clear();

    @Override // scala.collection.mutable.Cloneable
    Buffer<A> clone();

    @Override // scala.collection.mutable.BufferLike
    void insert(int i, scala.collection.Seq<A> seq);

    void insertAll(int i, scala.collection.Iterable<A> iterable);

    @Override // scala.collection.mutable.BufferLike
    void insertAll(int i, scala.collection.Traversable<A> traversable);

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<A> iterator();

    @Override // scala.collection.GenSeqLike
    int length();

    @Override // scala.collection.mutable.BufferLike
    void prepend(scala.collection.Seq<A> seq);

    @Override // scala.collection.mutable.BufferLike
    void prependAll(TraversableOnce<A> traversableOnce);

    @Override // scala.collection.mutable.BufferLike
    scala.collection.Seq<A> readOnly();

    @Override // scala.collection.mutable.BufferLike
    A remove(int i);

    @Override // scala.Proxy
    Buffer<A> self();

    @Override // scala.collection.mutable.SeqLike, scala.collection.mutable.BufferLike
    void update(int i, A a);
}
