package scala.collection.mutable;

import scala.Array$;
import scala.Function1;
import scala.Option;
import scala.Predef$;
import scala.Serializable;
import scala.collection.AbstractIterator;
import scala.collection.BitSet;
import scala.collection.BitSetLike;
import scala.collection.GenSet;
import scala.collection.GenSetLike;
import scala.collection.Iterator;
import scala.collection.SortedSet;
import scala.collection.SortedSetLike;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.Sorted;
import scala.collection.immutable.BitSet$;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.mutable.SortedSet;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u00055f\u0001B\u0001\u0003\u0001%\u0011aAQ5u'\u0016$(BA\u0002\u0005\u0003\u001diW\u000f^1cY\u0016T!!\u0002\u0004\u0002\u0015\r|G\u000e\\3di&|gNC\u0001\b\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019r\u0001\u0001\u0006\u0013+aar\u0004E\u0002\f\u00199i\u0011AA\u0005\u0003\u001b\t\u00111\"\u00112tiJ\f7\r^*fiB\u0011q\u0002E\u0007\u0002\r%\u0011\u0011C\u0002\u0002\u0004\u0013:$\bcA\u0006\u0014\u001d%\u0011AC\u0001\u0002\n'>\u0014H/\u001a3TKR\u0004\"AF\f\u000e\u0003\u0011I!!\u0001\u0003\u0011\u0007YI2$\u0003\u0002\u001b\t\tQ!)\u001b;TKRd\u0015n[3\u0011\u0005-\u0001\u0001\u0003B\u0006\u001e\u001dmI!A\b\u0002\u0003\u000fM+G\u000fT5lKB\u0011q\u0002I\u0005\u0003C\u0019\u0011AbU3sS\u0006d\u0017N_1cY\u0016D\u0001b\t\u0001\u0003\u0002\u0004%)\u0002J\u0001\u0006K2,Wn]\u000b\u0002KA\u0019qB\n\u0015\n\u0005\u001d2!!B!se\u0006L\bCA\b*\u0013\tQcA\u0001\u0003M_:<\u0007\u0002\u0003\u0017\u0001\u0005\u0003\u0007IQC\u0017\u0002\u0013\u0015dW-\\:`I\u0015\fHC\u0001\u00182!\tyq&\u0003\u00021\r\t!QK\\5u\u0011\u001d\u00114&!AA\u0002\u0015\n1\u0001\u001f\u00132\u0011!!\u0004A!A!B\u001b)\u0013AB3mK6\u001c\b\u0005C\u00037\u0001\u0011\u0005q'\u0001\u0004=S:LGO\u0010\u000b\u00037aBQaI\u001bA\u0002\u0015BQA\u000f\u0001\u0005Bm\nQ!Z7qif,\u0012a\u0007\u0005\u0006m\u0001!\t!\u0010\u000b\u00037yBQa\u0010\u001fA\u00029\t\u0001\"\u001b8jiNK'0\u001a\u0005\u0006m\u0001!\t!\u0011\u000b\u00027!)1\t\u0001C\t\t\u00061an^8sIN,\u0012A\u0004\u0015\u0005\u0005\u001aK5\n\u0005\u0002\u0010\u000f&\u0011\u0001J\u0002\u0002\u0015I\u0016\u0004(/Z2bi\u0016$wJ^3se&$\u0017N\\4\"\u0003)\u000b!*\u00138uKJt\u0017\r\u001c\u0011j[BdW-\\3oi\u0006$\u0018n\u001c8!I>,7\u000f\t8pi\u0002\nG-\\5uAM,gn]5cY\u0016\u0004sN^3se&$\u0017N\\4!_\u001a\u0004C\u000f[5tA5,G\u000f[8e]\u0005\nA*\u0001\u00043]E\nd\u0006\r\u0005\u0006\u001d\u0002!\tbT\u0001\u0005o>\u0014H\r\u0006\u0002)!\")\u0011+\u0014a\u0001\u001d\u0005\u0019\u0011\u000e\u001a=)\t53\u0015j\u0013\u0005\u0006)\u0002!)\"V\u0001\u000bkB$\u0017\r^3X_J$Gc\u0001\u0018W/\")\u0011k\u0015a\u0001\u001d!)\u0001l\u0015a\u0001Q\u0005\tq\u000fC\u0003[\u0001\u0011U1,\u0001\bf]N,(/Z\"ba\u0006\u001c\u0017\u000e^=\u0015\u00059b\u0006\"B)Z\u0001\u0004q\u0001\"\u00020\u0001\t#y\u0016!\u00054s_6\u0014\u0015\u000e^'bg.tunQ8qsR\u00111\u0004\u0019\u0005\u0006Cv\u0003\r!J\u0001\u0006o>\u0014Hm\u001d\u0005\u0006G\u0002!\t\u0005Z\u0001\u0004C\u0012$GCA3i!\tya-\u0003\u0002h\r\t9!i\\8mK\u0006t\u0007\"B5c\u0001\u0004q\u0011\u0001B3mK6DQa\u001b\u0001\u0005B1\faA]3n_Z,GCA3n\u0011\u0015I'\u000e1\u0001\u000f\u0011\u0015y\u0007\u0001\"\u0001q\u0003!!\u0003\u000f\\;tI\u0015\fHCA9s\u001b\u0005\u0001\u0001\"B5o\u0001\u0004q\u0001\u0006\u00028Gi.\u000b\u0013!^\u0001G\u001fZ,'O]5eK\u0002\nG\r\u001a\u0011u_\u0002\u0002(/\u001a<f]R\u00043&\u0010\u0011b]\u0012\u0004\u0013\r\u001a3!MJ|W\u000eI3yQ&\u0014\u0017\u000e^5oO\u0002\"\u0017N\u001a4fe\u0016tG\u000f\t2fQ\u00064\u0018n\u001c:/\u0011\u00159\b\u0001\"\u0001y\u0003%!S.\u001b8vg\u0012*\u0017\u000f\u0006\u0002rs\")\u0011N\u001ea\u0001\u001d!\"aO\u0012;L\u0011\u0015a\b\u0001\"\u0001~\u0003\u001d!#-\u0019:%KF$\"!\u001d@\t\u000b}\\\b\u0019A\u000e\u0002\u000b=$\b.\u001a:\t\u000f\u0005\r\u0001\u0001\"\u0001\u0002\u0006\u00059A%Y7qI\u0015\fHcA9\u0002\b!1q0!\u0001A\u0002mAq!a\u0003\u0001\t\u0003\ti!\u0001\u0004%kB$S-\u001d\u000b\u0004c\u0006=\u0001BB@\u0002\n\u0001\u00071\u0004C\u0004\u0002\u0014\u0001!\t!!\u0006\u0002\u001b\u0011\nW\u000e\u001d\u0013uS2$W\rJ3r)\r\t\u0018q\u0003\u0005\u0007\u007f\u0006E\u0001\u0019A\u000e\t\u000f\u0005m\u0001\u0001\"\u0011\u0002\u001e\u0005)1\r\\3beR\ta\u0006C\u0004\u0002\"\u0001!\t!a\t\u0002\u0017Q|\u0017*\\7vi\u0006\u0014G.Z\u000b\u0003\u0003K\u0001B!a\n\u0002.5\u0011\u0011\u0011\u0006\u0006\u0004\u0003W!\u0011!C5n[V$\u0018M\u00197f\u0013\r\t\u0011\u0011\u0006\u0015\t\u0003?\t\t$a\u000e\u0002<A\u0019q\"a\r\n\u0007\u0005UbA\u0001\u0006eKB\u0014XmY1uK\u0012\f#!!\u000f\u0002\u0003?Le\r\t;iSN\u0004#)\u001b;TKR\u00043m\u001c8uC&t7\u000fI1!m\u0006dW/\u001a\u0011uQ\u0006$\b%[:!cIB\u0004e\u001c:!OJ,\u0017\r^3sY\u0001\"\b.\u001a\u0011sKN,H\u000e\u001e\u0011pM\u0002\"\b.[:![\u0016$\bn\u001c3!SN\u0004\u0013M\u001c\u0011(S6lW\u000f^1cY\u0016<\u0003EQ5u'\u0016$\b\u0005\u001e5bi\u0002\u001a\b.\u0019:fg\u0002\u001aH/\u0019;fA]LG\u000f\u001b\u0011uQ&\u001c\b%\\;uC\ndW\r\t\"jiN+GO\f\u0011UQV\u001cH\u0006I5gAQDW\rI7vi\u0006\u0014G.\u001a\u0011CSR\u001cV\r\u001e\u0011jg\u0002jw\u000eZ5gS\u0016$G\u0006I5uA]LG\u000e\u001c\u0011wS>d\u0017\r^3!i\",\u0007%[7nkR\f'-\u001b7jif\u0004sN\u001a\u0011uQ\u0016\u0004#/Z:vYRt\u0013EAA\u001f\u0003\u0019\u0011d&M\u0019/m!1\u0011\u0011\t\u0001\u0005B\u0005\u000bQa\u00197p]\u0016Ds\u0001AA#\u0003\u0017\ni\u0005E\u0002\u0010\u0003\u000fJ1!!\u0013\u0007\u0005A\u0019VM]5bYZ+'o]5p]VKE)A\u0003wC2,XM\b\u0005vuCY_\u0006R\u000e4\u0010\u001d\t\tF\u0001E\u0001\u0003'\naAQ5u'\u0016$\bcA\u0006\u0002V\u00191\u0011A\u0001E\u0001\u0003/\u001ar!!\u0016\u0002Z\u0005}s\u0004E\u0002\u0010\u00037J1!!\u0018\u0007\u0005\u0019\te.\u001f*fMB)\u0011\u0011MA475\u0011\u00111\r\u0006\u0004\u0003K\"\u0011aB4f]\u0016\u0014\u0018nY\u0005\u0005\u0003S\n\u0019GA\u0007CSR\u001cV\r\u001e$bGR|'/\u001f\u0005\bm\u0005UC\u0011AA7)\t\t\u0019\u0006\u0003\u0004;\u0003+\"\ta\u000f\u0005\t\u0003g\n)\u0006\"\u0001\u0002v\u0005Qa.Z<Ck&dG-\u001a:\u0016\u0005\u0005]\u0004#B\u0006\u0002z9Y\u0012bAA>\u0005\t9!)^5mI\u0016\u0014\b\u0002CA@\u0003+\"\u0019!!!\u0002\u0019\r\fgNQ;jY\u00124%o\\7\u0016\u0005\u0005\r\u0005cBA1\u0003\u000b[bbG\u0005\u0005\u0003\u000f\u000b\u0019G\u0001\u0007DC:\u0014U/\u001b7e\rJ|W\u000e\u0003\u0005\u0002\f\u0006UC\u0011AAG\u0003-1'o\\7CSRl\u0015m]6\u0015\u0007m\ty\t\u0003\u0004$\u0003\u0013\u0003\r!\n\u0005\b=\u0006UC\u0011AAJ)\rY\u0012Q\u0013\u0005\u0007G\u0005E\u0005\u0019A\u0013\t\u0015\u0005e\u0015QKA\u0001\n\u0013\tY*A\u0006sK\u0006$'+Z:pYZ,GCAAO!\u0011\ty*!+\u000e\u0005\u0005\u0005&\u0002BAR\u0003K\u000bA\u0001\\1oO*\u0011\u0011qU\u0001\u0005U\u00064\u0018-\u0003\u0003\u0002,\u0006\u0005&AB(cU\u0016\u001cG\u000f")
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/BitSet.class */
public class BitSet extends AbstractSet<Object> implements SortedSet<Object>, scala.collection.BitSet, Serializable {
    public static final long serialVersionUID = 8483111450368547763L;
    private long[] elems;

