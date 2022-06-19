package scala.collection.immutable;

import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Proxy;
import scala.Tuple2;
import scala.collection.AbstractSet;
import scala.collection.GenIterable;
import scala.collection.GenSet;
import scala.collection.GenTraversableOnce;
import scala.collection.IterableProxyLike;
import scala.collection.IterableView;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.SetLike;
import scala.collection.SetProxyLike;
import scala.collection.TraversableProxyLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Set;
import scala.collection.immutable.SetProxy;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSet;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SetProxy$$anon$1.class */
public final class SetProxy$$anon$1 extends AbstractSet<Object> implements SetProxy<Object> {
    private final Set<Object> self;

    /* JADX WARN: Multi-variable type inference failed */
    public SetProxy$$anon$1(SetProxy setProxy, SetProxy.Cclass cclass) {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Set.Cclass.$init$(this);
        Proxy.Cclass.$init$(this);
        TraversableProxyLike.Cclass.$init$(this);
        IterableProxyLike.Cclass.$init$(this);
        SetProxyLike.Cclass.$init$(this);
        SetProxy.Cclass.$init$(this);
        this.self = cclass;
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike
    public scala.collection.Set $amp(GenSet genSet) {
        return SetProxyLike.Cclass.$amp(this, genSet);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike
    public scala.collection.Set $amp$tilde(GenSet genSet) {
        return SetProxyLike.Cclass.$amp$tilde(this, genSet);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike
    public scala.collection.Set $bar(GenSet genSet) {
        return SetProxyLike.Cclass.$bar(this, genSet);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<Object, B, B> function2) {
        Object $colon$bslash;
        $colon$bslash = self().$colon$bslash(b, function2);
        return (B) $colon$bslash;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, Object, B> function2) {
        Object $div$colon;
        $div$colon = self().$div$colon(b, function2);
        return (B) $div$colon;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike, scala.collection.generic.Subtractable
    public SetProxy<Object> $minus(Object obj) {
        SetProxy<Object> newProxy;
        newProxy = SetProxy.Cclass.newProxy(this, (Set) ((SetLike) self()).$minus((SetLike) obj));
        return newProxy;
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public SetProxy<Object> $plus(Object obj) {
        SetProxy<Object> newProxy;
        newProxy = SetProxy.Cclass.newProxy(this, (Set) ((SetLike) self()).$plus((SetLike) obj));
        return newProxy;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Set<Object>, B, That> canBuildFrom) {
        Object $plus$plus;
        $plus$plus = self().$plus$plus(genTraversableOnce, canBuildFrom);
        return (That) $plus$plus;
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder) {
        return TraversableProxyLike.Cclass.addString(this, stringBuilder);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str) {
        return TraversableProxyLike.Cclass.addString(this, stringBuilder, str);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        return TraversableProxyLike.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
    public boolean apply(Object obj) {
        return SetProxyLike.Cclass.apply(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That collect(PartialFunction<Object, B> partialFunction, CanBuildFrom<Set<Object>, B, That> canBuildFrom) {
        return (That) TraversableProxyLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Set> companion() {
        return Set.Cclass.companion(this);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public boolean contains(Object obj) {
        return SetProxyLike.Cclass.contains(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj) {
        TraversableProxyLike.Cclass.copyToArray(this, obj);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj, int i) {
        TraversableProxyLike.Cclass.copyToArray(this, obj, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> void copyToArray(Object obj, int i, int i2) {
        TraversableProxyLike.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> void copyToBuffer(Buffer<B> buffer) {
        TraversableProxyLike.Cclass.copyToBuffer(this, buffer);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<Object, Object> function1) {
        return TraversableProxyLike.Cclass.count(this, function1);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SetLike
    public scala.collection.Set diff(GenSet genSet) {
        return SetProxyLike.Cclass.diff(this, genSet);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.Traversable drop(int i) {
        return TraversableProxyLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public scala.collection.Iterable dropRight(int i) {
        return IterableProxyLike.Cclass.dropRight(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public scala.collection.Traversable dropWhile(Function1 function1) {
        return TraversableProxyLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public SetProxy<Object> empty() {
        return SetProxy.Cclass.empty(this);
    }

    @Override // scala.collection.AbstractSet, scala.Equals
    public boolean equals(Object obj) {
        return Proxy.Cclass.equals(this, obj);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<Object, Object> function1) {
        return TraversableProxyLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public scala.collection.Traversable filter(Function1 function1) {
        return TraversableProxyLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.Traversable filterNot(Function1 function1) {
        return TraversableProxyLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<Object> find(Function1<Object, Object> function1) {
        return TraversableProxyLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    public <B, That> That flatMap(Function1<Object, GenTraversableOnce<B>> function1, CanBuildFrom<Set<Object>, B, That> canBuildFrom) {
        return (That) TraversableProxyLike.Cclass.flatMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, Object, B> function2) {
        return (B) TraversableProxyLike.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<Object, B, B> function2) {
        return (B) TraversableProxyLike.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<Object, Object> function1) {
        return TraversableProxyLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <B> void foreach(Function1<Object, B> function1) {
        TraversableProxyLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <K> Map<K, Set<Object>> groupBy(Function1<Object, K> function1) {
        return TraversableProxyLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Iterator<Set<Object>> grouped(int i) {
        return IterableProxyLike.Cclass.grouped(this, i);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return TraversableProxyLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike
    public int hashCode() {
        return Proxy.Cclass.hashCode(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public Object head() {
        return TraversableProxyLike.Cclass.head(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<Object> headOption() {
        return TraversableProxyLike.Cclass.headOption(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public scala.collection.Traversable init() {
        return TraversableProxyLike.Cclass.init(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike
    public scala.collection.Set intersect(GenSet genSet) {
        return SetProxyLike.Cclass.intersect(this, genSet);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return SetProxyLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return IterableProxyLike.Cclass.iterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object last() {
        return TraversableProxyLike.Cclass.last(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<Object> lastOption() {
        return TraversableProxyLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public <B, That> That map(Function1<Object, B> function1, CanBuildFrom<Set<Object>, B, That> canBuildFrom) {
        return (That) TraversableProxyLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object max(Ordering<B> ordering) {
        return TraversableProxyLike.Cclass.max(this, ordering);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object min(Ordering<B> ordering) {
        return TraversableProxyLike.Cclass.min(this, ordering);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString() {
        return TraversableProxyLike.Cclass.mkString(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str) {
        return TraversableProxyLike.Cclass.mkString(this, str);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public String mkString(String str, String str2, String str3) {
        return TraversableProxyLike.Cclass.mkString(this, str, str2, str3);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableProxyLike.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Object, ParSet<Object>> parCombiner() {
        return Set.Cclass.parCombiner(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Set<Object>, Set<Object>> partition(Function1<Object, Object> function1) {
        return TraversableProxyLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B product(Numeric<B> numeric) {
        return (B) TraversableProxyLike.Cclass.product(this, numeric);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, Object, B> function2) {
        return (B) TraversableProxyLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceLeftOption(Function2<B, Object, B> function2) {
        return TraversableProxyLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<Object, B, B> function2) {
        return (B) TraversableProxyLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<Object, B, B> function2) {
        return TraversableProxyLike.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public SetProxy<Object> repr() {
        return SetProxy.Cclass.repr(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B> boolean sameElements(GenIterable<B> genIterable) {
        return IterableProxyLike.Cclass.sameElements(this, genIterable);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanLeft(B b, Function2<B, Object, B> function2, CanBuildFrom<Set<Object>, B, That> canBuildFrom) {
        return (That) TraversableProxyLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanRight(B b, Function2<Object, B, B> function2, CanBuildFrom<Set<Object>, B, That> canBuildFrom) {
        return (That) TraversableProxyLike.Cclass.scanRight(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableProxyLike, scala.Proxy
    public Set<Object> self() {
        return this.self;
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<Object> seq() {
        return Set.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return TraversableProxyLike.Cclass.size(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.Traversable slice(int i, int i2) {
        return TraversableProxyLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Iterator<Set<Object>> sliding(int i) {
        return IterableProxyLike.Cclass.sliding(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public Iterator<Set<Object>> sliding(int i, int i2) {
        return IterableProxyLike.Cclass.sliding(this, i, i2);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Set<Object>, Set<Object>> span(Function1<Object, Object> function1) {
        return TraversableProxyLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Set<Object>, Set<Object>> splitAt(int i) {
        return TraversableProxyLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return TraversableProxyLike.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SortedSetLike
    public boolean subsetOf(GenSet<Object> genSet) {
        return SetProxyLike.Cclass.subsetOf(this, genSet);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableProxyLike.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public scala.collection.Traversable tail() {
        return TraversableProxyLike.Cclass.tail(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.Traversable take(int i) {
        return TraversableProxyLike.Cclass.take(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.IterableLike
    public scala.collection.Iterable takeRight(int i) {
        return IterableProxyLike.Cclass.takeRight(this, i);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.Traversable takeWhile(Function1 function1) {
        return TraversableProxyLike.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return TraversableProxyLike.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Buffer<B> toBuffer() {
        return TraversableProxyLike.Cclass.toBuffer(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<Object> toIndexedSeq() {
        return TraversableProxyLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public scala.collection.Iterable<Object> toIterable() {
        return TraversableProxyLike.Cclass.toIterable(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<Object> toIterator() {
        return TraversableProxyLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<Object> toList() {
        return TraversableProxyLike.Cclass.toList(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> Map<T, U> toMap(Predef$$less$colon$less<Object, Tuple2<T, U>> predef$$less$colon$less) {
        return TraversableProxyLike.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<Object> toSeq() {
        return TraversableProxyLike.Cclass.toSeq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return TraversableProxyLike.Cclass.toSet(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<Object> toStream() {
        return TraversableProxyLike.Cclass.toStream(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return Proxy.Cclass.toString(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public scala.collection.Traversable<Object> toTraversable() {
        return TraversableProxyLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SetLike
    public scala.collection.Set union(GenSet genSet) {
        return SetProxyLike.Cclass.union(this, genSet);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public Object view() {
        return IterableProxyLike.Cclass.view(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.IterableLike
    public IterableView<Object, Set<Object>> view(int i, int i2) {
        return IterableProxyLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, B, That> That zip(GenIterable<B> genIterable, CanBuildFrom<Set<Object>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableProxyLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <B, A1, That> That zipAll(GenIterable<B> genIterable, A1 a1, B b, CanBuildFrom<Set<Object>, Tuple2<A1, B>, That> canBuildFrom) {
        return (That) IterableProxyLike.Cclass.zipAll(this, genIterable, a1, b, canBuildFrom);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.GenIterableLike, scala.collection.IterableLike
    public <A1, That> That zipWithIndex(CanBuildFrom<Set<Object>, Tuple2<A1, Object>, That> canBuildFrom) {
        return (That) IterableProxyLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
