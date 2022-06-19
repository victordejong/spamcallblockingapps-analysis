package scala.sys;

import scala.Function0;
import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/sys/ShutdownHookThread$.class */
public final class ShutdownHookThread$ {
    public static final ShutdownHookThread$ MODULE$ = null;
    private int hookNameCount = 0;

    static {
        new ShutdownHookThread$();
    }

    private ShutdownHookThread$() {
        MODULE$ = this;
    }

    private int hookNameCount() {
        return this.hookNameCount;
    }

    private void hookNameCount_$eq(int i) {
        this.hookNameCount = i;
    }

    public ShutdownHookThread apply(Function0<BoxedUnit> function0) {
        ShutdownHookThread shutdownHookThread = new ShutdownHookThread(function0) { // from class: scala.sys.ShutdownHookThread$$anon$1
            private final Function0 body$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(ShutdownHookThread$.MODULE$.scala$sys$ShutdownHookThread$$hookName());
                this.body$1 = function0;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                this.body$1.apply$mcV$sp();
            }
        };
        package$.MODULE$.runtime().addShutdownHook(shutdownHookThread);
        return shutdownHookThread;
    }

    public String scala$sys$ShutdownHookThread$$hookName() {
        String stringBuilder;
        synchronized (this) {
            hookNameCount_$eq(hookNameCount() + 1);
            stringBuilder = new StringBuilder().append((Object) "shutdownHook").append(BoxesRunTime.boxToInteger(hookNameCount())).toString();
        }
        return stringBuilder;
    }
}
