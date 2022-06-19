package scala.collection.parallel;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.collection.BufferedIterator;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Iterator$;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.StringBuilder;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/Splitter$.class */
public final class Splitter$ {
    public static final Splitter$ MODULE$ = null;

    static {
        new Splitter$();
    }

    private Splitter$() {
        MODULE$ = this;
    }

    public <T> Splitter<T> empty() {
        return new Splitter<T>() { // from class: scala.collection.parallel.Splitter$$anon$1
            {
                TraversableOnce.Cclass.$init$(this);
                Iterator.Cclass.$init$(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $colon$bslash(B b, Function2<T, B, B> function2) {
                return (B) TraversableOnce.Cclass.$colon$bslash(this, b, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B $div$colon(B b, Function2<B, T, B> function2) {
                return (B) TraversableOnce.Cclass.$div$colon(this, b, function2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> $plus$plus(Function0<GenTraversableOnce<B>> function0) {
                return Iterator.Cclass.$plus$plus(this, function0);
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
            public <B> B aggregate(Function0<B> function0, Function2<B, T, B> function2, Function2<B, B, B> function22) {
                return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
            }

            @Override // scala.collection.Iterator
            public BufferedIterator<T> buffered() {
                return Iterator.Cclass.buffered(this);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> collect(PartialFunction<T, B> partialFunction) {
                return Iterator.Cclass.collect(this, partialFunction);
            }

            @Override // scala.collection.TraversableOnce
            public <B> Option<B> collectFirst(PartialFunction<T, B> partialFunction) {
                return TraversableOnce.Cclass.collectFirst(this, partialFunction);
            }

            @Override // scala.collection.Iterator
            public boolean contains(Object obj) {
                return Iterator.Cclass.contains(this, obj);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> void copyToArray(Object obj) {
                TraversableOnce.Cclass.copyToArray(this, obj);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> void copyToArray(Object obj, int i) {
                TraversableOnce.Cclass.copyToArray(this, obj, i);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> void copyToArray(Object obj, int i, int i2) {
                Iterator.Cclass.copyToArray(this, obj, i, i2);
            }

            @Override // scala.collection.TraversableOnce
            public <B> void copyToBuffer(Buffer<B> buffer) {
                TraversableOnce.Cclass.copyToBuffer(this, buffer);
            }

            @Override // scala.collection.Iterator
            public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<T, B, Object> function2) {
                return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int count(Function1<T, Object> function1) {
                return TraversableOnce.Cclass.count(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<T> drop(int i) {
                return Iterator.Cclass.drop(this, i);
            }

            @Override // scala.collection.Iterator
            public Iterator<T> dropWhile(Function1<T, Object> function1) {
                return Iterator.Cclass.dropWhile(this, function1);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<T>, Iterator<T>> duplicate() {
                return Iterator.Cclass.duplicate(this);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean exists(Function1<T, Object> function1) {
                return Iterator.Cclass.exists(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<T> filter(Function1<T, Object> function1) {
                return Iterator.Cclass.filter(this, function1);
            }

            @Override // scala.collection.Iterator
            public Iterator<T> filterNot(Function1<T, Object> function1) {
                return Iterator.Cclass.filterNot(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Option<T> find(Function1<T, Object> function1) {
                return Iterator.Cclass.find(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> flatMap(Function1<T, GenTraversableOnce<B>> function1) {
                return Iterator.Cclass.flatMap(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> A1 fold(A1 a1, Function2<A1, A1, A1> function2) {
                return (A1) TraversableOnce.Cclass.fold(this, a1, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B foldLeft(B b, Function2<B, T, B> function2) {
                return (B) TraversableOnce.Cclass.foldLeft(this, b, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B foldRight(B b, Function2<T, B, B> function2) {
                return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public boolean forall(Function1<T, Object> function1) {
                return Iterator.Cclass.forall(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public <U> void foreach(Function1<T, U> function1) {
                Iterator.Cclass.foreach(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<T>.GroupedIterator<B> grouped(int i) {
                return Iterator.Cclass.grouped(this, i);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public boolean hasDefiniteSize() {
                return Iterator.Cclass.hasDefiniteSize(this);
            }

            @Override // scala.collection.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // scala.collection.Iterator
            public <B> int indexOf(B b) {
                return Iterator.Cclass.indexOf(this, b);
            }

            @Override // scala.collection.Iterator
            public int indexWhere(Function1<T, Object> function1) {
                return Iterator.Cclass.indexWhere(this, function1);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
            public boolean isEmpty() {
                return Iterator.Cclass.isEmpty(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce
            public boolean isTraversableAgain() {
                return Iterator.Cclass.isTraversableAgain(this);
            }

            @Override // scala.collection.Iterator
            public int length() {
                return Iterator.Cclass.length(this);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> map(Function1<T, B> function1) {
                return Iterator.Cclass.map(this, function1);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> T max(Ordering<B> ordering) {
                return TraversableOnce.Cclass.max(this, ordering);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> T maxBy(Function1<T, B> function1, Ordering<B> ordering) {
                return TraversableOnce.Cclass.maxBy(this, function1, ordering);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> T min(Ordering<B> ordering) {
                return TraversableOnce.Cclass.min(this, ordering);
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> T minBy(Function1<T, B> function1, Ordering<B> ordering) {
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

            @Override // scala.collection.Iterator
            public Nothing$ next() {
                return Iterator$.MODULE$.empty().next();
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
            public Tuple2<Iterator<T>, Iterator<T>> partition(Function1<T, Object> function1) {
                return Iterator.Cclass.partition(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> patch(int i, Iterator<B> iterator, int i2) {
                return Iterator.Cclass.patch(this, i, iterator, i2);
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
            public <B> B reduceLeft(Function2<B, T, B> function2) {
                return (B) TraversableOnce.Cclass.reduceLeft(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceLeftOption(Function2<B, T, B> function2) {
                return TraversableOnce.Cclass.reduceLeftOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <A1> Option<A1> reduceOption(Function2<A1, A1, A1> function2) {
                return TraversableOnce.Cclass.reduceOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public <B> B reduceRight(Function2<T, B, B> function2) {
                return (B) TraversableOnce.Cclass.reduceRight(this, function2);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> Option<B> reduceRightOption(Function2<T, B, B> function2) {
                return TraversableOnce.Cclass.reduceRightOption(this, function2);
            }

            @Override // scala.collection.TraversableOnce
            public List<T> reversed() {
                return TraversableOnce.Cclass.reversed(this);
            }

            @Override // scala.collection.Iterator
            public boolean sameElements(Iterator<?> iterator) {
                return Iterator.Cclass.sameElements(this, iterator);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> scanLeft(B b, Function2<B, T, B> function2) {
                return Iterator.Cclass.scanLeft(this, b, function2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<B> scanRight(B b, Function2<T, B, B> function2) {
                return Iterator.Cclass.scanRight(this, b, function2);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
            public Iterator<T> seq() {
                return Iterator.Cclass.seq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public int size() {
                return TraversableOnce.Cclass.size(this);
            }

            @Override // scala.collection.Iterator
            public Iterator<T> slice(int i, int i2) {
                return Iterator.Cclass.slice(this, i, i2);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<T>.GroupedIterator<B> sliding(int i, int i2) {
                return Iterator.Cclass.sliding(this, i, i2);
            }

            @Override // scala.collection.Iterator
            public <B> int sliding$default$2() {
                return Iterator.Cclass.sliding$default$2(this);
            }

            @Override // scala.collection.Iterator
            public Tuple2<Iterator<T>, Iterator<T>> span(Function1<T, Object> function1) {
                return Iterator.Cclass.span(this, function1);
            }

            @Override // scala.collection.parallel.Splitter
            public Seq<Object> split() {
                return (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Splitter[]{this}));
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <B> B sum(Numeric<B> numeric) {
                return (B) TraversableOnce.Cclass.sum(this, numeric);
            }

            @Override // scala.collection.Iterator
            public Iterator<T> take(int i) {
                return Iterator.Cclass.take(this, i);
            }

            @Override // scala.collection.Iterator
            public Iterator<T> takeWhile(Function1<T, Object> function1) {
                return Iterator.Cclass.takeWhile(this, function1);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            /* renamed from: to */
            public <Col> Col mo1to(CanBuildFrom<Nothing$, T, Col> canBuildFrom) {
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
            public IndexedSeq<T> toIndexedSeq() {
                return TraversableOnce.Cclass.toIndexedSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterable<T> toIterable() {
                return TraversableOnce.Cclass.toIterable(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Iterator<T> toIterator() {
                return Iterator.Cclass.toIterator(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public List<T> toList() {
                return TraversableOnce.Cclass.toList(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public <T, U> Map<T, U> toMap(Predef$$less$colon$less<T, Tuple2<T, U>> predef$$less$colon$less) {
                return TraversableOnce.Cclass.toMap(this, predef$$less$colon$less);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.SetLike
            public Seq<T> toSeq() {
                return TraversableOnce.Cclass.toSeq(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
            public <B> Set<B> toSet() {
                return TraversableOnce.Cclass.toSet(this);
            }

            @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
            public Stream<T> toStream() {
                return Iterator.Cclass.toStream(this);
            }

            @Override // scala.collection.Iterator
            public String toString() {
                return Iterator.Cclass.toString(this);
            }

            @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Traversable<T> toTraversable() {
                return Iterator.Cclass.toTraversable(this);
            }

            @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
            public Vector<T> toVector() {
                return TraversableOnce.Cclass.toVector(this);
            }

            @Override // scala.collection.Iterator
            public Iterator<T> withFilter(Function1<T, Object> function1) {
                return Iterator.Cclass.withFilter(this, function1);
            }

            @Override // scala.collection.Iterator
            public <B> Iterator<Tuple2<T, B>> zip(Iterator<B> iterator) {
                return Iterator.Cclass.zip(this, iterator);
            }

            @Override // scala.collection.Iterator
            public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
                return Iterator.Cclass.zipAll(this, iterator, a1, b1);
            }

            @Override // scala.collection.Iterator
            public Iterator<Tuple2<T, Object>> zipWithIndex() {
                return Iterator.Cclass.zipWithIndex(this);
            }
        };
    }
}
