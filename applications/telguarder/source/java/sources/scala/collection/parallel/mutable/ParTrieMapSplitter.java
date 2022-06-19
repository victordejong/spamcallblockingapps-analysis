package scala.collection.parallel.mutable;

import scala.Function1;
import scala.Function2;
import scala.PartialFunction;
import scala.Tuple2;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterator;
import scala.collection.Seq;
import scala.collection.concurrent.TrieMap;
import scala.collection.concurrent.TrieMapIterator;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.Signalling;
import scala.collection.mutable.Builder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.SeqSplitter;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001u4Q!\u0001\u0002\u0001\r)\u0011!\u0003U1s)JLW-T1q'Bd\u0017\u000e\u001e;fe*\u00111\u0001B\u0001\b[V$\u0018M\u00197f\u0015\t)a!\u0001\u0005qCJ\fG\u000e\\3m\u0015\t9\u0001\"\u0001\u0006d_2dWm\u0019;j_:T\u0011!C\u0001\u0006g\u000e\fG.Y\u000b\u0004\u0017Q\u00013c\u0001\u0001\rEA!Q\u0002\u0005\n \u001b\u0005q!BA\b\u0007\u0003)\u0019wN\\2veJ,g\u000e^\u0005\u0003#9\u0011q\u0002\u0016:jK6\u000b\u0007/\u0013;fe\u0006$xN\u001d\t\u0003'Qa\u0001\u0001B\u0003\u0016\u0001\t\u0007qCA\u0001L\u0007\u0001\t\"\u0001\u0007\u000f\u0011\u0005eQR\"\u0001\u0005\n\u0005mA!a\u0002(pi\"Lgn\u001a\t\u00033uI!A\b\u0005\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0014A\u0011)\u0011\u0005\u0001b\u0001/\t\ta\u000bE\u0002$I\u0019j\u0011\u0001B\u0005\u0003K\u0011\u0011\u0001#\u0013;fe\u0006\u0014G.Z*qY&$H/\u001a:\u0011\te9#cH\u0005\u0003Q!\u0011a\u0001V;qY\u0016\u0014\u0004\u0002\u0003\u0016\u0001\u0005\u0003\u0005\u000b\u0011B\u0016\u0002\u00071,g\u000f\u0005\u0002\u001aY%\u0011Q\u0006\u0003\u0002\u0004\u0013:$\b\u0002C\u0018\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u0019\u0002\u0005\r$\b\u0003B\u00072%}I!A\r\b\u0003\u000fQ\u0013\u0018.Z'ba\"AA\u0007\u0001B\u0001B\u0003%Q'\u0001\u0005nkN$\u0018J\\5u!\tIb'\u0003\u00028\u0011\t9!i\\8mK\u0006t\u0007\"B\u001d\u0001\t\u0003Q\u0014A\u0002\u001fj]&$h\b\u0006\u0003<{yz\u0004\u0003\u0002\u001f\u0001%}i\u0011A\u0001\u0005\u0006Ua\u0002\ra\u000b\u0005\u0006_a\u0002\r\u0001\r\u0005\u0006ia\u0002\r!\u000e\u0005\t\u0003\u0002A)\u0019!C\u0001\u0005\u0006IAo\u001c;bYNL'0Z\u000b\u0002W!AA\t\u0001E\u0001B\u0003&1&\u0001\u0006u_R\fGn]5{K\u0002BqA\u0012\u0001A\u0002\u0013\u0005!)\u0001\u0005ji\u0016\u0014\u0018\r^3e\u0011\u001dA\u0005\u00011A\u0005\u0002%\u000bA\"\u001b;fe\u0006$X\rZ0%KF$\"AS'\u0011\u0005eY\u0015B\u0001'\t\u0005\u0011)f.\u001b;\t\u000f9;\u0015\u0011!a\u0001W\u0005\u0019\u0001\u0010J\u0019\t\rA\u0003\u0001\u0015)\u0003,\u0003%IG/\u001a:bi\u0016$\u0007\u0005C\u0003S\u0001\u0011E3+A\u0006oK^LE/\u001a:bi>\u0014H\u0003B\u001eU-bCQ!V)A\u0002-\nAa\u00187fm\")q+\u0015a\u0001a\u0005\u0019ql\u0019;\t\u000be\u000b\u0006\u0019A\u001b\u0002\u0013}kWo\u001d;J]&$\b\"B.\u0001\t\u0003b\u0016AE:i_VdGm\u00159mSR4UO\u001d;iKJ,\"!\u00183\u0015\u0007Urf\rC\u0003`5\u0002\u0007\u0001-\u0001\u0003d_2d\u0007cA\u0012bG&\u0011!\r\u0002\u0002\f!\u0006\u0014\u0018\n^3sC\ndW\r\u0005\u0002\u0014I\u0012)QM\u0017b\u0001/\t\t1\u000bC\u0003h5\u0002\u00071&\u0001\tqCJ\fG\u000e\\3mSNlG*\u001a<fY\")\u0011\u000e\u0001C\u0001U\u0006\u0019A-\u001e9\u0016\u0003mBQ\u0001\u001c\u0001\u0005B5\fAA\\3yiR\ta\u0005C\u0003p\u0001\u0011\u0005\u0001/A\u0003ta2LG/F\u0001r!\r\u0011XO\t\b\u00033ML!\u0001\u001e\u0005\u0002\u000fA\f7m[1hK&\u0011ao\u001e\u0002\u0004'\u0016\f(B\u0001;\t\u0011\u0015I\b\u0001\"\u0011{\u0003AI7OU3nC&t\u0017N\\4DQ\u0016\f\u0007/F\u00016\u0011\u0015a\b\u0001\"\u0001C\u0003%\u0011X-\\1j]&tw\r")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParTrieMapSplitter.class */
public class ParTrieMapSplitter<K, V> extends TrieMapIterator<K, V> implements IterableSplitter<Tuple2<K, V>> {
    private volatile boolean bitmap$0;

