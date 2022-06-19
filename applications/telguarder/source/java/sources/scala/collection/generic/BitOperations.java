package scala.collection.generic;

import scala.Predef$;
import scala.collection.TraversableOnce;
import scala.collection.immutable.IndexedSeq;
import scala.collection.immutable.IndexedSeq$;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxesRunTime;
import scala.runtime.RichInt$;
import scala.runtime.RichLong;
@ScalaSignature(bytes = "\u0006\u0001\u0005\rtAB\u0001\u0003\u0011\u0003!\u0001\"A\u0007CSR|\u0005/\u001a:bi&|gn\u001d\u0006\u0003\u0007\u0011\tqaZ3oKJL7M\u0003\u0002\u0006\r\u0005Q1m\u001c7mK\u000e$\u0018n\u001c8\u000b\u0003\u001d\tQa]2bY\u0006\u0004\"!\u0003\u0006\u000e\u0003\t1aa\u0003\u0002\t\u0002\u0011a!!\u0004\"ji>\u0003XM]1uS>t7o\u0005\u0002\u000b\u001bA\u0011abD\u0007\u0002\r%\u0011\u0001C\u0002\u0002\u0007\u0003:L(+\u001a4\t\u000bIQA\u0011\u0001\u000b\u0002\rqJg.\u001b;?\u0007\u0001!\u0012\u0001\u0003\u0004\b-)\u0001\n1!\u0001\u0018\u0005\rIe\u000e^\n\u0003+5AQ!G\u000b\u0005\u0002i\ta\u0001J5oSR$C#A\u000e\u0011\u00059a\u0012BA\u000f\u0007\u0005\u0011)f.\u001b;\u0006\tY)\u0002a\b\t\u0003\u001d\u0001J!A\u0006\u0004\t\u000b\t*B\u0011A\u0012\u0002\ti,'o\u001c\u000b\u0004I\u001dZ\u0003C\u0001\b&\u0013\t1cAA\u0004C_>dW-\u00198\t\u000b!\n\u0003\u0019A\u0015\u0002\u0003%\u0004\"A\u000b\u0010\u000e\u0003UAQ\u0001L\u0011A\u0002%\nA!\\1tW\")A&\u0006C\u0001]Q\u0019qd\f\u0019\t\u000b!j\u0003\u0019A\u0015\t\u000b1j\u0003\u0019A\u0015\t\u000bI*B\u0011A\u001a\u0002\u0011!\f7/T1uG\"$B\u0001\n\u001b7q!)Q'\ra\u0001S\u0005\u00191.Z=\t\u000b]\n\u0004\u0019A\u0015\u0002\rA\u0014XMZ5y\u0011\u0015I\u0014\u00071\u0001*\u0003\u0005i\u0007\"B\u001e\u0016\t\u0003a\u0014aD;og&<g.\u001a3D_6\u0004\u0018M]3\u0015\u0007\u0011jd\bC\u0003)u\u0001\u0007\u0011\u0006C\u0003@u\u0001\u0007\u0011&A\u0001k\u0011\u0015\tU\u0003\"\u0001C\u0003\u001d\u0019\bn\u001c:uKJ$2\u0001J\"F\u0011\u0015!\u0005\t1\u0001*\u0003\ti\u0017\u0007C\u0003G\u0001\u0002\u0007\u0011&\u0001\u0002ne!)\u0001*\u0006C\u0001\u0013\u0006Q1m\\7qY\u0016lWM\u001c;\u0015\u0005}Q\u0005\"\u0002\u0015H\u0001\u0004I\u0003\"\u0002'\u0016\t\u0003i\u0015\u0001\u00022jiN$\"A\u0014+\u0011\u0007=\u0013F%D\u0001Q\u0015\t\tF!A\u0005j[6,H/\u00192mK&\u00111\u000b\u0015\u0002\u000b\u0013:$W\r_3e'\u0016\f\b\"B+L\u0001\u0004I\u0013a\u00018v[\")q+\u0006C\u00011\u0006I!-\u001b;TiJLgn\u001a\u000b\u00043\u0002\f\u0007C\u0001.^\u001d\tq1,\u0003\u0002]\r\u00051\u0001K]3eK\u001aL!AX0\u0003\rM#(/\u001b8h\u0015\taf\u0001C\u0003V-\u0002\u0007\u0011\u0006C\u0004c-B\u0005\t\u0019A-\u0002\u0007M,\u0007\u000fC\u0003e+\u0011\u0005Q-A\u0007iS\u001eDWm\u001d;P]\u0016\u0014\u0015\u000e\u001e\u000b\u0003?\u0019DQaP2A\u0002%Bq\u0001[\u000b\u0012\u0002\u0013\u0005\u0011.A\ncSR\u001cFO]5oO\u0012\"WMZ1vYR$#'F\u0001kU\tI6nK\u0001m!\ti'/D\u0001o\u0015\ty\u0007/A\u0005v]\u000eDWmY6fI*\u0011\u0011OB\u0001\u000bC:tw\u000e^1uS>t\u0017BA:o\u0005E)hn\u00195fG.,GMV1sS\u0006t7-Z\u0004\u0006k*A\tA^\u0001\u0004\u0013:$\bCA<y\u001b\u0005Qa!\u0002\f\u000b\u0011\u0003I8c\u0001=\u000euB\u0011q/\u0006\u0005\u0006%a$\t\u0001 \u000b\u0002m\u001a9aP\u0003I\u0001\u0004\u0003y(\u0001\u0002'p]\u001e\u001c\"!`\u0007\t\u000beiH\u0011\u0001\u000e\u0006\u000byl\b!!\u0002\u0011\u00079\t9!\u0003\u0002\u007f\r!1!% C\u0001\u0003\u0017!R\u0001JA\u0007\u0003'Aq\u0001KA\u0005\u0001\u0004\ty\u0001\u0005\u0003\u0002\u0012\u0005\rQ\"A?\t\u000f1\nI\u00011\u0001\u0002\u0010!1A& C\u0001\u0003/!b!!\u0002\u0002\u001a\u0005m\u0001b\u0002\u0015\u0002\u0016\u0001\u0007\u0011q\u0002\u0005\bY\u0005U\u0001\u0019AA\b\u0011\u0019\u0011T\u0010\"\u0001\u0002 Q9A%!\t\u0002$\u0005\u0015\u0002bB\u001b\u0002\u001e\u0001\u0007\u0011q\u0002\u0005\bo\u0005u\u0001\u0019AA\b\u0011\u001dI\u0014Q\u0004a\u0001\u0003\u001fAaaO?\u0005\u0002\u0005%B#\u0002\u0013\u0002,\u00055\u0002b\u0002\u0015\u0002(\u0001\u0007\u0011q\u0002\u0005\b\u007f\u0005\u001d\u0002\u0019AA\b\u0011\u0019\tU\u0010\"\u0001\u00022Q)A%a\r\u00026!9A)a\fA\u0002\u0005=\u0001b\u0002$\u00020\u0001\u0007\u0011q\u0002\u0005\u0007\u0011v$\t!!\u000f\u0015\t\u0005\u0015\u00111\b\u0005\bQ\u0005]\u0002\u0019AA\b\u0011\u0019aU\u0010\"\u0001\u0002@Q\u0019a*!\u0011\t\u000fU\u000bi\u00041\u0001\u0002\u0010!1q+ C\u0001\u0003\u000b\"R!WA$\u0003\u0013Bq!VA\"\u0001\u0004\ty\u0001\u0003\u0005c\u0003\u0007\u0002\n\u00111\u0001Z\u0011\u0019!W\u0010\"\u0001\u0002NQ!\u0011QAA(\u0011\u001dy\u00141\na\u0001\u0003\u001fAq\u0001[?\u0012\u0002\u0013\u0005\u0011nB\u0004\u0002V)A\t!a\u0016\u0002\t1{gn\u001a\t\u0004o\u0006ecA\u0002@\u000b\u0011\u0003\tYfE\u0003\u0002Z5\ti\u0006\u0005\u0002x{\"9!#!\u0017\u0005\u0002\u0005\u0005DCAA,\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations.class */
public final class BitOperations {

    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Int.class */
    public interface Int {

        /* renamed from: scala.collection.generic.BitOperations$Int$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Int$class.class */
        public abstract class Cclass {
            public static void $init$(Int r1) {
            }

            public static String bitString(Int r5, int i, String str) {
                return ((TraversableOnce) r5.bits(i).map(new BitOperations$Int$$anonfun$bitString$1(r5), IndexedSeq$.MODULE$.canBuildFrom())).mkString(str);
            }

            public static String bitString$default$2(Int r2) {
                return "";
            }

            public static IndexedSeq bits(Int r6, int i) {
                RichInt$ richInt$ = RichInt$.MODULE$;
                Predef$ predef$ = Predef$.MODULE$;
                return (IndexedSeq) richInt$.to$extension0(31, 0).m153by(-1).map(new BitOperations$Int$$anonfun$bits$1(r6, i), IndexedSeq$.MODULE$.canBuildFrom());
            }

            public static int complement(Int r3, int i) {
                return i ^ (-1);
            }

            public static boolean hasMatch(Int r4, int i, int i2, int i3) {
                return r4.mask(i, i3) == i2;
            }

            public static int highestOneBit(Int r4, int i) {
                int i2 = (i >> 1) | i;
                int i3 = i2 | (i2 >> 2);
                int i4 = i3 | (i3 >> 4);
                int i5 = i4 | (i4 >> 8);
                int i6 = i5 | (i5 >> 16);
                return i6 - (i6 >>> 1);
            }

            public static int mask(Int r4, int i, int i2) {
                return (r4.complement(i2 - 1) ^ i2) & i;
            }

            public static boolean shorter(Int r4, int i, int i2) {
                return r4.unsignedCompare(i2, i);
            }

            public static boolean unsignedCompare(Int r4, int i, int i2) {
                boolean z = i < i2;
                return (i2 < 0) ^ ((i < 0) ^ z);
            }

            public static boolean zero(Int r3, int i, int i2) {
                return (i & i2) == 0;
            }
        }

        String bitString(int i, String str);

        String bitString$default$2();

        IndexedSeq<Object> bits(int i);

        int complement(int i);

        boolean hasMatch(int i, int i2, int i3);

        int highestOneBit(int i);

        int mask(int i, int i2);

        boolean shorter(int i, int i2);

        boolean unsignedCompare(int i, int i2);

        boolean zero(int i, int i2);
    }

    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Long.class */
    public interface Long {

        /* renamed from: scala.collection.generic.BitOperations$Long$class */
        /* loaded from: classes3-dex2jar.jar:scala/collection/generic/BitOperations$Long$class.class */
        public abstract class Cclass {
            public static void $init$(Long r1) {
            }

            public static String bitString(Long r5, long j, String str) {
                return ((TraversableOnce) r5.bits(j).map(new BitOperations$Long$$anonfun$bitString$2(r5), IndexedSeq$.MODULE$.canBuildFrom())).mkString(str);
            }

            public static String bitString$default$2(Long r2) {
                return "";
            }

            public static IndexedSeq bits(Long r7, long j) {
                Predef$ predef$ = Predef$.MODULE$;
                return (IndexedSeq) new RichLong(63L).mo21to((Object) BoxesRunTime.boxToLong(0L)).m155by(BoxesRunTime.boxToLong(-1L)).map(new BitOperations$Long$$anonfun$bits$2(r7, j), IndexedSeq$.MODULE$.canBuildFrom());
            }

            public static long complement(Long r5, long j) {
                return j ^ (-1);
            }

            public static boolean hasMatch(Long r6, long j, long j2, long j3) {
                return r6.mask(j, j3) == j2;
            }

            public static long highestOneBit(Long r6, long j) {
                long j2 = j | (j >> 1);
                long j3 = j2 | (j2 >> 2);
                long j4 = j3 | (j3 >> 4);
                long j5 = j4 | (j4 >> 8);
                long j6 = j5 | (j5 >> 16);
                long j7 = j6 | (j6 >> 32);
                return j7 - (j7 >>> 1);
            }

            public static long mask(Long r10, long j, long j2) {
                return j & (j2 ^ r10.complement(j2 - 1));
            }

            public static boolean shorter(Long r6, long j, long j2) {
                return r6.unsignedCompare(j2, j);
            }

            public static boolean unsignedCompare(Long r5, long j, long j2) {
                boolean z = true;
                boolean z2 = j < j2;
                boolean z3 = j < 0;
                if (j2 >= 0) {
                    z = false;
                }
                return z ^ (z3 ^ z2);
            }

            public static boolean zero(Long r5, long j, long j2) {
                return (j & j2) == 0;
            }
        }

        String bitString(long j, String str);

        String bitString$default$2();

        IndexedSeq<Object> bits(long j);

        long complement(long j);

        boolean hasMatch(long j, long j2, long j3);

        long highestOneBit(long j);

        long mask(long j, long j2);

        boolean shorter(long j, long j2);

        boolean unsignedCompare(long j, long j2);

        boolean zero(long j, long j2);
    }
}
