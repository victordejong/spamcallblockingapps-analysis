package scala.collection.generic;

import scala.collection.GenIterable;
import scala.collection.Iterable;
import scala.collection.Iterator;
import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001%3q!\u0001\u0002\u0011\u0002\u0007\u0005\u0011BA\tJi\u0016\u0014\u0018M\u00197f\r>\u0014x/\u0019:eKJT!a\u0001\u0003\u0002\u000f\u001d,g.\u001a:jG*\u0011QAB\u0001\u000bG>dG.Z2uS>t'\"A\u0004\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011!\"F\n\u0005\u0001-ya\u0004\u0005\u0002\r\u001b5\ta!\u0003\u0002\u000f\r\t1\u0011I\\=SK\u001a\u00042\u0001E\t\u0014\u001b\u0005!\u0011B\u0001\n\u0005\u0005!IE/\u001a:bE2,\u0007C\u0001\u000b\u0016\u0019\u0001!aA\u0006\u0001\u0005\u0006\u00049\"!A!\u0012\u0005aY\u0002C\u0001\u0007\u001a\u0013\tQbAA\u0004O_RD\u0017N\\4\u0011\u00051a\u0012BA\u000f\u0007\u0005\r\te.\u001f\t\u0004?\u0001\u001aR\"\u0001\u0002\n\u0005\u0005\u0012!\u0001\u0006+sCZ,'o]1cY\u00164uN]<be\u0012,'\u000fC\u0003$\u0001\u0011\u0005A%\u0001\u0004%S:LG\u000f\n\u000b\u0002KA\u0011ABJ\u0005\u0003O\u0019\u0011A!\u00168ji\")\u0011\u0006\u0001D\tU\u0005QQO\u001c3fe2L\u0018N\\4\u0016\u0003=AQ\u0001\f\u0001\u0005B5\n\u0001\"\u001b;fe\u0006$xN]\u000b\u0002]A\u0019\u0001cL\n\n\u0005A\"!\u0001C%uKJ\fGo\u001c:\t\u000bI\u0002A\u0011I\u001a\u0002\u0019M\fW.Z#mK6,g\u000e^:\u0016\u0005QrDCA\u001b9!\taa'\u0003\u00028\r\t9!i\\8mK\u0006t\u0007\"B\u001d2\u0001\u0004Q\u0014\u0001\u0002;iCR\u00042\u0001E\u001e>\u0013\taDAA\u0006HK:LE/\u001a:bE2,\u0007C\u0001\u000b?\t\u0015y\u0014G1\u0001A\u0005\u0005\u0011\u0015CA\n\u001cQ\u0011\u0001!)R$\u0011\u00051\u0019\u0015B\u0001#\u0007\u0005)!W\r\u001d:fG\u0006$X\rZ\u0011\u0002\r\u0006Yfi\u001c:xCJ$\u0017N\\4!SN\u0004\u0013N\u001c5fe\u0016tG\u000f\\=!k:\u0014X\r\\5bE2,\u0007e]5oG\u0016\u0004\u0013\u000e\u001e\u0011jg\u0002rw\u000e\u001e\u0011bkR|W.\u0019;fI\u0002\ng\u000e\u001a\u0011nKRDw\u000eZ:!G\u0006t\u0007EY3!M>\u0014xm\u001c;uK:t\u0013%\u0001%\u0002\rIr\u0013'\r\u00181\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/IterableForwarder.class */
public interface IterableForwarder<A> extends Iterable<A>, TraversableForwarder<A> {

    /* renamed from: scala.collection.generic.IterableForwarder$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/generic/IterableForwarder$class.class */
    public abstract class Cclass {
        public static void $init$(IterableForwarder iterableForwarder) {
        }

        public static Iterator iterator(IterableForwarder iterableForwarder) {
            return iterableForwarder.underlying().iterator();
        }

        public static boolean sameElements(IterableForwarder iterableForwarder, GenIterable genIterable) {
            return iterableForwarder.underlying().sameElements(genIterable);
        }
    }

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike, scala.collection.GenSetLike
    Iterator<A> iterator();

    @Override // scala.collection.GenIterableLike, scala.collection.IterableLike
    <B> boolean sameElements(GenIterable<B> genIterable);

    @Override // scala.collection.generic.TraversableForwarder
    Iterable<A> underlying();
}
