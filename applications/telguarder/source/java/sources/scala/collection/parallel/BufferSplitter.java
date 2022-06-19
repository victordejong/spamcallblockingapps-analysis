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
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.RemainsIterator;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u000114Q!\u0001\u0002\u0001\u0005!\u0011aBQ;gM\u0016\u00148\u000b\u001d7jiR,'O\u0003\u0002\u0004\t\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006,\"!\u0003\u000b\u0014\u0007\u0001Qa\u0002\u0005\u0002\f\u00195\ta!\u0003\u0002\u000e\r\t1\u0011I\\=SK\u001a\u00042a\u0004\t\u0013\u001b\u0005\u0011\u0011BA\t\u0003\u0005AIE/\u001a:bE2,7\u000b\u001d7jiR,'\u000f\u0005\u0002\u0014)1\u0001A!B\u000b\u0001\u0005\u00049\"!\u0001+\u0004\u0001E\u0011\u0001d\u0007\t\u0003\u0017eI!A\u0007\u0004\u0003\u000f9{G\u000f[5oOB\u00111\u0002H\u0005\u0003;\u0019\u00111!\u00118z\u0011!y\u0002A!b\u0001\n\u0013\u0001\u0013A\u00022vM\u001a,'/F\u0001\"!\r\u0011SEE\u0007\u0002G)\u0011A\u0005B\u0001\b[V$\u0018M\u00197f\u0013\t13EA\u0006BeJ\f\u0017PQ;gM\u0016\u0014\b\u0002\u0003\u0015\u0001\u0005\u0003\u0005\u000b\u0011B\u0011\u0002\u000f\t,hMZ3sA!A!\u0006\u0001BA\u0002\u0013%1&A\u0003j]\u0012,\u00070F\u0001-!\tYQ&\u0003\u0002/\r\t\u0019\u0011J\u001c;\t\u0011A\u0002!\u00111A\u0005\nE\n\u0011\"\u001b8eKb|F%Z9\u0015\u0005I*\u0004CA\u00064\u0013\t!dA\u0001\u0003V]&$\bb\u0002\u001c0\u0003\u0003\u0005\r\u0001L\u0001\u0004q\u0012\n\u0004\u0002\u0003\u001d\u0001\u0005\u0003\u0005\u000b\u0015\u0002\u0017\u0002\r%tG-\u001a=!\u0011!Q\u0004A!b\u0001\n\u0013Y\u0013!B;oi&d\u0007\u0002\u0003\u001f\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0017\u0002\rUtG/\u001b7!\u0011!q\u0004A!A!\u0002\u0013y\u0014aB0tS\u001e$W\r\u001c\t\u0003\u0001\u000ek\u0011!\u0011\u0006\u0003\u0005\u0012\tqaZ3oKJL7-\u0003\u0002E\u0003\nQ1+[4oC2d\u0017N\\4\t\u000b\u0019\u0003A\u0011A$\u0002\rqJg.\u001b;?)\u0015A\u0015JS&M!\ry\u0001A\u0005\u0005\u0006?\u0015\u0003\r!\t\u0005\u0006U\u0015\u0003\r\u0001\f\u0005\u0006u\u0015\u0003\r\u0001\f\u0005\u0006}\u0015\u0003\ra\u0010\u0005\u0006\u001d\u0002!\taT\u0001\bQ\u0006\u001ch*\u001a=u+\u0005\u0001\u0006CA\u0006R\u0013\t\u0011fAA\u0004C_>dW-\u00198\t\u000bQ\u0003A\u0011A+\u0002\t9,\u0007\u0010\u001e\u000b\u0002%!)q\u000b\u0001C\u0001W\u0005I!/Z7bS:Lgn\u001a\u0005\u00063\u0002!\tAW\u0001\u0004IV\u0004X#\u0001%\t\u000bq\u0003A\u0011A/\u0002\u000bM\u0004H.\u001b;\u0016\u0003y\u00032a\u00181\u000f\u001b\u0005!\u0011BA1\u0005\u0005\r\u0019V-\u001d\u0005\u0007G\u0002!\tE\u00013\u0002!\u0011,'-^4J]\u001a|'/\\1uS>tW#A3\u0011\u0005\u0019LgBA\u0006h\u0013\tAg!\u0001\u0004Qe\u0016$WMZ\u0005\u0003U.\u0014aa\u0015;sS:<'B\u00015\u0007\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/BufferSplitter.class */
public class BufferSplitter<T> implements IterableSplitter<T> {
    private final ArrayBuffer<T> scala$collection$parallel$BufferSplitter$$buffer;
    private int scala$collection$parallel$BufferSplitter$$index;
    private final int scala$collection$parallel$BufferSplitter$$until;
    private Signalling signalDelegate;

