package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u0019\b��\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u0005¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u001c\u0010\t\u001a\u00020\b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u000e\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Lkotlinx/coroutines/ThreadPoolDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcherBase;", "", "close", "()V", "", "toString", "()Ljava/lang/String;", "Ljava/util/concurrent/Executor;", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "", "nThreads", "I", "name", "Ljava/lang/String;", "Ljava/util/concurrent/atomic/AtomicInteger;", "threadNo", "Ljava/util/concurrent/atomic/AtomicInteger;", "<init>", "(ILjava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/ThreadPoolDispatcher.class */
public final class ThreadPoolDispatcher extends ExecutorCoroutineDispatcherBase {

    /* renamed from: h */
    private final AtomicInteger f21245h;
    @NotNull

    /* renamed from: i */
    private final Executor f21246i;

    /* renamed from: j */
    private final int f21247j;

    /* renamed from: k */
    private final String f21248k;

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    /* renamed from: W */
    public Executor mo348W() {
        return this.f21246i;
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcherBase, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor W = mo348W();
        if (W != null) {
            ((ExecutorService) W).shutdown();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.util.concurrent.ExecutorService");
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcherBase, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return "ThreadPoolDispatcher[" + this.f21247j + ", " + this.f21248k + ']';
    }
}
