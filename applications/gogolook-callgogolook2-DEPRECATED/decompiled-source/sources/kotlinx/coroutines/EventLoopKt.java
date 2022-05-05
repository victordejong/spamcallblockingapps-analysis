package kotlinx.coroutines;

import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\u001a\b\u0010��\u001a\u00020\u0001H��\u001a\b\u0010\u0002\u001a\u00020\u0003H\u0007¨\u0006\u0004"}, m815d2 = {"createEventLoop", "Lkotlinx/coroutines/EventLoop;", "processNextEventInCurrentThread", "", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/EventLoopKt.class */
public final class EventLoopKt {
    public static final EventLoop createEventLoop() {
        return new BlockingEventLoop(Thread.currentThread());
    }

    @InternalCoroutinesApi
    public static final long processNextEventInCurrentThread() {
        EventLoop currentOrNull$kotlinx_coroutines_core = ThreadLocalEventLoop.INSTANCE.currentOrNull$kotlinx_coroutines_core();
        return currentOrNull$kotlinx_coroutines_core != null ? currentOrNull$kotlinx_coroutines_core.processNextEvent() : Long.MAX_VALUE;
    }
}
