package kotlinx.coroutines;

import java.util.concurrent.TimeUnit;
import kotlin.p081e.p083b.C1694h;
import kotlin.p084f.C1713d;
import kotlinx.coroutines.AbstractC1817az;
/* renamed from: kotlinx.coroutines.ah */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ah.class */
public final class RunnableC1790ah extends AbstractC1817az implements Runnable {
    private static volatile Thread _thread;

    /* renamed from: b */
    public static final RunnableC1790ah f4472b;

    /* renamed from: c */
    private static final long f4473c;
    private static volatile int debugStatus;

    static {
        Long l;
        RunnableC1790ah runnableC1790ah = new RunnableC1790ah();
        f4472b = runnableC1790ah;
        AbstractC1816ay.m2923a(runnableC1790ah, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException e) {
            l = 1000L;
        }
        C1694h.m3122a((Object) l, "try {\n            java.l…AULT_KEEP_ALIVE\n        }");
        f4473c = timeUnit.toNanos(l.longValue());
    }

    private RunnableC1790ah() {
    }

    /* renamed from: k */
    private final boolean m2953k() {
        int i = debugStatus;
        return i == 2 || i == 3;
    }

    /* renamed from: l */
    private final Thread m2952l() {
        Thread thread;
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    /* renamed from: m */
    private final boolean m2951m() {
        synchronized (this) {
            if (m2953k()) {
                return false;
            }
            debugStatus = 1;
            notifyAll();
            return true;
        }
    }

    /* renamed from: n */
    private final void m2950n() {
        synchronized (this) {
            if (!m2953k()) {
                return;
            }
            debugStatus = 3;
            m2904j();
            notifyAll();
        }
    }

    @Override // kotlinx.coroutines.AbstractC1817az
    /* renamed from: a */
    protected Thread mo2689a() {
        Thread thread = _thread;
        if (thread == null) {
            thread = m2952l();
        }
        return thread;
    }

    @Override // kotlinx.coroutines.AbstractC1817az, kotlinx.coroutines.AbstractC1796am
    /* renamed from: a */
    public AbstractC1812au mo2612a(long j, Runnable runnable) {
        C1694h.m3117b(runnable, "block");
        AbstractC1817az.C1819b c1819b = new AbstractC1817az.C1819b(j, runnable);
        f4472b.m2913a((AbstractC1817az.AbstractRunnableC1820c) c1819b);
        return c1819b;
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v60, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    @Override // java.lang.Runnable
    public void run() {
        C1879cf.f4619a.m2712a(this);
        C1884cj.m2695a().mo2697d();
        try {
            if (!m2951m()) {
                _thread = null;
                m2950n();
                C1884cj.m2695a().mo2696e();
                if (mo2908c()) {
                    return;
                }
                mo2689a();
                return;
            }
            char c = 65535;
            while (true) {
                Thread.interrupted();
                ?? b = mo2911b();
                char c2 = c;
                char c3 = b;
                if (b == Long.MAX_VALUE) {
                    int i = (c > Long.MAX_VALUE ? 1 : (c == Long.MAX_VALUE ? 0 : -1));
                    if (i == 0) {
                        long mo2703a = C1884cj.m2695a().mo2703a();
                        if (i == 0) {
                            c = f4473c + mo2703a;
                        }
                        long j = c - mo2703a;
                        if (j <= 0) {
                            _thread = null;
                            m2950n();
                            C1884cj.m2695a().mo2696e();
                            if (mo2908c()) {
                                return;
                            }
                            mo2689a();
                            return;
                        }
                        c3 = C1713d.m3077b((long) b, j);
                        c2 = c;
                    } else {
                        c3 = C1713d.m3077b((long) b, f4473c);
                        c2 = c;
                    }
                }
                c = c2;
                if (c3 > 0) {
                    if (m2953k()) {
                        _thread = null;
                        m2950n();
                        C1884cj.m2695a().mo2696e();
                        if (mo2908c()) {
                            return;
                        }
                        mo2689a();
                        return;
                    }
                    C1884cj.m2695a().mo2702a(this, c3);
                    c = c2;
                }
            }
        } catch (Throwable th) {
            _thread = null;
            m2950n();
            C1884cj.m2695a().mo2696e();
            if (!mo2908c()) {
                mo2689a();
            }
            throw th;
        }
    }
}
