package scala.collection.parallel;

import scala.concurrent.forkjoin.ForkJoinPool;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ForkJoinTasks$.class */
public final class ForkJoinTasks$ {
    public static final ForkJoinTasks$ MODULE$ = null;
    private volatile boolean bitmap$0;
    private ForkJoinPool defaultForkJoinPool;

    static {
        new ForkJoinTasks$();
    }

    private ForkJoinTasks$() {
        MODULE$ = this;
    }

    private ForkJoinPool defaultForkJoinPool$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.defaultForkJoinPool = new ForkJoinPool();
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        return this.defaultForkJoinPool;
    }

    public ForkJoinPool defaultForkJoinPool() {
        return this.bitmap$0 ? this.defaultForkJoinPool : defaultForkJoinPool$lzycompute();
    }
}
