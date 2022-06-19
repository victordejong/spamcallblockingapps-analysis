package scala.collection.parallel;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.None$;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
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
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParMap;
import scala.collection.parallel.ParMapLike;
import scala.collection.parallel.immutable.ParSet;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$1.class */
public final class ParMapLike$$anon$1 implements ParMap<K, V> {
    private final /* synthetic */ ParMapLike $outer;
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private volatile boolean bitmap$0;
    private ParMap filtered;
    public final Function1 p$1;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;

    /* JADX WARN: Multi-variable type inference failed */
    public ParMapLike$$anon$1(ParMapLike parMapLike, ParMapLike<K, V, Repr, Sequential> parMapLike2) {
        Objects.requireNonNull(parMapLike);
        this.$outer = parMapLike;
        this.p$1 = parMapLike2;
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
        ParMap.Cclass.$init$(this);
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

    private ParMap filtered() {
        return this.bitmap$0 ? this.filtered : filtered$lzycompute();
    }

    private ParMap filtered$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.filtered = (ParMap) this.$outer.filter((Function1) new ParMapLike$$anon$1$$anonfun$filtered$1(this));
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.filtered;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $colon$bslash(S s, Function2<Tuple2<K, V>, S, S> function2) {
        Object foldRight;
        foldRight = foldRight(s, function2);
        return (S) foldRight;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $div$colon(S s, Function2<S, Tuple2<K, V>, S> function2) {
        Object foldLeft;
        foldLeft = foldLeft(s, function2);
        return (S) foldLeft;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.collection.generic.Subtractable
    public ParMap<K, V> $minus(K k) {
        return (ParMap) ((GenMapLike) ((ParIterableLike) ParMap$.MODULE$.apply(Nil$.MODULE$)).$plus$plus(this, ParMap$.MODULE$.canBuildFrom())).$minus(k);
    }

    @Override // scala.collection.parallel.ParMap, scala.collection.GenMapLike, scala.collection.MapLike
    public <U> ParMap<K, U> $plus(Tuple2<K, U> tuple2) {
        return ((ParMap) ((ParIterableLike) ParMap$.MODULE$.apply(Nil$.MODULE$)).$plus$plus(this, ParMap$.MODULE$.canBuildFrom())).$plus((Tuple2) tuple2);
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParMap<K, V>, U, That> canBuildFrom) {
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
    public <S> S aggregate(Function0<S> function0, Function2<S, Tuple2<K, V>, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
    @Override // scala.collection.GenMapLike, scala.collection.MapLike, scala.Function1
    public V apply(K k) {
        return ParMapLike.Cclass.apply(this, k);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParMap<K, V>, S, That> canBuildFrom) {
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
    public <S, That> That collect(PartialFunction<Tuple2<K, V>, S> partialFunction, CanBuildFrom<ParMap<K, V>, S, That> canBuildFrom) {
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
    public boolean contains(K k) {
        return this.$outer.contains(k) && BoxesRunTime.unboxToBoolean(this.p$1.apply(k));
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
    public int count(Function1<Tuple2<K, V>, Object> function1) {
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

    /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    /* renamed from: default */
    public V mo6041default(K k) {
        return ParMapLike.Cclass.m6252default(this, k);
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
    public ParMap<K, V> empty() {
        return ParMap.Cclass.empty(this);
    }

    @Override // scala.collection.GenMapLike, scala.Equals
    public boolean equals(Object obj) {
        return GenMapLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public ParIterable filter(Function1 function1) {
        return ParIterableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public ParMap<K, V> filterKeys(Function1<K, Object> function1) {
        return ParMapLike.Cclass.filterKeys(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
    public ParIterable filterNot(Function1 function1) {
        return ParIterableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Tuple2<K, V>> find(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<Tuple2<K, V>, GenTraversableOnce<S>> function1, CanBuildFrom<ParMap<K, V>, S, That> canBuildFrom) {
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
    public <S> S foldLeft(S s, Function2<S, Tuple2<K, V>, S> function2) {
        return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <S> S foldRight(S s, Function2<Tuple2<K, V>, S, S> function2) {
        return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <S> void foreach(Function1<Tuple2<K, V>, S> function1) {
        this.$outer.foreach(new ParMapLike$$anon$1$$anonfun$foreach$5(this, function1));
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.Object, K] */
    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public Option<V> get(K k) {
        return BoxesRunTime.unboxToBoolean(this.p$1.apply(k)) ? this.$outer.get(k) : None$.MODULE$;
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <U> U getOrElse(K k, Function0<U> function0) {
        return (U) ParMapLike.Cclass.getOrElse(this, k, function0);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> scala.collection.parallel.immutable.ParMap<K, ParMap<K, V>> groupBy(Function1<Tuple2<K, V>, K> function1) {
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
    public Option<Tuple2<K, V>> headOption() {
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
    public boolean isDefinedAt(K k) {
        return ParMapLike.Cclass.isDefinedAt(this, k);
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
    public Splitter<Tuple2<K, V>> iterator() {
        return ParIterableLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public ParSet<K> keySet() {
        return ParMapLike.Cclass.keySet(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public ParIterable<K> keys() {
        return ParMapLike.Cclass.keys(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public IterableSplitter<K> keysIterator() {
        return ParMapLike.Cclass.keysIterator(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Object last() {
        return ParIterableLike.Cclass.last(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<Tuple2<K, V>> lastOption() {
        return ParIterableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    public <S, That> That map(Function1<Tuple2<K, V>, S> function1, CanBuildFrom<ParMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParMap, scala.collection.generic.GenericParMapTemplate
    public GenericParMapCompanion<ParMap> mapCompanion() {
        return ParMap.Cclass.mapCompanion(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public <S> ParMap<K, S> mapValues(Function1<V, S> function1) {
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
    public Builder<Tuple2<K, V>, ParIterable<Tuple2<K, V>>> newBuilder() {
        return GenericParTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.generic.GenericParMapTemplate, scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    public Combiner<Tuple2<K, V>, ParMap<K, V>> newCombiner() {
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
    public Combiner<Tuple2<K, V>, ParMap<K, V>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParMap<K, V>, ParMap<K, V>> partition(Function1<Tuple2<K, V>, Object> function1) {
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
    public <U> U reduceLeft(Function2<U, Tuple2<K, V>, U> function2) {
        return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceLeftOption(Function2<U, Tuple2<K, V>, U> function2) {
        return ParIterableLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
        return ParIterableLike.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> U reduceRight(Function2<Tuple2<K, V>, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceRightOption(Function2<Tuple2<K, V>, U, U> function2) {
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
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParMap<K, V>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, Tuple2<K, V>, S> function2, CanBuildFrom<ParMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<Tuple2<K, V>, S, S> function2, CanBuildFrom<ParMap<K, V>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenMap, scala.collection.GenMapLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Map<K, V> seq() {
        return this.$outer.seq().filterKeys(this.p$1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public ParIterable sequentially(Function1 function1) {
        return ParIterableLike.Cclass.sequentially(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public int size() {
        return filtered().size();
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public ParIterable slice(int i, int i2) {
        return ParIterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParMap<K, V>, ParMap<K, V>> span(Function1<Tuple2<K, V>, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParMap<K, V>, ParMap<K, V>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public IterableSplitter<Tuple2<K, V>> splitter() {
        return filtered().splitter();
    }

    @Override // scala.collection.parallel.ParMap, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return ParMap.Cclass.stringPrefix(this);
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
    public <R, Tp> Object task2ops(ParIterableLike<Tuple2<K, V>, ParMap<K, V>, Map<K, V>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
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
    public <Col> Col mo1to(CanBuildFrom<Nothing$, Tuple2<K, V>, Col> canBuildFrom) {
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
    public IndexedSeq<Tuple2<K, V>> toIndexedSeq() {
        return ParIterableLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public ParIterable<Tuple2<K, V>> toIterable() {
        return ParIterableLike.Cclass.toIterable(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<Tuple2<K, V>> toIterator() {
        return ParIterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public List<Tuple2<K, V>> toList() {
        return ParIterableLike.Cclass.toList(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <K, V> scala.collection.parallel.immutable.ParMap<K, V> toMap(Predef$$less$colon$less<Tuple2<K, V>, Tuple2<K, V>> predef$$less$colon$less) {
        return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
        return (That) ParIterableLike.Cclass.toParCollection(this, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<Tuple2<K, V>, Tuple2<K, V>> predef$$less$colon$less) {
        return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.SetLike
    public ParSeq<Tuple2<K, V>> toSeq() {
        return ParIterableLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <U> ParSet<U> toSet() {
        return ParIterableLike.Cclass.toSet(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<Tuple2<K, V>> toStream() {
        return ParIterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public String toString() {
        return ParIterableLike.Cclass.toString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public GenTraversable<Tuple2<K, V>> toTraversable() {
        return ParIterableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public Vector<Tuple2<K, V>> toVector() {
        return ParIterableLike.Cclass.toVector(this);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<Tuple2<K, V>, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<Tuple2<K, V>, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    @Override // scala.collection.parallel.ParMap, scala.collection.GenMap, scala.collection.MapLike
    public <U> ParMap<K, U> updated(K k, U u) {
        return ParMap.Cclass.updated(this, k, u);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public ParIterable<V> values() {
        return ParMapLike.Cclass.values(this);
    }

    @Override // scala.collection.GenMapLike, scala.collection.MapLike
    public IterableSplitter<V> valuesIterator() {
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
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParMap<K, V>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParMap<K, V>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParMap<K, V>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
