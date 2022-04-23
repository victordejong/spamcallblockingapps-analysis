package kotlinx.coroutines;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\r\bÀ\u0002\u0018��2\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b.\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\u0003H��¢\u0006\u0004\b\t\u0010\u0005J#\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\u000e\u001a\u00060\u0001j\u0002`\rH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0015\u0010\u0005J\u0015\u0010\u0017\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001c\u001a\u00020\u000b8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00198\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u001dR\u0016\u0010 \u001a\u00020\u00198\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u001bR\u0016\u0010!\u001a\u00020\u00198\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\u001bR\u0016\u0010#\u001a\u00020\"8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010$R\u001e\u0010%\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b%\u0010&\u0012\u0004\b'\u0010\u0005R\u0016\u0010(\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001bR\u0016\u0010)\u001a\u00020\u00128B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u0010\u0014R\u0016\u0010+\u001a\u00020\u00128@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b*\u0010\u0014R\u0016\u0010-\u001a\u00020\u00068T@\u0014X\u0094\u0004¢\u0006\u0006\u001a\u0004\b,\u0010\b¨\u0006/"}, d2 = {"Lkotlinx/coroutines/DefaultExecutor;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/EventLoopImplBase;", "", "acknowledgeShutdownIfNeeded", "()V", "Ljava/lang/Thread;", "createThreadSync", "()Ljava/lang/Thread;", "ensureStarted$kotlinx_coroutines_core", "ensureStarted", "", "timeMillis", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;", "", "notifyStartup", "()Z", "run", "timeout", "shutdown", "(J)V", "", "ACTIVE", "I", "DEFAULT_KEEP_ALIVE", "J", "FRESH", "KEEP_ALIVE_NANOS", "SHUTDOWN_ACK", "SHUTDOWN_REQ", "", "THREAD_NAME", "Ljava/lang/String;", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "debugStatus", "isShutdownRequested", "isThreadPresent$kotlinx_coroutines_core", "isThreadPresent", "getThread", "thread", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/DefaultExecutor.class */
public final class DefaultExecutor extends EventLoopImplBase implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: l */
    private static final long f21149l;

    /* renamed from: m */
    public static final DefaultExecutor f21150m;

    static {
        Long l;
        DefaultExecutor defaultExecutor = new DefaultExecutor();
        f21150m = defaultExecutor;
        EventLoop.m1262d0(defaultExecutor, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException e) {
            l = 1000L;
        }
        f21149l = timeUnit.toNanos(l.longValue());
    }

    private DefaultExecutor() {
    }

    /* renamed from: L0 */
    private final void m1301L0() {
        synchronized (this) {
            if (m1299N0()) {
                debugStatus = 3;
                m1253F0();
                notifyAll();
            }
        }
    }

    /* renamed from: M0 */
    private final Thread m1300M0() {
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

    /* renamed from: N0 */
    private final boolean m1299N0() {
        int i = debugStatus;
        return i == 2 || i == 3;
    }

    /* renamed from: O0 */
    private final boolean m1298O0() {
        synchronized (this) {
            if (m1299N0()) {
                return false;
            }
            debugStatus = 1;
            notifyAll();
            return true;
        }
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    @NotNull
    /* renamed from: o0 */
    protected Thread mo1239o0() {
        Thread thread = _thread;
        if (thread == null) {
            thread = m1300M0();
        }
        return thread;
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.Delay
    @NotNull
    /* renamed from: q */
    public DisposableHandle mo242q(long j, @NotNull Runnable runnable) {
        return m1250I0(j, runnable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [kotlinx.coroutines.TimeSource] */
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
    /* JADX WARN: Unknown variable types count: 6 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.DefaultExecutor.run():void");
    }
}
