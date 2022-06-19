package scala.collection.parallel.immutable;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.Function2;
import scala.Option;
import scala.PartialFunction;
import scala.Predef$;
import scala.Predef$$less$colon$less;
import scala.Tuple2;
import scala.Tuple3;
import scala.collection.BufferedIterator;
import scala.collection.CustomParallelizable;
import scala.collection.GenIterable;
import scala.collection.GenSeq;
import scala.collection.GenSeqLike;
import scala.collection.GenTraversable;
import scala.collection.GenTraversableOnce;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.collection.Parallelizable;
import scala.collection.Seq;
import scala.collection.Seq$;
import scala.collection.Traversable;
import scala.collection.TraversableLike;
import scala.collection.TraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.DelegatedSignalling;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.GenericParTemplate;
import scala.collection.generic.GenericTraversableTemplate;
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
import scala.collection.parallel.AugmentedSeqIterator;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.ParIterableLike;
import scala.collection.parallel.ParIterableLike$ScanLeaf$;
import scala.collection.parallel.ParIterableLike$ScanNode$;
import scala.collection.parallel.ParSeq;
import scala.collection.parallel.ParSeqLike;
import scala.collection.parallel.PreciseSplitter;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.SeqSplitter;
import scala.collection.parallel.TaskSupport;
import scala.collection.parallel.immutable.ParIterable;
import scala.collection.parallel.immutable.ParSeq;
import scala.collection.parallel.mutable.ParArray$;
import scala.collection.parallel.package$;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005]bAB\u0001\u0003\u0001\u0011QQF\u0001\u0006SKB,G/\u001b;j_:T!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003!\u0001\u0018M]1mY\u0016d'BA\u0004\t\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u0013\u0005)1oY1mCV\u00111BF\n\u0004\u00011\u0001\u0002CA\u0007\u000f\u001b\u0005A\u0011BA\b\t\u0005\u0019\te.\u001f*fMB\u0019\u0011C\u0005\u000b\u000e\u0003\tI!a\u0005\u0002\u0003\rA\u000b'oU3r!\t)b\u0003\u0004\u0001\u0005\u000b]\u0001!\u0019A\r\u0003\u0003Q\u001b\u0001!\u0005\u0002\u001b;A\u0011QbG\u0005\u00039!\u0011qAT8uQ&tw\r\u0005\u0002\u000e=%\u0011q\u0004\u0003\u0002\u0004\u0003:L\b\u0002C\u0011\u0001\u0005\u0003\u0005\u000b\u0011\u0002\u000b\u0002\t\u0015dW-\u001c\u0005\tG\u0001\u0011)\u0019!C\u0001I\u00051A.\u001a8hi\",\u0012!\n\t\u0003\u001b\u0019J!a\n\u0005\u0003\u0007%sG\u000f\u0003\u0005*\u0001\t\u0005\t\u0015!\u0003&\u0003\u001daWM\\4uQ\u0002BQa\u000b\u0001\u0005\u00021\na\u0001P5oSRtDcA\u0017/_A\u0019\u0011\u0003\u0001\u000b\t\u000b\u0005R\u0003\u0019\u0001\u000b\t\u000b\rR\u0003\u0019A\u0013\t\u000bE\u0002A\u0011\u0001\u001a\u0002\u000b\u0005\u0004\b\u000f\\=\u0015\u0005Q\u0019\u0004\"\u0002\u001b1\u0001\u0004)\u0013aA5eq\")a\u0007\u0001C!o\u0005\u00191/Z9\u0016\u0003iAQ!\u000f\u0001\u0005\u0002i\na!\u001e9eCR,Gc\u0001\u000e<y!)A\u0007\u000fa\u0001K!)\u0011\u0005\u000fa\u0001)\u0019!a\b\u0001\u0001@\u0005-\u0001\u0016M]%uKJ\fGo\u001c:\u0014\u0007ub\u0001\tE\u0002B\u0005Ri\u0011\u0001B\u0005\u0003\u0007\u0012\u00111bU3r'Bd\u0017\u000e\u001e;fe\"AQ)\u0010BA\u0002\u0013\u0005A%A\u0001j\u0011!9UH!a\u0001\n\u0003A\u0015!B5`I\u0015\fHCA%M!\ti!*\u0003\u0002L\u0011\t!QK\\5u\u0011\u001die)!AA\u0002\u0015\n1\u0001\u001f\u00132\u0011!yUH!A!B\u0013)\u0013AA5!\u0011!\tVH!b\u0001\n\u0003!\u0013!B;oi&d\u0007\u0002C*>\u0005\u0003\u0005\u000b\u0011B\u0013\u0002\rUtG/\u001b7!\u0011!\tSH!A!\u0002\u0013!\u0002\"B\u0016>\t\u00031F\u0003B,Z5n\u0003\"\u0001W\u001f\u000e\u0003\u0001Aq!R+\u0011\u0002\u0003\u0007Q\u0005C\u0004R+B\u0005\t\u0019A\u0013\t\u000f\u0005*\u0006\u0013!a\u0001)!)Q,\u0010C\u0001I\u0005I!/Z7bS:Lgn\u001a\u0005\u0006?v\"\t\u0001Y\u0001\bQ\u0006\u001ch*\u001a=u+\u0005\t\u0007CA\u0007c\u0013\t\u0019\u0007BA\u0004C_>dW-\u00198\t\u000b\u0015lD\u0011\u00014\u0002\t9,\u0007\u0010\u001e\u000b\u0002)!)\u0001.\u0010C\u0001S\u0006\u0019A-\u001e9\u0016\u0003]CQa[\u001f\u0005\u00021\fa\u0001]:qY&$HCA7u!\rq\u0017\u000f\u0011\b\u0003\u001b=L!\u0001\u001d\u0005\u0002\u000fA\f7m[1hK&\u0011!o\u001d\u0002\u0004'\u0016\f(B\u00019\t\u0011\u0015)(\u000e1\u0001w\u0003\u0015\u0019\u0018N_3t!\riq/J\u0005\u0003q\"\u0011!\u0002\u0010:fa\u0016\fG/\u001a3?\u0011\u0015QX\b\"\u0001|\u0003\u0015\u0019\b\u000f\\5u+\u0005a\bcA?\u007f\u00016\ta!\u0003\u0002s\r\u001dI\u0011\u0011\u0001\u0001\u0002\u0002#\u0005\u00111A\u0001\f!\u0006\u0014\u0018\n^3sCR|'\u000fE\u0002Y\u0003\u000b1\u0001B\u0010\u0001\u0002\u0002#\u0005\u0011qA\n\u0004\u0003\u000ba\u0001bB\u0016\u0002\u0006\u0011\u0005\u00111\u0002\u000b\u0003\u0003\u0007A!\"a\u0004\u0002\u0006E\u0005I\u0011AA\t\u0003m!C.Z:tS:LG\u000fJ4sK\u0006$XM\u001d\u0013eK\u001a\fW\u000f\u001c;%cU\u0011\u00111\u0003\u0016\u0004K\u0005U1FAA\f!\u0011\tI\"a\t\u000e\u0005\u0005m!\u0002BA\u000f\u0003?\t\u0011\"\u001e8dQ\u0016\u001c7.\u001a3\u000b\u0007\u0005\u0005\u0002\"\u0001\u0006b]:|G/\u0019;j_:LA!!\n\u0002\u001c\t\tRO\\2iK\u000e\\W\r\u001a,be&\fgnY3\t\u0015\u0005%\u0012QAI\u0001\n\u0003\t\t\"A\u000e%Y\u0016\u001c8/\u001b8ji\u0012:'/Z1uKJ$C-\u001a4bk2$HE\r\u0005\u000b\u0003[\t)!%A\u0005\u0002\u0005=\u0012a\u0007\u0013mKN\u001c\u0018N\\5uI\u001d\u0014X-\u0019;fe\u0012\"WMZ1vYR$3'\u0006\u0002\u00022)\u001aA#!\u0006\t\r\u0005U\u0002\u0001\"\u0001j\u0003!\u0019\b\u000f\\5ui\u0016\u0014\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/Repetition.class */
public class Repetition<T> implements ParSeq<T> {
    private volatile Repetition$ParIterator$ ParIterator$module;
    private volatile ParIterableLike$ScanLeaf$ ScanLeaf$module;
    private volatile ParIterableLike$ScanNode$ ScanNode$module;
    private final int length;
    private volatile transient TaskSupport scala$collection$parallel$ParIterableLike$$_tasksupport;
    public final T scala$collection$parallel$immutable$Repetition$$elem;

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/Repetition$ParIterator.class */
    public class ParIterator implements SeqSplitter<T> {
        public final /* synthetic */ Repetition $outer;

