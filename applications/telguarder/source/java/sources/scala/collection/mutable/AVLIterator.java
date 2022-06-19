package scala.collection.mutable;

import java.util.NoSuchElementException;
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
import scala.collection.Seq;
import scala.collection.Traversable;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ClassTag$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\t3A!\u0001\u0002\u0005\u0013\tY\u0011I\u0016'Ji\u0016\u0014\u0018\r^8s\u0015\t\u0019A!A\u0004nkR\f'\r\\3\u000b\u0005\u00151\u0011AC2pY2,7\r^5p]*\tq!A\u0003tG\u0006d\u0017m\u0001\u0001\u0016\u0005))2c\u0001\u0001\f\u001fA\u0011A\"D\u0007\u0002\r%\u0011aB\u0002\u0002\u0007\u0003:L(+\u001a4\u0011\u0007A\t2#D\u0001\u0005\u0013\t\u0011BA\u0001\u0005Ji\u0016\u0014\u0018\r^8s!\t!R\u0003\u0004\u0001\u0005\u000bY\u0001!\u0019A\f\u0003\u0003\u0005\u000b\"\u0001G\u000e\u0011\u00051I\u0012B\u0001\u000e\u0007\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001\u0004\u000f\n\u0005u1!aA!os\"Aq\u0004\u0001B\u0001B\u0003%\u0001%\u0001\u0003s_>$\bcA\u0011#'5\t!!\u0003\u0002$\u0005\t!aj\u001c3f\u0011\u0015)\u0003\u0001\"\u0001'\u0003\u0019a\u0014N\\5u}Q\u0011q\u0005\u000b\t\u0004C\u0001\u0019\u0002\"B\u0010%\u0001\u0004\u0001\u0003b\u0002\u0016\u0001\u0005\u0004%\taK\u0001\u0006gR\f7m[\u000b\u0002YA\u0019\u0011%\f\u0011\n\u00059\u0012!AC!se\u0006L8\u000b^1dW\"1\u0001\u0007\u0001Q\u0001\n1\naa\u001d;bG.\u0004\u0003\"\u0002\u001a\u0001\t\u0013\u0019\u0014\u0001\u00033jm\u0016dUM\u001a;\u0015\u0003Q\u0002\"\u0001D\u001b\n\u0005Y2!\u0001B+oSRDQ\u0001\u000f\u0001\u0005\nM\n1\"\u001a8hC\u001e,'+[4ii\")!\b\u0001C!w\u00059\u0001.Y:OKb$X#\u0001\u001f\u0011\u00051i\u0014B\u0001 \u0007\u0005\u001d\u0011un\u001c7fC:DQ\u0001\u0011\u0001\u0005B\u0005\u000bAA\\3yiR\t1\u0003")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/AVLIterator.class */
public class AVLIterator<A> implements Iterator<A> {
    private final ArrayStack<Node<A>> stack;

