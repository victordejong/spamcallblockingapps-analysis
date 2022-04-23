package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* renamed from: com.google.android.gms.measurement.internal.n4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n4.class */
final class C2301n4<V> extends FutureTask<V> implements Comparable<C2301n4<V>> {

    /* renamed from: b */
    private final long f10308b;

    /* renamed from: c */
    final boolean f10309c;

    /* renamed from: d */
    private final String f10310d;

    /* renamed from: e */
    final /* synthetic */ p4 f10311e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C2301n4(p4 p4Var, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        this.f10311e = p4Var;
        C1581h.m8347h(str);
        long andIncrement = p4.C().getAndIncrement();
        this.f10308b = andIncrement;
        this.f10310d = str;
        this.f10309c = z;
        if (andIncrement == Long.MAX_VALUE) {
            ((m5) p4Var).a.t().m().m3876a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C2301n4(p4 p4Var, Callable<V> callable, boolean z, String str) {
        super(callable);
        this.f10311e = p4Var;
        C1581h.m8347h("Task exception on worker thread");
        long andIncrement = p4.C().getAndIncrement();
        this.f10308b = andIncrement;
        this.f10310d = "Task exception on worker thread";
        this.f10309c = z;
        if (andIncrement == Long.MAX_VALUE) {
            ((m5) p4Var).a.t().m().m3876a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        C2301n4 n4Var = (C2301n4) obj;
        boolean z = this.f10309c;
        int i = 1;
        if (z == n4Var.f10309c) {
            long j = this.f10308b;
            long j2 = n4Var.f10308b;
            if (j < j2) {
                i = -1;
            } else if (j <= j2) {
                ((m5) this.f10311e).a.t().n().m3875b("Two tasks share the same index. index", Long.valueOf(this.f10308b));
                return 0;
            }
        } else if (z) {
            return -1;
        }
        return i;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        ((m5) this.f10311e).a.t().m().m3875b(this.f10310d, th);
        super.setException(th);
    }
}
