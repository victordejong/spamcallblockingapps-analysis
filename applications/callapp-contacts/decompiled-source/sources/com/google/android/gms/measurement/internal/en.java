package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/en.class */
public final class en<V> extends FutureTask<V> implements Comparable<en<V>> {

    /* renamed from: a  reason: collision with root package name */
    final boolean f29568a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ep f29569b;

    /* renamed from: c  reason: collision with root package name */
    private final long f29570c;

    /* renamed from: d  reason: collision with root package name */
    private final String f29571d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public en(ep epVar, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f29569b = epVar;
        o.a(str);
        atomicLong = ep.j;
        long andIncrement = atomicLong.getAndIncrement();
        this.f29570c = andIncrement;
        this.f29571d = str;
        this.f29568a = z;
        if (andIncrement == Long.MAX_VALUE) {
            epVar.t.c().f29506c.a("Tasks index overflow");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public en(ep epVar, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f29569b = epVar;
        o.a("Task exception on worker thread");
        atomicLong = ep.j;
        long andIncrement = atomicLong.getAndIncrement();
        this.f29570c = andIncrement;
        this.f29571d = "Task exception on worker thread";
        this.f29568a = z;
        if (andIncrement == Long.MAX_VALUE) {
            epVar.t.c().f29506c.a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        en enVar = (en) obj;
        boolean z = this.f29568a;
        int i = 1;
        if (z == enVar.f29568a) {
            int i2 = (this.f29570c > enVar.f29570c ? 1 : (this.f29570c == enVar.f29570c ? 0 : -1));
            if (i2 < 0) {
                i = -1;
            } else if (i2 <= 0) {
                this.f29569b.t.c().f29507d.a("Two tasks share the same index. index", Long.valueOf(this.f29570c));
                return 0;
            }
        } else if (z) {
            return -1;
        }
        return i;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.f29569b.t.c().f29506c.a(this.f29571d, th);
        if ((th instanceof el) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