        /* renamed from: i */
        private int f1598i;
        public final T scala$collection$parallel$immutable$Repetition$ParIterator$$elem;
        private Signalling signalDelegate;
        private final int until;

        public ParIterator(Repetition<T> repetition, int i, int i2, T t) {
            this.f1598i = i;
            this.until = i2;
            this.scala$collection$parallel$immutable$Repetition$ParIterator$$elem = t;
            Objects.requireNonNull(repetition);
            this.$outer = repetition;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            IterableSplitter.Cclass.$init$(this);
            AugmentedSeqIterator.Cclass.$init$(this);
            SeqSplitter.Cclass.$init$(this);
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

        @Override // scala.collection.parallel.SeqSplitter
        public <U, PI extends SeqSplitter<U>> SeqSplitter<T>.Appended<U, PI> appendParSeq(PI pi) {
            return SeqSplitter.Cclass.appendParSeq(this, pi);
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

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S> boolean corresponds(Function2<T, S, Object> function2, Iterator<S> iterator) {
            return AugmentedSeqIterator.Cclass.corresponds(this, function2, iterator);
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
            return IterableSplitter.Cclass.debugInformation(this);
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

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public Repetition<T>.ParIterator dup() {
            return new ParIterator(m94x9080b34a(), m95i(), until(), this.scala$collection$parallel$immutable$Repetition$ParIterator$$elem);
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
            return m95i() < until();
        }

        /* renamed from: i */
        public int m95i() {
            return this.f1598i;
        }

        public void i_$eq(int i) {
            this.f1598i = i;
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
            return AugmentedSeqIterator.Cclass.indexWhere(this, function1);
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

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int lastIndexWhere(Function1<T, Object> function1) {
            return AugmentedSeqIterator.Cclass.lastIndexWhere(this, function1);
        }

        @Override // scala.collection.Iterator
        public int length() {
            return Iterator.Cclass.length(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public <S> SeqSplitter<T>.Mapped<S> map(Function1<T, S> function1) {
            return SeqSplitter.Cclass.map(this, function1);
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

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public SeqSplitter<T>.Taken newTaken(int i) {
            return SeqSplitter.Cclass.newTaken(this, i);
        }

        @Override // scala.collection.Iterator
        public T next() {
            i_$eq(m95i() + 1);
            return this.scala$collection$parallel$immutable$Repetition$ParIterator$$elem;
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

        @Override // scala.collection.parallel.SeqSplitter
        public <U> SeqSplitter<T>.Patched<U> patchParSeq(int i, SeqSplitter<U> seqSplitter, int i2) {
            return SeqSplitter.Cclass.patchParSeq(this, i, seqSplitter, i2);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public int prefixLength(Function1<T, Object> function1) {
            return AugmentedSeqIterator.Cclass.prefixLength(this, function1);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U product(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.product(this, numeric);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.PreciseSplitter
        public Seq<SeqSplitter<T>> psplit(Seq<Object> seq) {
            Seq seq2 = (Seq) seq.scanLeft(BoxesRunTime.boxToInteger(0), new Repetition$ParIterator$$anonfun$1(this), Seq$.MODULE$.canBuildFrom());
            return (Seq) ((TraversableLike) seq2.init().zip(seq2.tail(), Seq$.MODULE$.canBuildFrom())).withFilter(new Repetition$ParIterator$$anonfun$psplit$1(this)).map(new Repetition$ParIterator$$anonfun$psplit$2(this), Seq$.MODULE$.canBuildFrom());
        }

        @Override // scala.collection.parallel.SeqSplitter
        public Seq<SeqSplitter<T>> psplitWithSignalling(Seq<Object> seq) {
            return SeqSplitter.Cclass.psplitWithSignalling(this, seq);
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

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.RemainsIterator
        public int remaining() {
            return until() - m95i();
        }

        @Override // scala.collection.parallel.SeqSplitter
        public SeqSplitter<T> reverse() {
            return SeqSplitter.Cclass.reverse(this);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, This> Combiner<U, This> reverse2combiner(Combiner<U, This> combiner) {
            return AugmentedSeqIterator.Cclass.reverse2combiner(this, combiner);
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <S, That> Combiner<S, That> reverseMap2combiner(Function1<T, S> function1, Combiner<S, That> combiner) {
            return AugmentedSeqIterator.Cclass.reverseMap2combiner(this, function1, combiner);
        }

        @Override // scala.collection.TraversableOnce
        public List<T> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        /* renamed from: scala$collection$parallel$immutable$Repetition$ParIterator$$$outer */
        public /* synthetic */ Repetition m94x9080b34a() {
            return this.$outer;
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

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<T> slice(int i, int i2) {
            return SeqSplitter.Cclass.slice(this, i, i2);
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

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.parallel.Splitter
        public Seq<SeqSplitter<T>> split() {
            return psplit(Predef$.MODULE$.wrapIntArray(new int[]{remaining() / 2, remaining() - (remaining() / 2)}));
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator
        public <U, This> Tuple2<Combiner<U, This>, Combiner<U, This>> splitAt2combiners(int i, Combiner<U, This> combiner, Combiner<U, This> combiner2) {
            return AugmentedIterableIterator.Cclass.splitAt2combiners(this, i, combiner, combiner2);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public Seq<SeqSplitter<T>> splitWithSignalling() {
            return SeqSplitter.Cclass.splitWithSignalling(this);
        }

        @Override // scala.collection.parallel.AugmentedIterableIterator, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
        public <U> U sum(Numeric<U> numeric) {
            return (U) AugmentedIterableIterator.Cclass.sum(this, numeric);
        }

        @Override // scala.collection.generic.DelegatedSignalling, scala.collection.generic.Signalling
        public int tag() {
            return DelegatedSignalling.Cclass.tag(this);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter, scala.collection.Iterator
        public SeqSplitter<T> take(int i) {
            return SeqSplitter.Cclass.take(this, i);
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

        public int until() {
            return this.until;
        }

        @Override // scala.collection.parallel.AugmentedSeqIterator
        public <U, That> Combiner<U, That> updated2combiner(int i, U u, Combiner<U, That> combiner) {
            return AugmentedSeqIterator.Cclass.updated2combiner(this, i, u, combiner);
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

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S, U, R> SeqSplitter<T>.ZippedAll<U, R> zipAllParSeq(SeqSplitter<S> seqSplitter, U u, R r) {
            return SeqSplitter.Cclass.zipAllParSeq(this, seqSplitter, u, r);
        }

        @Override // scala.collection.parallel.SeqSplitter, scala.collection.parallel.IterableSplitter
        public <S> SeqSplitter<T>.Zipped<S> zipParSeq(SeqSplitter<S> seqSplitter) {
            return SeqSplitter.Cclass.zipParSeq(this, seqSplitter);
        }

        @Override // scala.collection.Iterator
        public Iterator<Tuple2<T, Object>> zipWithIndex() {
            return Iterator.Cclass.zipWithIndex(this);
        }
    }

    public Repetition(T t, int i) {
        this.scala$collection$parallel$immutable$Repetition$$elem = t;
        this.length = i;
        Parallelizable.Cclass.$init$(this);
        GenSeqLike.Cclass.$init$(this);
        GenericTraversableTemplate.Cclass.$init$(this);
        GenTraversable.Cclass.$init$(this);
        GenIterable.Cclass.$init$(this);
        GenSeq.Cclass.$init$(this);
        GenericParTemplate.Cclass.$init$(this);
        CustomParallelizable.Cclass.$init$(this);
        scala$collection$parallel$ParIterableLike$$_tasksupport_$eq(package$.MODULE$.defaultTaskSupport());
        ParIterable.Cclass.$init$(this);
        ParSeqLike.Cclass.$init$(this);
        ParSeq.Cclass.$init$(this);
        ParIterable.Cclass.$init$(this);
        ParSeq.Cclass.$init$(this);
    }

    private Repetition$ParIterator$ ParIterator$lzycompute() {
        synchronized (this) {
            if (this.ParIterator$module == null) {
                this.ParIterator$module = new Repetition$ParIterator$(this);
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.ParIterator$module;
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
    public <S> S $colon$bslash(S s, Function2<T, S, S> function2) {
        Object foldRight;
        foldRight = foldRight(s, function2);
        return (S) foldRight;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That $colon$plus(U u, CanBuildFrom<ParSeq<T>, U, That> canBuildFrom) {
        Object patch;
        patch = patch(length(), (GenSeq) ParArray$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{u})), 0, canBuildFrom);
        return (That) patch;
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> S $div$colon(S s, Function2<S, T, S> function2) {
        Object foldLeft;
        foldLeft = foldLeft(s, function2);
        return (S) foldLeft;
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That $plus$colon(U u, CanBuildFrom<ParSeq<T>, U, That> canBuildFrom) {
        Object patch;
        patch = patch(0, (GenSeq) ParArray$.MODULE$.apply(Predef$.MODULE$.genericWrapArray(new Object[]{u})), 0, canBuildFrom);
        return (That) patch;
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That $plus$plus(GenTraversableOnce<U> genTraversableOnce, CanBuildFrom<ParSeq<T>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.$plus$plus(this, genTraversableOnce, canBuildFrom);
    }

    public Repetition$ParIterator$ ParIterator() {
        return this.ParIterator$module == null ? ParIterator$lzycompute() : this.ParIterator$module;
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
    public <S> S aggregate(Function0<S> function0, Function2<S, T, S> function2, Function2<S, S, S> function22) {
        return (S) ParIterableLike.Cclass.aggregate(this, function0, function2, function22);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.GenSeqLike
    public T apply(int i) {
        if (i < 0 || i >= length()) {
            throw new IndexOutOfBoundsException(String.valueOf(BoxesRunTime.boxToInteger(i)));
        }
        return this.scala$collection$parallel$immutable$Repetition$$elem;
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Object bf2seq(CanBuildFrom<ParSeq<T>, S, That> canBuildFrom) {
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
    public <S, That> That collect(PartialFunction<T, S> partialFunction, CanBuildFrom<ParSeq<T>, S, That> canBuildFrom) {
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

    @Override // scala.collection.parallel.immutable.ParSeq, scala.collection.parallel.ParSeq, scala.collection.GenSeq, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<ParSeq> companion() {
        return ParSeq.Cclass.companion(this);
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

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean corresponds(GenSeq<S> genSeq, Function2<T, S, Object> function2) {
        return ParSeqLike.Cclass.corresponds(this, genSeq, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public int count(Function1<T, Object> function1) {
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

    @Override // scala.collection.parallel.ParIterableLike
    public <PI extends DelegatedSignalling> Object delegatedSignalling2ops(PI pi) {
        return ParIterableLike.Cclass.delegatedSignalling2ops(this, pi);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq diff(GenSeq genSeq) {
        return ParSeqLike.Cclass.diff(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq distinct() {
        return ParSeqLike.Cclass.distinct(this);
    }

    @Override // scala.collection.parallel.ParSeqLike
    public SeqSplitter<T> down(IterableSplitter<?> iterableSplitter) {
        return ParSeqLike.Cclass.down(this, iterableSplitter);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable drop(int i) {
        return ParIterableLike.Cclass.drop(this, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable dropWhile(Function1 function1) {
        return ParIterableLike.Cclass.dropWhile(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean endsWith(GenSeq<S> genSeq) {
        return ParSeqLike.Cclass.endsWith(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.Equals
    public boolean equals(Object obj) {
        return GenSeqLike.Cclass.equals(this, obj);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean exists(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.exists(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable filter(Function1 function1) {
        return ParIterableLike.Cclass.filter(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.MapLike
    public scala.collection.parallel.ParIterable filterNot(Function1 function1) {
        return ParIterableLike.Cclass.filterNot(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Option<T> find(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.find(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That flatMap(Function1<T, GenTraversableOnce<S>> function1, CanBuildFrom<ParSeq<T>, S, That> canBuildFrom) {
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
    public <S> S foldLeft(S s, Function2<S, T, S> function2) {
        return (S) ParIterableLike.Cclass.foldLeft(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <S> S foldRight(S s, Function2<T, S, S> function2) {
        return (S) ParIterableLike.Cclass.foldRight(this, s, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public boolean forall(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.forall(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<T, U> function1) {
        ParIterableLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <B> Combiner<B, ParSeq<B>> genericBuilder() {
        return GenericParTemplate.Cclass.genericBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate
    public <B> Combiner<B, ParSeq<B>> genericCombiner() {
        return GenericParTemplate.Cclass.genericCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <K> ParMap<K, ParSeq<T>> groupBy(Function1<T, K> function1) {
        return ParIterableLike.Cclass.groupBy(this, function1);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean hasDefiniteSize() {
        return ParIterableLike.Cclass.hasDefiniteSize(this);
    }

    @Override // scala.collection.GenSeqLike
    public int hashCode() {
        return GenSeqLike.Cclass.hashCode(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public T head() {
        return (T) ParIterableLike.Cclass.head(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<T> headOption() {
        return ParIterableLike.Cclass.headOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b) {
        return GenSeqLike.Cclass.indexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int indexOf(B b, int i) {
        return GenSeqLike.Cclass.indexOf(this, b, i);
    }

    @Override // scala.collection.GenSeqLike
    public int indexWhere(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.indexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int indexWhere(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.indexWhere(this, function1, i);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable init() {
        return ParIterableLike.Cclass.init(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public void initTaskSupport() {
        ParIterableLike.Cclass.initTaskSupport(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq intersect(GenSeq genSeq) {
        return ParSeqLike.Cclass.intersect(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike
    public boolean isDefinedAt(int i) {
        return GenSeqLike.Cclass.isDefinedAt(this, i);
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
    public PreciseSplitter<T> iterator() {
        return ParSeqLike.Cclass.iterator(this);
    }

    @Override // scala.collection.GenTraversableLike
    public T last() {
        return (T) ParIterableLike.Cclass.last(this);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b) {
        return GenSeqLike.Cclass.lastIndexOf(this, b);
    }

    @Override // scala.collection.GenSeqLike
    public <B> int lastIndexOf(B b, int i) {
        return GenSeqLike.Cclass.lastIndexOf(this, b, i);
    }

    @Override // scala.collection.GenSeqLike
    public int lastIndexWhere(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.lastIndexWhere(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int lastIndexWhere(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.lastIndexWhere(this, function1, i);
    }

    @Override // scala.collection.GenTraversableLike
    public Option<T> lastOption() {
        return ParIterableLike.Cclass.lastOption(this);
    }

    @Override // scala.collection.GenSeqLike
    public int length() {
        return this.length;
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.SetLike
    public <S, That> That map(Function1<T, S> function1, CanBuildFrom<ParSeq<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.map(this, function1, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> T max(Ordering<U> ordering) {
        return (T) ParIterableLike.Cclass.max(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> T maxBy(Function1<T, S> function1, Ordering<S> ordering) {
        return (T) ParIterableLike.Cclass.maxBy(this, function1, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> T min(Ordering<U> ordering) {
        return (T) ParIterableLike.Cclass.min(this, ordering);
    }

    @Override // scala.collection.GenTraversableOnce
    public <S> T minBy(Function1<T, S> function1, Ordering<S> ordering) {
        return (T) ParIterableLike.Cclass.minBy(this, function1, ordering);
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
    public Builder<T, ParSeq<T>> newBuilder() {
        return GenericParTemplate.Cclass.newBuilder(this);
    }

    @Override // scala.collection.generic.GenericParTemplate, scala.collection.generic.HasNewCombiner
    public Combiner<T, ParSeq<T>> newCombiner() {
        return GenericParTemplate.Cclass.newCombiner(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public boolean nonEmpty() {
        return ParIterableLike.Cclass.nonEmpty(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That padTo(int i, U u, CanBuildFrom<ParSeq<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.padTo(this, i, u, canBuildFrom);
    }

    @Override // scala.collection.Parallelizable
    public scala.collection.parallel.ParIterable par() {
        return ParIterableLike.Cclass.par(this);
    }

    @Override // scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<T, ParSeq<T>> parCombiner() {
        return CustomParallelizable.Cclass.parCombiner(this);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParSeq<T>, ParSeq<T>> partition(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.partition(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That patch(int i, GenSeq<U> genSeq, int i2, CanBuildFrom<ParSeq<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.patch(this, i, genSeq, i2, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike
    public int prefixLength(Function1<T, Object> function1) {
        return GenSeqLike.Cclass.prefixLength(this, function1);
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
    public <U> U reduceLeft(Function2<U, T, U> function2) {
        return (U) ParIterableLike.Cclass.reduceLeft(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceLeftOption(Function2<U, T, U> function2) {
        return ParIterableLike.Cclass.reduceLeftOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceOption(Function2<U, U, U> function2) {
        return ParIterableLike.Cclass.reduceOption(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public <U> U reduceRight(Function2<T, U, U> function2) {
        return (U) ParIterableLike.Cclass.reduceRight(this, function2);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> Option<U> reduceRightOption(Function2<T, U, U> function2) {
        return ParIterableLike.Cclass.reduceRightOption(this, function2);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    public scala.collection.parallel.ParIterable repr() {
        return ParIterableLike.Cclass.repr(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <S, That> Combiner<S, That> reuse(Option<Combiner<S, That>> option, Combiner<S, That> combiner) {
        return ParIterableLike.Cclass.reuse(this, option, combiner);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public scala.collection.parallel.ParSeq reverse() {
        return ParSeqLike.Cclass.reverse(this);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S, That> That reverseMap(Function1<T, S> function1, CanBuildFrom<ParSeq<T>, S, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.reverseMap(this, function1, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U> boolean sameElements(GenIterable<U> genIterable) {
        return ParSeqLike.Cclass.sameElements(this, genIterable);
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

    @Override // scala.collection.parallel.ParSeqLike
    public /* synthetic */ Object scala$collection$parallel$ParSeqLike$$super$zip(GenIterable genIterable, CanBuildFrom canBuildFrom) {
        return ParIterableLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <U, That> That scan(U u, Function2<U, U, U> function2, CanBuildFrom<ParSeq<T>, U, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scan(this, u, function2, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public int scanBlockSize() {
        return ParIterableLike.Cclass.scanBlockSize(this);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanLeft(S s, Function2<S, T, S> function2, CanBuildFrom<ParSeq<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanLeft(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenTraversableLike
    public <S, That> That scanRight(S s, Function2<T, S, S> function2, CanBuildFrom<ParSeq<T>, S, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.scanRight(this, s, function2, canBuildFrom);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public int segmentLength(Function1<T, Object> function1, int i) {
        return ParSeqLike.Cclass.segmentLength(this, function1, i);
    }

    @Override // scala.collection.GenSeq, scala.collection.GenSeqLike, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Nothing$ seq() {
        throw new UnsupportedOperationException();
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable sequentially(Function1 function1) {
        return ParIterableLike.Cclass.sequentially(this, function1);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.GenTraversableOnce
    public int size() {
        return ParSeqLike.Cclass.size(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable slice(int i, int i2) {
        return ParIterableLike.Cclass.slice(this, i, i2);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParSeq<T>, ParSeq<T>> span(Function1<T, Object> function1) {
        return ParIterableLike.Cclass.span(this, function1);
    }

    @Override // scala.collection.GenTraversableLike
    public Tuple2<ParSeq<T>, ParSeq<T>> splitAt(int i) {
        return ParIterableLike.Cclass.splitAt(this, i);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Repetition<T>.ParIterator splitter() {
        return new ParIterator(this, ParIterator().$lessinit$greater$default$1(), ParIterator().$lessinit$greater$default$2(), ParIterator().$lessinit$greater$default$3());
    }

    @Override // scala.collection.GenSeqLike
    public <B> boolean startsWith(GenSeq<B> genSeq) {
        return GenSeqLike.Cclass.startsWith(this, genSeq);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <S> boolean startsWith(GenSeq<S> genSeq, int i) {
        return ParSeqLike.Cclass.startsWith(this, genSeq, i);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return ParSeq.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <U> U sum(Numeric<U> numeric) {
        return (U) ParIterableLike.Cclass.sum(this, numeric);
    }

    @Override // scala.collection.GenTraversableLike
    public scala.collection.parallel.ParIterable tail() {
        return ParIterableLike.Cclass.tail(this);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable take(int i) {
        return ParIterableLike.Cclass.take(this, i);
    }

    @Override // scala.collection.GenTraversableLike, scala.collection.IterableLike
    public scala.collection.parallel.ParIterable takeWhile(Function1 function1) {
        return ParIterableLike.Cclass.takeWhile(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <R, Tp> Object task2ops(ParIterableLike<T, ParSeq<T>, scala.collection.immutable.Seq<T>>.StrictSplitterCheckTask<R, Tp> strictSplitterCheckTask) {
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
    public <Col> Col mo1to(CanBuildFrom<Nothing$, T, Col> canBuildFrom) {
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
    public IndexedSeq<T> toIndexedSeq() {
        return ParIterableLike.Cclass.toIndexedSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public ParIterable<T> toIterable() {
        return ParIterable.Cclass.toIterable(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Iterator<T> toIterator() {
        return ParIterableLike.Cclass.toIterator(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public List<T> toList() {
        return ParIterableLike.Cclass.toList(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public <K, V> ParMap<K, V> toMap(Predef$$less$colon$less<T, Tuple2<K, V>> predef$$less$colon$less) {
        return ParIterableLike.Cclass.toMap(this, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <U, That> That toParCollection(Function0<Combiner<U, That>> function0) {
        return (That) ParIterableLike.Cclass.toParCollection(this, function0);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <K, V, That> That toParMap(Function0<Combiner<Tuple2<K, V>, That>> function0, Predef$$less$colon$less<T, Tuple2<K, V>> predef$$less$colon$less) {
        return (That) ParIterableLike.Cclass.toParMap(this, function0, predef$$less$colon$less);
    }

    @Override // scala.collection.parallel.immutable.ParSeq, scala.collection.GenSeqLike, scala.collection.GenTraversableOnce, scala.collection.SetLike
    public ParSeq<T> toSeq() {
        return ParSeq.Cclass.toSeq(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <U> ParSet<U> toSet() {
        return ParIterableLike.Cclass.toSet(this);
    }

    @Override // scala.collection.GenTraversableOnce, scala.collection.IterableLike
    public Stream<T> toStream() {
        return ParIterableLike.Cclass.toStream(this);
    }

    @Override // scala.collection.parallel.ParSeq, scala.collection.parallel.ParIterableLike
    public String toString() {
        return ParSeq.Cclass.toString(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public GenTraversable<T> toTraversable() {
        return ParIterableLike.Cclass.toTraversable(this);
    }

    @Override // scala.collection.GenTraversableOnce
    public Vector<T> toVector() {
        return ParIterableLike.Cclass.toVector(this);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public GenTraversable transpose(Function1 function1) {
        return GenericTraversableTemplate.Cclass.transpose(this, function1);
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <B, That> That union(GenSeq<B> genSeq, CanBuildFrom<ParSeq<T>, B, That> canBuildFrom) {
        return (That) GenSeqLike.Cclass.union(this, genSeq, canBuildFrom);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2> Tuple2<GenTraversable, GenTraversable> unzip(Function1<T, Tuple2<A1, A2>> function1) {
        return GenericTraversableTemplate.Cclass.unzip(this, function1);
    }

    @Override // scala.collection.generic.GenericTraversableTemplate
    public <A1, A2, A3> Tuple3<GenTraversable, GenTraversable, GenTraversable> unzip3(Function1<T, Tuple3<A1, A2, A3>> function1) {
        return GenericTraversableTemplate.Cclass.unzip3(this, function1);
    }

    public Nothing$ update(int i, T t) {
        throw new UnsupportedOperationException();
    }

    @Override // scala.collection.GenSeqLike, scala.collection.SeqLike
    public <U, That> That updated(int i, U u, CanBuildFrom<ParSeq<T>, U, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.updated(this, i, u, canBuildFrom);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public Object view() {
        return ParSeqLike.Cclass.view(this);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public scala.collection.parallel.ParIterable withFilter(Function1 function1) {
        return ParIterableLike.Cclass.withFilter(this, function1);
    }

    @Override // scala.collection.parallel.ParIterableLike
    public <R> Object wrap(Function0<R> function0) {
        return ParIterableLike.Cclass.wrap(this, function0);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, S, That> That zip(GenIterable<S> genIterable, CanBuildFrom<ParSeq<T>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParSeqLike.Cclass.zip(this, genIterable, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <S, U, That> That zipAll(GenIterable<S> genIterable, U u, S s, CanBuildFrom<ParSeq<T>, Tuple2<U, S>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipAll(this, genIterable, u, s, canBuildFrom);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    public <U, That> That zipWithIndex(CanBuildFrom<ParSeq<T>, Tuple2<U, Object>, That> canBuildFrom) {
        return (That) ParIterableLike.Cclass.zipWithIndex(this, canBuildFrom);
    }
}
