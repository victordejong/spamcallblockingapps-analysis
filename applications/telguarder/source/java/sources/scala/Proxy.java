package scala;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001\u00193q!\u0001\u0002\u0011\u0002\u0007\u0005QAA\u0003Qe>D\u0018PC\u0001\u0004\u0003\u0015\u00198-\u00197b\u0007\u0001\u0019\"\u0001\u0001\u0004\u0011\u0005\u001dAQ\"\u0001\u0002\n\u0005%\u0011!aA!os\")1\u0002\u0001C\u0001\u0019\u00051A%\u001b8ji\u0012\"\u0012!\u0004\t\u0003\u000f9I!a\u0004\u0002\u0003\tUs\u0017\u000e\u001e\u0005\u0006#\u00011\tAE\u0001\u0005g\u0016dg-F\u0001\u0007\u0011\u0015!\u0002\u0001\"\u0011\u0016\u0003!A\u0017m\u001d5D_\u0012,G#\u0001\f\u0011\u0005\u001d9\u0012B\u0001\r\u0003\u0005\rIe\u000e\u001e\u0005\u00065\u0001!\teG\u0001\u0007KF,\u0018\r\\:\u0015\u0005qy\u0002CA\u0004\u001e\u0013\tq\"AA\u0004C_>dW-\u00198\t\u000b\u0001J\u0002\u0019\u0001\u0004\u0002\tQD\u0017\r\u001e\u0005\u0006E\u0001!\teI\u0001\ti>\u001cFO]5oOR\tA\u0005\u0005\u0002&U5\taE\u0003\u0002(Q\u0005!A.\u00198h\u0015\u0005I\u0013\u0001\u00026bm\u0006L!a\u000b\u0014\u0003\rM#(/\u001b8h\u000f\u0015i#\u0001#\u0001/\u0003\u0015\u0001&o\u001c=z!\t9qFB\u0003\u0002\u0005!\u0005\u0001g\u0005\u00020cA\u0011qAM\u0005\u0003g\t\u0011a!\u00118z%\u00164\u0007\"B\u001b0\t\u00031\u0014A\u0002\u001fj]&$h\bF\u0001/\r\u001dAt\u0006%A\u0012\u0002e\u0012Q\u0001V=qK\u0012,\"A\u000f!\u0014\u0007]21\b\u0005\u0002\b\u0001!)\u0011c\u000eD\u0001{U\ta\b\u0005\u0002@\u00012\u0001A!B!8\u0005\u0004\u0011%!\u0001+\u0012\u0005\r3\u0001CA\u0004E\u0013\t)%AA\u0004O_RD\u0017N\\4")
/* loaded from: classes3-dex2jar.jar:scala/Proxy.class */
public interface Proxy {

    /* loaded from: classes3-dex2jar.jar:scala/Proxy$Typed.class */
    public interface Typed<T> extends Proxy {
        @Override // scala.Proxy
        T self();
    }

    /* renamed from: scala.Proxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/Proxy$class.class */
    public abstract class Cclass {
        public static void $init$(Proxy proxy) {
        }

        public static boolean equals(Proxy proxy, Object obj) {
            boolean z = false;
            if (obj != null && (obj == proxy || obj == proxy.self() || obj.equals(proxy.self()))) {
                z = true;
            }
            return z;
        }

        public static int hashCode(Proxy proxy) {
            return proxy.self().hashCode();
        }

        public static String toString(Proxy proxy) {
            return String.valueOf(proxy.self());
        }
    }

    boolean equals(Object obj);

    int hashCode();

    Object self();

    String toString();
}