    public AVLIterator(Node<A> node) {
        TraversableOnce.Cclass.$init$(this);
        Iterator.Cclass.$init$(this);
        this.stack = ArrayStack$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new Node[]{node}), ClassTag$.MODULE$.apply(Node.class));
        diveLeft();
    }

    private void diveLeft() {
        while (!Leaf$.MODULE$.equals(stack().head().left())) {
            stack().push((Node) stack().head().left());
        }
        BoxedUnit boxedUnit = BoxedUnit.UNIT;
    }

    private void engageRight() {
        if (Leaf$.MODULE$.equals(stack().head().right())) {
            stack().pop();
            return;
        }
        Node<A> node = (Node) stack().head().right();
        stack().pop();
        stack().push(node);
        diveLeft();
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<A, B, B> function2) {
        Object foldRight;
        foldRight = foldRight(b, function2);
        return (B) foldRight;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, A, B> function2) {
        Object foldLeft;
        foldLeft = foldLeft(b, function2);
        return (B) foldLeft;
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
    public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.Iterator
    public BufferedIterator<A> buffered() {
        return Iterator.Cclass.buffered(this);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> collect(PartialFunction<A, B> partialFunction) {
        return Iterator.Cclass.collect(this, partialFunction);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
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
    public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<A, B, Object> function2) {
        return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<A, Object> function1) {
        return TraversableOnce.Cclass.count(this, function1);
    }

    @Override // scala.collection.Iterator
    public Iterator<A> drop(int i) {
        return Iterator.Cclass.drop(this, i);
    }

    @Override // scala.collection.Iterator
    public Iterator<A> dropWhile(Function1<A, Object> function1) {
        return Iterator.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.Iterator
    public Tuple2<Iterator<A>, Iterator<A>> duplicate() {
        return Iterator.Cclass.duplicate(this);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return Iterator.Cclass.exists(this, function1);
    }

    @Override // scala.collection.Iterator
    public Iterator<A> filter(Function1<A, Object> function1) {
        return Iterator.Cclass.filter(this, function1);
    }

    @Override // scala.collection.Iterator
    public Iterator<A> filterNot(Function1<A, Object> function1) {
        return Iterator.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<A> find(Function1<A, Object> function1) {
        return Iterator.Cclass.find(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> flatMap(Function1<A, GenTraversableOnce<B>> function1) {
        return Iterator.Cclass.flatMap(this, function1);
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
        return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<A, Object> function1) {
        return Iterator.Cclass.forall(this, function1);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        Iterator.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<A>.GroupedIterator<B> grouped(int i) {
        return Iterator.Cclass.grouped(this, i);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return Iterator.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.Iterator
    public boolean hasNext() {
        return !stack().isEmpty();
    }

    @Override // scala.collection.Iterator
    public <B> int indexOf(B b) {
        return Iterator.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.Iterator
    public int indexWhere(Function1<A, Object> function1) {
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
    public <B> Iterator<B> map(Function1<A, B> function1) {
        return Iterator.Cclass.map(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A max(Ordering<B> ordering) {
        return (A) TraversableOnce.Cclass.max(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A maxBy(Function1<A, B> function1, Ordering<B> ordering) {
        return (A) TraversableOnce.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A min(Ordering<B> ordering) {
        return (A) TraversableOnce.Cclass.min(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> A minBy(Function1<A, B> function1, Ordering<B> ordering) {
        return (A) TraversableOnce.Cclass.minBy(this, function1, ordering);
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
    public A next() {
        if (!stack().isEmpty()) {
            A data = stack().head().data();
            engageRight();
            return data;
        }
        throw new NoSuchElementException();
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
    public Tuple2<Iterator<A>, Iterator<A>> partition(Function1<A, Object> function1) {
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
        return (B) TraversableOnce.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
        return TraversableOnce.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.TraversableOnce
    public List<A> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    @Override // scala.collection.Iterator
    public boolean sameElements(Iterator<?> iterator) {
        return Iterator.Cclass.sameElements(this, iterator);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanLeft(B b, Function2<B, A, B> function2) {
        return Iterator.Cclass.scanLeft(this, b, function2);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanRight(B b, Function2<A, B, B> function2) {
        return Iterator.Cclass.scanRight(this, b, function2);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Iterator<A> seq() {
        return Iterator.Cclass.seq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return TraversableOnce.Cclass.size(this);
    }

    @Override // scala.collection.Iterator
    public Iterator<A> slice(int i, int i2) {
        return Iterator.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<A>.GroupedIterator<B> sliding(int i, int i2) {
        return Iterator.Cclass.sliding(this, i, i2);
    }

    @Override // scala.collection.Iterator
    public <B> int sliding$default$2() {
        return Iterator.Cclass.sliding$default$2(this);
    }

    @Override // scala.collection.Iterator
    public Tuple2<Iterator<A>, Iterator<A>> span(Function1<A, Object> function1) {
        return Iterator.Cclass.span(this, function1);
    }

    public ArrayStack<Node<A>> stack() {
        return this.stack;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B sum(Numeric<B> numeric) {
        return (B) TraversableOnce.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.Iterator
    public Iterator<A> take(int i) {
        return Iterator.Cclass.take(this, i);
    }

    @Override // scala.collection.Iterator
    public Iterator<A> takeWhile(Function1<A, Object> function1) {
        return Iterator.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    /* renamed from: to */
    public <Col> Col mo1to(CanBuildFrom<Nothing$, A, Col> canBuildFrom) {
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
    public IndexedSeq<A> toIndexedSeq() {
        return TraversableOnce.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterable<A> toIterable() {
        return TraversableOnce.Cclass.toIterable(this);
    }

    @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<A> toIterator() {
        return Iterator.Cclass.toIterator(this);
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
    public Seq<A> toSeq() {
        return TraversableOnce.Cclass.toSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return TraversableOnce.Cclass.toSet(this);
    }

    @Override // scala.collection.Iterator, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<A> toStream() {
        return Iterator.Cclass.toStream(this);
    }

    @Override // scala.collection.Iterator
    public String toString() {
        return Iterator.Cclass.toString(this);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Traversable<A> toTraversable() {
        return Iterator.Cclass.toTraversable(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<A> toVector() {
        return TraversableOnce.Cclass.toVector(this);
    }

    @Override // scala.collection.Iterator
    public Iterator<A> withFilter(Function1<A, Object> function1) {
        return Iterator.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<Tuple2<A, B>> zip(Iterator<B> iterator) {
        return Iterator.Cclass.zip(this, iterator);
    }

    @Override // scala.collection.Iterator
    public <B, A1, B1> Iterator<Tuple2<A1, B1>> zipAll(Iterator<B> iterator, A1 a1, B1 b1) {
        return Iterator.Cclass.zipAll(this, iterator, a1, b1);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<A, Object>> zipWithIndex() {
        return Iterator.Cclass.zipWithIndex(this);
    }
}
