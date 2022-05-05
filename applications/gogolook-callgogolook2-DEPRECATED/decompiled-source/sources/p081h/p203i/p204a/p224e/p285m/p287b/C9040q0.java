package p081h.p203i.p204a.p224e.p285m.p287b;

import androidx.annotation.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.m.b.q0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/q0.class */
public final class C9040q0<V> extends FutureTask<V> implements Comparable<C9040q0> {

    /* renamed from: a */
    public final long f20568a;

    /* renamed from: b */
    public final boolean f20569b;

    /* renamed from: c */
    public final String f20570c;

    /* renamed from: d */
    public final /* synthetic */ C9028o0 f20571d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9040q0(C9028o0 o0Var, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f20571d = o0Var;
        C7021t.m21290a(str);
        atomicLong = C9028o0.f20531l;
        this.f20568a = atomicLong.getAndIncrement();
        this.f20570c = str;
        this.f20569b = false;
        if (this.f20568a == Long.MAX_VALUE) {
            o0Var.mo16178c().m16375s().m16338a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C9040q0(C9028o0 o0Var, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f20571d = o0Var;
        C7021t.m21290a(str);
        atomicLong = C9028o0.f20531l;
        this.f20568a = atomicLong.getAndIncrement();
        this.f20570c = str;
        this.f20569b = z;
        if (this.f20568a == Long.MAX_VALUE) {
            o0Var.mo16178c().m16375s().m16338a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(@NonNull C9040q0 q0Var) {
        C9040q0 q0Var2 = q0Var;
        boolean z = this.f20569b;
        if (z != q0Var2.f20569b) {
            return z ? -1 : 1;
        }
        long j = this.f20568a;
        long j2 = q0Var2.f20568a;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.f20571d.mo16178c().m16374t().m16337a("Two tasks share the same index. index", Long.valueOf(this.f20568a));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        this.f20571d.mo16178c().m16375s().m16337a(this.f20570c, th);
        super.setException(th);
    }
}