    /* renamed from: ct */
    private final TrieMap<K, V> f1611ct;
    private int iterated = 0;
    private Signalling signalDelegate;
    private int totalsize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParTrieMapSplitter(int i, TrieMap<K, V> trieMap, boolean z) {
        super(i, trieMap, z);
        this.f1611ct = trieMap;
        RemainsIterator.Cclass.$init$(this);
        AugmentedIterableIterator.Cclass.$init$(this);
        DelegatedSignalling.Cclass.$init$(this);
        IterableSplitter.Cclass.$init$(this);
    }

    private int totalsize$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.totalsize = this.f1611ct.par().size();
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.totalsize;
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public void abort() {
        DelegatedSignalling.Cclass.abort(this);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <U, PI extends IterableSplitter<U>> IterableSplitter<Tuple2<K, V>>.Appended<U, PI> appendParIterable(PI pi) {
        return IterableSplitter.Cclass.appendParIterable(this, pi);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public String buildString(Function1<Function1<String, BoxedUnit>, BoxedUnit> function1) {
        return IterableSplitter.Cclass.buildString(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> collect2combiner(PartialFunction<Tuple2<K, V>, S> partialFunction, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.collect2combiner(this, partialFunction, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, Coll, Bld extends Builder<U, Coll>> Bld copy2builder(Bld bld) {
        return (Bld) AugmentedIterableIterator.Cclass.copy2builder(this, bld);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.Iterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> void copyToArray(Object obj, int i, int i2) {
        AugmentedIterableIterator.Cclass.copyToArray(this, obj, i, i2);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int count(Function1<Tuple2<K, V>, Object> function1) {
        return AugmentedIterableIterator.Cclass.count(this, function1);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public String debugInformation() {
        return IterableSplitter.Cclass.debugInformation(this);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> drop2combiner(int i, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.drop2combiner(this, i, combiner);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public ParTrieMapSplitter<K, V> dup() {
        ParTrieMapSplitter<K, V> newIterator = newIterator(0, (TrieMap) this.f1611ct, false);
        dupTo(newIterator);
        newIterator.iterated_$eq(iterated());
        return newIterator;
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> filter2combiner(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.filter2combiner(this, function1, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> filterNot2combiner(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.filterNot2combiner(this, function1, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> flatmap2combiner(Function1<Tuple2<K, V>, GenTraversableOnce<S>> function1, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.flatmap2combiner(this, function1, combiner);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U fold(U u, Function2<U, U, U> function2) {
        return (U) AugmentedIterableIterator.Cclass.fold(this, u, function2);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public int indexFlag() {
        return DelegatedSignalling.Cclass.indexFlag(this);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public boolean isAborted() {
        return DelegatedSignalling.Cclass.isAborted(this);
    }

    @Override // scala.collection.parallel.RemainsIterator
    public boolean isRemainingCheap() {
        return false;
    }

    public int iterated() {
        return this.iterated;
    }

    public void iterated_$eq(int i) {
        this.iterated = i;
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.Iterator
    public <S> IterableSplitter<Tuple2<K, V>>.Mapped<S> map(Function1<Tuple2<K, V>, S> function1) {
        return IterableSplitter.Cclass.map(this, function1);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <S, That> Combiner<S, That> map2combiner(Function1<Tuple2<K, V>, S> function1, Combiner<S, That> combiner) {
        return AugmentedIterableIterator.Cclass.map2combiner(this, function1, combiner);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object max(Ordering ordering) {
        return AugmentedIterableIterator.Cclass.max(this, ordering);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public Object min(Ordering ordering) {
        return AugmentedIterableIterator.Cclass.min(this, ordering);
    }

    @Override // scala.collection.concurrent.TrieMapIterator
    public ParTrieMapSplitter<K, V> newIterator(int i, TrieMap<K, V> trieMap, boolean z) {
        return new ParTrieMapSplitter<>(i, trieMap, z);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <U extends IterableSplitter<Tuple2<K, V>>.Taken> U newSliceInternal(U u, int i) {
        return (U) IterableSplitter.Cclass.newSliceInternal(this, u, i);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public IterableSplitter<Tuple2<K, V>>.Taken newTaken(int i) {
        return IterableSplitter.Cclass.newTaken(this, i);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.Iterator
    public Tuple2<K, V> next() {
        iterated_$eq(iterated() + 1);
        return super.next();
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> partition2combiners(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
        return AugmentedIterableIterator.Cclass.partition2combiners(this, function1, combiner, combiner2);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U product(Numeric<U> numeric) {
        return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U reduce(Function2<U, U, U> function2) {
        return (U) AugmentedIterableIterator.Cclass.reduce(this, function2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U> U reduceLeft(int i, Function2<U, U, U> function2) {
        return (U) AugmentedIterableIterator.Cclass.reduceLeft(this, i, function2);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
    public int remaining() {
        return totalsize() - iterated();
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
        return level() < Integer.highestOneBit(i) + 3;
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

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.Iterator
    public IterableSplitter<Tuple2<K, V>> slice(int i, int i2) {
        return IterableSplitter.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> slice2combiner(int i, int i2, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.slice2combiner(this, i, i2, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> span2combiners(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
        return AugmentedIterableIterator.Cclass.span2combiners(this, function1, combiner, combiner2);
    }

    @Override // scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
    public Seq<IterableSplitter<Tuple2<K, V>>> split() {
        return (Seq<Iterator<Tuple2<K, V>>>) subdivide();
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
        return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public Seq<IterableSplitter<Tuple2<K, V>>> splitWithSignalling() {
        return IterableSplitter.Cclass.splitWithSignalling(this);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public <U> U sum(Numeric<U> numeric) {
        return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
    public int tag() {
        return DelegatedSignalling.Cclass.tag(this);
    }

    @Override // scala.collection.concurrent.TrieMapIterator, scala.collection.Iterator
    public IterableSplitter<Tuple2<K, V>> take(int i) {
        return IterableSplitter.Cclass.take(this, i);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Combiner<U, This> take2combiner(int i, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.take2combiner(this, i, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, This> Tuple2<Combiner<U, This>, Object> takeWhile2combiner(Function1<Tuple2<K, V>, Object> function1, Combiner<U, This> combiner) {
        return AugmentedIterableIterator.Cclass.takeWhile2combiner(this, function1, combiner);
    }

    public int totalsize() {
        return this.bitmap$0 ? this.totalsize : totalsize$lzycompute();
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, S, That> Combiner<Tuple2<U, S>, That> zip2combiner(RemainsIterator<S> remainsIterator, Combiner<Tuple2<U, S>, That> combiner) {
        return AugmentedIterableIterator.Cclass.zip2combiner(this, remainsIterator, combiner);
    }

    @Override // scala.collection.parallel.AugmentedIterableIterator
    public <U, S, That> Combiner<Tuple2<U, S>, That> zipAll2combiner(RemainsIterator<S> remainsIterator, U u, S s, Combiner<Tuple2<U, S>, That> combiner) {
        return AugmentedIterableIterator.Cclass.zipAll2combiner(this, remainsIterator, u, s, combiner);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <S, U, R> IterableSplitter<Tuple2<K, V>>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
        return IterableSplitter.Cclass.zipAllParSeq(this, seqSplitter, u, r);
    }

    @Override // scala.collection.parallel.IterableSplitter
    public <S> IterableSplitter<Tuple2<K, V>>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
        return IterableSplitter.Cclass.zipParSeq(this, seqSplitter);
    }
}
