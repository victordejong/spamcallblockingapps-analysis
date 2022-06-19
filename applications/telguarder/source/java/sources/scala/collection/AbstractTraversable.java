package scala.collection;

import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.GenTraversable;
import scala.collection.Parallelizable;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.FilterMonadic;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericTraversableTemplate;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.List;
import scala.collection.immutable.Map;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.ParIterable;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\u00012Q!\u0001\u0002\u0002\u0002\u001d\u00111#\u00112tiJ\f7\r\u001e+sCZ,'o]1cY\u0016T!a\u0001\u0003\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001)\"\u0001C\n\u0014\u0007\u0001IQ\u0002\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t1\u0011I\\=SK\u001a\u00042AD\b\u0012\u001b\u0005\u0011\u0011B\u0001\t\u0003\u0005-!&/\u0019<feN\f'\r\\3\u0011\u0005I\u0019B\u0002\u0001\u0003\u0007)\u0001!)\u0019A\u000b\u0003\u0003\u0005\u000b\"AF\r\u0011\u0005)9\u0012B\u0001\r\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"A\u0003\u000e\n\u0005m!!aA!os\")Q\u0004\u0001C\u0001=\u00051A(\u001b8jiz\"\u0012a\b\t\u0004\u001d\u0001\t\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/AbstractTraversable.class */
public abstract class AbstractTraversable<A> implements Traversable<A> {
    public AbstractTraversable() {
        TraversableOnce.Cclass.$init$(this);
        Parallelizable.Cclass.$init$(this);
        TraversableLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        Traversable.Cclass.$init$(this);
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

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That $plus$plus(GenTraversableOnce<B> genTraversableOnce, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(Traversable<B> traversable, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus$colon((TraversableLike) this, (Traversable) traversable, (CanBuildFrom) canBuildFrom);
    }

    @Override // scala.collection.TraversableLike
    public <B, That> That $plus$plus$colon(TraversableOnce<B> traversableOnce, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.$plus$plus$colon(this, traversableOnce, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder) {
        return TraversableOnce.Cclass.addString(this, stringBuilder);
    }

    @Override // scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str) {
        return TraversableOnce.Cclass.addString(this, stringBuilder, str);
    }

    public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        return TraversableOnce.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> B aggregate(Function0<B> function0, Function2<B, A, B> function2, Function2<B, B, B> function22) {
        return (B) TraversableOnce.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That collect(PartialFunction<A, B> partialFunction, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.collect(this, partialFunction, canBuildFrom);
    }

    @Override // scala.collection.TraversableOnce
    public <B> Option<B> collectFirst(PartialFunction<A, B> partialFunction) {
        return TraversableOnce.Cclass.collectFirst(this, partialFunction);
    }

    @Override // scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Traversable> companion() {
        return Traversable.Cclass.companion(this);
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
        TraversableLike.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.TraversableOnce
    public <B> void copyToBuffer(Buffer<B> buffer) {
        TraversableOnce.Cclass.copyToBuffer(this, buffer);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<A, Object> function1) {
        return TraversableOnce.Cclass.count(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object drop(int i) {
        return TraversableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object dropWhile(Function1 function1) {
        return TraversableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<A, Object> function1) {
        return TraversableLike.Cclass.exists(this, function1);
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
        return TraversableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike
    public <B, That> That flatMap(Function1<A, GenTraversableOnce<B>> function1, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
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

    public <B> B foldRight(B b, Function2<A, B, B> function2) {
        return (B) TraversableOnce.Cclass.foldRight(this, b, function2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<A, Object> function1) {
        return TraversableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Builder<B, Traversable<B>> genericBuilder() {
        return GenericTraversableTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <K> Map<K, Traversable<A>> groupBy(Function1<A, K> function1) {
        return TraversableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return TraversableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public A head() {
        return (A) TraversableLike.Cclass.head(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<A> headOption() {
        return TraversableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Object init() {
        return TraversableLike.Cclass.init(this);
    }

    @Override // scala.collection.TraversableLike
    public Iterator<Traversable<A>> inits() {
        return TraversableLike.Cclass.inits(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return TraversableLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce
    public final boolean isTraversableAgain() {
        return TraversableLike.Cclass.isTraversableAgain(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public A last() {
        return (A) TraversableLike.Cclass.last(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Option<A> lastOption() {
        return TraversableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.GenTraversableLike, scala.collection.SetLike
    public <B, That> That map(Function1<A, B> function1, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.map(this, function1, canBuildFrom);
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

    @Override // scala.collection.TraversableLike, scala.collection.generic.HasNewBuilder, scala.collection.generic.GenericTraversableTemplate, scala.collection.MapLike
    public Builder<A, Traversable<A>> newBuilder() {
        return GenericTraversableTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return TraversableOnce.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.Parallelizable
    public Parallel par() {
        return Parallelizable.Cclass.par(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<A, ParIterable<A>> parCombiner() {
        return TraversableLike.Cclass.parCombiner(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Traversable<A>, Traversable<A>> partition(Function1<A, Object> function1) {
        return TraversableLike.Cclass.partition(this, function1);
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

    public <B> B reduceRight(Function2<A, B, B> function2) {
        return (B) TraversableOnce.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <B> Option<B> reduceRightOption(Function2<A, B, B> function2) {
        return TraversableOnce.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public Object repr() {
        return TraversableLike.Cclass.repr(this);
    }

    @Override // scala.collection.TraversableOnce
    public List<A> reversed() {
        return TraversableOnce.Cclass.reversed(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scan(B b, Function2<B, B, B> function2, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scan(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanLeft(B b, Function2<B, A, B> function2, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanLeft(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public <B, That> That scanRight(B b, Function2<A, B, B> function2, CanBuildFrom<Traversable<A>, B, That> canBuildFrom) {
        return (That) TraversableLike.Cclass.scanRight(this, b, function2, canBuildFrom);
    }

    @Override // scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Traversable<A> seq() {
        return Traversable.Cclass.seq(this);
    }

    public int size() {
        return TraversableOnce.Cclass.size(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object slice(int i, int i2) {
        return TraversableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.TraversableLike
    public Object sliceWithKnownBound(int i, int i2) {
        return TraversableLike.Cclass.sliceWithKnownBound(this, i, i2);
    }

    @Override // scala.collection.TraversableLike
    public Object sliceWithKnownDelta(int i, int i2, int i3) {
        return TraversableLike.Cclass.sliceWithKnownDelta(this, i, i2, i3);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Traversable<A>, Traversable<A>> span(Function1<A, Object> function1) {
        return TraversableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike
    public Tuple2<Traversable<A>, Traversable<A>> splitAt(int i) {
        return TraversableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return TraversableLike.Cclass.stringPrefix(this);
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
    public Iterator<Traversable<A>> tails() {
        return TraversableLike.Cclass.tails(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object take(int i) {
        return TraversableLike.Cclass.take(this, i);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.IterableLike
    public Object takeWhile(Function1 function1) {
        return TraversableLike.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public Traversable<A> thisCollection() {
        return TraversableLike.Cclass.thisCollection(this);
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

    public <B> Buffer<B> toBuffer() {
        return TraversableOnce.Cclass.toBuffer(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public Traversable toCollection(Object obj) {
        return TraversableLike.Cclass.toCollection(this, obj);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public IndexedSeq<A> toIndexedSeq() {
        return TraversableOnce.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterable<A> toIterable() {
        return TraversableOnce.Cclass.toIterable(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<A> toIterator() {
        return TraversableLike.Cclass.toIterator(this);
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

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<A> toStream() {
        return TraversableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.MapLike, scala.Function1
    public String toString() {
        return TraversableLike.Cclass.toString(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Traversable<A> toTraversable() {
        return TraversableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Vector<A> toVector() {
        return TraversableOnce.Cclass.toVector(this);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
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
        return TraversableLike.Cclass.view(this);
    }

    @Override // scala.collection.TraversableLike, scala.collection.IterableLike
    public TraversableView<A, Traversable<A>> view(int i, int i2) {
        return TraversableLike.Cclass.view(this, i, i2);
    }

    @Override // scala.collection.TraversableLike, scala.collection.generic.FilterMonadic
    public FilterMonadic<A, Traversable<A>> withFilter(Function1<A, Object> function1) {
        return TraversableLike.Cclass.withFilter(this, function1);
    }
}
