package scala.sys;

import scala.Function0;
import scala.Predef$;
import scala.collection.IndexedSeq;
import scala.collection.JavaConverters$;
import scala.collection.MapLike;
import scala.collection.immutable.Map;
import scala.collection.immutable.Map$;
import scala.runtime.BoxedUnit;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/sys/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public ShutdownHookThread addShutdownHook(Function0<BoxedUnit> function0) {
        return ShutdownHookThread$.MODULE$.apply(function0);
    }

    public IndexedSeq<Thread> allThreads() {
        Thread[] threadArr = new Thread[Thread.activeCount()];
        return Predef$.MODULE$.wrapRefArray((Object[]) Predef$.MODULE$.refArrayOps(threadArr).take(Thread.enumerate(threadArr)));
    }

    public Map<String, String> env() {
        return (Map) Map$.MODULE$.apply(((MapLike) JavaConverters$.MODULE$.mapAsScalaMapConverter(System.getenv()).asScala()).toSeq());
    }

    public Nothing$ error(String str) {
        throw new RuntimeException(str);
    }

    public Nothing$ exit() {
        return exit(0);
    }

    public Nothing$ exit(int i) {
        System.exit(i);
        throw new Throwable();
    }

    public SystemProperties props() {
        return new SystemProperties();
    }

    public Runtime runtime() {
        return Runtime.getRuntime();
    }
}
