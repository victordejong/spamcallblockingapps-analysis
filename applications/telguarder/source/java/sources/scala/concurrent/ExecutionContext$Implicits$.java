package scala.concurrent;

import scala.concurrent.impl.ExecutionContextImpl;
import scala.concurrent.impl.ExecutionContextImpl$;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/ExecutionContext$Implicits$.class */
public class ExecutionContext$Implicits$ {
    public static final ExecutionContext$Implicits$ MODULE$ = null;
    private volatile boolean bitmap$0;
    private ExecutionContextExecutor global;

    static {
        new ExecutionContext$Implicits$();
    }

    public ExecutionContext$Implicits$() {
        MODULE$ = this;
    }

    private ExecutionContextExecutor global$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                ExecutionContextImpl$ executionContextImpl$ = ExecutionContextImpl$.MODULE$;
                ExecutionContextImpl$ executionContextImpl$2 = ExecutionContextImpl$.MODULE$;
                ExecutionContext$ executionContext$ = ExecutionContext$.MODULE$;
                this.global = new ExecutionContextImpl(null, new ExecutionContext$$anonfun$defaultReporter$1());
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.global;
    }

    public ExecutionContextExecutor global() {
        return this.bitmap$0 ? this.global : global$lzycompute();
    }
}
