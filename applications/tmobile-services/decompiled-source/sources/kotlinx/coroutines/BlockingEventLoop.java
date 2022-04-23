package kotlinx.coroutines;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b��\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bR\u001c\u0010\u0003\u001a\u00020\u00028\u0014@\u0014X\u0094\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/BlockingEventLoop;", "Lkotlinx/coroutines/EventLoopImplBase;", "Ljava/lang/Thread;", "thread", "Ljava/lang/Thread;", "getThread", "()Ljava/lang/Thread;", "<init>", "(Ljava/lang/Thread;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/BlockingEventLoop.class */
public final class BlockingEventLoop extends EventLoopImplBase {
    @NotNull

    /* renamed from: l */
    private final Thread f21106l;

    public BlockingEventLoop(@NotNull Thread thread) {
        this.f21106l = thread;
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    @NotNull
    /* renamed from: o0 */
    protected Thread mo1239o0() {
        return this.f21106l;
    }
}
