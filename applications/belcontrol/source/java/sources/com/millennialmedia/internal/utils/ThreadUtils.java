package com.millennialmedia.internal.utils;

import android.os.Handler;
import android.os.Looper;
import com.millennialmedia.MMException;
import com.millennialmedia.MMLog;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/ThreadUtils.class */
public class ThreadUtils {
    private static final String TAG = "ThreadUtils";
    private static Handler uiHandler;
    private static ExecutorService workerExecutor;
    private static Handler workerHandler;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/utils/ThreadUtils$ScheduledRunnable.class */
    public interface ScheduledRunnable extends Runnable {
        void cancel();
    }

    public static int getActiveWorkerThreadCount() {
        return ((ThreadPoolExecutor) workerExecutor).getActiveCount();
    }

    public static void initialize() {
        if (uiHandler != null) {
            MMLog.m4062w(TAG, "ThreadUtils already initialized");
            return;
        }
        uiHandler = new Handler(Looper.getMainLooper());
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread() { // from class: com.millennialmedia.internal.utils.ThreadUtils.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Looper.prepare();
                Handler unused = ThreadUtils.workerHandler = new Handler();
                countDownLatch.countDown();
                Looper.loop();
            }
        }.start();
        workerExecutor = Executors.newCachedThreadPool();
        boolean z = false;
        try {
            z = countDownLatch.await(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            MMLog.m4067e(TAG, "Failed to initialize latch", e);
        }
        if (!z) {
            throw new MMException("Failed to initialize ThreadUtils");
        }
    }

    public static boolean isUiThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void postOnUiThread(Runnable runnable) {
        uiHandler.post(runnable);
    }

    public static void runOffUiThread(Runnable runnable) {
        if (isUiThread()) {
            workerExecutor.execute(runnable);
        } else {
            runnable.run();
        }
    }

    @Deprecated
    public static void runOnUiThread(Runnable runnable) {
        postOnUiThread(runnable);
    }

    public static ScheduledRunnable runOnUiThreadDelayed(final Runnable runnable, long j) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable() { // from class: com.millennialmedia.internal.utils.ThreadUtils.2
            @Override // com.millennialmedia.internal.utils.ThreadUtils.ScheduledRunnable
            public void cancel() {
                ThreadUtils.uiHandler.removeCallbacks(this);
            }

            @Override // java.lang.Runnable
            public void run() {
                runnable.run();
            }
        };
        uiHandler.postDelayed(scheduledRunnable, j);
        return scheduledRunnable;
    }

    public static void runOnWorkerThread(Runnable runnable) {
        workerExecutor.execute(runnable);
    }

    public static ScheduledRunnable runOnWorkerThreadDelayed(final Runnable runnable, long j) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable() { // from class: com.millennialmedia.internal.utils.ThreadUtils.3
            @Override // com.millennialmedia.internal.utils.ThreadUtils.ScheduledRunnable
            public void cancel() {
                ThreadUtils.workerHandler.removeCallbacks(this);
            }

            @Override // java.lang.Runnable
            public void run() {
                ThreadUtils.workerExecutor.execute(runnable);
            }
        };
        workerHandler.postDelayed(scheduledRunnable, j);
        return scheduledRunnable;
    }
}
