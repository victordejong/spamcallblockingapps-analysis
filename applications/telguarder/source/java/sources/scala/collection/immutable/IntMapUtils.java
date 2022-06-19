package scala.collection.immutable;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001Q;a!\u0001\u0002\t\u0002\tA\u0011aC%oi6\u000b\u0007/\u0016;jYNT!a\u0001\u0003\u0002\u0013%lW.\u001e;bE2,'BA\u0003\u0007\u0003)\u0019w\u000e\u001c7fGRLwN\u001c\u0006\u0002\u000f\u0005)1oY1mCB\u0011\u0011BC\u0007\u0002\u0005\u001911B\u0001E\u0001\u00051\u00111\"\u00138u\u001b\u0006\u0004X\u000b^5mgN\u0019!\"D\t\u0011\u00059yQ\"\u0001\u0004\n\u0005A1!AB!osJ+g\r\u0005\u0002\u001319\u00111CF\u0007\u0002))\u0011Q\u0003B\u0001\bO\u0016tWM]5d\u0013\t9B#A\u0007CSR|\u0005/\u001a:bi&|gn]\u0005\u00033i\u00111!\u00138u\u0015\t9B\u0003C\u0003\u001d\u0015\u0011\u0005a$\u0001\u0004=S:LGOP\u0002\u0001)\u0005A\u0001\"\u0002\u0011\u000b\t\u0003\t\u0013A\u00032sC:\u001c\u0007.T1tWR\u0019!\u0005J\u0015\u0011\u00059\u0019\u0013BA\r\u0007\u0011\u0015)s\u00041\u0001'\u0003\u0005I\u0007CA\u0014)\u001b\u0005Q\u0011BA\r\u0019\u0011\u0015Qs\u00041\u0001'\u0003\u0005Q\u0007\"\u0002\u0017\u000b\t\u0003i\u0013\u0001\u00026pS:,\"A\f\u001b\u0015\u000b=jt(Q\"\u0011\u0007%\u0001$'\u0003\u00022\u0005\t1\u0011J\u001c;NCB\u0004\"a\r\u001b\r\u0001\u0011)Qg\u000bb\u0001m\t\tA+\u0005\u00028uA\u0011a\u0002O\u0005\u0003s\u0019\u0011qAT8uQ&tw\r\u0005\u0002\u000fw%\u0011AH\u0002\u0002\u0004\u0003:L\b\"\u0002 ,\u0001\u00041\u0013A\u000192\u0011\u0015\u00015\u00061\u00010\u0003\t!\u0018\u0007C\u0003CW\u0001\u0007a%\u0001\u0002qe!)Ai\u000ba\u0001_\u0005\u0011AO\r\u0005\u0006\r*!\taR\u0001\u0004E&tWC\u0001%L)\u0015IEJ\u0014)S!\rI\u0001G\u0013\t\u0003g-#Q!N#C\u0002YBQ!T#A\u0002\u0019\na\u0001\u001d:fM&D\b\"B(F\u0001\u00041\u0013\u0001B7bg.DQ!U#A\u0002%\u000bA\u0001\\3gi\")1+\u0012a\u0001\u0013\u0006)!/[4ii\u0002")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/IntMapUtils.class */
public final class IntMapUtils {
    public static <T> IntMap<T> bin(int i, int i2, IntMap<T> intMap, IntMap<T> intMap2) {
        return IntMapUtils$.MODULE$.bin(i, i2, intMap, intMap2);
    }

    public static String bitString(int i, String str) {
        return IntMapUtils$.MODULE$.bitString(i, str);
    }

    public static IndexedSeq<Object> bits(int i) {
        return IntMapUtils$.MODULE$.bits(i);
    }

    public static int branchMask(int i, int i2) {
        return IntMapUtils$.MODULE$.branchMask(i, i2);
    }

    public static int complement(int i) {
        return IntMapUtils$.MODULE$.complement(i);
    }

    public static boolean hasMatch(int i, int i2, int i3) {
        return IntMapUtils$.MODULE$.hasMatch(i, i2, i3);
    }

    public static int highestOneBit(int i) {
        return IntMapUtils$.MODULE$.highestOneBit(i);
    }

    public static <T> IntMap<T> join(int i, IntMap<T> intMap, int i2, IntMap<T> intMap2) {
        return IntMapUtils$.MODULE$.join(i, intMap, i2, intMap2);
    }

    public static int mask(int i, int i2) {
        return IntMapUtils$.MODULE$.mask(i, i2);
    }

    public static boolean shorter(int i, int i2) {
        return IntMapUtils$.MODULE$.shorter(i, i2);
    }

    public static boolean unsignedCompare(int i, int i2) {
        return IntMapUtils$.MODULE$.unsignedCompare(i, i2);
    }

    public static boolean zero(int i, int i2) {
        return IntMapUtils$.MODULE$.zero(i, i2);
    }
}