    public BitSet() {
        this(0);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public BitSet(int r6) {
        /*
            r5 = this;
            scala.runtime.RichInt$ r0 = scala.runtime.RichInt$.MODULE$
            r7 = r0
            scala.Predef$ r0 = scala.Predef$.MODULE$
            r8 = r0
            r0 = r5
            r1 = r7
            r2 = r6
            r3 = 63
            int r2 = r2 + r3
            r3 = 6
            int r2 = r2 >> r3
            r3 = 1
            int r1 = r1.max$extension(r2, r3)
            long[] r1 = new long[r1]
            r0.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: scala.collection.mutable.BitSet.<init>(int):void");
    }

    public BitSet(long[] jArr) {
        this.elems = jArr;
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

    public BitSet $amp$eq(BitSet bitSet) {
        Predef$ predef$ = Predef$.MODULE$;
        int nwords = nwords();
        Range$ range$ = Range$.MODULE$;
        Range range = new Range(0, nwords, 1);
        range.scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
        int start = range.start();
        int terminalElement = range.terminalElement();
        int step = range.step();
        int i = 0;
        while (true) {
            if (!z ? i < range.numRangeElements() : start != terminalElement) {
                elems()[start] = elems()[start] & bitSet.word(start);
                i++;
                start += step;
            } else {
                return this;
            }
        }
    }

    @Override // scala.collection.BitSetLike
    public BitSetLike $amp$tilde(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.$amp$tilde(this, bitSet);
    }

    public BitSet $amp$tilde$eq(BitSet bitSet) {
        ensureCapacity(bitSet.nwords() - 1);
        Predef$ predef$ = Predef$.MODULE$;
        int nwords = bitSet.nwords();
        Range$ range$ = Range$.MODULE$;
        Range range = new Range(0, nwords, 1);
        range.scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
        int start = range.start();
        int terminalElement = range.terminalElement();
        int step = range.step();
        int i = 0;
        while (true) {
            if (!z ? i < range.numRangeElements() : start != terminalElement) {
                elems()[start] = elems()[start] & (bitSet.word(start) ^ (-1));
                i++;
                start += step;
            } else {
                return this;
            }
        }
    }

    @Override // scala.collection.BitSetLike
    public BitSetLike $bar(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.$bar(this, bitSet);
    }

    public BitSet $bar$eq(BitSet bitSet) {
        ensureCapacity(bitSet.nwords() - 1);
        Predef$ predef$ = Predef$.MODULE$;
        int nwords = bitSet.nwords();
        Range$ range$ = Range$.MODULE$;
        Range range = new Range(0, nwords, 1);
        range.scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
        int start = range.start();
        int terminalElement = range.terminalElement();
        int step = range.step();
        int i = 0;
        while (true) {
            if (!z ? i < range.numRangeElements() : start != terminalElement) {
                elems()[start] = elems()[start] | bitSet.word(start);
                i++;
                start += step;
            } else {
                return this;
            }
        }
    }

    public BitSet $minus$eq(int i) {
        remove(i);
        return this;
    }

    public BitSet $plus$eq(int i) {
        add(i);
        return this;
    }

    @Override // scala.collection.BitSetLike
    public BitSetLike $up(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.$up(this, bitSet);
    }

    public BitSet $up$eq(BitSet bitSet) {
        ensureCapacity(bitSet.nwords() - 1);
        Predef$ predef$ = Predef$.MODULE$;
        int nwords = bitSet.nwords();
        Range$ range$ = Range$.MODULE$;
        Range range = new Range(0, nwords, 1);
        range.scala$collection$immutable$Range$$validateMaxLength();
        boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
        int start = range.start();
        int terminalElement = range.terminalElement();
        int step = range.step();
        int i = 0;
        while (true) {
            if (!z ? i < range.numRangeElements() : start != terminalElement) {
                elems()[start] = elems()[start] ^ bitSet.word(start);
                i++;
                start += step;
            } else {
                return this;
            }
        }
    }

    public boolean add(int i) {
        boolean z;
        Predef$.MODULE$.require(i >= 0);
        if (contains(i)) {
            z = false;
        } else {
            int i2 = i >> 6;
            updateWord(i2, word(i2) | (1 << i));
            z = true;
        }
        return z;
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return add(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce
    public StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3) {
        return BitSetLike.Cclass.addString(this, stringBuilder, str, str2, str3);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.GenSetLike, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply(obj));
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike, scala.collection.mutable.Builder, scala.collection.generic.Growable, scala.collection.generic.Clearable
    public void clear() {
        elems_$eq(new long[elems().length]);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike, scala.collection.mutable.Cloneable
    public BitSet clone() {
        long[] jArr = new long[elems().length];
        Array$.MODULE$.copy(elems(), 0, jArr, 0, elems().length);
        return new BitSet(jArr);
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

    public final long[] elems() {
        return this.elems;
    }

    public final void elems_$eq(long[] jArr) {
        this.elems = jArr;
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.generic.GenericSetTemplate, scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    public BitSet empty() {
        return BitSet$.MODULE$.empty();
    }

    public final void ensureCapacity(int i) {
        Predef$.MODULE$.require(i < 33554432);
        if (i >= nwords()) {
            int nwords = nwords();
            while (true) {
                int i2 = nwords;
                if (i < i2) {
                    long[] jArr = new long[i2];
                    Array$.MODULE$.copy(elems(), 0, jArr, 0, nwords());
                    elems_$eq(jArr);
                    return;
                }
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                nwords = richInt$.min$extension(i2 * 2, 33554432);
            }
        }
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
        return new BitSet(jArr);
    }

    @Override // scala.collection.generic.Sorted
    public boolean hasAll(Iterator<Object> iterator) {
        return Sorted.Cclass.hasAll(this, iterator);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
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

    @Override // scala.collection.BitSetLike
    public int nwords() {
        return elems().length;
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public Ordering<Object> ordering() {
        return BitSetLike.Cclass.ordering(this);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public scala.collection.SortedSet range(Object obj, Object obj2) {
        return SortedSetLike.Cclass.range(this, obj, obj2);
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public BitSetLike rangeImpl(Option option, Option option2) {
        return BitSetLike.Cclass.rangeImpl(this, option, option2);
    }

    public boolean remove(int i) {
        boolean z;
        Predef$.MODULE$.require(i >= 0);
        if (contains(i)) {
            int i2 = i >> 6;
            updateWord(i2, word(i2) & ((1 << i) ^ (-1)));
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.mutable.SetLike
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return remove(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.SortedSetLike
    public /* synthetic */ boolean scala$collection$SortedSetLike$$super$subsetOf(GenSet genSet) {
        return GenSetLike.Cclass.subsetOf(this, genSet);
    }

    @Override // scala.collection.AbstractTraversable, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    public int size() {
        return BitSetLike.Cclass.size(this);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.SetLike
    public String stringPrefix() {
        return BitSetLike.Cclass.stringPrefix(this);
    }

    @Override // scala.collection.BitSetLike
    public boolean subsetOf(scala.collection.BitSet bitSet) {
        return BitSetLike.Cclass.subsetOf(this, bitSet);
    }

    @Override // scala.collection.mutable.AbstractSet, scala.collection.GenSetLike, scala.collection.SortedSetLike
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

    public scala.collection.immutable.BitSet toImmutable() {
        return BitSet$.MODULE$.fromBitMaskNoCopy(elems());
    }

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    public scala.collection.SortedSet until(Object obj) {
        return SortedSetLike.Cclass.until(this, obj);
    }

    public final void updateWord(int i, long j) {
        ensureCapacity(i);
        elems()[i] = j;
    }

    /* JADX WARN: Type inference failed for: r0v5 */
    @Override // scala.collection.BitSetLike
    public long word(int i) {
        return i < nwords() ? elems()[i] : (char) 0;
    }
}
