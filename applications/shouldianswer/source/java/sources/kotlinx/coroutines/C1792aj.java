package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.aj */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/aj.class */
public final class C1792aj implements AbstractC1883ci {

    /* renamed from: a */
    public static final C1792aj f4475a = new C1792aj();

    private C1792aj() {
    }

    @Override // kotlinx.coroutines.AbstractC1883ci
    /* renamed from: a */
    public long mo2703a() {
        return System.nanoTime();
    }

    @Override // kotlinx.coroutines.AbstractC1883ci
    /* renamed from: a */
    public Runnable mo2701a(Runnable runnable) {
        C1694h.m3117b(runnable, "block");
        return runnable;
    }

    @Override // kotlinx.coroutines.AbstractC1883ci
    /* renamed from: a */
    public void mo2702a(Object obj, long j) {
        C1694h.m3117b(obj, "blocker");
        LockSupport.parkNanos(obj, j);
    }

    @Override // kotlinx.coroutines.AbstractC1883ci
    /* renamed from: a */
    public void mo2700a(Thread thread) {
        C1694h.m3117b(thread, "thread");
        LockSupport.unpark(thread);
    }

    @Override // kotlinx.coroutines.AbstractC1883ci
    /* renamed from: b */
    public void mo2699b() {
    }

    @Override // kotlinx.coroutines.AbstractC1883ci
    /* renamed from: c */
    public void mo2698c() {
    }

    @Override // kotlinx.coroutines.AbstractC1883ci
    /* renamed from: d */
    public void mo2697d() {
    }

    @Override // kotlinx.coroutines.AbstractC1883ci
    /* renamed from: e */
    public void mo2696e() {
    }
}
