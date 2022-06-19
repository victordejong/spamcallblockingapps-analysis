package kotlinx.coroutines;

import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.cg */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cg.class */
public final class C1880cg extends AbstractC1842bc {

    /* renamed from: b */
    private final AtomicInteger f4621b = new AtomicInteger();

    /* renamed from: c */
    private final Executor f4622c;

    /* renamed from: d */
    private final int f4623d;

    /* renamed from: e */
    private final String f4624e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: kotlinx.coroutines.cg$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cg$a.class */
    public static final class ThreadFactoryC1881a implements ThreadFactory {
        ThreadFactoryC1881a() {
            C1880cg.this = r4;
        }

        /* renamed from: a */
        public final C1871bz newThread(Runnable runnable) {
            String str;
            C1880cg c1880cg = C1880cg.this;
            C1694h.m3122a((Object) runnable, "target");
            if (C1880cg.this.f4623d == 1) {
                str = C1880cg.this.f4624e;
            } else {
                str = C1880cg.this.f4624e + "-" + C1880cg.this.f4621b.incrementAndGet();
            }
            return new C1871bz(c1880cg, runnable, str);
        }
    }

    public C1880cg(int i, String str) {
        C1694h.m3117b(str, AppMeasurementSdk.ConditionalUserProperty.NAME);
        this.f4623d = i;
        this.f4624e = str;
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(this.f4623d, new ThreadFactoryC1881a());
        C1694h.m3122a((Object) newScheduledThreadPool, "Executors.newScheduledTh….incrementAndGet())\n    }");
        this.f4622c = newScheduledThreadPool;
        m2810b();
    }

    @Override // kotlinx.coroutines.AbstractC1841bb
    /* renamed from: a */
    public Executor mo2525a() {
        return this.f4622c;
    }

    @Override // kotlinx.coroutines.AbstractC1842bc, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor mo2525a = mo2525a();
        if (mo2525a != null) {
            ((ExecutorService) mo2525a).shutdown();
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.util.concurrent.ExecutorService");
    }

    @Override // kotlinx.coroutines.AbstractC1842bc, kotlinx.coroutines.AbstractC1950y
    public String toString() {
        return "ThreadPoolDispatcher[" + this.f4623d + ", " + this.f4624e + ']';
    }
}
