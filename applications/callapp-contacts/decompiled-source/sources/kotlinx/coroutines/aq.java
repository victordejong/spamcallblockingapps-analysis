package kotlinx.coroutines;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.c.f;
import kotlinx.coroutines.bg;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018��2\u00020\u00012\u00060\u0002j\u0002`\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0004J\b\u0010\u001b\u001a\u00020\u001cH\u0002J\b\u0010\u001d\u001a\u00020\u0010H\u0002J\r\u0010\u001e\u001a\u00020\u001cH��¢\u0006\u0002\b\u001fJ$\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\b2\n\u0010#\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020\u0014H\u0002J\b\u0010'\u001a\u00020\u001cH\u0016J\u000e\u0010(\u001a\u00020\u001c2\u0006\u0010)\u001a\u00020\bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0086T¢\u0006\u0002\n��R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\b\n��\u0012\u0004\b\u0011\u0010\u0004R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00148@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00108TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006*"}, d2 = {"Lkotlinx/coroutines/DefaultExecutor;", "Lkotlinx/coroutines/EventLoopImplBase;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "()V", "ACTIVE", "", "DEFAULT_KEEP_ALIVE", "", "FRESH", "KEEP_ALIVE_NANOS", "SHUTDOWN_ACK", "SHUTDOWN_REQ", "THREAD_NAME", "", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "debugStatus", "isShutdownRequested", "", "()Z", "isThreadPresent", "isThreadPresent$kotlinx_coroutines_core", "thread", "getThread", "()Ljava/lang/Thread;", "acknowledgeShutdownIfNeeded", "", "createThreadSync", "ensureStarted", "ensureStarted$kotlinx_coroutines_core", "invokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "block", "context", "Lkotlin/coroutines/CoroutineContext;", "notifyStartup", "run", "shutdown", "timeout", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/aq.class */
public final class aq extends bg implements Runnable {
    private static volatile Thread _thread;

    /* renamed from: b  reason: collision with root package name */
    public static final aq f38690b;

    /* renamed from: d  reason: collision with root package name */
    private static final long f38691d;
    private static volatile int debugStatus;

    static {
        Long l;
        aq aqVar = new aq();
        f38690b = aqVar;
        aqVar.a(false);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException e) {
            l = 1000L;
        }
        f38691d = timeUnit.toNanos(l.longValue());
    }

    private aq() {
    }

    private static boolean l() {
        int i = debugStatus;
        return i == 2 || i == 3;
    }

    private final Thread m() {
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

    private final boolean n() {
        synchronized (this) {
            if (l()) {
                return false;
            }
            debugStatus = 1;
            notifyAll();
            return true;
        }
    }

    private final void o() {
        synchronized (this) {
            if (l()) {
                debugStatus = 3;
                j();
                notifyAll();
            }
        }
    }

    @Override // kotlinx.coroutines.bh
    protected final Thread a() {
        Thread thread = _thread;
        Thread thread2 = thread;
        if (thread == null) {
            thread2 = m();
        }
        return thread2;
    }

    @Override // kotlinx.coroutines.bg, kotlinx.coroutines.au
    public final bb a(long j, Runnable runnable, f fVar) {
        long a2 = bi.a(j);
        if (a2 >= 4611686018427387903L) {
            return cg.f38780a;
        }
        co coVar = cp.f38786a;
        long a3 = coVar != null ? coVar.a() : System.nanoTime();
        bg.b bVar = new bg.b(a2 + a3, runnable);
        a(a3, bVar);
        return bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [long] */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Unknown variable types count: 5 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.aq.run():void");
    }
}
