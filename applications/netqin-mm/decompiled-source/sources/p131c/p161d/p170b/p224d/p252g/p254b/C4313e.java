package p131c.p161d.p170b.p224d.p252g.p254b;

import com.google.android.gms.internal.base.zam;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: c.d.b.d.g.b.e */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/b/e.class */
public final class C4313e implements zam {
    public C4313e() {
    }

    @Override // com.google.android.gms.internal.base.zam
    /* renamed from: a */
    public final ExecutorService mo10877a(int i, ThreadFactory threadFactory, int i2) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i, i, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    @Override // com.google.android.gms.internal.base.zam
    /* renamed from: a */
    public final ExecutorService mo10876a(ThreadFactory threadFactory, int i) {
        return mo10877a(1, threadFactory, i);
    }
}
