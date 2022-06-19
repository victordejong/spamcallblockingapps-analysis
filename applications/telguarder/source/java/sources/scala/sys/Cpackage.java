package scala.sys;

import scala.Function0;
import scala.collection.IndexedSeq;
import scala.collection.immutable.Map;
import scala.reflect.ScalaSignature;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
@ScalaSignature(bytes = "\u0006\u0001\t<Q!\u0001\u0002\t\u0002\u001d\tq\u0001]1dW\u0006<WM\u0003\u0002\u0004\t\u0005\u00191/_:\u000b\u0003\u0015\tQa]2bY\u0006\u001c\u0001\u0001\u0005\u0002\t\u00135\t!AB\u0003\u000b\u0005!\u00051BA\u0004qC\u000e\\\u0017mZ3\u0014\u0005%a\u0001CA\u0007\u000f\u001b\u0005!\u0011BA\b\u0005\u0005\u0019\te.\u001f*fM\")\u0011#\u0003C\u0001%\u00051A(\u001b8jiz\"\u0012a\u0002\u0005\u0006)%!\t!F\u0001\u0006KJ\u0014xN\u001d\u000b\u0003-e\u0001\"!D\f\n\u0005a!!a\u0002(pi\"Lgn\u001a\u0005\u00065M\u0001\raG\u0001\b[\u0016\u001c8/Y4f!\tarD\u0004\u0002\u000e;%\u0011a\u0004B\u0001\u0007!J,G-\u001a4\n\u0005\u0001\n#AB*ue&twM\u0003\u0002\u001f\t!)1%\u0003C\u0001I\u0005!Q\r_5u)\u00051\u0002\"B\u0012\n\t\u00031CC\u0001\f(\u0011\u0015AS\u00051\u0001*\u0003\u0019\u0019H/\u0019;vgB\u0011QBK\u0005\u0003W\u0011\u00111!\u00138u\u0011\u0015i\u0013\u0002\"\u0001/\u0003\u001d\u0011XO\u001c;j[\u0016,\u0012a\f\t\u0003aUj\u0011!\r\u0006\u0003eM\nA\u0001\\1oO*\tA'\u0001\u0003kCZ\f\u0017B\u0001\u001c2\u0005\u001d\u0011VO\u001c;j[\u0016DQ\u0001O\u0005\u0005\u0002e\nQ\u0001\u001d:paN,\u0012A\u000f\t\u0003\u0011mJ!\u0001\u0010\u0002\u0003!MK8\u000f^3n!J|\u0007/\u001a:uS\u0016\u001c\b\"\u0002 \n\t\u0003y\u0014aA3omV\t\u0001\t\u0005\u0003B\rnYR\"\u0001\"\u000b\u0005\r#\u0015!C5n[V$\u0018M\u00197f\u0015\t)E!\u0001\u0006d_2dWm\u0019;j_:L!a\u0012\"\u0003\u00075\u000b\u0007\u000fC\u0003J\u0013\u0011\u0005!*A\bbI\u0012\u001c\u0006.\u001e;e_^t\u0007j\\8l)\tYe\n\u0005\u0002\t\u0019&\u0011QJ\u0001\u0002\u0013'\",H\u000fZ8x]\"{wn\u001b+ie\u0016\fG\r\u0003\u0004P\u0011\u0012\u0005\r\u0001U\u0001\u0005E>$\u0017\u0010E\u0002\u000e#NK!A\u0015\u0003\u0003\u0011q\u0012\u0017P\\1nKz\u0002\"!\u0004+\n\u0005U#!\u0001B+oSRDQaV\u0005\u0005\u0002a\u000b!\"\u00197m)\"\u0014X-\u00193t)\u0005I\u0006c\u0001.]?:\u0011QbW\u0005\u0003\u0003\u0011I!!\u00180\u0003\u0015%sG-\u001a=fIN+\u0017O\u0003\u0002\u0002\tA\u0011\u0001\u0007Y\u0005\u0003CF\u0012a\u0001\u00165sK\u0006$\u0007")
/* renamed from: scala.sys.package */
/* loaded from: classes3-dex2jar.jar:scala/sys/package.class */
public final class Cpackage {
    public static ShutdownHookThread addShutdownHook(Function0<BoxedUnit> function0) {
        return package$.MODULE$.addShutdownHook(function0);
    }

    public static IndexedSeq<Thread> allThreads() {
        return package$.MODULE$.allThreads();
    }

    public static Map<String, String> env() {
        return package$.MODULE$.env();
    }

    public static Nothing$ error(String str) {
        return package$.MODULE$.error(str);
    }

    public static Nothing$ exit() {
        return package$.MODULE$.exit();
    }

    public static Nothing$ exit(int i) {
        return package$.MODULE$.exit(i);
    }

    public static SystemProperties props() {
        return package$.MODULE$.props();
    }

    public static Runtime runtime() {
        return package$.MODULE$.runtime();
    }
}
