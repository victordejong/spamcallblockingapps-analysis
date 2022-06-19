package kotlinx.coroutines.p570b;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p521c.AbstractC18335f;
import kotlinx.coroutines.AbstractC20205bk;
import kotlinx.coroutines.RunnableC20161aq;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\f\b\u0017\u0018��2\u00020\u0001B%\b\u0016\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001b\b\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\bB'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bJ\u0010\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0003J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\rH\u0002J\u001c\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001dH\u0016J)\u0010\u001e\u001a\u00020\u00162\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001d2\u0006\u0010\u0019\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H��¢\u0006\u0002\b\"J\u001c\u0010#\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\n\u0010\u001b\u001a\u00060\u001cj\u0002`\u001dH\u0016J\u000e\u0010$\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0003J\r\u0010%\u001a\u00020\u0016H��¢\u0006\u0002\b&J\u0015\u0010'\u001a\u00020\u00162\u0006\u0010(\u001a\u00020\nH��¢\u0006\u0002\b)J\b\u0010*\u001a\u00020\u0006H\u0016J\r\u0010+\u001a\u00020\u0016H��¢\u0006\u0002\b,R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006-"}, m4298d2 = {"Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "corePoolSize", "", "maxPoolSize", "schedulerName", "", "(IILjava/lang/String;)V", "(II)V", "idleWorkerKeepAliveNs", "", "(IIJLjava/lang/String;)V", "coroutineScheduler", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "executor", "Ljava/util/concurrent/Executor;", "getExecutor", "()Ljava/util/concurrent/Executor;", "blocking", "Lkotlinx/coroutines/CoroutineDispatcher;", "parallelism", EventConstants.CLOSE, "", "createScheduler", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatchWithContext", "Lkotlinx/coroutines/scheduling/TaskContext;", "tailDispatch", "", "dispatchWithContext$kotlinx_coroutines_core", "dispatchYield", "limited", "restore", "restore$kotlinx_coroutines_core", "shutdown", "timeout", "shutdown$kotlinx_coroutines_core", "toString", "usePrivateScheduler", "usePrivateScheduler$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, m4297k = 1, m4296mv = {1, 4, 2})
/* renamed from: kotlinx.coroutines.b.d */
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/b/d.class */
public class C20180d extends AbstractC20205bk {

    /* renamed from: b */
    private ExecutorC20174a f66609b;

    /* renamed from: e */
    private final int f66610e;

    /* renamed from: f */
    private final int f66611f;

    /* renamed from: g */
    private final long f66612g;

    /* renamed from: h */
    private final String f66613h;

    public /* synthetic */ C20180d(int i, int i2) {
        this(i, i2, C20189m.f66630e, null, 8, null);
    }

    public /* synthetic */ C20180d(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? C20189m.f66628c : i, (i3 & 2) != 0 ? C20189m.f66629d : i2);
    }

    public C20180d(int i, int i2, long j, String str) {
        this.f66610e = i;
        this.f66611f = i2;
        this.f66612g = j;
        this.f66613h = str;
        this.f66609b = new ExecutorC20174a(i, i2, j, str);
    }

    public /* synthetic */ C20180d(int i, int i2, long j, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, j, (i3 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public C20180d(int i, int i2, String str) {
        this(i, i2, C20189m.f66630e, str);
    }

    public /* synthetic */ C20180d(int i, int i2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? C20189m.f66628c : i, (i3 & 2) != 0 ? C20189m.f66629d : i2, (i3 & 4) != 0 ? "DefaultDispatcher" : str);
    }

    @Override // kotlinx.coroutines.AbstractC20205bk
    /* renamed from: a */
    public final Executor mo765a() {
        return this.f66609b;
    }

    /* renamed from: a */
    public final void m1031a(Runnable runnable, AbstractC20187k abstractC20187k, boolean z) {
        try {
            this.f66609b.m1055a(runnable, abstractC20187k, z);
        } catch (RejectedExecutionException e) {
            RunnableC20161aq.f66567b.m1004a(ExecutorC20174a.m1056a(runnable, abstractC20187k));
        }
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    /* renamed from: a */
    public final void mo763a(AbstractC18335f abstractC18335f, Runnable runnable) {
        try {
            ExecutorC20174a.m1051a(this.f66609b, runnable);
        } catch (RejectedExecutionException e) {
            RunnableC20161aq.f66567b.mo763a(abstractC18335f, runnable);
        }
    }

    public void close() {
        this.f66609b.close();
    }

    @Override // kotlinx.coroutines.AbstractC20140af
    public String toString() {
        return super.toString() + "[scheduler = " + this.f66609b + ']';
    }
}
