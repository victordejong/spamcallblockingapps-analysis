package scala.collection;

import scala.reflect.ScalaSignature;
@ScalaSignature(bytes = "\u0006\u0001%2q!\u0001\u0002\u0011\u0002\u0007\u0005qA\u0001\tCk\u001a4WM]3e\u0013R,'/\u0019;pe*\u00111\u0001B\u0001\u000bG>dG.Z2uS>t'\"A\u0003\u0002\u000bM\u001c\u0017\r\\1\u0004\u0001U\u0011\u0001bE\n\u0004\u0001%i\u0001C\u0001\u0006\f\u001b\u0005!\u0011B\u0001\u0007\u0005\u0005\u0019\te.\u001f*fMB\u0019abD\t\u000e\u0003\tI!\u0001\u0005\u0002\u0003\u0011%#XM]1u_J\u0004\"AE\n\r\u0001\u00111A\u0003\u0001CC\u0002U\u0011\u0011!Q\t\u0003-e\u0001\"AC\f\n\u0005a!!a\u0002(pi\"Lgn\u001a\t\u0003\u0015iI!a\u0007\u0003\u0003\u0007\u0005s\u0017\u0010C\u0003\u001e\u0001\u0011\u0005a$\u0001\u0004%S:LG\u000f\n\u000b\u0002?A\u0011!\u0002I\u0005\u0003C\u0011\u0011A!\u00168ji\")1\u0005\u0001D\u0001I\u0005!\u0001.Z1e+\u0005\t\u0002\"\u0002\u0014\u0001\t\u0003:\u0013\u0001\u00032vM\u001a,'/\u001a3\u0016\u0003!j\u0011\u0001\u0001")
/* loaded from: classes3-dex2jar.jar:scala/collection/BufferedIterator.class */
public interface BufferedIterator<A> extends Iterator<A> {

    /* renamed from: scala.collection.BufferedIterator$class */
    /* loaded from: classes3-dex2jar.jar:scala/collection/BufferedIterator$class.class */
    public abstract class Cclass {
        public static void $init$(BufferedIterator bufferedIterator) {
        }

        public static BufferedIterator buffered(BufferedIterator bufferedIterator) {
            return bufferedIterator;
        }
    }

    @Override // scala.collection.Iterator
    BufferedIterator<A> buffered();

    A head();
}
