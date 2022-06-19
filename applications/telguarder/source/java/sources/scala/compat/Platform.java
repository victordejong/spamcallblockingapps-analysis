package scala.compat;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u0005\rq!B\u0001\u0003\u0011\u00039\u0011\u0001\u0003)mCR4wN]7\u000b\u0005\r!\u0011AB2p[B\fGOC\u0001\u0006\u0003\u0015\u00198-\u00197b\u0007\u0001\u0001\"\u0001C\u0005\u000e\u0003\t1QA\u0003\u0002\t\u0002-\u0011\u0001\u0002\u00157bi\u001a|'/\\\n\u0003\u00131\u0001\"!\u0004\b\u000e\u0003\u0011I!a\u0004\u0003\u0003\r\u0005s\u0017PU3g\u0011\u0015\t\u0012\u0002\"\u0001\u0013\u0003\u0019a\u0014N\\5u}Q\tq!\u0002\u0003\u0015\u0013\u0001)\"AE*uC\u000e\\wJ^3sM2|w/\u0012:s_J\u0004\"AF\u000e\u000e\u0003]Q!\u0001G\r\u0002\t1\fgn\u001a\u0006\u00025\u0005!!.\u0019<b\u0013\t!r#\u0002\u0003\u001e\u0013\u0001q\"aH\"p]\u000e,(O]3oi6{G-\u001b4jG\u0006$\u0018n\u001c8Fq\u000e,\u0007\u000f^5p]B\u0011qDI\u0007\u0002A)\u0011\u0011%G\u0001\u0005kRLG.\u0003\u0002\u001eA!)A%\u0003C\u0001K\u0005I\u0011M\u001d:bs\u000e|\u0007/\u001f\u000b\u0007M%Z\u0003G\r\u001b\u0011\u000559\u0013B\u0001\u0015\u0005\u0005\u0011)f.\u001b;\t\u000b)\u001a\u0003\u0019\u0001\u0007\u0002\u0007M\u00148\rC\u0003-G\u0001\u0007Q&\u0001\u0004te\u000e\u0004vn\u001d\t\u0003\u001b9J!a\f\u0003\u0003\u0007%sG\u000fC\u00032G\u0001\u0007A\"\u0001\u0003eKN$\b\"B\u001a$\u0001\u0004i\u0013a\u00023fgR\u0004vn\u001d\u0005\u0006k\r\u0002\r!L\u0001\u0007Y\u0016tw\r\u001e5)\u0005\r:\u0004CA\u00079\u0013\tIDA\u0001\u0004j]2Lg.\u001a\u0005\u0006w%!\t\u0001P\u0001\fGJ,\u0017\r^3BeJ\f\u0017\u0010F\u0002\r{ICQA\u0010\u001eA\u0002}\n\u0011\"\u001a7f[\u000ec\u0017m]:1\u0005\u0001K\u0005cA!E\u000f:\u0011QBQ\u0005\u0003\u0007\u0012\ta\u0001\u0015:fI\u00164\u0017BA#G\u0005\u0015\u0019E.Y:t\u0015\t\u0019E\u0001\u0005\u0002I\u00132\u0001A!\u0003&>\u0003\u0003\u0005\tQ!\u0001L\u0005\ryF%M\t\u0003\u0019>\u0003\"!D'\n\u00059#!a\u0002(pi\"Lgn\u001a\t\u0003\u001bAK!!\u0015\u0003\u0003\u0007\u0005s\u0017\u0010C\u00036u\u0001\u0007Q\u0006\u000b\u0002;o!)Q+\u0003C\u0001-\u0006Q\u0011M\u001d:bs\u000edW-\u0019:\u0015\u0005\u0019:\u0006\"\u0002-U\u0001\u0004I\u0016aA1seB\u0019QBW\u0017\n\u0005m#!!B!se\u0006L\bF\u0001+8\u0011\u0015q\u0016\u0002\"\u0001`\u0003=9W\r^\"mCN\u001chi\u001c:OC6,GC\u00011fa\t\t7\rE\u0002B\t\n\u0004\"\u0001S2\u0005\u0013\u0011l\u0016\u0011!A\u0001\u0006\u0003Y%aA0%e!)a-\u0018a\u0001O\u0006!a.Y7f!\t\t\u0005.\u0003\u0002j\r\n11\u000b\u001e:j]\u001eD#!X\u001c\t\u000f1L!\u0019!C\u0001[\u0006\u0019Qi\u0014'\u0016\u00039\u0004\"AF8\n\u0005%<\u0002BB9\nA\u0003%a.\u0001\u0003F\u001f2\u0003\u0003\"B:\n\t\u0003!\u0018aC2veJ,g\u000e\u001e+j[\u0016,\u0012!\u001e\t\u0003\u001bYL!a\u001e\u0003\u0003\t1{gn\u001a\u0015\u0003e^BQA_\u0005\u0005\u0002m\fabY8mY\u0016\u001cGoR1sE\u0006<W\rF\u0001'Q\tIx\u0007C\u0003\u007f\u0013\u0011\u0005q0\u0001\neK\u001a\fW\u000f\u001c;DQ\u0006\u00148/\u001a;OC6,W#A4)\u0005u<\u0004")
/* loaded from: classes3-dex2jar.jar:scala/compat/Platform.class */
public final class Platform {
    public static String EOL() {
        return Platform$.MODULE$.EOL();
    }

    public static void arrayclear(int[] iArr) {
        Platform$.MODULE$.arrayclear(iArr);
    }

    public static void arraycopy(Object obj, int i, Object obj2, int i2, int i3) {
        Platform$.MODULE$.arraycopy(obj, i, obj2, i2, i3);
    }

    public static void collectGarbage() {
        Platform$.MODULE$.collectGarbage();
    }

    public static Object createArray(Class<?> cls, int i) {
        return Platform$.MODULE$.createArray(cls, i);
    }

    public static long currentTime() {
        return Platform$.MODULE$.currentTime();
    }

    public static String defaultCharsetName() {
        return Platform$.MODULE$.defaultCharsetName();
    }

    public static Class<?> getClassForName(String str) {
        return Platform$.MODULE$.getClassForName(str);
    }
}