    public BufferSplitter(ArrayBuffer<T> arrayBuffer, int i, int i2, Signalling signalling) {
        this.scala$collection$parallel$BufferSplitter$$buffer = arrayBuffer;
        this.scala$collection$parallel$BufferSplitter$$index = i;
        this.scala$collection$parallel$BufferSplitter$$until = i2;
        TraversableOnce.Cclass.$init$(this);
        Iterator.Cclass.$init$(this);
        RemainsIterator.Cclass.$init$(this);
        AugmentedIterableIterator.Cclass.$init$(this);
        DelegatedSignalling.Cclass.$init$(this);
        IterableSplitter.Cclass.$init$(this);
        signalDelegate_$eq(signalling);
    }

    private void scala$collection$parallel$BufferSplitter$$index_$eq(int i) {
        this.scala$collection$parallel$BufferSplitter$$index = i;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $colon$bslash(B b, Function2<T, B, B> function2) {
        Object foldRight;
        foldRight = foldRight(b, function2);
        return (B) foldRight;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B $div$colon(B b, Function2<B, T, B> function2) {
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
    public <B> B aggregate(Function0<B> function0, Function2<B, T, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <U, PI extends IterableSplitter<U>> IterableSplitter<T>.Appended<U, PI> appendParIterable(PI pi) {
        return IterableSplitter.Cclass.appendParIterable(this, pi);
    }

    @Override // scala.collection.Iterator
    public BufferedIterator<T> buffered() {
        return Iterator.Cclass.buffered(this);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
        return IterableSplitter.Cclass.buildString(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> collect(PartialFunction<T, B> partialFunction) {
        return Iterator.Cclass.collect(this, partialFunction);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> collect2combiner(PartialFunction<T, S> partialFunction, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<T, B> partialFunction) {
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
    public <B> boolean corresponds(GenTraversableOnce<B> genTraversableOnce, Function2<T, B, Object> function2) {
        return Iterator.Cclass.corresponds(this, genTraversableOnce, function2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<T, Object> function1) {
        return AugmentedIterableIterator.Cclass.count(this, function1);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public String debugInformation() {
        return buildString(new BufferSplitter$$anonfun$debugInformation$1(this));
    }

    @Override // scala.collection.Iterator
    public Iterator<T> drop(int i) {
        return Iterator.Cclass.drop(this, i);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
    }

    @Override // scala.collection.Iterator
    public Iterator<T> dropWhile(Function1<T, Object> function1) {
        return Iterator.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public BufferSplitter<T> dup() {
        return new BufferSplitter<>(scala$collection$parallel$BufferSplitter$$buffer(), scala$collection$parallel$BufferSplitter$$index(), scala$collection$parallel$BufferSplitter$$until(), signalDelegate());
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

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> filter2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
    }

    @Override // scala.collection.Iterator
    public Iterator<T> filterNot(Function1<T, Object> function1) {
        return Iterator.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> filterNot2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
    }

    @Override // scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<T> find(Function1<T, Object> function1) {
        return Iterator.Cclass.find(this, function1);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> flatMap(Function1<T, GenTraversableOnce<B>> function1) {
        return Iterator.Cclass.flatMap(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> flatmap2combiner(Function1<T, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U fold(U u, Function2<U, U, U> function2) {
        return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
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
        return scala$collection$parallel$BufferSplitter$$index() < scala$collection$parallel$BufferSplitter$$until();
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
    public int indexWhere(Function1<T, Object> function1) {
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
    public <S> IterableSplitter<T>.Mapped<S> map(Function1<T, S> function1) {
        return IterableSplitter.Cclass.map(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> map2combiner(Function1<T, S> function1, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> T max(Ordering<U> ordering) {
        return (T) AugmentedIterableIterator.Cclass.max(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> T maxBy(Function1<T, B> function1, Ordering<B> ordering) {
        return (T) TraversableOnce.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> T min(Ordering<U> ordering) {
        return (T) AugmentedIterableIterator.Cclass.min(this, ordering);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> T minBy(Function1<T, B> function1, Ordering<B> ordering) {
        return (T) TraversableOnce.Cclass.minBy(this, function1, ordering);
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
    public <U extends IterableSplitter<T>.Taken> U newSliceInternal(U u, int i) {
        return (U) IterableSplitter.Cclass.newSliceInternal(this, u, i);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public IterableSplitter<T>.Taken newTaken(int i) {
        return IterableSplitter.Cclass.newTaken(this, i);
    }

    @Override // scala.collection.Iterator
    public T next() {
        T apply = scala$collection$parallel$BufferSplitter$$buffer().apply(scala$collection$parallel$BufferSplitter$$index());
        scala$collection$parallel$BufferSplitter$$index_$eq(scala$collection$parallel$BufferSplitter$$index() + 1);
        return apply;
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

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
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

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
    public int remaining() {
        return scala$collection$parallel$BufferSplitter$$until() - scala$collection$parallel$BufferSplitter$$index();
    }

    @Override // scala.collection.TraversableOnce
    public List<T> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    @Override // scala.collection.Iterator
    public boolean sameElements(Iterator<?> iterator) {
        return Iterator.Cclass.sameElements(this, iterator);
    }

    public ArrayBuffer<T> scala$collection$parallel$BufferSplitter$$buffer() {
        return this.scala$collection$parallel$BufferSplitter$$buffer;
    }

    public int scala$collection$parallel$BufferSplitter$$index() {
        return this.scala$collection$parallel$BufferSplitter$$index;
    }

    public int scala$collection$parallel$BufferSplitter$$until() {
        return this.scala$collection$parallel$BufferSplitter$$until;
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanLeft(B b, Function2<B, T, B> function2) {
        return Iterator.Cclass.scanLeft(this, b, function2);
    }

    @Override // scala.collection.Iterator
    public <B> Iterator<B> scanRight(B b, Function2<T, B, B> function2) {
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
    public Iterator<T> seq() {
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
    @TraitSetter
    public void signalDelegate_$eq(Signalling signalling) {
        this.signalDelegate = signalling;
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return TraversableOnce.Cclass.size(this);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.Iterator
    public IterableSplitter<T> slice(int i, int i2) {
        return IterableSplitter.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
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

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<T, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
        return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
    public Seq<IterableSplitter<T>> split() {
        Seq<IterableSplitter<T>> seq;
        if (remaining() > 1) {
            int scala$collection$parallel$BufferSplitter$$until = (scala$collection$parallel$BufferSplitter$$until() - scala$collection$parallel$BufferSplitter$$index()) / 2;
            seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new BufferSplitter[]{new BufferSplitter(scala$collection$parallel$BufferSplitter$$buffer(), scala$collection$parallel$BufferSplitter$$index(), scala$collection$parallel$BufferSplitter$$index() + scala$collection$parallel$BufferSplitter$$until, signalDelegate()), new BufferSplitter(scala$collection$parallel$BufferSplitter$$buffer(), scala$collection$parallel$BufferSplitter$$index() + scala$collection$parallel$BufferSplitter$$until, scala$collection$parallel$BufferSplitter$$until(), signalDelegate())}));
        } else {
            seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new BufferSplitter[]{this}));
        }
        return seq;
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
        return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public Seq<IterableSplitter<T>> splitWithSignalling() {
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
    public IterableSplitter<T> take(int i) {
        return IterableSplitter.Cclass.take(this, i);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
    }

    @Override // scala.collection.Iterator
    public Iterator<T> takeWhile(Function1<T, Object> function1) {
        return Iterator.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<T, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
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
    public <S, U, R> IterableSplitter<T>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
        return IterableSplitter.Cclass.zipAllParSeq(this, seqSplitter, u, r);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <S> IterableSplitter<T>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
        return IterableSplitter.Cclass.zipParSeq(this, seqSplitter);
    }

    @Override // scala.collection.Iterator
    public Iterator<Tuple2<T, Object>> zipWithIndex() {
        return Iterator.Cclass.zipWithIndex(this);
    }
}
