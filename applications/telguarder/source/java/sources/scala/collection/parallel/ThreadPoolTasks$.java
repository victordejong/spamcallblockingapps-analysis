package scala.collection.parallel;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import scala.collection.mutable.StringBuilder;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ThreadPoolTasks$.class */
public final class ThreadPoolTasks$ {
    public static final ThreadPoolTasks$ MODULE$ = null;
    private final int numCores = Runtime.getRuntime().availableProcessors();
    private final AtomicLong tcount = new AtomicLong(0);
    private final ThreadPoolExecutor defaultThreadPool = new ThreadPoolExecutor(numCores(), Integer.MAX_VALUE, 60, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: scala.collection.parallel.ThreadPoolTasks$$anon$1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setName(new StringBuilder().append((Object) "pc-thread-").append(BoxesRunTime.boxToLong(ThreadPoolTasks$.MODULE$.tcount().incrementAndGet())).toString());
            thread.setDaemon(true);
            return thread;
        }
    }, new ThreadPoolExecutor.CallerRunsPolicy());

    static {
        new ThreadPoolTasks$();
    }

    private ThreadPoolTasks$() {
        MODULE$ = this;
    }

    public ThreadPoolExecutor defaultThreadPool() {
        return this.defaultThreadPool;
    }

    public int numCores() {
        return this.numCores;
    }

    public AtomicLong tcount() {
        return this.tcount;
    }
}
