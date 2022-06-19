package scala.collection.parallel.mutable;

import java.util.Objects;
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
import scala.collection.immutable.Nil$;
import scala.collection.immutable.Set;
import scala.collection.immutable.Stream;
import scala.collection.immutable.Vector;
import scala.collection.mutable.ArrayBuffer;
import scala.collection.mutable.ArrayBuffer$;
import scala.collection.mutable.Buffer;
import scala.collection.mutable.Builder;
import scala.collection.mutable.HashEntry;
import scala.collection.mutable.HashTable;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.AugmentedIterableIterator;
import scala.collection.parallel.BufferSplitter;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.IterableSplitter;
import scala.collection.parallel.ParIterable;
import scala.collection.parallel.RemainsIterator;
import scala.collection.parallel.SeqSplitter;
import scala.collection.parallel.mutable.SizeMapUtils;
import scala.math.Numeric;
import scala.math.Ordering;
import scala.reflect.ClassTag;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
import scala.runtime.TraitSetter;
@ScalaSignature(bytes = "\u0006\u0001\u0005\u0015eaB\u0001\u0003!\u0003\r\ta\u0003\u0002\r!\u0006\u0014\b*Y:i)\u0006\u0014G.\u001a\u0006\u0003\u0007\u0011\tq!\\;uC\ndWM\u0003\u0002\u0006\r\u0005A\u0001/\u0019:bY2,GN\u0003\u0002\b\u0011\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003%\tQa]2bY\u0006\u001c\u0001!F\u0002\r1\t\u001a2\u0001A\u0007\u0012!\tqq\"D\u0001\t\u0013\t\u0001\u0002B\u0001\u0004B]f\u0014VM\u001a\t\u0005%Q1\u0012%D\u0001\u0014\u0015\t\u0019a!\u0003\u0002\u0016'\tI\u0001*Y:i)\u0006\u0014G.\u001a\t\u0003/aa\u0001\u0001B\u0003\u001a\u0001\t\u0007!DA\u0001L#\tYb\u0004\u0005\u0002\u000f9%\u0011Q\u0004\u0003\u0002\b\u001d>$\b.\u001b8h!\tqq$\u0003\u0002!\u0011\t\u0019\u0011I\\=\u0011\u0005]\u0011C!B\u0012\u0001\u0005\u0004!#!B#oiJL\u0018CA\u0013)!\tqa%\u0003\u0002(\u0011\t!a*\u001e7m!\u0011\u0011\u0012FF\u0011\n\u0005)\u001a\"!\u0003%bg\",e\u000e\u001e:z\u0011\u0015a\u0003\u0001\"\u0001.\u0003\u0019!\u0013N\\5uIQ\ta\u0006\u0005\u0002\u000f_%\u0011\u0001\u0007\u0003\u0002\u0005+:LG\u000fC\u00033\u0001\u0011\u00053'A\tbY^\f\u0017p]%oSR\u001c\u0016N_3NCB,\u0012\u0001\u000e\t\u0003\u001dUJ!A\u000e\u0005\u0003\u000f\t{w\u000e\\3b]\u001a)\u0001\bAA\u0001s\tiQI\u001c;ss&#XM]1u_J,2A\u000f!k'\u00119Tb\u000f\"\u0011\u0007qjt(D\u0001\u0005\u0013\tqDA\u0001\tJi\u0016\u0014\u0018M\u00197f'Bd\u0017\u000e\u001e;feB\u0011q\u0003\u0011\u0003\u0006\u0003^\u0012\rA\u0007\u0002\u0002)B\u00111\tR\u0007\u0002\u0005%\u0011QI\u0001\u0002\r'&TX-T1q+RLGn\u001d\u0005\t\u000f^\u0012\t\u0019!C\u0005\u0011\u0006\u0019\u0011\u000e\u001a=\u0016\u0003%\u0003\"A\u0004&\n\u0005-C!aA%oi\"AQj\u000eBA\u0002\u0013%a*A\u0004jIb|F%Z9\u0015\u00059z\u0005b\u0002)M\u0003\u0003\u0005\r!S\u0001\u0004q\u0012\n\u0004\u0002\u0003*8\u0005\u0003\u0005\u000b\u0015B%\u0002\t%$\u0007\u0010\t\u0005\t)^\u0012)\u0019!C\u0005\u0011\u0006)QO\u001c;jY\"Aak\u000eB\u0001B\u0003%\u0011*\u0001\u0004v]RLG\u000e\t\u0005\t1^\u0012)\u0019!C\u0005\u0011\u0006IAo\u001c;bYNL'0\u001a\u0005\t5^\u0012\t\u0011)A\u0005\u0013\u0006QAo\u001c;bYNL'0\u001a\u0011\t\u0011q;$\u00111A\u0005\nu\u000b!!Z:\u0016\u0003\u0005B\u0001bX\u001c\u0003\u0002\u0004%I\u0001Y\u0001\u0007KN|F%Z9\u0015\u00059\n\u0007b\u0002)_\u0003\u0003\u0005\r!\t\u0005\tG^\u0012\t\u0011)Q\u0005C\u0005\u0019Qm\u001d\u0011\t\u000b\u0015<D\u0011\u00014\u0002\rqJg.\u001b;?)\u00159WN\\8q!\u0011AwgP5\u000e\u0003\u0001\u0001\"a\u00066\u0005\r-<DQ1\u0001m\u0005!IE/\u001a:SKB\u0014\u0018CA\u000e<\u0011\u00159E\r1\u0001J\u0011\u0015!F\r1\u0001J\u0011\u0015AF\r1\u0001J\u0011\u0015aF\r1\u0001\"\u0011\u001d\u0011xG1A\u0005\nM\f\u0011\"\u001b;feR\f'\r\\3\u0016\u0003Q\u00042AD;)\u0013\t1\bBA\u0003BeJ\f\u0017\u0010\u0003\u0004yo\u0001\u0006I\u0001^\u0001\u000bSR,'\u000f^1cY\u0016\u0004\u0003b\u0002>8\u0001\u0004%I\u0001S\u0001\niJ\fg/\u001a:tK\u0012Dq\u0001`\u001cA\u0002\u0013%Q0A\u0007ue\u00064XM]:fI~#S-\u001d\u000b\u0003]yDq\u0001U>\u0002\u0002\u0003\u0007\u0011\nC\u0004\u0002\u0002]\u0002\u000b\u0015B%\u0002\u0015Q\u0014\u0018M^3sg\u0016$\u0007\u0005C\u0004\u0002\u0006]2\t!a\u0002\u0002\u0015\u0015tGO]=3SR,W\u000eF\u0002@\u0003\u0013Aq!a\u0003\u0002\u0004\u0001\u0007\u0011%A\u0001f\u0011\u001d\tya\u000eD\u0001\u0003#\t1B\\3x\u0013R,'/\u0019;peRI\u0011.a\u0005\u0002\u0018\u0005m\u0011q\u0004\u0005\b\u0003+\ti\u00011\u0001J\u0003\u001dIG\r\u001f$s_6Dq!!\u0007\u0002\u000e\u0001\u0007\u0011*\u0001\u0005jIb,f\u000e^5m\u0011\u001d\ti\"!\u0004A\u0002%\u000b\u0011\u0002^8uC2\u001c\u0016N_3\t\rq\u000bi\u00011\u0001\"\u0011\u0019\t\u0019c\u000eC\u0001g\u00059\u0001.Y:OKb$\bbBA\u0014o\u0011\u0005\u0011\u0011F\u0001\u0005]\u0016DH\u000fF\u0001@\u0011\u0019\tic\u000eC\u0001[\u0005!1oY1o\u0011\u0019\t\td\u000eC\u0001\u0011\u0006I!/Z7bS:Lgn\u001a\u0005\t\u0003k9D\u0011\t\u0003\u00028\u0005\u0001B-\u001a2vO&sgm\u001c:nCRLwN\\\u000b\u0003\u0003s\u0001B!a\u000f\u0002B9\u0019a\"!\u0010\n\u0007\u0005}\u0002\"\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003\u0007\n)E\u0001\u0004TiJLgn\u001a\u0006\u0004\u0003\u007fA\u0001bBA%o\u0011\u0005\u00111J\u0001\u0004IV\u0004X#A5\t\u000f\u0005=s\u0007\"\u0001\u0002R\u0005)1\u000f\u001d7jiV\u0011\u00111\u000b\t\u0006\u0003+\n9fO\u0007\u0002\r%\u0019\u0011\u0011\f\u0004\u0003\u0007M+\u0017\u000fC\u0004\u0002^]\"I!a\u0018\u0002)\r|gN^3siR{\u0017I\u001d:bs\n+hMZ3s)\u0011\t\t'a\u001a\u0011\tI\t\u0019gP\u0005\u0004\u0003K\u001a\"aC!se\u0006L()\u001e4gKJDq!!\u001b\u0002\\\u0001\u0007\u0011%A\u0005dQ\u0006Lg\u000e[3bI\"9\u0011QN\u001c\u0005\u0012\u0005=\u0014AC2pk:$X\t\\3ngR)\u0011*!\u001d\u0002v!9\u00111OA6\u0001\u0004I\u0015\u0001\u00024s_6Da\u0001VA6\u0001\u0004I\u0005bBA=o\u0011E\u00111P\u0001\u0011G>,h\u000e\u001e\"vG.,GoU5{KN$R!SA?\u0003\u0003Cq!a \u0002x\u0001\u0007\u0011*\u0001\u0006ge>l')^2lKRDq!a!\u0002x\u0001\u0007\u0011*A\u0006v]RLGNQ;dW\u0016$\b")
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashTable.class */
public interface ParHashTable<K, Entry extends HashEntry<K, Entry>> extends HashTable<K, Entry> {

    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashTable$EntryIterator.class */
    public abstract class EntryIterator<T, IterRepr extends IterableSplitter<T>> implements IterableSplitter<T>, SizeMapUtils {
        public final /* synthetic */ ParHashTable $outer;
        private Entry scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es;

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$idx */
        private int f1605x67c3880f;

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$itertable */
        private final HashEntry<K, Entry>[] f1606xc901b88;

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$totalsize */
        private final int f1607x602da517;

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$traversed */
        private int f1608xce2d9504 = 0;

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$until */
        private final int f1609x85af6430;
        private Signalling signalDelegate;

