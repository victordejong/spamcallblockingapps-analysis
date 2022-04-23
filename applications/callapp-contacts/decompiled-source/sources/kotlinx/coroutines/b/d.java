package kotlinx.coroutines.b;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.c.f;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.aq;
import kotlinx.coroutines.bk;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\f\b\u0017\u0018��2\u00020\u0001B%\b\u0016\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001b\b\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\bB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\rH\u0002J\u001c\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001dH\u0016J)\u0010\u001e\u001a\u00020\u00162\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001d2\u0006\u0010\u0019\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H��¢\u0006\u0002\b\"J\u001c\u0010#\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001dH\u0016J\u000e\u0010$\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0003J\r\u0010%\u001a\u00020\u0016H��¢\u0006\u0002\b&J\u0015\u0010'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\nH��¢\u0006\u0002\b)J\b\u0010*\u001a\u00020\u0006H\u0016J\r\u0010+\u001a\u00020\u0016H��¢\u0006\u0002\b,R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006-"}, d2 = {"Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "corePoolSize", "", "maxPoolSize", "schedulerName", "", "(IILjava/lang/String;)V", "(II)V", "idleWorkerKeepAliveNs", "", "(IIJLjava/lang/String;)V", "coroutineScheduler", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "blocking", "Lkotlinx/coroutines/CoroutineDispatcher;", "parallelism", EventConstants.CLOSE, "", "createScheduler", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatchWithContext", "Lkotlinx/coroutines/scheduling/TaskContext;", "tailDispatch", "", "dispatchWithContext$kotlinx_coroutines_core", "dispatchYield", "limited", "restore", "restore$kotlinx_coroutines_core", "shutdown", "timeout", "shutdown$kotlinx_coroutines_core", "toString", "usePrivateScheduler", "usePrivateScheduler$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/d.class */
public class d extends bk {

    /* renamed from: b  reason: collision with root package name */
    private a f38716b;
    private final int e;
    private final int f;
    private final long g;
    private final String h;

    public /* synthetic */ d(int i, int i2) {
        this(i, i2, m.e, null, 8, null);
    }

    public /* synthetic */ d(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? m.f38724c : i, (i3 & 2) != 0 ? m.f38725d : i2);
    }

    public d(int i, int i2, long j, String str) {
        this.e = i;
        this.f = i2;
        this.g = j;
        this.h = str;
        this.f38716b = new a(i, i2, j, str);
    }

    public /* synthetic */ d(int i, int i2, long j, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, j, (i3 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public d(int i, int i2, String str) {
        this(i, i2, m.e, str);
    }

    public /* synthetic */ d(int i, int i2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? m.f38724c : i, (i3 & 2) != 0 ? m.f38725d : i2, (i3 & 4) != 0 ? "DefaultDispatcher" : str);
    }

    @Override // kotlinx.coroutines.bk
    public final Executor a() {
        return this.f38716b;
    }

    public final void a(Runnable runnable, k kVar, boolean z) {
        try {
            this.f38716b.a(runnable, kVar, z);
        } catch (RejectedExecutionException e) {
            aq.f38690b.a(a.a(runnable, kVar));
        }
    }

    @Override // kotlinx.coroutines.af
    public final void a(f fVar, Runnable runnable) {
        try {
            a.a(this.f38716b, runnable);
        } catch (RejectedExecutionException e) {
            aq.f38690b.a(fVar, runnable);
        }
    }

    public void close() {
        this.f38716b.close();
    }

    @Override // kotlinx.coroutines.af
    public String toString() {
        return super.toString() + "[scheduler = " + this.f38716b + ']';
    }
}
