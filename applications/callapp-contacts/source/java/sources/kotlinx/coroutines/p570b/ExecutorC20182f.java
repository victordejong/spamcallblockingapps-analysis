package kotlinx.coroutines.p570b;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.AbstractC20205bk;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\b\u0002\u0018��2\u00020+2\u00020,2\u00020\u001fB)\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0016¢\u0006\u0004\b\r\u0010\fJ#\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\n\u0010\u0012\u001a\u00060\u0010j\u0002`\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0013\u001a\u00020\n2\n\u0010\u0012\u001a\u00060\u0010j\u0002`\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0013\u0010\u0017J#\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u000e2\n\u0010\u0012\u001a\u00060\u0010j\u0002`\u0011H\u0016¢\u0006\u0004\b\u0018\u0010\u0014J\u001b\u0010\u001a\u001a\u00020\n2\n\u0010\u0019\u001a\u00060\u0010j\u0002`\u0011H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u0016\u0010\u0002\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0002\u0010\u001eR\u0016\u0010\"\u001a\u00020\u001f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b \u0010!R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010#R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010$R \u0010&\u001a\f\u0012\b\u0012\u00060\u0010j\u0002`\u00110%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u001c\u0010\u0007\u001a\u00020\u00038\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010$\u001a\u0004\b(\u0010)¨\u0006*"}, m4298d2 = {"Lkotlinx/coroutines/scheduling/LimitingDispatcher;", "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "dispatcher", "", "parallelism", "", "name", "taskMode", "<init>", "(Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;ILjava/lang/String;I)V", "", "afterTask", "()V", EventConstants.CLOSE, "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "", "tailDispatch", "(Ljava/lang/Runnable;Z)V", "dispatchYield", "command", "execute", "(Ljava/lang/Runnable;)V", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "executor", "Ljava/lang/String;", "I", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "queue", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "getTaskMode", "()I", "kotlinx-coroutines-core", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/scheduling/TaskContext;"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.b.f */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/f.class */
final class ExecutorC20182f extends AbstractC20205bk implements Executor, AbstractC20187k {

    /* renamed from: e */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f66614e = AtomicIntegerFieldUpdater.newUpdater(ExecutorC20182f.class, "inFlightTasks");

    /* renamed from: f */
    private final C20180d f66616f;

    /* renamed from: g */
    private final int f66617g;

    /* renamed from: h */
    private final String f66618h;

    /* renamed from: i */
    private final int f66619i;

    /* renamed from: b */
    private final ConcurrentLinkedQueue<Runnable> f66615b = new ConcurrentLinkedQueue<>();
    private volatile /* synthetic */ int inFlightTasks = 0;

    public ExecutorC20182f(C20180d c20180d, int i, String str, int i2) {
        this.f66616f = c20180d;
        this.f66617g = i;
        this.f66618h = str;
        this.f66619i = i2;
    }

    /* renamed from: a */
    private final void m1030a(Runnable runnable, boolean z) {
        Runnable poll;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f66614e;
            if (atomicIntegerFieldUpdater.incrementAndGet(this) <= this.f66617g) {
                this.f66616f.m1031a(runnable, this, z);
                return;
            }
            this.f66615b.add(runnable);
            if (atomicIntegerFieldUpdater.decrementAndGet(this) >= this.f66617g) {
                return;
            }
            poll = this.f66615b.poll();
            runnable = poll;
        } while (poll != null);
    }

    @Override // kotlinx.coroutines.AbstractC20205bk
    /* renamed from: a */
    public final Executor mo765a() {
        return this;
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: a */
    public final void mo763a(AbstractC18335f abstractC18335f, Runnable runnable) {
        m1030a(runnable, false);
    }

    @Override // kotlinx.coroutines.p570b.AbstractC20187k
    /* renamed from: c */
    public final void mo1028c() {
        Runnable poll = this.f66615b.poll();
        if (poll != null) {
            this.f66616f.m1031a(poll, this, true);
            return;
        }
        f66614e.decrementAndGet(this);
        Runnable poll2 = this.f66615b.poll();
        if (poll2 == null) {
            return;
        }
        m1030a(poll2, true);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // kotlinx.coroutines.p570b.AbstractC20187k
    /* renamed from: d */
    public final int mo1027d() {
        return this.f66619i;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        m1030a(runnable, false);
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    public final String toString() {
        String str = this.f66618h;
        String str2 = str;
        if (str == null) {
            str2 = super.toString() + "[dispatcher = " + this.f66616f + ']';
        }
        return str2;
    }
}
