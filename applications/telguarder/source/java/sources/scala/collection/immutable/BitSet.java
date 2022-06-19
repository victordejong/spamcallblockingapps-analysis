package scala.collection.immutable;

import scala.Function1;
import scala.Option;
import scala.Predef$;
import scala.Serializable;
import scala.collection.AbstractIterator;
import scala.collection.AbstractSet;
import scala.collection.BitSet;
import scala.collection.BitSetLike;
import scala.collection.BitSetLike$;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.Iterator;
import scala.collection.SortedSet;
import scala.collection.SortedSetLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.GenericCompanion;
import scala.collection.generic.Sorted;
import scala.collection.immutable.Iterable;
import scala.collection.immutable.Set;
import scala.collection.immutable.SortedSet;
import scala.collection.immutable.Traversable;
import scala.collection.mutable.StringBuilder;
import scala.collection.parallel.Combiner;
import scala.collection.parallel.immutable.ParSet;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
@ScalaSignature(bytes = "\u0006\u0001\u0005Md!B\u0001\u0003\u0003\u0003I!A\u0002\"jiN+GO\u0003\u0002\u0004\t\u0005I\u0011.\\7vi\u0006\u0014G.\u001a\u0006\u0003\u000b\u0019\t!bY8mY\u0016\u001cG/[8o\u0015\u00059\u0011!B:dC2\f7\u0001A\n\u0007\u0001)\u0011b\u0003\u0007\u000f\u0011\u0007-aa\"D\u0001\u0005\u0013\tiAAA\u0006BEN$(/Y2u'\u0016$\bCA\b\u0011\u001b\u00051\u0011BA\t\u0007\u0005\rIe\u000e\u001e\t\u0004'QqQ\"\u0001\u0002\n\u0005U\u0011!!C*peR,GmU3u!\tYq#\u0003\u0002\u0002\tA\u00191\"G\u000e\n\u0005i!!A\u0003\"jiN+G\u000fT5lKB\u00111\u0003\u0001\t\u0003\u001fuI!A\b\u0004\u0003\u0019M+'/[1mSj\f'\r\\3\t\u000b\u0001\u0002A\u0011A\u0011\u0002\rqJg.\u001b;?)\u0005Y\u0002\"B\u0012\u0001\t\u0003\"\u0013!B3naRLX#A\u000e\t\u000b\u0019\u0002A\u0011C\u0014\u0002#\u0019\u0014x.\u001c\"ji6\u000b7o\u001b(p\u0007>\u0004\u0018\u0010\u0006\u0002\u001cQ!)\u0011&\na\u0001U\u0005)Q\r\\3ngB\u0019qbK\u0017\n\u000512!!B!se\u0006L\bCA\b/\u0013\tycA\u0001\u0003M_:<\u0007\"B\u0019\u0001\r#\u0011\u0014AC;qI\u0006$XmV8sIR\u00191dM\u001b\t\u000bQ\u0002\u0004\u0019\u0001\b\u0002\u0007%$\u0007\u0010C\u00037a\u0001\u0007Q&A\u0001x\u0011\u0015A\u0004\u0001\"\u0001:\u0003\u0015!\u0003\u000f\\;t)\tY\"\bC\u0003<o\u0001\u0007a\"\u0001\u0003fY\u0016l\u0007\"B\u001f\u0001\t\u0003q\u0014A\u0002\u0013nS:,8\u000f\u0006\u0002\u001c\u007f!)1\b\u0010a\u0001\u001d!\"\u0001!\u0011#F!\ty!)\u0003\u0002D\r\t\u00012+\u001a:jC24VM]:j_:,\u0016\nR\u0001\u0006m\u0006dW/\u001a\u0010\t-qK0'4vG\u0016 )qI\u0001E\u0001\u0011\u00061!)\u001b;TKR\u0004\"aE%\u0007\u000b\u0005\u0011\u0001\u0012\u0001&\u0014\t%[e\n\b\t\u0003\u001f1K!!\u0014\u0004\u0003\r\u0005s\u0017PU3g!\ry%kG\u0007\u0002!*\u0011\u0011\u000bB\u0001\bO\u0016tWM]5d\u0013\t\u0019\u0006KA\u0007CSR\u001cV\r\u001e$bGR|'/\u001f\u0005\u0006A%#\t!\u0016\u000b\u0002\u0011\"91%\u0013b\u0001\n\u0003!\u0003B\u0002-JA\u0003%1$\u0001\u0004f[B$\u0018\u0010\t\u0005\u00065&#\taW\u0001\u000b]\u0016<()^5mI\u0016\u0014X#\u0001/\u0011\tu\u0003gbG\u0007\u0002=*\u0011q\fB\u0001\b[V$\u0018M\u00197f\u0013\t\tgLA\u0004Ck&dG-\u001a:\t\u000b\rLE1\u00013\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\u0003\u0015\u0004Ra\u00144\u001c\u001dmI!a\u001a)\u0003\u0019\r\u000bgNQ;jY\u00124%o\\7\t\u000b%LE\u0011\u00016\u0002\u0017\u0019\u0014x.\u001c\"ji6\u000b7o\u001b\u000b\u00037-DQ!\u000b5A\u0002)BQAJ%\u0005\u00025$\"a\u00078\t\u000b%b\u0007\u0019\u0001\u0016\u0007\tAL\u0005!\u001d\u0002\b\u0005&$8+\u001a;2'\ty7\u0004\u0003\u0005*_\n\u0015\r\u0011\"\u0001t+\u0005i\u0003\u0002C;p\u0005\u0003\u0005\u000b\u0011B\u0017\u0002\r\u0015dW-\\:!\u0011\u0015\u0001s\u000e\"\u0001x)\tA(\u0010\u0005\u0002z_6\t\u0011\nC\u0003*m\u0002\u0007Q\u0006C\u0003}_\u0012EQ0\u0001\u0004oo>\u0014Hm]\u000b\u0002\u001d!1qp\u001cC\t\u0003\u0003\tAa^8sIR\u0019Q&a\u0001\t\u000bQr\b\u0019\u0001\b\t\rEzG\u0011CA\u0004)\u0015Y\u0012\u0011BA\u0006\u0011\u0019!\u0014Q\u0001a\u0001\u001d!1a'!\u0002A\u000252a!a\u0004J\u0001\u0005E!a\u0002\"jiN+GOM\n\u0004\u0003\u001bY\u0002BCA\u000b\u0003\u001b\u0011)\u0019!C\u0001g\u00061Q\r\\3ngBB!\"!\u0007\u0002\u000e\t\u0005\t\u0015!\u0003.\u0003\u001d)G.Z7ta\u0001B!\"!\b\u0002\u000e\t\u0005\t\u0015!\u0003.\u0003\u0019)G.Z7tc!9\u0001%!\u0004\u0005\u0002\u0005\u0005BCBA\u0012\u0003K\t9\u0003E\u0002z\u0003\u001bAq!!\u0006\u0002 \u0001\u0007Q\u0006C\u0004\u0002\u001e\u0005}\u0001\u0019A\u0017\t\rq\fi\u0001\"\u0005~\u0011\u001dy\u0018Q\u0002C\t\u0003[!2!LA\u0018\u0011\u0019!\u00141\u0006a\u0001\u001d!9\u0011'!\u0004\u0005\u0012\u0005MB#B\u000e\u00026\u0005]\u0002B\u0002\u001b\u00022\u0001\u0007a\u0002\u0003\u00047\u0003c\u0001\r!\f\u0004\u0007\u0003wI\u0005!!\u0010\u0003\u000f\tKGoU3u\u001dN\u0019\u0011\u0011H\u000e\t\u0015%\nID!b\u0001\n\u0003\t\t%F\u0001+\u0011%)\u0018\u0011\bB\u0001B\u0003%!\u0006C\u0004!\u0003s!\t!a\u0012\u0015\t\u0005%\u00131\n\t\u0004s\u0006e\u0002BB\u0015\u0002F\u0001\u0007!\u0006\u0003\u0004}\u0003s!\t\" \u0005\b\u007f\u0006eB\u0011CA))\ri\u00131\u000b\u0005\u0007i\u0005=\u0003\u0019\u0001\b\t\u000fE\nI\u0004\"\u0005\u0002XQ)1$!\u0017\u0002\\!1A'!\u0016A\u00029AaANA+\u0001\u0004i\u0003\"CA0\u0013\u0006\u0005I\u0011BA1\u0003-\u0011X-\u00193SKN|GN^3\u0015\u0005\u0005\r\u0004\u0003BA3\u0003_j!!a\u001a\u000b\t\u0005%\u00141N\u0001\u0005Y\u0006twM\u0003\u0002\u0002n\u0005!!.\u0019<b\u0013\u0011\t\t(a\u001a\u0003\r=\u0013'.Z2u\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/BitSet.class */
public abstract class BitSet extends AbstractSet<Object> implements SortedSet<Object>, scala.collection.BitSet, Serializable {
    public static final long serialVersionUID = 1611436763290191562L;

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/BitSet$BitSet1.class */
    public static class BitSet1 extends BitSet {
        private final long elems;

        public BitSet1(long j) {
            this.elems = j;
        }

        public long elems() {
            return this.elems;
        }

        @Override // scala.collection.BitSetLike
        public int nwords() {
            return 1;
        }

        @Override // scala.collection.immutable.BitSet
        public BitSet updateWord(int i, long j) {
            return i == 0 ? new BitSet1(j) : i == 1 ? new BitSet2(elems(), j) : fromBitMaskNoCopy(BitSetLike$.MODULE$.updateArray(new long[]{elems()}, i, j));
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [long] */
        @Override // scala.collection.BitSetLike
        public long word(int i) {
            return i == 0 ? elems() : (char) 0;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/BitSet$BitSet2.class */
    public static class BitSet2 extends BitSet {
        private final long elems0;
        private final long elems1;

        public BitSet2(long j, long j2) {
            this.elems0 = j;
            this.elems1 = j2;
        }

        public long elems0() {
            return this.elems0;
        }

        @Override // scala.collection.BitSetLike
        public int nwords() {
            return 2;
        }

        @Override // scala.collection.immutable.BitSet
        public BitSet updateWord(int i, long j) {
            return i == 0 ? new BitSet2(j, this.elems1) : i == 1 ? new BitSet2(elems0(), j) : fromBitMaskNoCopy(BitSetLike$.MODULE$.updateArray(new long[]{elems0(), this.elems1}, i, j));
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [long] */
        /* JADX WARN: Type inference failed for: r0v7, types: [long] */
        @Override // scala.collection.BitSetLike
        public long word(int i) {
            return i == 0 ? elems0() : i == 1 ? this.elems1 : (char) 0;
        }
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/BitSet$BitSetN.class */
    public static class BitSetN extends BitSet {
        private final long[] elems;

        public BitSetN(long[] jArr) {
            this.elems = jArr;
        }

        public long[] elems() {
            return this.elems;
        }

        @Override // scala.collection.BitSetLike
        public int nwords() {
            return elems().length;
        }

        @Override // scala.collection.immutable.BitSet
        public BitSet updateWord(int i, long j) {
            return fromBitMaskNoCopy(BitSetLike$.MODULE$.updateArray(elems(), i, j));
        }

        /* JADX WARN: Type inference failed for: r0v5 */
        @Override // scala.collection.BitSetLike
        public long word(int i) {
            return i < nwords() ? elems()[i] : (char) 0;
        }
    }

    public BitSet() {
        Traversable.Cclass.$init$(this);
        Iterable.Cclass.$init$(this);
        Set.Cclass.$init$(this);
        Sorted.Cclass.$init$(this);
        SortedSetLike.Cclass.$init$(this);
        SortedSet.Cclass.$init$(this);
        SortedSet.Cclass.$init$(this);
        BitSetLike.Cclass.$init$(this);
        BitSet.Cclass.$init$(this);
    }

    public static Object bitsetCanBuildFrom() {
        return BitSet$.MODULE$.bitsetCanBuildFrom();
    }

    public static CanBuildFrom<BitSet, Object, BitSet> canBuildFrom() {
        return BitSet$.MODULE$.canBuildFrom();
    }

    public static BitSet fromBitMask(long[] jArr) {
        return BitSet$.MODULE$.fromBitMask(jArr);
    }

    @Override // scala.collection.BitSetLike
    public BitSetLike $amp(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.$amp(this, bitSet);
    }

    @Override // scala.collection.BitSetLike
    public BitSetLike $amp$tilde(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.$amp$tilde(this, bitSet);
    }

    @Override // scala.collection.BitSetLike
    public BitSetLike $bar(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.$bar(this, bitSet);
    }

    public BitSet $minus(int i) {
        BitSet bitSet;
        Predef$ predef$ = Predef$.MODULE$;
        if (i >= 0) {
            if (contains(i)) {
                int i2 = i >> 6;
                bitSet = updateWord(i2, word(i2) & ((1 << i) ^ (-1)));
            } else {
                bitSet = this;
            }
            return bitSet;
        }
        throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) "bitset element must be >= 0").toString());
    }

    public BitSet $plus(int i) {
        BitSet bitSet;
        Predef$ predef$ = Predef$.MODULE$;
        if (i >= 0) {
            if (contains(i)) {
                bitSet = this;
            } else {
                int i2 = i >> 6;
                bitSet = updateWord(i2, word(i2) | (1 << i));
            }
            return bitSet;
        }
        throw new IllegalArgumentException(new StringBuilder().append((Object) "requirement failed: ").append((Object) "bitset element must be >= 0").toString());
    }

    @Override // scala.collection.BitSetLike
    public BitSetLike $up(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.$up(this, bitSet);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        return BitSetLike.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(obj));
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.GenTraversable, scala.collection.generic.GenericTraversableTemplate, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public GenericCompanion<Set> companion() {
        return Set.Cclass.companion(this);
    }

    @Override // scala.collection.generic.Sorted
    public int compare(Object obj, Object obj2) {
        return Sorted.Cclass.compare(this, obj, obj2);
    }

    @Override // scala.collection.BitSetLike
    public boolean contains(int i) {
        return BitSetLike.Cclass.contains(this, i);
    }

    @Override // scala.collection.GenSetLike, scala.collection.SetLike
    public /* bridge */ /* synthetic */ boolean contains(Object obj) {
        return contains(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public BitSet empty() {
        return BitSet$.MODULE$.empty();
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public Object firstKey() {
        return SortedSetLike.Cclass.firstKey(this);
    }

    @Override // scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <B> void foreach(Function1<Object, B> function1) {
        BitSetLike.Cclass.foreach(this, function1);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public scala.collection.SortedSet from(Object obj) {
        return SortedSetLike.Cclass.from(this, obj);
    }

    @Override // scala.collection.BitSetLike
    public BitSet fromBitMaskNoCopy(long[] jArr) {
        return BitSet$.MODULE$.fromBitMaskNoCopy(jArr);
    }

    @Override // scala.collection.generic.Sorted
    public boolean hasAll(Iterator<Object> iterator) {
        return Sorted.Cclass.hasAll(this, iterator);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return BitSetLike.Cclass.isEmpty(this);
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    public Iterator<Object> iterator() {
        return BitSetLike.Cclass.iterator(this);
    }

    @Override // scala.collection.SortedSetLike
    public Iterator<Object> iteratorFrom(Object obj) {
        return SortedSetLike.Cclass.iteratorFrom(this, obj);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public scala.collection.SortedSet keySet() {
        return SortedSetLike.Cclass.keySet(this);
    }

    @Override // scala.collection.BitSetLike
    public AbstractIterator<Object> keysIteratorFrom(int i) {
        return BitSetLike.Cclass.keysIteratorFrom(this, i);
    }

    @Override // scala.collection.generic.Sorted
    public /* bridge */ /* synthetic */ Iterator keysIteratorFrom(Object obj) {
        return keysIteratorFrom(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public Object lastKey() {
        return SortedSetLike.Cclass.lastKey(this);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public Ordering<Object> ordering() {
        return BitSetLike.Cclass.ordering(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.Parallelizable, scala.collection.SetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable
    public Combiner<Object, ParSet<Object>> parCombiner() {
        return Set.Cclass.parCombiner(this);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public scala.collection.SortedSet range(Object obj, Object obj2) {
        return SortedSetLike.Cclass.range(this, obj, obj2);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public BitSetLike rangeImpl(Option option, Option option2) {
        return BitSetLike.Cclass.rangeImpl(this, option, option2);
    }

    @Override // scala.collection.SortedSetLike
    public /* synthetic */ boolean scala$collection$SortedSetLike$$super$subsetOf(GenSet genSet) {
        return GenSetLike.Cclass.subsetOf(this, genSet);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.Traversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.Parallelizable, scala.collection.GenTraversable, scala.collection.Iterable, scala.collection.GenIterable, scala.collection.Set, scala.collection.GenSet, scala.collection.GenSetLike, scala.collection.immutable.Set, scala.collection.immutable.Iterable, scala.collection.immutable.Traversable
    public Set<Object> seq() {
        return Set.Cclass.seq(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return BitSetLike.Cclass.size(this);
    }

    @Override // scala.collection.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return BitSetLike.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.BitSetLike
    public boolean subsetOf(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.subsetOf(this, bitSet);
    }

    @Override // scala.collection.AbstractSet, scala.collection.GenSetLike, scala.collection.SortedSetLike
    public boolean subsetOf(GenSet<Object> genSet) {
        return SortedSetLike.Cclass.subsetOf(this, genSet);
    }

    @Override // scala.collection.generic.Sorted
    /* renamed from: to */
    public Sorted mo124to(Object obj) {
        return Sorted.Cclass.m163to(this, obj);
    }

    @Override // scala.collection.BitSetLike
    public long[] toBitMask() {
        return BitSetLike.Cclass.toBitMask(this);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.immutable.Set
    public <B> Set<B> toSet() {
        return Set.Cclass.toSet(this);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public scala.collection.SortedSet until(Object obj) {
        return SortedSetLike.Cclass.until(this, obj);
    }

    public abstract BitSet updateWord(int i, long j);
}
