package io.bidmachine.core;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/core/BackgroundTaskManager.class */
public class BackgroundTaskManager implements Executor {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final int KEEP_ALIVE_TIME = 1;
    private static final int MAXIMUM_POOL_SIZE;
    private final ThreadPoolExecutor serviceTaskThreadPool;
    private static final TimeUnit KEEP_ALIVE_TIME_UNIT = TimeUnit.SECONDS;
    private static final BackgroundTaskManager instance = new BackgroundTaskManager();

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/core/BackgroundTaskManager$a.class */
    static final class a implements RejectedExecutionHandler {
        private a() {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = availableProcessors;
        CORE_POOL_SIZE = Math.max(2, Math.min(availableProcessors - 1, 4));
        MAXIMUM_POOL_SIZE = (availableProcessors * 2) + 1;
    }

    private BackgroundTaskManager() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        a aVar = new a();
        this.serviceTaskThreadPool = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1L, KEEP_ALIVE_TIME_UNIT, linkedBlockingQueue, new io.bidmachine.core.a(10), aVar);
    }

    public static void async(Runnable runnable) {
        instance.execute(runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.serviceTaskThreadPool.execute(runnable);
    }
}
