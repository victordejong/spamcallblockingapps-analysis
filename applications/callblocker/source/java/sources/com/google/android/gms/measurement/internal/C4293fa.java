package com.google.android.gms.measurement.internal;

import android.content.Context;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.util.AbstractC2708e;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.fa */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fa.class */
public final class C4293fa extends AbstractC4317fy {

    /* renamed from: j */
    private static final AtomicLong f18831j = new AtomicLong(Long.MIN_VALUE);

    /* renamed from: a */
    private C4297fe f18832a;

    /* renamed from: b */
    private C4297fe f18833b;

    /* renamed from: i */
    private volatile boolean f18840i;

    /* renamed from: g */
    private final Object f18838g = new Object();

    /* renamed from: h */
    private final Semaphore f18839h = new Semaphore(2);

    /* renamed from: c */
    private final PriorityBlockingQueue<C4294fb<?>> f18834c = new PriorityBlockingQueue<>();

    /* renamed from: d */
    private final BlockingQueue<C4294fb<?>> f18835d = new LinkedBlockingQueue();

    /* renamed from: e */
    private final Thread.UncaughtExceptionHandler f18836e = new C4295fc(this, "Thread death: Uncaught exception on worker thread");

    /* renamed from: f */
    private final Thread.UncaughtExceptionHandler f18837f = new C4295fc(this, "Thread death: Uncaught exception on network thread");

    public C4293fa(C4296fd c4296fd) {
        super(c4296fd);
    }

    /* renamed from: a */
    private final void m4588a(C4294fb<?> c4294fb) {
        synchronized (this.f18838g) {
            this.f18834c.add(c4294fb);
            if (this.f18832a == null) {
                this.f18832a = new C4297fe(this, "Measurement Worker", this.f18834c);
                this.f18832a.setUncaughtExceptionHandler(this.f18836e);
                this.f18832a.start();
            } else {
                this.f18832a.m4534a();
            }
        }
    }

    /* renamed from: a */
    public final <T> T m4585a(AtomicReference<T> atomicReference, long j, String str, Runnable runnable) {
        T t;
        synchronized (atomicReference) {
            mo4031u().m4587a(runnable);
            try {
                atomicReference.wait(j);
            } catch (InterruptedException e) {
                C4266ea m4662e = mo4030v().m4662e();
                String valueOf = String.valueOf(str);
                m4662e.m4654a(valueOf.length() != 0 ? "Interrupted waiting for ".concat(valueOf) : new String("Interrupted waiting for "));
                t = null;
            }
        }
        T t2 = atomicReference.get();
        if (t2 == null) {
            C4266ea m4662e2 = mo4030v().m4662e();
            String valueOf2 = String.valueOf(str);
            m4662e2.m4654a(valueOf2.length() != 0 ? "Timed out waiting for ".concat(valueOf2) : new String("Timed out waiting for "));
        }
        t = t2;
        return t;
    }

    /* renamed from: a */
    public final <V> Future<V> m4586a(Callable<V> callable) {
        m4445A();
        C2662s.m13981a(callable);
        C4294fb<?> c4294fb = new C4294fb<>(this, (Callable<?>) callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f18832a) {
            if (!this.f18834c.isEmpty()) {
                mo4030v().m4662e().m4654a("Callable skipped the worker queue.");
            }
            c4294fb.run();
        } else {
            m4588a(c4294fb);
        }
        return c4294fb;
    }

    /* renamed from: a */
    public final void m4587a(Runnable runnable) {
        m4445A();
        C2662s.m13981a(runnable);
        m4588a(new C4294fb<>(this, runnable, false, "Task exception on worker thread"));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4317fy
    /* renamed from: a */
    protected final boolean mo4046a() {
        return false;
    }

    /* renamed from: b */
    public final <V> Future<V> m4581b(Callable<V> callable) {
        m4445A();
        C2662s.m13981a(callable);
        C4294fb<?> c4294fb = new C4294fb<>(this, (Callable<?>) callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f18832a) {
            c4294fb.run();
        } else {
            m4588a(c4294fb);
        }
        return c4294fb;
    }

    /* renamed from: b */
    public final void m4582b(Runnable runnable) {
        m4445A();
        C2662s.m13981a(runnable);
        C4294fb<?> c4294fb = new C4294fb<>(this, runnable, false, "Task exception on network thread");
        synchronized (this.f18838g) {
            this.f18835d.add(c4294fb);
            if (this.f18833b == null) {
                this.f18833b = new C4297fe(this, "Measurement Network", this.f18835d);
                this.f18833b.setUncaughtExceptionHandler(this.f18837f);
                this.f18833b.start();
            } else {
                this.f18833b.m4534a();
            }
        }
    }

    /* renamed from: c */
    public final boolean m4580c() {
        return Thread.currentThread() == this.f18832a;
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: l */
    public final /* bridge */ /* synthetic */ void mo4040l() {
        super.mo4040l();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: m */
    public final /* bridge */ /* synthetic */ void mo4039m() {
        super.mo4039m();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: n */
    public final void mo4038n() {
        if (Thread.currentThread() != this.f18833b) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: o */
    public final void mo4037o() {
        if (Thread.currentThread() != this.f18832a) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: p */
    public final /* bridge */ /* synthetic */ C4444l mo4036p() {
        return super.mo4036p();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: q */
    public final /* bridge */ /* synthetic */ AbstractC2708e mo4035q() {
        return super.mo4035q();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: r */
    public final /* bridge */ /* synthetic */ Context mo4034r() {
        return super.mo4034r();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: s */
    public final /* bridge */ /* synthetic */ C4261dw mo4033s() {
        return super.mo4033s();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: t */
    public final /* bridge */ /* synthetic */ C4424jw mo4032t() {
        return super.mo4032t();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: u */
    public final /* bridge */ /* synthetic */ C4293fa mo4031u() {
        return super.mo4031u();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: v */
    public final /* bridge */ /* synthetic */ C4263dy mo4030v() {
        return super.mo4030v();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: w */
    public final /* bridge */ /* synthetic */ C4277el mo4029w() {
        return super.mo4029w();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz
    /* renamed from: x */
    public final /* bridge */ /* synthetic */ C4184b mo4027x() {
        return super.mo4027x();
    }

    @Override // com.google.android.gms.measurement.internal.C4318fz, com.google.android.gms.measurement.internal.AbstractC4321gb
    /* renamed from: y */
    public final /* bridge */ /* synthetic */ C4439kk mo4026y() {
        return super.mo4026y();
    }
}
