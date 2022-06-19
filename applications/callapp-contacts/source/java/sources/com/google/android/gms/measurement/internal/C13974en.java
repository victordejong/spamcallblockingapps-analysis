package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
import java.lang.Thread;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.google.android.gms.measurement.internal.en */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/en.class */
public final class C13974en<V> extends FutureTask<V> implements Comparable<C13974en<V>> {

    /* renamed from: a */
    final boolean f51492a;

    /* renamed from: b */
    final /* synthetic */ C13976ep f51493b;

    /* renamed from: c */
    private final long f51494c;

    /* renamed from: d */
    private final String f51495d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13974en(C13976ep c13976ep, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f51493b = c13976ep;
        C12045o.m19162a(str);
        atomicLong = C13976ep.f51500j;
        long andIncrement = atomicLong.getAndIncrement();
        this.f51494c = andIncrement;
        this.f51495d = str;
        this.f51492a = z;
        if (andIncrement == Long.MAX_VALUE) {
            c13976ep.f51637t.mo11661c().f51395c.m12092a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13974en(C13976ep c13976ep, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f51493b = c13976ep;
        C12045o.m19162a("Task exception on worker thread");
        atomicLong = C13976ep.f51500j;
        long andIncrement = atomicLong.getAndIncrement();
        this.f51494c = andIncrement;
        this.f51495d = "Task exception on worker thread";
        this.f51492a = z;
        if (andIncrement == Long.MAX_VALUE) {
            c13976ep.f51637t.mo11661c().f51395c.m12092a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        C13974en c13974en = (C13974en) obj;
        boolean z = this.f51492a;
        int i = 1;
        if (z == c13974en.f51492a) {
            int i2 = (this.f51494c > c13974en.f51494c ? 1 : (this.f51494c == c13974en.f51494c ? 0 : -1));
            if (i2 < 0) {
                i = -1;
            } else if (i2 <= 0) {
                this.f51493b.f51637t.mo11661c().f51396d.m12091a("Two tasks share the same index. index", Long.valueOf(this.f51494c));
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
        this.f51493b.f51637t.mo11661c().f51395c.m12091a(this.f51495d, th);
        if ((th instanceof C13972el) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
