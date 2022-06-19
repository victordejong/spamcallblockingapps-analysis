package scala.collection.immutable;

import scala.collection.SetProxyLike;
import scala.collection.generic.GenericSetTemplate;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001-3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011B\u0001\u0005TKR\u0004&o\u001c=z\u0015\t\u0019A!A\u0005j[6,H/\u00192mK*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"F\n\u0005\u0001-ya\u0004\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u00042\u0001E\t\u0014\u001b\u0005\u0011\u0011B\u0001\n\u0003\u0005\r\u0019V\r\u001e\t\u0003)Ua\u0001\u0001B\u0003\u0017\u0001\t\u0007qCA\u0001B#\tA2\u0004\u0005\u0002\r3%\u0011!D\u0002\u0002\b\u001d>$\b.\u001b8h!\taA$\u0003\u0002\u001e\r\t\u0019\u0011I\\=\u0011\t}\u00013cD\u0007\u0002\t%\u0011\u0011\u0005\u0002\u0002\r'\u0016$\bK]8ys2K7.\u001a\u0005\u0006G\u0001!\t\u0001J\u0001\u0007I%t\u0017\u000e\u001e\u0013\u0015\u0003\u0015\u0002\"\u0001\u0004\u0014\n\u0005\u001d2!\u0001B+oSRDQ!\u000b\u0001\u0005B)\nAA]3qeV\t1\u0006E\u0002\u0011\u0001MAQ!\f\u0001\u0005\n9\n\u0001B\\3x!J|\u00070_\u000b\u0003_I\"\"\u0001M\u001b\u0011\u0007A\u0001\u0011\u0007\u0005\u0002\u0015e\u0011)1\u0007\fb\u0001i\t\t!)\u0005\u0002\u00147!)a\u0007\fa\u0001o\u00059a.Z<TK24\u0007c\u0001\t\u0012c!)\u0011\b\u0001C!U\u0005)Q-\u001c9us\")1\b\u0001C!y\u0005)A\u0005\u001d7vgR\u00111&\u0010\u0005\u0006}i\u0002\raE\u0001\u0005K2,W\u000eC\u0003A\u0001\u0011\u0005\u0013)\u0001\u0004%[&tWo\u001d\u000b\u0003W\tCQAP A\u0002MAC\u0001\u0001#H\u0013B\u0011A\"R\u0005\u0003\r\u001a\u0011!\u0002Z3qe\u0016\u001c\u0017\r^3eC\u0005A\u0015!\u0012)s_bL\u0018N\\4!SN\u0004C-\u001a9sK\u000e\fG/\u001a3!IV,\u0007\u0005^8!Y\u0006\u001c7\u000eI8gAU\u001cX\rI1oI\u0002\u001aw.\u001c9jY\u0016\u0014X\u0006\\3wK2\u00043/\u001e9q_J$h&I\u0001K\u0003\u0019\u0011d&M\u0019/a\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SetProxy.class */
public interface SetProxy<A> extends Set<A>, SetProxyLike<A, Set<A>> {

    /* renamed from: scala.collection.immutable.SetProxy$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/immutable/SetProxy$class.class */
    public abstract class Cclass {
        public static void $init$(SetProxy setProxy) {
        }

        public static SetProxy empty(SetProxy setProxy) {
            return newProxy(setProxy, (Set) ((GenericSetTemplate) setProxy.self()).empty());
        }

        public static SetProxy newProxy(SetProxy setProxy, Set set) {
            return new SetProxy$$anon$1(setProxy, set);
        }

        public static SetProxy repr(SetProxy setProxy) {
            return setProxy;
        }
    }

    SetProxy<A> $minus(A a);

    SetProxy<A> $plus(A a);

    SetProxy<A> empty();

    @Override // scala.collection.TraversableLike, scala.collection.GenTraversableLike, scala.collection.generic.Subtractable, scala.collection.generic.Sorted
    SetProxy<A> repr();
}
