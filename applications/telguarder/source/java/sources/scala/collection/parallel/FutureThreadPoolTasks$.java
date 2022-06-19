package scala.collection.parallel;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/FutureThreadPoolTasks$.class */
public final class FutureThreadPoolTasks$ {
    public static final FutureThreadPoolTasks$ MODULE$ = null;
    private final int numCores = Runtime.getRuntime().availableProcessors();
    private final AtomicLong tcount = new AtomicLong(0);
    private final ExecutorService defaultThreadPool = Executors.newCachedThreadPool();

    static {
        new FutureThreadPoolTasks$();
    }

    private FutureThreadPoolTasks$() {
        MODULE$ = this;
    }

    public ExecutorService defaultThreadPool() {
        return this.defaultThreadPool;
    }

    public int numCores() {
        return this.numCores;
    }

    public AtomicLong tcount() {
        return this.tcount;
    }
}
