package p080e5;

import com.google.android.gms.internal.ads.C1676a;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: e5.d0 */
/* loaded from: classes-dex2jar.jar:e5/d0.class */
public final class C2545d0 {
    /* renamed from: a */
    public static ExecutorService m3458a(String str) {
        ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactoryC2540b0(str, new AtomicLong(1L)), new ThreadPoolExecutor.DiscardPolicy()));
        Runtime.getRuntime().addShutdownHook(new Thread(new C2543c0(str, unconfigurableExecutorService, 2L, TimeUnit.SECONDS), C1676a.m4789h("Crashlytics Shutdown Hook for ", str)));
        return unconfigurableExecutorService;
    }
}
