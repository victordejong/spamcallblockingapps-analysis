package kotlinx.coroutines.scheduling;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B)\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\u0006\u0010\"\u001a\u00020!\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010'\u001a\u00020!¢\u0006\u0004\b*\u0010+J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\u0006J#\u0010\r\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ#\u0010\r\u001a\u00020\u00042\n\u0010\f\u001a\u00060\nj\u0002`\u000b2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\r\u0010\u0011J#\u0010\u0012\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\n\u0010\f\u001a\u00060\nj\u0002`\u000bH\u0016¢\u0006\u0004\b\u0012\u0010\u000eJ\u001b\u0010\u0014\u001a\u00020\u00042\n\u0010\u0013\u001a\u00060\nj\u0002`\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00028V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010\"\u001a\u00020!8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R \u0010%\u001a\f\u0012\b\u0012\u00060\nj\u0002`\u000b0$8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u001c\u0010'\u001a\u00020!8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b'\u0010#\u001a\u0004\b(\u0010)¨\u0006,"}, d2 = {"Lkotlinx/coroutines/scheduling/LimitingDispatcher;", "Lkotlinx/coroutines/scheduling/TaskContext;", "Ljava/util/concurrent/Executor;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "", "afterTask", "()V", "close", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "", "tailDispatch", "(Ljava/lang/Runnable;Z)V", "dispatchYield", "command", "execute", "(Ljava/lang/Runnable;)V", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "dispatcher", "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "getExecutor", "()Ljava/util/concurrent/Executor;", "executor", "name", "Ljava/lang/String;", "", "parallelism", "I", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "queue", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "taskMode", "getTaskMode", "()I", "<init>", "(Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;ILjava/lang/String;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/scheduling/LimitingDispatcher.class */
final class LimitingDispatcher extends ExecutorCoroutineDispatcher implements TaskContext, Executor {

    /* renamed from: l */
    private static final AtomicIntegerFieldUpdater f23996l = AtomicIntegerFieldUpdater.newUpdater(LimitingDispatcher.class, "inFlightTasks");

    /* renamed from: h */
    private final ExperimentalCoroutineDispatcher f23998h;

    /* renamed from: i */
    private final int f23999i;

    /* renamed from: j */
    private final String f24000j;

    /* renamed from: k */
    private final int f24001k;

    /* renamed from: g */
    private final ConcurrentLinkedQueue<Runnable> f23997g = new ConcurrentLinkedQueue<>();
    private volatile int inFlightTasks = 0;

    public LimitingDispatcher(@NotNull ExperimentalCoroutineDispatcher experimentalCoroutineDispatcher, int i, @Nullable String str, int i2) {
        this.f23998h = experimentalCoroutineDispatcher;
        this.f23999i = i;
        this.f24000j = str;
        this.f24001k = i2;
    }

    /* renamed from: X */
    private final void m347X(Runnable runnable, boolean z) {
        while (f23996l.incrementAndGet(this) > this.f23999i) {
            this.f23997g.add(runnable);
            if (f23996l.decrementAndGet(this) < this.f23999i) {
                runnable = this.f23997g.poll();
                if (runnable == null) {
                    return;
                }
            } else {
                return;
            }
        }
        this.f23998h.m350Y(runnable, this, z);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: N */
    public void mo349N(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        m347X(runnable, true);
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    @NotNull
    /* renamed from: W */
    public Executor mo348W() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        m347X(runnable, false);
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    /* renamed from: k */
    public void mo346k() {
        Runnable poll = this.f23997g.poll();
        if (poll != null) {
            this.f23998h.m350Y(poll, this, true);
            return;
        }
        f23996l.decrementAndGet(this);
        Runnable poll2 = this.f23997g.poll();
        if (poll2 != null) {
            m347X(poll2, true);
        }
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    /* renamed from: p */
    public int mo345p() {
        return this.f24001k;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: t */
    public void mo241t(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        m347X(runnable, false);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String str = this.f24000j;
        if (str == null) {
            str = super.toString() + "[dispatcher = " + this.f23998h + ']';
        }
        return str;
    }
}
