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

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f35656a;

    /* renamed from: b  reason: collision with root package name */
    private static final Handler f35657b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private static final ExecutorService f35658c = Executors.newCachedThreadPool();

    /* renamed from: d  reason: collision with root package name */
    private static final Handler f35659d;

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/ThreadUtils$ScheduledRunnable.class */
    public interface ScheduledRunnable extends Runnable {
        void cancel();
    }

    static {
        Logger instance = Logger.getInstance(ThreadUtils.class);
        f35656a = instance;
        instance.d("Initializing ThreadUtils");
        HandlerThread handlerThread = new HandlerThread(ThreadUtils.class.getName());
        handlerThread.start();
        f35659d = new Handler(handlerThread.getLooper());
    }

    public static int getActiveWorkerThreadCount() {
        return ((ThreadPoolExecutor) f35658c).getActiveCount();
    }

    public static boolean isUiThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void postOnUiThread(Runnable runnable) {
        f35657b.post(runnable);
    }

    public static void runOffUiThread(Runnable runnable) {
        if (isUiThread()) {
            try {
                f35658c.execute(runnable);
            } catch (Throwable th) {
                f35656a.d("Error executing runnable", th);
            }
        } else {
            runnable.run();
        }
    }

    public static void runOnUiThread(Runnable runnable) {
        postOnUiThread(runnable);
    }

    public static ScheduledRunnable runOnUiThreadDelayed(final Runnable runnable, long j) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable() { // from class: com.verizon.ads.utils.ThreadUtils.1
            @Override // com.verizon.ads.utils.ThreadUtils.ScheduledRunnable
            public final void cancel() {
                ThreadUtils.f35657b.removeCallbacks(this);
            }

            @Override // java.lang.Runnable
            public final void run() {
                runnable.run();
            }
        };
        f35657b.postDelayed(scheduledRunnable, j);
        return scheduledRunnable;
    }

    public static void runOnWorkerThread(Runnable runnable) {
        try {
            f35658c.execute(runnable);
        } catch (Throwable th) {
            f35656a.d("Error executing runnable", th);
        }
    }

    public static ScheduledRunnable runOnWorkerThreadDelayed(final Runnable runnable, long j) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable() { // from class: com.verizon.ads.utils.ThreadUtils.2
            @Override // com.verizon.ads.utils.ThreadUtils.ScheduledRunnable
            public final void cancel() {
                ThreadUtils.f35659d.removeCallbacks(this);
            }

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    ThreadUtils.f35658c.execute(runnable);
                } catch (Throwable th) {
                    ThreadUtils.f35656a.d("Error executing runnable", th);
                }
            }
        };
        f35659d.postDelayed(scheduledRunnable, j);
        return scheduledRunnable;
    }
}
