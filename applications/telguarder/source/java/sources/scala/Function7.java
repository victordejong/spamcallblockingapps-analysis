package scala;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001%4\u0001\"\u0001\u0002\u0011\u0002\u0007\u0005Q\u0001\u001b\u0002\n\rVt7\r^5p]^R\u0011aA\u0001\u0006g\u000e\fG.Y\u0002\u0001+%1!e\n\u00172mm\u0002ec\u0005\u0002\u0001\u000fA\u0011\u0001\"C\u0007\u0002\u0005%\u0011!B\u0001\u0002\u0007\u0003:L(+\u001a4\t\u000b1\u0001A\u0011A\u0007\u0002\r\u0011Jg.\u001b;%)\u0005q\u0001C\u0001\u0005\u0010\u0013\t\u0001\"A\u0001\u0003V]&$\b\"\u0002\n\u0001\r\u0003\u0019\u0012!B1qa2LH\u0003\u0003\u000b I%r3\u0007O\u001f\u0011\u0005U1B\u0002\u0001\u0003\u0007/\u0001!)\u0019\u0001\r\u0003\u0003I\u000b\"!\u0007\u000f\u0011\u0005!Q\u0012BA\u000e\u0003\u0005\u001dqu\u000e\u001e5j]\u001e\u0004\"\u0001C\u000f\n\u0005y\u0011!aA!os\")\u0001%\u0005a\u0001C\u0005\u0011a/\r\t\u0003+\t\"aa\t\u0001\t\u0006\u0004A\"A\u0001+2\u0011\u0015)\u0013\u00031\u0001'\u0003\t1(\u0007\u0005\u0002\u0016O\u00111\u0001\u0006\u0001EC\u0002a\u0011!\u0001\u0016\u001a\t\u000b)\n\u0002\u0019A\u0016\u0002\u0005Y\u001c\u0004CA\u000b-\t\u0019i\u0003\u0001#b\u00011\t\u0011Ak\r\u0005\u0006_E\u0001\r\u0001M\u0001\u0003mR\u0002\"!F\u0019\u0005\rI\u0002\u0001R1\u0001\u0019\u0005\t!F\u0007C\u00035#\u0001\u0007Q'\u0001\u0002wkA\u0011QC\u000e\u0003\u0007o\u0001A)\u0019\u0001\r\u0003\u0005Q+\u0004\"B\u001d\u0012\u0001\u0004Q\u0014A\u0001<7!\t)2\b\u0002\u0004=\u0001!\u0015\r\u0001\u0007\u0002\u0003)ZBQAP\tA\u0002}\n!A^\u001c\u0011\u0005U\u0001EAB!\u0001\u0011\u000b\u0007\u0001D\u0001\u0002Uo!)1\t\u0001C\u0001\t\u000691-\u001e:sS\u0016$W#A#\u0011\t!1\u0015\u0005S\u0005\u0003\u000f\n\u0011\u0011BR;oGRLwN\\\u0019\u0011\t!1e%\u0013\t\u0005\u0011\u0019[#\n\u0005\u0003\t\rBZ\u0005\u0003\u0002\u0005Gk1\u0003B\u0001\u0003$;\u001bB!\u0001BR \u0015Q\t\u0011u\n\u0005\u0002Q'6\t\u0011K\u0003\u0002S\u0005\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005Q\u000b&!D;ogB,7-[1mSj,G\rC\u0003W\u0001\u0011\u0005q+\u0001\u0004ukBdW\rZ\u000b\u00021B!\u0001BR-\u0015!%A!,\t\u0014,aURt(\u0003\u0002\\\u0005\t1A+\u001e9mK^B#!V(\t\u000by\u0003A\u0011I0\u0002\u0011Q|7\u000b\u001e:j]\u001e$\u0012\u0001\u0019\t\u0003C\u001al\u0011A\u0019\u0006\u0003G\u0012\fA\u0001\\1oO*\tQ-\u0001\u0003kCZ\f\u0017BA4c\u0005\u0019\u0019FO]5oOBQ\u0001\u0002A\u0011'WA*$h\u0010\u000b")
/* loaded from: classes3-dex2jar.jar:scala/Function7.class */
public interface Function7<T1, T2, T3, T4, T5, T6, T7, R> {

    /* renamed from: scala.Function7$class */
    /* loaded from: classes3-dex2jar.jar:scala/Function7$class.class */
    public abstract class Cclass {
        public static void $init$(Function7 function7) {
        }

        public static Function1 curried(Function7 function7) {
            return new Function7$$anonfun$curried$1(function7);
        }

        public static String toString(Function7 function7) {
            return "<function7>";
        }

        public static Function1 tupled(Function7 function7) {
            return new Function7$$anonfun$tupled$1(function7);
        }
    }

    R apply(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7);

    Function1<T1, Function1<T2, Function1<T3, Function1<T4, Function1<T5, Function1<T6, Function1<T7, R>>>>>>> curried();

    String toString();

    Function1<Tuple7<T1, T2, T3, T4, T5, T6, T7>, R> tupled();
}
