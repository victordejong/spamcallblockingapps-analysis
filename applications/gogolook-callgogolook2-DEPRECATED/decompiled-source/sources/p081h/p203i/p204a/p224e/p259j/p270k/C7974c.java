package p081h.p203i.p204a.p224e.p259j.p270k;

import androidx.annotation.NonNull;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: h.i.a.e.j.k.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/k/c.class */
public final class C7974c implements AbstractC7973b {
    public C7974c() {
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p270k.AbstractC7973b
    @NonNull
    /* renamed from: a */
    public final ExecutorService mo18712a(ThreadFactory threadFactory, int i) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }
}
