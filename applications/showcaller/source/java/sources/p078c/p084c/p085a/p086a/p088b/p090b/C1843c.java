package p078c.p084c.p085a.p086a.p088b.p090b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: c.c.a.a.b.b.c */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/b/c.class */
final class C1843c implements AbstractC1842b {
    /* JADX INFO: Access modifiers changed from: private */
    public C1843c() {
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p090b.AbstractC1842b
    /* renamed from: a */
    public final ExecutorService mo28798a(ThreadFactory threadFactory, int i) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // p078c.p084c.p085a.p086a.p088b.p090b.AbstractC1842b
    /* renamed from: b */
    public final ScheduledExecutorService mo28797b(int i, ThreadFactory threadFactory, int i2) {
        return Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, threadFactory));
    }
}
