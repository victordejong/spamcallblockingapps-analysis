package scala.runtime;

import scala.Proxy;
import scala.math.Ordered;
import scala.math.Ordering;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001]2q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\u0007Pe\u0012,'/\u001a3Qe>D\u0018P\u0003\u0002\u0004\t\u00059!/\u001e8uS6,'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001BF\n\u0005\u0001%iA\u0004\u0005\u0002\u000b\u00175\tA!\u0003\u0002\r\t\t\u0019\u0011I\\=\u0011\u00079\tBC\u0004\u0002\u000b\u001f%\u0011\u0001\u0003B\u0001\ba\u0006\u001c7.Y4f\u0013\t\u00112CA\u0004Pe\u0012,'/\u001a3\u000b\u0005A!\u0001CA\u000b\u0017\u0019\u0001!Qa\u0006\u0001C\u0002a\u0011\u0011\u0001V\t\u00033%\u0001\"A\u0003\u000e\n\u0005m!!a\u0002(pi\"Lgn\u001a\t\u0004;\u0001\"bB\u0001\u0006\u001f\u0013\tyB!A\u0003Qe>D\u00180\u0003\u0002\"E\t)A+\u001f9fI*\u0011q\u0004\u0002\u0005\u0006I\u0001!\t!J\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0019\u0002\"AC\u0014\n\u0005!\"!\u0001B+oSRDQA\u000b\u0001\u0007\u0012-\n1a\u001c:e+\u0005a\u0003c\u0001\b.)%\u0011af\u0005\u0002\t\u001fJ$WM]5oO\")\u0001\u0007\u0001C\u0001c\u000591m\\7qCJ,GC\u0001\u001a6!\tQ1'\u0003\u00025\t\t\u0019\u0011J\u001c;\t\u000bYz\u0003\u0019\u0001\u000b\u0002\u0003e\u0004")
/* loaded from: classes3-dex2jar.jar:scala/runtime/OrderedProxy.class */
public interface OrderedProxy<T> extends Ordered<T>, Proxy.Typed<T> {

    /* renamed from: scala.runtime.OrderedProxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/runtime/OrderedProxy$class.class */
    public abstract class Cclass {
        public static void $init$(OrderedProxy orderedProxy) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static int compare(OrderedProxy orderedProxy, Object obj) {
            return orderedProxy.ord().compare(orderedProxy.self(), obj);
        }
    }

    @Override // scala.math.Ordered
    int compare(T t);

    Ordering<T> ord();
}
