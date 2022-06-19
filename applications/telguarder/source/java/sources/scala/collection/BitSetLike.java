package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Option;
import scala.Predef$;
import scala.collection.BitSetLike;
import scala.collection.SortedSet;
import scala.collection.immutable.Range;
import scala.collection.immutable.Range$;
import scala.collection.mutable.StringBuilder;
import scala.math.Ordering;
import scala.math.Ordering$Int$;
import scala.math.package$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
@ScalaSignature(bytes = "\u0006\u0001\u0005uf\u0001C\u0001\u0003!\u0003\r\taB\u0010\u0003\u0015\tKGoU3u\u0019&\\WM\u0003\u0002\u0004\t\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001!\u0006\u0002\t-M\u0019\u0001!C\u0007\u0011\u0005)YQ\"\u0001\u0003\n\u00051!!AB!osJ+g\r\u0005\u0003\u000f\u001fE!R\"\u0001\u0002\n\u0005A\u0011!!D*peR,GmU3u\u0019&\\W\r\u0005\u0002\u000b%%\u00111\u0003\u0002\u0002\u0004\u0013:$\bCA\u000b\u0017\u0019\u0001!aa\u0006\u0001\u0005\u0006\u0004A\"\u0001\u0002+iSN\f\"!\u0007\u000f\u0011\u0005)Q\u0012BA\u000e\u0005\u0005\u001dqu\u000e\u001e5j]\u001e\u00142!H\u0010!\r\u0011q\u0002\u0001\u0001\u000f\u0003\u0019q\u0012XMZ5oK6,g\u000e\u001e \u0011\u00079\u0001A\u0003E\u0002\u000fCEI!A\t\u0002\u0003\u0013M{'\u000f^3e'\u0016$\b\"\u0002\u0013\u0001\t\u0003)\u0013A\u0002\u0013j]&$H\u0005F\u0001'!\tQq%\u0003\u0002)\t\t!QK\\5u\u0011\u0015Q\u0003A\"\u0001,\u0003\u0015)W\u000e\u001d;z+\u0005!\u0002\"B\u0017\u0001\r#q\u0013A\u00028x_J$7/F\u0001\u0012\u0011\u0015\u0001\u0004A\"\u00052\u0003\u00119xN\u001d3\u0015\u0005I*\u0004C\u0001\u00064\u0013\t!DA\u0001\u0003M_:<\u0007\"\u0002\u001c0\u0001\u0004\t\u0012aA5eq\")\u0001\b\u0001D\ts\u0005\tbM]8n\u0005&$X*Y:l\u001d>\u001cu\u000e]=\u0015\u0005QQ\u0004\"B\u001e8\u0001\u0004a\u0014!B3mK6\u001c\bc\u0001\u0006>e%\u0011a\b\u0002\u0002\u0006\u0003J\u0014\u0018-\u001f\u0005\u0006\u0001\u0002!\t!Q\u0001\ni>\u0014\u0015\u000e^'bg.,\u0012\u0001\u0010\u0005\u0006\u0007\u0002!\tEL\u0001\u0005g&TX\rC\u0003F\u0001\u0011\u0005c)A\u0004jg\u0016k\u0007\u000f^=\u0016\u0003\u001d\u0003\"A\u0003%\n\u0005%#!a\u0002\"p_2,\u0017M\u001c\u0005\u0006\u0017\u0002!\u0019\u0001T\u0001\t_J$WM]5oOV\tQ\nE\u0002O#Fq!AC(\n\u0005A#\u0011a\u00029bG.\fw-Z\u0005\u0003%N\u0013\u0001b\u0014:eKJLgn\u001a\u0006\u0003!\u0012AQ!\u0016\u0001\u0005\u0002Y\u000b\u0011B]1oO\u0016LU\u000e\u001d7\u0015\u0007Q9F\fC\u0003Y)\u0002\u0007\u0011,\u0001\u0003ge>l\u0007c\u0001\u0006[#%\u00111\f\u0002\u0002\u0007\u001fB$\u0018n\u001c8\t\u000bu#\u0006\u0019A-\u0002\u000bUtG/\u001b7\t\u000b}\u0003A\u0011\u00011\u0002\u0011%$XM]1u_J,\u0012!\u0019\t\u0004\u001d\t\f\u0012BA2\u0003\u0005!IE/\u001a:bi>\u0014\b\"B3\u0001\t\u00032\u0017\u0001E6fsNLE/\u001a:bi>\u0014hI]8n)\t9'\u000eE\u0002\u000fQFI!!\u001b\u0002\u0003!\u0005\u00137\u000f\u001e:bGRLE/\u001a:bi>\u0014\b\"B6e\u0001\u0004\t\u0012!B:uCJ$\b\"B7\u0001\t\u0003r\u0017a\u00024pe\u0016\f7\r[\u000b\u0003_Z$\"A\n9\t\u000bEd\u0007\u0019\u0001:\u0002\u0003\u0019\u0004BAC:\u0012k&\u0011A\u000f\u0002\u0002\n\rVt7\r^5p]F\u0002\"!\u0006<\u0005\u000b]d'\u0019\u0001=\u0003\u0003\t\u000b\"!G=\u0011\u0005)Q\u0018BA>\u0005\u0005\r\te.\u001f\u0005\u0006{\u0002!\tA`\u0001\u0005I\t\f'\u000f\u0006\u0002\u0015\u007f\"9\u0011\u0011\u0001?A\u0002\u0005\r\u0011!B8uQ\u0016\u0014\bc\u0001\b\u0002\u0006%\u0019\u0011q\u0001\u0002\u0003\r\tKGoU3u\u0011\u001d\tY\u0001\u0001C\u0001\u0003\u001b\tA\u0001J1naR\u0019A#a\u0004\t\u0011\u0005\u0005\u0011\u0011\u0002a\u0001\u0003\u0007Aq!a\u0005\u0001\t\u0003\t)\"\u0001\u0006%C6\u0004H\u0005^5mI\u0016$2\u0001FA\f\u0011!\t\t!!\u0005A\u0002\u0005\r\u0001bBA\u000e\u0001\u0011\u0005\u0011QD\u0001\u0004IU\u0004Hc\u0001\u000b\u0002 !A\u0011\u0011AA\r\u0001\u0004\t\u0019\u0001C\u0004\u0002$\u0001!\t!!\n\u0002\u0011\r|g\u000e^1j]N$2aRA\u0014\u0011\u001d\tI#!\tA\u0002E\tA!\u001a7f[\"9\u0011Q\u0006\u0001\u0005\u0002\u0005=\u0012\u0001C:vEN,Go\u00144\u0015\u0007\u001d\u000b\t\u0004\u0003\u0005\u0002\u0002\u0005-\u0002\u0019AA\u0002\u0011\u001d\t)\u0004\u0001C!\u0003o\t\u0011\"\u00193e'R\u0014\u0018N\\4\u0015\u0015\u0005e\u0012QIA%\u00033\ni\u0006\u0005\u0003\u0002<\u0005\u0005SBAA\u001f\u0015\r\tyDA\u0001\b[V$\u0018M\u00197f\u0013\u0011\t\u0019%!\u0010\u0003\u001bM#(/\u001b8h\u0005VLG\u000eZ3s\u0011!\t9%a\rA\u0002\u0005e\u0012AA:c\u0011\u001dY\u00171\u0007a\u0001\u0003\u0017\u0002B!!\u0014\u0002T9\u0019!\"a\u0014\n\u0007\u0005EC!\u0001\u0004Qe\u0016$WMZ\u0005\u0005\u0003+\n9F\u0001\u0004TiJLgn\u001a\u0006\u0004\u0003#\"\u0001\u0002CA.\u0003g\u0001\r!a\u0013\u0002\u0007M,\u0007\u000f\u0003\u0005\u0002`\u0005M\u0002\u0019AA&\u0003\r)g\u000e\u001a\u0005\b\u0003G\u0002A\u0011IA3\u00031\u0019HO]5oOB\u0013XMZ5y+\t\t9\u0007\u0005\u0003\u0002j\u0005MTBAA6\u0015\u0011\ti'a\u001c\u0002\t1\fgn\u001a\u0006\u0003\u0003c\nAA[1wC&!\u0011QKA6\u000f\u001d\t9H\u0001E\u0001\u0003s\n!BQ5u'\u0016$H*[6f!\rq\u00111\u0010\u0004\u0007\u0003\tA\t!! \u0014\u0007\u0005m\u0014\u0002\u0003\u0005\u0002\u0002\u0006mD\u0011AAB\u0003\u0019a\u0014N\\5u}Q\u0011\u0011\u0011\u0010\u0005\f\u0003\u000f\u000bYH1A\u0005\u0006\t\tI)A\u0003M_\u001e<F*\u0006\u0002\u0002\f>\u0011\u0011QR\u000f\u0002\r!I\u0011\u0011SA>A\u00035\u00111R\u0001\u0007\u0019><w\u000b\u0014\u0011\t\u0015\u0005U\u00151\u0010b\u0001\n\u001b\t9*\u0001\u0006X_J$G*\u001a8hi\",\"!!'\u0010\u0005\u0005mU$\u0001!\t\u0013\u0005}\u00151\u0010Q\u0001\u000e\u0005e\u0015aC,pe\u0012dUM\\4uQ\u0002B1\"a)\u0002|\t\u0007IQ\u0001\u0002\u0002&\u00069Q*\u0019=TSj,WCAAT\u001f\t\tI+\b\u0003\u0003\u0001\u0001\u0001\u0001\"CAW\u0003w\u0002\u000bQBAT\u0003!i\u0015\r_*ju\u0016\u0004\u0003\"CAY\u0003w\"\tAAAZ\u0003-)\b\u000fZ1uK\u0006\u0013(/Y=\u0015\u000fq\n),a.\u0002:\"11(a,A\u0002qBaANAX\u0001\u0004\t\u0002bBA^\u0003_\u0003\rAM\u0001\u0002o\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/BitSetLike.class */
public interface BitSetLike<This extends BitSetLike<This> & SortedSet<Object>> extends SortedSetLike<Object, This> {

    /* renamed from: scala.collection.BitSetLike$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/BitSetLike$class.class */
    public abstract class Cclass {
        public static BitSetLike $amp(BitSetLike bitSetLike, BitSet bitSet) {
            Predef$ predef$ = Predef$.MODULE$;
            int nwords = bitSetLike.nwords();
            int nwords2 = bitSet.nwords();
            package$ package_ = package$.MODULE$;
            int min = Math.min(nwords, nwords2);
            long[] jArr = new long[min];
            Predef$ predef$2 = Predef$.MODULE$;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(0, min, 1);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i = 0;
            while (true) {
                if (!z ? i < range.numRangeElements() : start != terminalElement) {
                    jArr[start] = bitSetLike.word(start) & bitSet.word(start);
                    i++;
                    start += step;
                } else {
                    return bitSetLike.fromBitMaskNoCopy(jArr);
                }
            }
        }

        public static BitSetLike $amp$tilde(BitSetLike bitSetLike, BitSet bitSet) {
            int nwords = bitSetLike.nwords();
            long[] jArr = new long[nwords];
            Predef$ predef$ = Predef$.MODULE$;
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
                    jArr[start] = bitSetLike.word(start) & (bitSet.word(start) ^ (-1));
                    i++;
                    start += step;
                } else {
                    return bitSetLike.fromBitMaskNoCopy(jArr);
                }
            }
        }

        public static BitSetLike $bar(BitSetLike bitSetLike, BitSet bitSet) {
            Predef$ predef$ = Predef$.MODULE$;
            int nwords = bitSetLike.nwords();
            int nwords2 = bitSet.nwords();
            package$ package_ = package$.MODULE$;
            int max = Math.max(nwords, nwords2);
            long[] jArr = new long[max];
            Predef$ predef$2 = Predef$.MODULE$;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(0, max, 1);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i = 0;
            while (true) {
                if (!z ? i < range.numRangeElements() : start != terminalElement) {
                    jArr[start] = bitSetLike.word(start) | bitSet.word(start);
                    i++;
                    start += step;
                } else {
                    return bitSetLike.fromBitMaskNoCopy(jArr);
                }
            }
        }

        public static void $init$(BitSetLike bitSetLike) {
        }

        public static BitSetLike $up(BitSetLike bitSetLike, BitSet bitSet) {
            Predef$ predef$ = Predef$.MODULE$;
            int nwords = bitSetLike.nwords();
            int nwords2 = bitSet.nwords();
            package$ package_ = package$.MODULE$;
            int max = Math.max(nwords, nwords2);
            long[] jArr = new long[max];
            Predef$ predef$2 = Predef$.MODULE$;
            Range$ range$ = Range$.MODULE$;
            Range range = new Range(0, max, 1);
            range.scala$collection$immutable$Range$$validateMaxLength();
            boolean z = (range.start() == Integer.MIN_VALUE && range.end() == Integer.MIN_VALUE) ? false : true;
            int start = range.start();
            int terminalElement = range.terminalElement();
            int step = range.step();
            int i = 0;
            while (true) {
                if (!z ? i < range.numRangeElements() : start != terminalElement) {
                    jArr[start] = bitSetLike.word(start) ^ bitSet.word(start);
                    i++;
                    start += step;
                } else {
                    return bitSetLike.fromBitMaskNoCopy(jArr);
                }
            }
        }

        public static StringBuilder addString(BitSetLike bitSetLike, StringBuilder stringBuilder, String str, String str2, String str3) {
            stringBuilder.append(str);
            int nwords = bitSetLike.nwords();
            String str4 = "";
            int i = 0;
            while (i != nwords * 64) {
                String str5 = str4;
                if (bitSetLike.contains(i)) {
                    stringBuilder.append(str4).append(i);
                    str5 = str2;
                }
                i++;
                str4 = str5;
            }
            return stringBuilder.append(str3);
        }

        public static boolean contains(BitSetLike bitSetLike, int i) {
            return i >= 0 && ((1 << i) & bitSetLike.word(i >> 6)) != 0;
        }

        /* JADX WARN: Type inference failed for: r0v12, types: [long] */
        /* JADX WARN: Type inference failed for: r0v3, types: [long] */
        public static void foreach(BitSetLike bitSetLike, Function1 function1) {
            for (int i = 0; i < bitSetLike.nwords(); i++) {
                char word = bitSetLike.word(i);
                int i2 = i * 64;
                while (word != 0) {
                    if ((word & 1) == 1) {
                        function1.apply(BoxesRunTime.boxToInteger(i2));
                    } else {
                        BoxedUnit boxedUnit = BoxedUnit.UNIT;
                    }
                    word >>>= 1;
                    i2++;
                }
            }
        }

        public static boolean isEmpty(BitSetLike bitSetLike) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return richInt$.until$extension0(0, bitSetLike.nwords()).forall(new BitSetLike$$anonfun$isEmpty$1(bitSetLike));
        }

        public static Iterator iterator(BitSetLike bitSetLike) {
            return bitSetLike.iteratorFrom(BoxesRunTime.boxToInteger(0));
        }

        public static AbstractIterator keysIteratorFrom(BitSetLike bitSetLike, int i) {
            return new AbstractIterator<Object>(bitSetLike, i) { // from class: scala.collection.BitSetLike$$anon$1
                private final /* synthetic */ BitSetLike $outer;
                private int current;
                private final int end;

                /* JADX WARN: Multi-variable type inference failed */
                {
                    Objects.requireNonNull(bitSetLike);
                    this.$outer = bitSetLike;
                    this.current = i;
                    this.end = bitSetLike.nwords() * 64;
                }

                private int current() {
                    return this.current;
                }

                private void current_$eq(int i2) {
                    this.current = i2;
                }

                private int end() {
                    return this.end;
                }

                @Override // scala.collection.Iterator
                public boolean hasNext() {
                    boolean z;
                    while (true) {
                        z = true;
                        if (current() == end() || this.$outer.contains(current())) {
                            break;
                        }
                        current_$eq(current() + 1);
                    }
                    if (current() == end()) {
                        z = false;
                    }
                    return z;
                }

                @Override // scala.collection.Iterator
                public int next() {
                    int i2;
                    if (hasNext()) {
                        i2 = current();
                        current_$eq(current() + 1);
                    } else {
                        i2 = BoxesRunTime.unboxToInt(Iterator$.MODULE$.empty().next());
                    }
                    return i2;
                }
            };
        }

        public static Ordering ordering(BitSetLike bitSetLike) {
            return Ordering$Int$.MODULE$;
        }

        public static BitSetLike rangeImpl(BitSetLike bitSetLike, Option option, Option option2) {
            long[] bitMask = bitSetLike.toBitMask();
            int length = bitMask.length;
            if (option.isDefined()) {
                int unboxToInt = BoxesRunTime.unboxToInt(option.get());
                int i = 0;
                while (unboxToInt >= 64 && i < length) {
                    unboxToInt -= 64;
                    bitMask[i] = 0;
                    i++;
                }
                if (unboxToInt > 0 && i < length) {
                    bitMask[i] = bitMask[i] & (((1 << unboxToInt) - 1) ^ (-1));
                }
            }
            if (option2.isDefined()) {
                int unboxToInt2 = BoxesRunTime.unboxToInt(option2.get());
                int i2 = unboxToInt2 / 64;
                for (int i3 = i2 + 1; i3 < length; i3++) {
                    bitMask[i3] = 0;
                }
                if (i2 < length) {
                    bitMask[i2] = bitMask[i2] & ((1 << (unboxToInt2 % 64)) - 1);
                }
            }
            return bitSetLike.fromBitMaskNoCopy(bitMask);
        }

        public static int size(BitSetLike bitSetLike) {
            int nwords = bitSetLike.nwords();
            int i = 0;
            while (true) {
                int i2 = i;
                if (nwords > 0) {
                    nwords--;
                    i = i2 + Long.bitCount(bitSetLike.word(nwords));
                } else {
                    return i2;
                }
            }
        }

        public static String stringPrefix(BitSetLike bitSetLike) {
            return "BitSet";
        }

        public static boolean subsetOf(BitSetLike bitSetLike, BitSet bitSet) {
            RichInt$ richInt$ = RichInt$.MODULE$;
            Predef$ predef$ = Predef$.MODULE$;
            return richInt$.until$extension0(0, bitSetLike.nwords()).forall(new BitSetLike$$anonfun$subsetOf$1(bitSetLike, bitSet));
        }

        public static long[] toBitMask(BitSetLike bitSetLike) {
            int nwords = bitSetLike.nwords();
            long[] jArr = new long[nwords];
            while (nwords > 0) {
                nwords--;
                jArr[nwords] = bitSetLike.word(nwords);
            }
            return jArr;
        }
    }

    BitSetLike $amp(BitSet bitSet);

    BitSetLike $amp$tilde(BitSet bitSet);

    BitSetLike $bar(BitSet bitSet);

    BitSetLike $up(BitSet bitSet);

    @Override // scala.collection.TraversableOnce
    StringBuilder addString(StringBuilder stringBuilder, String str, String str2, String str3);

    boolean contains(int i);

    @Override // scala.collection.SetLike, scala.collection.immutable.SortedSet, scala.collection.SortedSet
    BitSetLike empty();

    @Override // scala.collection.IterableLike
    <B> void foreach(Function1<Object, B> function1);

    BitSetLike fromBitMaskNoCopy(long[] jArr);

    @Override // scala.collection.SetLike, scala.collection.IterableLike
    boolean isEmpty();

    @Override // scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<Object> iterator();

    AbstractIterator<Object> keysIteratorFrom(int i);

    int nwords();

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    Ordering<Object> ordering();

    @Override // scala.collection.SortedSetLike, scala.collection.generic.Sorted
    BitSetLike rangeImpl(Option option, Option option2);

    @Override // scala.collection.TraversableOnce, scala.collection.GenTraversableOnce
    int size();

    @Override // scala.collection.SetLike
    String stringPrefix();

    boolean subsetOf(BitSet bitSet);

    long[] toBitMask();

    long word(int i);
}
