package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.google.android.gms.measurement.internal.n4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/n4.class */
public final class C7803n4<V> extends FutureTask<V> implements Comparable<C7803n4<V>> {

    /* renamed from: d */
    private final long f35482d;

    /* renamed from: e */
    final boolean f35483e;

    /* renamed from: f */
    private final String f35484f;

    /* renamed from: g */
    final /* synthetic */ C7825p4 f35485g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7803n4(C7825p4 c7825p4, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f35485g = c7825p4;
        C6155o.m17018j(str);
        atomicLong = C7825p4.f35573c;
        long andIncrement = atomicLong.getAndIncrement();
        this.f35482d = andIncrement;
        this.f35484f = str;
        this.f35483e = z;
        if (andIncrement == Long.MAX_VALUE) {
            c7825p4.f35460a.mo6047C().m6195m().m6216a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7803n4(C7825p4 c7825p4, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f35485g = c7825p4;
        C6155o.m17018j("Task exception on worker thread");
        atomicLong = C7825p4.f35573c;
        long andIncrement = atomicLong.getAndIncrement();
        this.f35482d = andIncrement;
        this.f35484f = "Task exception on worker thread";
        this.f35483e = z;
        if (andIncrement == Long.MAX_VALUE) {
            c7825p4.f35460a.mo6047C().m6195m().m6216a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        C7803n4 c7803n4 = (C7803n4) obj;
        boolean z = this.f35483e;
        int i = 1;
        if (z == c7803n4.f35483e) {
            int i2 = (this.f35482d > c7803n4.f35482d ? 1 : (this.f35482d == c7803n4.f35482d ? 0 : -1));
            if (i2 < 0) {
                i = -1;
            } else if (i2 <= 0) {
                this.f35485g.f35460a.mo6047C().m6194n().m6215b("Two tasks share the same index. index", Long.valueOf(this.f35482d));
                return 0;
            }
        } else if (z) {
            return -1;
        }
        return i;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.f35485g.f35460a.mo6047C().m6195m().m6215b(this.f35484f, th);
        super.setException(th);
    }
}
