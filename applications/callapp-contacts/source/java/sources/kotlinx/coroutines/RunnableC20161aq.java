package kotlinx.coroutines;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18335f;
import kotlin.p530f.C18363d;
import kotlinx.coroutines.AbstractC20197bg;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018��2\u00020\u00012\u00060\u0002j\u0002`\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u0010H\u0002J\r\u0010\u001e\u001a\u00020\u001cH��¢\u0006\u0002\b\u001fJ$\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\b2\n\u0010#\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020\u0014H\u0002J\b\u0010'\u001a\u00020\u001cH\u0016J\u000e\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n��R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\b\n��\u0012\u0004\b\u0011\u0010\u0004R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00148@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00108TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006*"}, m4298d2 = {"Lkotlinx/coroutines/DefaultExecutor;", "Lkotlinx/coroutines/EventLoopImplBase;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "()V", "ACTIVE", "", "DEFAULT_KEEP_ALIVE", "", "FRESH", "KEEP_ALIVE_NANOS", "SHUTDOWN_ACK", "SHUTDOWN_REQ", "THREAD_NAME", "", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "debugStatus", "isShutdownRequested", "", "()Z", "isThreadPresent", "isThreadPresent$kotlinx_coroutines_core", "thread", "getThread", "()Ljava/lang/Thread;", "acknowledgeShutdownIfNeeded", "", "createThreadSync", "ensureStarted", "ensureStarted$kotlinx_coroutines_core", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "block", "context", "Lkotlin/coroutines/CoroutineContext;", "notifyStartup", "run", "shutdown", "timeout", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.aq */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/aq.class */
public final class RunnableC20161aq extends AbstractC20197bg implements Runnable {
    private static volatile Thread _thread;

    /* renamed from: b */
    public static final RunnableC20161aq f66567b;

    /* renamed from: d */
    private static final long f66568d;
    private static volatile int debugStatus;

    static {
        Long l;
        RunnableC20161aq runnableC20161aq = new RunnableC20161aq();
        f66567b = runnableC20161aq;
        runnableC20161aq.m1012a(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException e) {
            l = 1000L;
        }
        f66568d = timeUnit.toNanos(l.longValue());
    }

    private RunnableC20161aq() {
    }

    /* renamed from: l */
    private static boolean m1078l() {
        int i = debugStatus;
        return i == 2 || i == 3;
    }

    /* renamed from: m */
    private final Thread m1077m() {
        Thread thread;
        synchronized (this) {
            Thread thread2 = _thread;
            thread = thread2;
            if (thread2 == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    /* renamed from: n */
    private final boolean m1076n() {
        synchronized (this) {
            if (m1078l()) {
                return false;
            }
            debugStatus = 1;
            notifyAll();
            return true;
        }
    }

    /* renamed from: o */
    private final void m1075o() {
        synchronized (this) {
            if (!m1078l()) {
                return;
            }
            debugStatus = 3;
            m995j();
            notifyAll();
        }
    }

    @Override // kotlinx.coroutines.AbstractC20202bh
    /* renamed from: a */
    protected final Thread mo903a() {
        Thread thread = _thread;
        Thread thread2 = thread;
        if (thread == null) {
            thread2 = m1077m();
        }
        return thread2;
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // kotlinx.coroutines.AbstractC20197bg, kotlinx.coroutines.AbstractC20166au
    /* renamed from: a */
    public final AbstractC20192bb mo826a(long j, Runnable runnable, AbstractC18335f abstractC18335f) {
        long m989a = C20203bi.m989a(j);
        if (m989a < 4611686018427387903L) {
            AbstractC20246co abstractC20246co = C20247cp.f66702a;
            char m909a = abstractC20246co != null ? abstractC20246co.m909a() : System.nanoTime();
            AbstractC20197bg.AbstractRunnableC20200c c20199b = new AbstractC20197bg.C20199b(m989a + m909a, runnable);
            m1005a(m909a, c20199b);
            return c20199b;
        }
        return C20238cg.f66696a;
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    @Override // java.lang.Runnable
    public final void run() {
        char c;
        char c2;
        C20245cn c20245cn = C20245cn.f66700a;
        C20245cn.m912a(this);
        try {
            if (!m1076n()) {
                _thread = null;
                m1075o();
                if (mo998d()) {
                    return;
                }
                mo903a();
                return;
            }
            char c3 = 65535;
            while (true) {
                Thread.interrupted();
                ?? c4 = mo1000c();
                if (c4 == Long.MAX_VALUE) {
                    AbstractC20246co abstractC20246co = C20247cp.f66702a;
                    char m909a = abstractC20246co != null ? abstractC20246co.m909a() : System.nanoTime();
                    c = c3;
                    if (c3 == Long.MAX_VALUE) {
                        c = f66568d + m909a;
                    }
                    long j = c - m909a;
                    if (j <= 0) {
                        _thread = null;
                        m1075o();
                        if (mo998d()) {
                            return;
                        }
                        mo903a();
                        return;
                    }
                    c2 = C18363d.m4054a((long) c4, j);
                } else {
                    c = 65535;
                    c2 = c4;
                }
                c3 = c;
                if (c2 > 0) {
                    if (m1078l()) {
                        _thread = null;
                        m1075o();
                        if (mo998d()) {
                            return;
                        }
                        mo903a();
                        return;
                    }
                    c3 = c;
                    if (C20247cp.f66702a == null) {
                        LockSupport.parkNanos(this, c2);
                        c3 = c;
                    }
                }
            }
        } catch (Throwable th) {
            _thread = null;
            m1075o();
            if (!mo998d()) {
                mo903a();
            }
            throw th;
        }
    }
}
