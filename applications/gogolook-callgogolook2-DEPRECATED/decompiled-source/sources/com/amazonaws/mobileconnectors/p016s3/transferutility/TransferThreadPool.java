package com.amazonaws.mobileconnectors.p016s3.transferutility;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferThreadPool */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool.class */
public class TransferThreadPool {
    public static ExecutorService executorMainTask;
    public static ExecutorService executorPartTask;

    public static ExecutorService buildExecutor(int i) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        threadPoolExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    public static void closeThreadPool() {
        shutdown(executorPartTask);
        executorPartTask = null;
        shutdown(executorMainTask);
        executorMainTask = null;
    }

    public static void init() {
        synchronized (TransferThreadPool.class) {
            try {
                int availableProcessors = Runtime.getRuntime().availableProcessors();
                if (executorMainTask == null) {
                    executorMainTask = buildExecutor(availableProcessors + 1);
                }
                if (executorPartTask == null) {
                    executorPartTask = buildExecutor(availableProcessors + 1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void shutdown(ExecutorService executorService) {
        if (executorService != null) {
            executorService.shutdown();
            try {
                if (!executorService.awaitTermination(250L, TimeUnit.MILLISECONDS)) {
                    executorService.shutdownNow();
                }
            } catch (InterruptedException e) {
                executorService.shutdownNow();
                Thread.currentThread().interrupt();
            }
        }
    }

    public static <T> Future<T> submitTask(Callable<T> callable) {
        init();
        return callable instanceof UploadPartTask ? executorPartTask.submit(callable) : executorMainTask.submit(callable);
    }
}
