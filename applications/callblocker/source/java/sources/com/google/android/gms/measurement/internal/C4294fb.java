package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.google.android.gms.measurement.internal.fb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fb.class */
public final class C4294fb<V> extends FutureTask<V> implements Comparable<C4294fb<V>> {

    /* renamed from: a */
    final boolean f18841a;

    /* renamed from: b */
    private final long f18842b;

    /* renamed from: c */
    private final String f18843c;

    /* renamed from: d */
    private final /* synthetic */ C4293fa f18844d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4294fb(C4293fa c4293fa, Runnable runnable, boolean z, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        this.f18844d = c4293fa;
        C2662s.m13981a(str);
        atomicLong = C4293fa.f18831j;
        this.f18842b = atomicLong.getAndIncrement();
        this.f18843c = str;
        this.f18841a = false;
        if (this.f18842b == Long.MAX_VALUE) {
            c4293fa.mo4030v().m4655x_().m4654a("Tasks index overflow");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4294fb(C4293fa c4293fa, Callable<V> callable, boolean z, String str) {
        super(callable);
        AtomicLong atomicLong;
        this.f18844d = c4293fa;
        C2662s.m13981a(str);
        atomicLong = C4293fa.f18831j;
        this.f18842b = atomicLong.getAndIncrement();
        this.f18843c = str;
        this.f18841a = z;
        if (this.f18842b == Long.MAX_VALUE) {
            c4293fa.mo4030v().m4655x_().m4654a("Tasks index overflow");
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        int i = -1;
        C4294fb c4294fb = (C4294fb) obj;
        if (this.f18841a != c4294fb.f18841a) {
            if (!this.f18841a) {
                i = 1;
            }
        } else if (this.f18842b >= c4294fb.f18842b) {
            if (this.f18842b > c4294fb.f18842b) {
                i = 1;
            } else {
                this.f18844d.mo4030v().m4664c().m4653a("Two tasks share the same index. index", Long.valueOf(this.f18842b));
                i = 0;
            }
        }
        return i;
    }

    @Override // java.util.concurrent.FutureTask
    protected final void setException(Throwable th) {
        this.f18844d.mo4030v().m4655x_().m4653a(this.f18843c, th);
        if (th instanceof C4291ez) {
            Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
        }
        super.setException(th);
    }
}
