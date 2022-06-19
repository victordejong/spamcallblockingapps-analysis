package scala.collection.parallel;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.BufferedIterator;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.Signalling;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParMapLike;
import scala.collection.parallel.RemainsIterator;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$4.class */
public final class ParMapLike$$anon$4 implements IterableSplitter<V> {
    private final /* synthetic */ ParMapLike $outer;
    private final IterableSplitter<Tuple2<K, V>> iter;
    private Signalling signalDelegate;

    /* JADX WARN: Multi-variable type inference failed */
    public ParMapLike$$anon$4(ParMapLike parMapLike, ParMapLike parMapLike2) {
        Objects.requireNonNull(parMapLike);
        this.$outer = parMapLike;
        TraversableOnce.Cclass.$init$(this);
        Iterator.Cclass.$init$(this);
        RemainsIterator.Cclass.$init$(this);
        AugmentedIterableIterator.Cclass.$init$(this);
        DelegatedSignalling.Cclass.$init$(this);
        IterableSplitter.Cclass.$init$(this);
        this.iter = parMapLike2;
    }

    private IterableSplitter<Tuple2<K, V>> iter() {
        return this.iter;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<V, B, B> function2) {
        Object foldRight;
        foldRight = foldRight(b, function2);
        return (B) foldRight;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, V, B> function2) {
        Object foldLeft;
        foldLeft = foldLeft(b, function2);
        return (B) foldLeft;
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
        return Iterator.Cclass.$plus$plus(this, function0);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void abort() {
        DelegatedSignalling.Cclass.abort(this);
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
    public <B> B aggregate(Function0<B> function0, Function2<B, V, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <U, PI extends IterableSplitter<U>> IterableSplitter<V>.Appended<U, PI> appendParIterable(PI pi) {
        return IterableSplitter.Cclass.appendParIterable(this, pi);
    }

    @Override // scala.collection.Iterator
    public BufferedIterator<V> buffered() {
        return Iterator.Cclass.buffered(this);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
        return IterableSplitter.Cclass.buildString(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> collect(PartialFunction<V, B> partialFunction) {
        return Iterator.Cclass.collect(this, partialFunction);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> collect2combiner(PartialFunction<V, S> partialFunction, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<V, B> partialFunction) {
        return TraversableOnce.Cclass.collectFirst(this, partialFunction);
    }

    @Override // scala.collection.Iterator
    public boolean contains(Object obj) {
        return Iterator.Cclass.contains(this, obj);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
        return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj) {
        TraversableOnce.Cclass.copyToArray(this, obj);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> void copyToArray(Object obj, int i) {
        TraversableOnce.Cclass.copyToArray(this, obj, i);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> void copyToArray(Object obj, int i, int i2) {
        AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.TraversableOnce
    public <B> void copyToBuffer(Buffer<B> buffer) {
        TraversableOnce.Cclass.copyToBuffer(this, buffer);
    }

    @Override // scala.collection.Iterator
    public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<V, B, Object> function2) {
        return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<V, Object> function1) {
        return AugmentedIterableIterator.Cclass.count(this, function1);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public String debugInformation() {
        return IterableSplitter.Cclass.debugInformation(this);
    }

    @Override // scala.collection.Iterator
    public Iterator<V> drop(int i) {
        return Iterator.Cclass.drop(this, i);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
    }

    @Override // scala.collection.Iterator
    public Iterator<V> dropWhile(Function1<V, Object> function1) {
        return Iterator.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public IterableSplitter<V> dup() {
        return ParMapLike.Cclass.scala$collection$parallel$ParMapLike$$valuesIterator(this.$outer, iter().dup());
    }

    @Override // scala.collection.Iterator
    public Tuple2<Iterator<V>, Iterator<V>> duplicate() {
        return Iterator.Cclass.duplicate(this);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<V, Object> function1) {
        return Iterator.Cclass.exists(this, function1);
    }

    @Override // scala.collection.Iterator
    public Iterator<V> filter(Function1<V, Object> function1) {
        return Iterator.Cclass.filter(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> filter2combiner(Function1<V, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
    }

    @Override // scala.collection.Iterator
    public Iterator<V> filterNot(Function1<V, Object> function1) {
        return Iterator.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> filterNot2combiner(Function1<V, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<V> find(Function1<V, Object> function1) {
        return Iterator.Cclass.find(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> flatMap(Function1<V, GenTraversableOnce<B>> function1) {
        return Iterator.Cclass.flatMap(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> flatmap2combiner(Function1<V, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U fold(U u, Function2<U, U, U> function2) {
        return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B foldLeft(B b, Function2<B, V, B> function2) {
        return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B foldRight(B b, Function2<V, B, B> function2) {
        return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<V, Object> function1) {
        return Iterator.Cclass.forall(this, function1);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<V, U> function1) {
        Iterator.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<V>.GroupedIterator<B> grouped(int i) {
        return Iterator.Cclass.grouped(this, i);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return Iterator.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return iter().hasNext();
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public int indexFlag() {
        return DelegatedSignalling.Cclass.indexFlag(this);
    }

    @Override // scala.collection.Iterator
    public <B> int indexOf(B b) {
        return Iterator.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.Iterator
    public int indexWhere(Function1<V, Object> function1) {
        return Iterator.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public boolean isAborted() {
        return DelegatedSignalling.Cclass.isAborted(this);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return Iterator.Cclass.isEmpty(this);
    }

    @Override // scala.collection.parallel.RemainsIterator
    public boolean isRemainingCheap() {
        return RemainsIterator.Cclass.isRemainingCheap(this);
    }

    @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
    public boolean isTraversableAgain() {
        return Iterator.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.Iterator
    public int length() {
        return Iterator.Cclass.length(this);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
    public <S> IterableSplitter<V>.Mapped<S> map(Function1<V, S> function1) {
        return IterableSplitter.Cclass.map(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> map2combiner(Function1<V, S> function1, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> V max(Ordering<U> ordering) {
        return AugmentedIterableIterator.Cclass.max(this, ordering);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> V maxBy(Function1<V, B> function1, Ordering<B> ordering) {
        return TraversableOnce.Cclass.maxBy(this, function1, ordering);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> V min(Ordering<U> ordering) {
        return AugmentedIterableIterator.Cclass.min(this, ordering);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [V, java.lang.Object] */
    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> V minBy(Function1<V, B> function1, Ordering<B> ordering) {
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

    @Override // scala.collection.parallel.IterableSplitter
    public <U extends IterableSplitter<V>.Taken> U newSliceInternal(U u, int i) {
        return (U) IterableSplitter.Cclass.newSliceInternal(this, u, i);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public IterableSplitter<V>.Taken newTaken(int i) {
        return IterableSplitter.Cclass.newTaken(this, i);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [V, java.lang.Object] */
    @Override // scala.collection.Iterator
    public V next() {
        return ((Tuple2) iter().next()).mo268_2();
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableOnce.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.Iterator
    public <A1> Iterator<A1> padTo(int i, A1 a1) {
        return Iterator.Cclass.padTo(this, i, a1);
    }

    @Override // scala.collection.Iterator
    public Tuple2<Iterator<V>, Iterator<V>> partition(Function1<V, Object> function1) {
        return Iterator.Cclass.partition(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<V, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
        return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
        return Iterator.Cclass.patch(this, i, iterator, i2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U product(Numeric<U> numeric) {
        return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U reduce(Function2<U, U, U> function2) {
        return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
        return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
    }

    @Override // scala.collection.TraversableOnce
    public <B> B reduceLeft(Function2<B, V, B> function2) {
        return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceLeftOption(Function2<B, V, B> function2) {
        return TraversableOnce.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
        return TraversableOnce.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <B> B reduceRight(Function2<V, B, B> function2) {
        return (B) TraversableOnce.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<V, B, B> function2) {
        return TraversableOnce.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
    public int remaining() {
        return iter().remaining();
    }

    @Override // scala.collection.TraversableOnce
    public List<V> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    @Override // scala.collection.Iterator
    public boolean sameElements(Iterator<?> iterator) {
        return Iterator.Cclass.sameElements(this, iterator);
    }

    public /* synthetic */ ParMapLike scala$collection$parallel$ParMapLike$$anon$$$outer() {
        return this.$outer;
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanLeft(B b, Function2<B, V, B> function2) {
        return Iterator.Cclass.scanLeft(this, b, function2);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanRight(B b, Function2<V, B, B> function2) {
        return Iterator.Cclass.scanRight(this, b, function2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, A> void scanToArray(U u, Function2<U, U, U> function2, Object obj, int i) {
        AugmentedIterableIterator.Cclass.scanToArray(this, u, function2, obj, i);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, That> Combiner<U, That> scanToCombiner(int i, U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
        return AugmentedIterableIterator.Cclass.scanToCombiner(this, i, u, function2, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, That> Combiner<U, That> scanToCombiner(U u, Function2<U, U, U> function2, Combiner<U, That> combiner) {
        return AugmentedIterableIterator.Cclass.scanToCombiner(this, u, function2, combiner);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Iterator<V> seq() {
        return Iterator.Cclass.seq(this);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void setIndexFlag(int i) {
        DelegatedSignalling.Cclass.setIndexFlag(this, i);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void setIndexFlagIfGreater(int i) {
        DelegatedSignalling.Cclass.setIndexFlagIfGreater(this, i);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void setIndexFlagIfLesser(int i) {
        DelegatedSignalling.Cclass.setIndexFlagIfLesser(this, i);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <S> boolean shouldSplitFurther(ParIterable<S> parIterable, int i) {
        return IterableSplitter.Cclass.shouldSplitFurther(this, parIterable, i);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
    public Signalling signalDelegate() {
        return this.signalDelegate;
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.generic.DelegatedSignalling
    public void signalDelegate_$eq(Signalling signalling) {
        this.signalDelegate = signalling;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return TraversableOnce.Cclass.size(this);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
    public IterableSplitter<V> slice(int i, int i2) {
        return IterableSplitter.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<V>.GroupedIterator<B> sliding(int i, int i2) {
        return Iterator.Cclass.sliding(this, i, i2);
    }

    @Override // scala.collection.Iterator
    public <B> int sliding$default$2() {
        return Iterator.Cclass.sliding$default$2(this);
    }

    @Override // scala.collection.Iterator
    public Tuple2<Iterator<V>, Iterator<V>> span(Function1<V, Object> function1) {
        return Iterator.Cclass.span(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<V, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
        return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
    public Seq<IterableSplitter<V>> split() {
        Seq<IterableSplitter<V>> seq = (Seq) iter().split().map(new ParMapLike$$anon$4$$anonfun$2(this), Seq$.MODULE$.canBuildFrom());
        seq.foreach(new ParMapLike$$anon$4$$anonfun$split$2(this));
        return seq;
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
        return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public Seq<IterableSplitter<V>> splitWithSignalling() {
        return IterableSplitter.Cclass.splitWithSignalling(this);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U sum(Numeric<U> numeric) {
        return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public int tag() {
        return DelegatedSignalling.Cclass.tag(this);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
    public IterableSplitter<V> take(int i) {
        return IterableSplitter.Cclass.take(this, i);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
    }

    @Override // scala.collection.Iterator
    public Iterator<V> takeWhile(Function1<V, Object> function1) {
        return Iterator.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<V, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, V, Col> canBuildFrom) {
        return (Col) TraversableOnce.Cclass.m182to(this, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Object toArray(ClassTag<B> classTag) {
        return TraversableOnce.Cclass.toArray(this, classTag);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Buffer<B> toBuffer() {
        return TraversableOnce.Cclass.toBuffer(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<V> toIndexedSeq() {
        return TraversableOnce.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterable<V> toIterable() {
        return TraversableOnce.Cclass.toIterable(this);
    }

    @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<V> toIterator() {
        return Iterator.Cclass.toIterator(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public List<V> toList() {
        return TraversableOnce.Cclass.toList(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <T, U> Map<T, U> toMap(Predef$$less$colon$less<V, Tuple2<T, U>> predef$$less$colon$less) {
        return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public Seq<V> toSeq() {
        return TraversableOnce.Cclass.toSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return TraversableOnce.Cclass.toSet(this);
    }

    @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<V> toStream() {
        return Iterator.Cclass.toStream(this);
    }

    @Override // scala.collection.Iterator
    public String toString() {
        return Iterator.Cclass.toString(this);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Traversable<V> toTraversable() {
        return Iterator.Cclass.toTraversable(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<V> toVector() {
        return TraversableOnce.Cclass.toVector(this);
    }

    @Override // scala.collection.Iterator
    public Iterator<V> withFilter(Function1<V, Object> function1) {
        return Iterator.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<Tuple2<V, B>> zip(Iterator<B> iterator) {
        return Iterator.Cclass.zip(this, iterator);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
        return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
    }

    @Override // scala.collection.Iterator
    public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
        return Iterator.Cclass.zipAll(this, iterator, a1, b1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
        return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <S, U, R> IterableSplitter<V>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
        return IterableSplitter.Cclass.zipAllParSeq(this, seqSplitter, u, r);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <S> IterableSplitter<V>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
        return IterableSplitter.Cclass.zipParSeq(this, seqSplitter);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<V, Object>> zipWithIndex() {
        return Iterator.Cclass.zipWithIndex(this);
    }
}
