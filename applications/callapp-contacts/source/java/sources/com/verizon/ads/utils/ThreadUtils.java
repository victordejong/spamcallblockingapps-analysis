package com.verizon.ads.utils;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.verizon.ads.Logger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/ThreadUtils.class */
public class ThreadUtils {

    /* renamed from: a */
    private static final Logger f61752a;

    /* renamed from: b */
    private static final Handler f61753b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    private static final ExecutorService f61754c = Executors.newCachedThreadPool();

    /* renamed from: d */
    private static final Handler f61755d;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/ThreadUtils$ScheduledRunnable.class */
    public interface ScheduledRunnable extends Runnable {
        void cancel();
    }

    static {
        Logger logger = Logger.getInstance(ThreadUtils.class);
        f61752a = logger;
        logger.m5567d("Initializing ThreadUtils");
        HandlerThread handlerThread = new HandlerThread(ThreadUtils.class.getName());
        handlerThread.start();
        f61755d = new Handler(handlerThread.getLooper());
    }

    public static int getActiveWorkerThreadCount() {
        return ((ThreadPoolExecutor) f61754c).getActiveCount();
    }

    public static boolean isUiThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void postOnUiThread(Runnable runnable) {
        f61753b.post(runnable);
    }

    public static void runOffUiThread(Runnable runnable) {
        if (!isUiThread()) {
            runnable.run();
            return;
        }
        try {
            f61754c.execute(runnable);
        } catch (Throwable th) {
            f61752a.m5566d("Error executing runnable", th);
        }
    }

    public static void runOnUiThread(Runnable runnable) {
        postOnUiThread(runnable);
    }

    public static ScheduledRunnable runOnUiThreadDelayed(final Runnable runnable, long j) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable() { // from class: com.verizon.ads.utils.ThreadUtils.1
            @Override // com.verizon.ads.utils.ThreadUtils.ScheduledRunnable
            public final void cancel() {
                ThreadUtils.f61753b.removeCallbacks(this);
            }

            @Override // java.lang.Runnable
            public final void run() {
                runnable.run();
            }
        };
        f61753b.postDelayed(scheduledRunnable, j);
        return scheduledRunnable;
    }

    public static void runOnWorkerThread(Runnable runnable) {
        try {
            f61754c.execute(runnable);
        } catch (Throwable th) {
            f61752a.m5566d("Error executing runnable", th);
        }
    }

    public static ScheduledRunnable runOnWorkerThreadDelayed(final Runnable runnable, long j) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable() { // from class: com.verizon.ads.utils.ThreadUtils.2
            @Override // com.verizon.ads.utils.ThreadUtils.ScheduledRunnable
            public final void cancel() {
                ThreadUtils.f61755d.removeCallbacks(this);
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ThreadUtils.f61754c.execute(runnable);
                } catch (Throwable th) {
                    ThreadUtils.f61752a.m5566d("Error executing runnable", th);
                }
            }
        };
        f61755d.postDelayed(scheduledRunnable, j);
        return scheduledRunnable;
    }
}
