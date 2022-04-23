package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzdvd;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.b.d.g.a.u00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/u00.class */
public final class u00 implements zzdvd {
    public u00() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvd
    /* renamed from: a */
    public final ExecutorService mo13119a(int i) {
        return Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
    }

    @Override // com.google.android.gms.internal.ads.zzdvd
    /* renamed from: a */
    public final ExecutorService mo13117a(ThreadFactory threadFactory, int i) {
        return Executors.unconfigurableExecutorService(Executors.newCachedThreadPool(threadFactory));
    }

    @Override // com.google.android.gms.internal.ads.zzdvd
    /* renamed from: a */
    public final ScheduledExecutorService mo13118a(int i, ThreadFactory threadFactory, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }

    @Override // com.google.android.gms.internal.ads.zzdvd
    /* renamed from: b */
    public final ExecutorService mo13116b(int i) {
        return mo13115b(1, Executors.defaultThreadFactory(), i);
    }

    @Override // com.google.android.gms.internal.ads.zzdvd
    /* renamed from: b */
    public final ExecutorService mo13115b(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.ads.zzdvd
    /* renamed from: b */
    public final ExecutorService mo13114b(ThreadFactory threadFactory, int i) {
        return mo13115b(1, threadFactory, i);
    }
}