        public EntryIterator(ParHashTable<K, Entry> parHashTable, int i, int i2, int i3, Entry entry) {
            this.f1605x67c3880f = i;
            this.f1609x85af6430 = i2;
            this.f1607x602da517 = i3;
            this.scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es = entry;
            Objects.requireNonNull(parHashTable);
            this.$outer = parHashTable;
            TraversableOnce.Cclass.$init$(this);
            Iterator.Cclass.$init$(this);
            RemainsIterator.Cclass.$init$(this);
            AugmentedIterableIterator.Cclass.$init$(this);
            DelegatedSignalling.Cclass.$init$(this);
            IterableSplitter.Cclass.$init$(this);
            SizeMapUtils.Cclass.$init$(this);
            this.f1606xc901b88 = (HashEntry<K, Entry>[]) parHashTable.table();
            scan();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [scala.collection.mutable.HashEntry] */
        private ArrayBuffer<T> convertToArrayBuffer(Entry entry) {
            ArrayBuffer arrayBuffer = (ArrayBuffer) ArrayBuffer$.MODULE$.apply(Nil$.MODULE$);
            while (entry != null) {
                arrayBuffer.$plus$eq((ArrayBuffer) entry);
                entry = (HashEntry) entry.next();
            }
            return (ArrayBuffer) arrayBuffer.map(new ParHashTable$EntryIterator$$anonfun$convertToArrayBuffer$1(this), ArrayBuffer$.MODULE$.canBuildFrom());
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es_$eq */
        private void m76x152b7e2d(Entry entry) {
            this.scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es = entry;
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$idx_$eq */
        private void m74x4bbeaba0(int i) {
            this.f1605x67c3880f = i;
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$traversed_$eq */
        private void m70x23bf3615(int i) {
            this.f1608xce2d9504 = i;
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

        @Override // scala.collection.parallel.mutable.SizeMapUtils
        public int calcNumElems(int i, int i2, int i3, int i4) {
            return SizeMapUtils.Cclass.calcNumElems(this, i, i2, i3, i4);
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

        @Override // scala.collection.parallel.mutable.SizeMapUtils
        public int countBucketSizes(int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                i3 += m77xa6134c45().sizemap()[i];
                i++;
            }
            return i3;
        }

        @Override // scala.collection.parallel.mutable.SizeMapUtils
        public int countElems(int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                Entry entry = m73xc901b88()[i];
                while (true) {
                    HashEntry<K, Entry> hashEntry = entry;
                    if (hashEntry != null) {
                        i3++;
                        entry = hashEntry.next();
                    }
                }
                i++;
            }
            return i3;
        }

        @Override // scala.collection.parallel.IterableSplitter
        public String debugInformation() {
            return buildString(new ParHashTable$EntryIterator$$anonfun$debugInformation$1(this));
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
        public IterRepr dup() {
            return newIterator(m75x67c3880f(), m69x85af6430(), m72x602da517(), scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es());
        }

        @Override // scala.collection.Iterator
        public Tuple2<Iterator<T>, Iterator<T>> duplicate() {
            return Iterator.Cclass.duplicate(this);
        }

        public abstract T entry2item(Entry entry);

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
            return scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es() != null;
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

        public abstract IterRepr newIterator(int i, int i2, int i3, Entry entry);

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
            HashEntry scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es = scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es();
            m76x152b7e2d((HashEntry) scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es().next());
            scan();
            m70x23bf3615(m71xce2d9504() + 1);
            return entry2item(scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es);
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
            return m72x602da517() - m71xce2d9504();
        }

        @Override // scala.collection.TraversableOnce
        public List<T> reversed() {
            return TraversableOnce.Cclass.reversed(this);
        }

        @Override // scala.collection.Iterator
        public boolean sameElements(Iterator<?> iterator) {
            return Iterator.Cclass.sameElements(this, iterator);
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$$outer */
        public /* synthetic */ ParHashTable m77xa6134c45() {
            return this.$outer;
        }

        public Entry scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es() {
            return this.scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es;
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$idx */
        public int m75x67c3880f() {
            return this.f1605x67c3880f;
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$itertable */
        public HashEntry<K, Entry>[] m73xc901b88() {
            return this.f1606xc901b88;
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$totalsize */
        public int m72x602da517() {
            return this.f1607x602da517;
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$traversed */
        public int m71xce2d9504() {
            return this.f1608xce2d9504;
        }

        /* renamed from: scala$collection$parallel$mutable$ParHashTable$EntryIterator$$until */
        public int m69x85af6430() {
            return this.f1609x85af6430;
        }

        public void scan() {
            while (scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es() == null && m75x67c3880f() < m69x85af6430()) {
                m76x152b7e2d(m73xc901b88()[m75x67c3880f()]);
                m74x4bbeaba0(m75x67c3880f() + 1);
            }
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
            if (remaining() <= 1) {
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new IterableSplitter[]{this}));
            } else if (m69x85af6430() > m75x67c3880f()) {
                int m69x85af6430 = (m69x85af6430() - m75x67c3880f()) / 2;
                int m75x67c3880f = m75x67c3880f() + m69x85af6430 + 1;
                int m69x85af64302 = m69x85af6430();
                int i = m75x67c3880f - 1;
                HashEntry<K, Entry> hashEntry = m73xc901b88()[i];
                int calcNumElems = calcNumElems(i, m69x85af64302, m77xa6134c45().table().length, m77xa6134c45().sizeMapBucketSize());
                int m75x67c3880f2 = m75x67c3880f();
                int m75x67c3880f3 = m75x67c3880f();
                seq = (Seq) Seq$.MODULE$.apply(Predef$.MODULE$.wrapRefArray(new IterableSplitter[]{newIterator(m75x67c3880f2, m75x67c3880f3 + m69x85af6430, m72x602da517() - calcNumElems, scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es()), newIterator(m75x67c3880f, m69x85af64302, calcNumElems, hashEntry)}));
            } else {
                ArrayBuffer<T> convertToArrayBuffer = convertToArrayBuffer(scala$collection$parallel$mutable$ParHashTable$EntryIterator$$es());
                seq = new BufferSplitter(convertToArrayBuffer, 0, convertToArrayBuffer.length(), signalDelegate()).split();
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

    /* renamed from: scala.collection.parallel.mutable.ParHashTable$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashTable$class.class */
    public abstract class Cclass {
        public static void $init$(ParHashTable parHashTable) {
        }

        public static boolean alwaysInitSizeMap(ParHashTable parHashTable) {
            return true;
        }
    }

    @Override // scala.collection.mutable.HashTable
    boolean alwaysInitSizeMap();
}
