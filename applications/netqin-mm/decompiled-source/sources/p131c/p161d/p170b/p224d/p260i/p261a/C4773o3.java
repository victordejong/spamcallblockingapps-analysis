package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzm;
import com.google.android.gms.measurement.internal.zzfq;
import com.google.android.gms.measurement.internal.zzfr;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: c.d.b.d.i.a.o3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/o3.class */
public final class C4773o3<V> extends FutureTask<V> implements Comparable<C4773o3<V>> {

    /* renamed from: a */
    public final long f17295a;

    /* renamed from: b */
    public final boolean f17296b;

    /* renamed from: c */
    public final String f17297c;

    /* renamed from: d */
    public final /* synthetic */ zzfr f17298d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4773o3(zzfr zzfrVar, Runnable runnable, boolean z, String str) {
        super(zzm.m9587a().mo9504a(runnable), null);
        AtomicLong atomicLong;
        this.f17298d = zzfrVar;
        Preconditions.m17288a(str);
        atomicLong = zzfr.f29990l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f17295a = andIncrement;
        this.f17297c = str;
        this.f17296b = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzfrVar.mo8789p().m9152q().m9143a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4773o3(zzfr zzfrVar, Callable<V> callable, boolean z, String str) {
        super(zzm.m9587a().mo9503a(callable));
        AtomicLong atomicLong;
        this.f17298d = zzfrVar;
        Preconditions.m17288a(str);
        atomicLong = zzfr.f29990l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f17295a = andIncrement;
        this.f17297c = str;
        this.f17296b = z;
        if (andIncrement == Long.MAX_VALUE) {
            zzfrVar.mo8789p().m9152q().m9143a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        C4773o3 o3Var = (C4773o3) obj;
        boolean z = this.f17296b;
        if (z != o3Var.f17296b) {
            return z ? -1 : 1;
        }
        long j = this.f17295a;
        long j2 = o3Var.f17295a;
        if (j < j2) {
            return -1;
        }
        if (j > j2) {
            return 1;
        }
        this.f17298d.mo8789p().m9151r().m9142a("Two tasks share the same index. index", Long.valueOf(this.f17295a));
        return 0;
    }

    @Override // java.util.concurrent.FutureTask
    public final void setException(Throwable th) {
        this.f17298d.mo8789p().m9152q().m9142a(this.f17297c, th);
        if (th instanceof zzfq) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
