package scala.collection.parallel;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenMap;
import scala.collection.GenMapLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Map;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParMapCompanion;
import scala.collection.generic.GenericParMapTemplate;
import scala.collection.generic.GenericParTemplate;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParMapLike;
import scala.collection.parallel.immutable.ParSet;
import scala.collection.parallel.mutable.ParHashMap;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005Me\u0001C\u0001\u0003!\u0003\r\t!\u0003\u001a\u0003\rA\u000b'/T1q\u0015\t\u0019A!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t)a!\u0001\u0006d_2dWm\u0019;j_:T\u0011aB\u0001\u0006g\u000e\fG.Y\u0002\u0001+\rQQcH\n\u0007\u0001-y\u0011%K\u0018\u0011\u00051iQ\"\u0001\u0004\n\u000591!AB!osJ+g\r\u0005\u0003\u0011#MqR\"\u0001\u0003\n\u0005I!!AB$f]6\u000b\u0007\u000f\u0005\u0002\u0015+1\u0001A!\u0002\f\u0001\u0005\u00049\"!A&\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0003)}!a\u0001\t\u0001\u0005\u0006\u00049\"!\u0001,\u0011\u000b\t*3CH\u0014\u000e\u0003\rR!\u0001\n\u0003\u0002\u000f\u001d,g.\u001a:jG&\u0011ae\t\u0002\u0016\u000f\u0016tWM]5d!\u0006\u0014X*\u00199UK6\u0004H.\u0019;f!\tA\u0003!D\u0001\u0003!\rA#\u0006L\u0005\u0003W\t\u00111\u0002U1s\u0013R,'/\u00192mKB!A\"L\n\u001f\u0013\tqcA\u0001\u0004UkBdWM\r\t\u0007QA\u001abDM\u001a\n\u0005E\u0012!A\u0003)be6\u000b\u0007\u000fT5lKB!\u0001\u0006A\n\u001f!\u0011\u0001Bg\u0005\u0010\n\u0005U\"!aA'ba\")q\u0007\u0001C\u0001q\u00051A%\u001b8ji\u0012\"\u0012!\u000f\t\u0003\u0019iJ!a\u000f\u0004\u0003\tUs\u0017\u000e\u001e\u0005\u0006{\u0001!\tAP\u0001\r[\u0006\u00048i\\7qC:LwN\\\u000b\u0002\u007fA\u0019!\u0005Q\u0014\n\u0005\u0005\u001b#AF$f]\u0016\u0014\u0018n\u0019)be6\u000b\u0007oQ8na\u0006t\u0017n\u001c8\t\u000b\r\u0003A\u0011\u0001#\u0002\u000b\u0015l\u0007\u000f^=\u0016\u0003IBQA\u0012\u0001\u0005B\u001d\u000bAb\u001d;sS:<\u0007K]3gSb,\u0012\u0001\u0013\t\u0003\u0013:k\u0011A\u0013\u0006\u0003\u00172\u000bA\u0001\\1oO*\tQ*\u0001\u0003kCZ\f\u0017BA(K\u0005\u0019\u0019FO]5oO\")\u0011\u000b\u0001C!%\u00069Q\u000f\u001d3bi\u0016$WCA*W)\r!\u0016l\u0017\t\u0005Q\u0001\u0019R\u000b\u0005\u0002\u0015-\u0012)q\u000b\u0015b\u00011\n\tQ+\u0005\u0002\u001f7!)!\f\u0015a\u0001'\u0005\u00191.Z=\t\u000bq\u0003\u0006\u0019A+\u0002\u000bY\fG.^3\t\u000by\u0003a\u0011A0\u0002\u000b\u0011\u0002H.^:\u0016\u0005\u0001\u001cGCA1e!\u0011A\u0003a\u00052\u0011\u0005Q\u0019G!B,^\u0005\u0004A\u0006\"B3^\u0001\u00041\u0017AA6w!\u0011aQf\u00052\b\u000b!\u0014\u0001\u0012A5\u0002\rA\u000b'/T1q!\tA#NB\u0003\u0002\u0005!\u00051n\u0005\u0002kYB\u0019!%\\\u0014\n\u00059\u001c#!\u0004)be6\u000b\u0007OR1di>\u0014\u0018\u0010C\u0003qU\u0012\u0005\u0011/\u0001\u0004=S:LGO\u0010\u000b\u0002S\")1I\u001bC\u0001gV\u0019Ao^=\u0016\u0003U\u0004B\u0001\u000b\u0001wqB\u0011Ac\u001e\u0003\u0006-I\u0014\ra\u0006\t\u0003)e$Q\u0001\t:C\u0002]AQa\u001f6\u0005\u0002q\f1B\\3x\u0007>l'-\u001b8feV)Q0a\u0002\u0002\fU\ta\u0010\u0005\u0004)\u007f\u0006\r\u0011QB\u0005\u0004\u0003\u0003\u0011!\u0001C\"p[\nLg.\u001a:\u0011\r1i\u0013QAA\u0005!\r!\u0012q\u0001\u0003\u0006-i\u0014\ra\u0006\t\u0004)\u0005-A!\u0002\u0011{\u0005\u00049\u0002C\u0002\u0015\u0001\u0003\u000b\tI\u0001C\u0004\u0002\u0012)$\u0019!a\u0005\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\r\u0005U\u0011QFA\u0019+\t\t9\u0002E\u0005#\u00033\ti\"!\u000b\u00024%\u0019\u00111D\u0012\u0003\u001d\r\u000bgnQ8nE&tWM\u0012:p[B!\u0011qDA\u0011\u001b\u0005Q\u0017\u0002BA\u0012\u0003K\u0011AaQ8mY&\u0019\u0011qE\u0012\u0003\u001b\u001d+g.T1q\r\u0006\u001cGo\u001c:z!\u0019aQ&a\u000b\u00020A\u0019A#!\f\u0005\rY\tyA1\u0001\u0018!\r!\u0012\u0011\u0007\u0003\u0007A\u0005=!\u0019A\f\u0011\r!\u0002\u00111FA\u0018\r\u001d\t9D[A\u0001\u0003s\u00111bV5uQ\u0012+g-Y;miV1\u00111HA!\u0003\u000f\u001aR!!\u000e\f\u0003{\u0001b\u0001\u000b\u0001\u0002@\u0005\u0015\u0003c\u0001\u000b\u0002B\u00119\u00111IA\u001b\u0005\u00049\"!A!\u0011\u0007Q\t9\u0005\u0002\u0005\u0002J\u0005UBQ1\u0001\u0018\u0005\u0005\u0011\u0005bCA'\u0003k\u0011\t\u0011)A\u0005\u0003{\t!\"\u001e8eKJd\u00170\u001b8h\u0011-\t\t&!\u000e\u0003\u0002\u0003\u0006I!a\u0015\u0002\u0003\u0011\u0004r\u0001DA+\u0003\u007f\t)%C\u0002\u0002X\u0019\u0011\u0011BR;oGRLwN\\\u0019\t\u000fA\f)\u0004\"\u0001\u0002\\Q1\u0011QLA0\u0003C\u0002\u0002\"a\b\u00026\u0005}\u0012Q\t\u0005\t\u0003\u001b\nI\u00061\u0001\u0002>!A\u0011\u0011KA-\u0001\u0004\t\u0019\u0006\u0003\u0005\u0002f\u0005UB\u0011IA4\u0003\u0011\u0019\u0018N_3\u0016\u0005\u0005%\u0004c\u0001\u0007\u0002l%\u0019\u0011Q\u000e\u0004\u0003\u0007%sG\u000f\u0003\u0005\u0002r\u0005UB\u0011AA:\u0003\r9W\r\u001e\u000b\u0005\u0003k\nY\bE\u0003\r\u0003o\n)%C\u0002\u0002z\u0019\u0011aa\u00149uS>t\u0007b\u0002.\u0002p\u0001\u0007\u0011q\b\u0005\t\u0003\u007f\n)\u0004\"\u0001\u0002\u0002\u0006A1\u000f\u001d7jiR,'/\u0006\u0002\u0002\u0004B)\u0001&!\"\u0002\n&\u0019\u0011q\u0011\u0002\u0003!%#XM]1cY\u0016\u001c\u0006\u000f\\5ui\u0016\u0014\bC\u0002\u0007.\u0003\u007f\t)\u0005\u0003\u0005\u0002\u000e\u0006UB\u0011IAH\u0003\u001d!WMZ1vYR$B!!\u0012\u0002\u0012\"9!,a#A\u0002\u0005}\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMap.class */
public interface ParMap<K, V> extends GenMap<K, V>, GenericParMapTemplate<K, V, ParMap>, ParIterable<Tuple2<K, V>>, ParMapLike<K, V, ParMap<K, V>, Map<K, V>> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMap$WithDefault.class */
    public static abstract class WithDefault<A, B> implements ParMap<A, B> {
        private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
        private volatile ParIterableLike$ScanNode$ ScanNode$module;

        /* renamed from: d */
        private final Function1<A, B> f1589d;
        private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;
        private final ParMap<A, B> underlying;

        public WithDefault(ParMap<A, B> parMap, Function1<A, B> function1) {
            this.underlying = parMap;
            this.f1589d = function1;
            Parallelizable.Cclass.$init$(this);
            GenMapLike.Cclass.$init$(this);
            GenericTraversableTemplate.Cclass.$init$(this);
            GenTraversable.Cclass.$init$(this);
            GenIterable.Cclass.$init$(this);
            GenericParTemplate.Cclass.$init$(this);
            GenericParMapTemplate.Cclass.$init$(this);
            CustomParallelizable.Cclass.$init$(this);
            scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
            ParIterable.Cclass.$init$(this);
            ParMapLike.Cclass.$init$(this);
            Cclass.$init$(this);
        }

        private ParIterableLike$ScanLeaf$ ScanLeaf$lzycompute() {
            synchronized (this) {
                if (this.ScanLeaf$module == null) {
                    this.ScanLeaf$module = new ParIterableLike$ScanLeaf$(this);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.ScanLeaf$module;
        }

        private ParIterableLike$ScanNode$ ScanNode$lzycompute() {
            synchronized (this) {
                if (this.ScanNode$module == null) {
                    this.ScanNode$module = new ParIterableLike$ScanNode$(this);
                }
                BoxedUnit boxedUnit = BoxedUnit.UNIT;
            }
            return this.ScanNode$module;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S $colon$bslash(S s, Function2<Tuple2<A, B>, S, S> function2) {
            Object foldRight;
            foldRight = foldRight(s, function2);
            return (S) foldRight;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S $div$colon(S s, Function2<S, Tuple2<A, B>, S> function2) {
            Object foldLeft;
            foldLeft = foldLeft(s, function2);
            return (S) foldLeft;
        }

        @Override // scala.collection.GenTraversableLike
        public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParMap<A, B>, U, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterableLike$ScanLeaf$ ScanLeaf() {
            return this.ScanLeaf$module == null ? ScanLeaf$lzycompute() : this.ScanLeaf$module;
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterableLike$ScanNode$ ScanNode() {
            return this.ScanNode$module == null ? ScanNode$lzycompute() : this.ScanNode$module;
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S aggregate(Function0<S> function0, Function2<S, Tuple2<A, B>, S> function2, Function2<S, S, S> function22) {
            return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
        public B apply(A a) {
            return (B) ParMapLike.Cclass.apply(this, a);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Object bf2seq(CanBuildFrom<ParMap<A, B>, S, That> canBuildFrom) {
            return ParIterableLike.Cclass.bf2seq(this, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Seq<String> brokenInvariants() {
            return ParIterableLike.Cclass.brokenInvariants(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <Elem, To> Object builder2ops(Builder<Elem, To> builder) {
            return ParIterableLike.Cclass.builder2ops(this, builder);
        }

        @Override // scala.Equals
        public boolean canEqual(Object obj) {
            return ParIterableLike.Cclass.canEqual(this, obj);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That collect(PartialFunction<Tuple2<A, B>, S> partialFunction, CanBuildFrom<ParMap<A, B>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.collect(this, partialFunction, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Object combinerFactory() {
            return ParIterableLike.Cclass.combinerFactory(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Object combinerFactory(Function0<Combiner<S, That>> function0) {
            return ParIterableLike.Cclass.combinerFactory(this, function0);
        }

        @Override // scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
        public GenericCompanion<ParIterable> companion() {
            return ParIterable.Cclass.companion(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public boolean contains(A a) {
            return ParMapLike.Cclass.contains(this, a);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> void copyToArray(Object obj) {
            ParIterableLike.Cclass.copyToArray(this, obj);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> void copyToArray(Object obj, int i) {
            ParIterableLike.Cclass.copyToArray(this, obj, i);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> void copyToArray(Object obj, int i, int i2) {
            ParIterableLike.Cclass.copyToArray(this, obj, i, i2);
        }

        @Override // scala.collection.GenTraversableOnce
        public int count(Function1<Tuple2<A, B>, Object> function1) {
            return ParIterableLike.Cclass.count(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ArrayBuffer<String> debugBuffer() {
            return ParIterableLike.Cclass.debugBuffer(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public String debugInformation() {
            return ParIterableLike.Cclass.debugInformation(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void debugclear() {
            ParIterableLike.Cclass.debugclear(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ArrayBuffer<String> debuglog(String str) {
            return ParIterableLike.Cclass.debuglog(this, str);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        /* renamed from: default */
        public B mo6041default(A a) {
            return this.f1589d.apply(a);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
            return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable drop(int i) {
            return ParIterableLike.Cclass.drop(this, i);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable dropWhile(Function1 function1) {
            return ParIterableLike.Cclass.dropWhile(this, function1);
        }

        @Override // scala.collection.parallel.ParMap, scala.collection.parallel.ParMapLike
        public ParMap<A, B> empty() {
            return Cclass.empty(this);
        }

        @Override // scala.collection.GenMapLike, scala.Equals
        public boolean equals(Object obj) {
            return GenMapLike.Cclass.equals(this, obj);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean exists(Function1<Tuple2<A, B>, Object> function1) {
            return ParIterableLike.Cclass.exists(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable filter(Function1 function1) {
            return ParIterableLike.Cclass.filter(this, function1);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public ParMap<A, B> filterKeys(Function1<A, Object> function1) {
            return ParMapLike.Cclass.filterKeys(this, function1);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
        public ParIterable filterNot(Function1 function1) {
            return ParIterableLike.Cclass.filterNot(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Option<Tuple2<A, B>> find(Function1<Tuple2<A, B>, Object> function1) {
            return ParIterableLike.Cclass.find(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That flatMap(Function1<Tuple2<A, B>, GenTraversableOnce<S>> function1, CanBuildFrom<ParMap<A, B>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.flatMap(this, function1, canBuildFrom);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public GenTraversable flatten(Function1 function1) {
            return GenericTraversableTemplate.Cclass.flatten(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U fold(U u, Function2<U, U, U> function2) {
            return (U) ParIterableLike.Cclass.fold(this, u, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <S> S foldLeft(S s, Function2<S, Tuple2<A, B>, S> function2) {
            return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <S> S foldRight(S s, Function2<Tuple2<A, B>, S, S> function2) {
            return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public boolean forall(Function1<Tuple2<A, B>, Object> function1) {
            return ParIterableLike.Cclass.forall(this, function1);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public <U> void foreach(Function1<Tuple2<A, B>, U> function1) {
            ParIterableLike.Cclass.foreach(this, function1);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate
        public <B> Combiner<B, ParIterable<B>> genericBuilder() {
            return GenericParTemplate.Cclass.genericBuilder(this);
        }

        @Override // scala.collection.generic.GenericParTemplate
        public <B> Combiner<B, ParIterable<B>> genericCombiner() {
            return GenericParTemplate.Cclass.genericCombiner(this);
        }

        @Override // scala.collection.generic.GenericParMapTemplate
        public <P, Q> Combiner<Tuple2<P, Q>, ParMap<P, Q>> genericMapCombiner() {
            return GenericParMapTemplate.Cclass.genericMapCombiner(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public Option<B> get(A a) {
            return this.underlying.get(a);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <U> U getOrElse(A a, Function0<U> function0) {
            return (U) ParMapLike.Cclass.getOrElse(this, a, function0);
        }

        @Override // scala.collection.GenTraversableLike
        public <K> scala.collection.parallel.immutable.ParMap<K, ParMap<A, B>> groupBy(Function1<Tuple2<A, B>, K> function1) {
            return ParIterableLike.Cclass.groupBy(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce
        public boolean hasDefiniteSize() {
            return ParIterableLike.Cclass.hasDefiniteSize(this);
        }

        @Override // scala.collection.GenMapLike
        public int hashCode() {
            return GenMapLike.Cclass.hashCode(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public Object head() {
            return ParIterableLike.Cclass.head(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Option<Tuple2<A, B>> headOption() {
            return ParIterableLike.Cclass.headOption(this);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable init() {
            return ParIterableLike.Cclass.init(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void initTaskSupport() {
            ParIterableLike.Cclass.initTaskSupport(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.PartialFunction
        public boolean isDefinedAt(A a) {
            return ParMapLike.Cclass.isDefinedAt(this, a);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
        public boolean isEmpty() {
            return ParIterableLike.Cclass.isEmpty(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public boolean isStrictSplitterCollection() {
            return ParIterableLike.Cclass.isStrictSplitterCollection(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
        public final boolean isTraversableAgain() {
            return ParIterableLike.Cclass.isTraversableAgain(this);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
        public Splitter<Tuple2<A, B>> iterator() {
            return ParIterableLike.Cclass.iterator(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public ParSet<A> keySet() {
            return ParMapLike.Cclass.keySet(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public ParIterable<A> keys() {
            return ParMapLike.Cclass.keys(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public IterableSplitter<A> keysIterator() {
            return ParMapLike.Cclass.keysIterator(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Object last() {
            return ParIterableLike.Cclass.last(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Option<Tuple2<A, B>> lastOption() {
            return ParIterableLike.Cclass.lastOption(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
        public <S, That> That map(Function1<Tuple2<A, B>, S> function1, CanBuildFrom<ParMap<A, B>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
        public GenericParMapCompanion<ParMap> mapCompanion() {
            return Cclass.mapCompanion(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public <S> ParMap<A, S> mapValues(Function1<B, S> function1) {
            return ParMapLike.Cclass.mapValues(this, function1);
        }

        @Override // scala.collection.GenTraversableOnce
        public Object max(Ordering ordering) {
            return ParIterableLike.Cclass.max(this, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public Object maxBy(Function1 function1, Ordering ordering) {
            return ParIterableLike.Cclass.maxBy(this, function1, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public Object min(Ordering ordering) {
            return ParIterableLike.Cclass.min(this, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public Object minBy(Function1 function1, Ordering ordering) {
            return ParIterableLike.Cclass.minBy(this, function1, ordering);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString() {
            return ParIterableLike.Cclass.mkString(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString(String str) {
            return ParIterableLike.Cclass.mkString(this, str);
        }

        @Override // scala.collection.GenTraversableOnce
        public String mkString(String str, String str2, String str3) {
            return ParIterableLike.Cclass.mkString(this, str, str2, str3);
        }

        @Override // scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
        public Builder<Tuple2<A, B>, ParIterable<Tuple2<A, B>>> newBuilder() {
            return GenericParTemplate.Cclass.newBuilder(this);
        }

        @Override // scala.collection.generic.GenericParMapTemplate, scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
        public Combiner<Tuple2<A, B>, ParMap<A, B>> newCombiner() {
            return GenericParMapTemplate.Cclass.newCombiner(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public boolean nonEmpty() {
            return ParIterableLike.Cclass.nonEmpty(this);
        }

        @Override // scala.collection.Parallelizable
        public ParIterable par() {
            return ParIterableLike.Cclass.par(this);
        }

        @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
        public Combiner<Tuple2<A, B>, ParMap<A, B>> parCombiner() {
            return CustomParallelizable.Cclass.parCombiner(this);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParMap<A, B>, ParMap<A, B>> partition(Function1<Tuple2<A, B>, Object> function1) {
            return ParIterableLike.Cclass.partition(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void printDebugBuffer() {
            ParIterableLike.Cclass.printDebugBuffer(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) ParIterableLike.Cclass.product(this, numeric);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U reduce(Function2<U, U, U> function2) {
            return (U) ParIterableLike.Cclass.reduce(this, function2);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <U> U reduceLeft(Function2<U, Tuple2<A, B>, U> function2) {
            return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceLeftOption(Function2<U, Tuple2<A, B>, U> function2) {
            return ParIterableLike.Cclass.reduceLeftOption(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
            return ParIterableLike.Cclass.reduceOption(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public <U> U reduceRight(Function2<Tuple2<A, B>, U, U> function2) {
            return (U) ParIterableLike.Cclass.reduceRight(this, function2);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Option<U> reduceRightOption(Function2<Tuple2<A, B>, U, U> function2) {
            return ParIterableLike.Cclass.reduceRightOption(this, function2);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
        public ParIterable repr() {
            return ParIterableLike.Cclass.repr(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <S, That> Combiner<S, That> reuse(Option<Combiner<S, That>> option, Combiner<S, That> combiner) {
            return ParIterableLike.Cclass.reuse(this, option, combiner);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U> boolean sameElements(GenIterable<U> genIterable) {
            return ParIterableLike.Cclass.sameElements(this, genIterable);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport() {
            return this.scala$collection$parallel$ParIterableLike$$_tasksupport;
        }

        @Override // scala.collection.parallel.ParIterableLike
        @TraitSetter
        public void scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(TaskSupport taskSupport) {
            this.scala$collection$parallel$ParIterableLike$$_tasksupport = taskSupport;
        }

        @Override // scala.collection.GenTraversableLike
        public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParMap<A, B>, U, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public int scanBlockSize() {
            return ParIterableLike.Cclass.scanBlockSize(this);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That scanLeft(S s, Function2<S, Tuple2<A, B>, S> function2, CanBuildFrom<ParMap<A, B>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
        }

        @Override // scala.collection.GenTraversableLike
        public <S, That> That scanRight(S s, Function2<Tuple2<A, B>, S, S> function2, CanBuildFrom<ParMap<A, B>, S, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterable sequentially(Function1 function1) {
            return ParIterableLike.Cclass.sequentially(this, function1);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
        public int size() {
            return this.underlying.size();
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable slice(int i, int i2) {
            return ParIterableLike.Cclass.slice(this, i, i2);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParMap<A, B>, ParMap<A, B>> span(Function1<Tuple2<A, B>, Object> function1) {
            return ParIterableLike.Cclass.span(this, function1);
        }

        @Override // scala.collection.GenTraversableLike
        public Tuple2<ParMap<A, B>, ParMap<A, B>> splitAt(int i) {
            return ParIterableLike.Cclass.splitAt(this, i);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public IterableSplitter<Tuple2<A, B>> splitter() {
            return (IterableSplitter<Tuple2<K, V>>) this.underlying.splitter();
        }

        @Override // scala.collection.parallel.ParMap, scala.collection.GenTraversableLike, scala.collection.SetLike
        public String stringPrefix() {
            return Cclass.stringPrefix(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) ParIterableLike.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.GenTraversableLike
        public ParIterable tail() {
            return ParIterableLike.Cclass.tail(this);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable take(int i) {
            return ParIterableLike.Cclass.take(this, i);
        }

        @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
        public ParIterable takeWhile(Function1 function1) {
            return ParIterableLike.Cclass.takeWhile(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <R, Tp> Object task2ops(ParIterableLike<Tuple2<A, B>, ParMap<A, B>, Map<A, B>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
            return ParIterableLike.Cclass.task2ops(this, strictSplitterCheckTask);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public TaskSupport tasksupport() {
            return ParIterableLike.Cclass.tasksupport(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public void tasksupport_$eq(TaskSupport taskSupport) {
            scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(taskSupport);
        }

        @Override // scala.collection.GenTraversableOnce
        /* renamed from: to */
        public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<A, B>, Col> canBuildFrom) {
            return (Col) ParIterableLike.Cclass.m112to(this, canBuildFrom);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Object toArray(ClassTag<U> classTag) {
            return ParIterableLike.Cclass.toArray(this, classTag);
        }

        @Override // scala.collection.GenTraversableOnce
        public <U> Buffer<U> toBuffer() {
            return ParIterableLike.Cclass.toBuffer(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public IndexedSeq<Tuple2<A, B>> toIndexedSeq() {
            return ParIterableLike.Cclass.toIndexedSeq(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public ParIterable<Tuple2<A, B>> toIterable() {
            return ParIterableLike.Cclass.toIterable(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Iterator<Tuple2<A, B>> toIterator() {
            return ParIterableLike.Cclass.toIterator(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public List<Tuple2<A, B>> toList() {
            return ParIterableLike.Cclass.toList(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public <K, V> scala.collection.parallel.immutable.ParMap<K, V> toMap(Predef$$less$colon$less<Tuple2<A, B>, Tuple2<K, V>> predef$$less$colon$less) {
            return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
            return (That) ParIterableLike.Cclass.toParCollection(this, function0);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<Tuple2<A, B>, Tuple2<K, V>> predef$$less$colon$less) {
            return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.SetLike
        public ParSeq<Tuple2<A, B>> toSeq() {
            return ParIterableLike.Cclass.toSeq(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
        public <U> ParSet<U> toSet() {
            return ParIterableLike.Cclass.toSet(this);
        }

        @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
        public Stream<Tuple2<A, B>> toStream() {
            return ParIterableLike.Cclass.toStream(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public String toString() {
            return ParIterableLike.Cclass.toString(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public GenTraversable<Tuple2<A, B>> toTraversable() {
            return ParIterableLike.Cclass.toTraversable(this);
        }

        @Override // scala.collection.GenTraversableOnce
        public Vector<Tuple2<A, B>> toVector() {
            return ParIterableLike.Cclass.toVector(this);
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

        @Override // scala.collection.parallel.ParMap, scala.collection.GenMap, scala.collection.MapLike
        public <U> ParMap<A, U> updated(A a, U u) {
            return Cclass.updated(this, a, u);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public ParIterable<B> values() {
            return ParMapLike.Cclass.values(this);
        }

        @Override // scala.collection.GenMapLike, scala.collection.MapLike
        public IterableSplitter<B> valuesIterator() {
            return ParMapLike.Cclass.valuesIterator(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public Object view() {
            return ParIterableLike.Cclass.view(this);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public ParIterable withFilter(Function1 function1) {
            return ParIterableLike.Cclass.withFilter(this, function1);
        }

        @Override // scala.collection.parallel.ParIterableLike
        public <R> Object wrap(Function0<R> function0) {
            return ParIterableLike.Cclass.wrap(this, function0);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParMap<A, B>, Tuple2<U, S>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParMap<A, B>, Tuple2<U, S>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
        }

        @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
        public <U, That> That zipWithIndex(CanBuildFrom<ParMap<A, B>, Tuple2<U, Object>, That> canBuildFrom) {
            return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
        }
    }

    /* renamed from: scala.collection.parallel.ParMap$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMap$class.class */
    public abstract class Cclass {
        public static void $init$(ParMap parMap) {
        }

        public static ParMap empty(ParMap parMap) {
            return new ParHashMap();
        }

        public static GenericParMapCompanion mapCompanion(ParMap parMap) {
            return ParMap$.MODULE$;
        }

        public static String stringPrefix(ParMap parMap) {
            return "ParMap";
        }

        public static ParMap updated(ParMap parMap, Object obj, Object obj2) {
            return parMap.$plus(new Tuple2(obj, obj2));
        }
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    <U> ParMap<K, U> $plus(Tuple2<K, U> tuple2);

    @Override // scala.collection.parallel.ParMapLike
    ParMap<K, V> empty();

    @Override // scala.collection.generic.GenericParMapTemplate
    GenericParMapCompanion<ParMap> mapCompanion();

    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    String stringPrefix();

    @Override // scala.collection.GenMap, scala.collection.MapLike
    <U> ParMap<K, U> updated(K k, U u);
}
