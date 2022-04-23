package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlinx.coroutines.EventLoopImplBase;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b \u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u000f\u0010\nJ\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0004¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\u000e\u001a\u00020\u000b8$@$X¤\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/EventLoopImplPlatform;", "Lkotlinx/coroutines/EventLoop;", "", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "", "reschedule", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V", "unpark", "()V", "Ljava/lang/Thread;", "getThread", "()Ljava/lang/Thread;", "thread", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/EventLoopImplPlatform.class */
public abstract class EventLoopImplPlatform extends EventLoop {
    @NotNull
    /* renamed from: o0 */
    protected abstract Thread mo1239o0();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: u0 */
    public final void m1238u0(long j, @NotNull EventLoopImplBase.DelayedTask delayedTask) {
        if (DebugKt.m1308a()) {
            if (!(this != DefaultExecutor.f21150m)) {
                throw new AssertionError();
            }
        }
        DefaultExecutor.f21150m.m1252G0(j, delayedTask);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: v0 */
    public final void m1237v0() {
        Thread o0 = mo1239o0();
        if (Thread.currentThread() != o0) {
            TimeSource a = TimeSourceKt.m1093a();
            if (a != null) {
                a.m1097d(o0);
            } else {
                LockSupport.unpark(o0);
            }
        }
    }
}
