package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yy2.class */
final class yy2 extends uy2 {

    /* renamed from: a */
    final AtomicReferenceFieldUpdater<ez2, Thread> f32714a;

    /* renamed from: b */
    final AtomicReferenceFieldUpdater<ez2, ez2> f32715b;

    /* renamed from: c */
    final AtomicReferenceFieldUpdater<fz2, ez2> f32716c;

    /* renamed from: d */
    final AtomicReferenceFieldUpdater<fz2, wy2> f32717d;

    /* renamed from: e */
    final AtomicReferenceFieldUpdater<fz2, Object> f32718e;

    public yy2(AtomicReferenceFieldUpdater<ez2, Thread> atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater<ez2, ez2> atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater<fz2, ez2> atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater<fz2, wy2> atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater<fz2, Object> atomicReferenceFieldUpdater5) {
        super(null);
        this.f32714a = atomicReferenceFieldUpdater;
        this.f32715b = atomicReferenceFieldUpdater2;
        this.f32716c = atomicReferenceFieldUpdater3;
        this.f32717d = atomicReferenceFieldUpdater4;
        this.f32718e = atomicReferenceFieldUpdater5;
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: a */
    public final void mo8654a(ez2 ez2Var, Thread thread) {
        this.f32714a.lazySet(ez2Var, thread);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: b */
    public final void mo8653b(ez2 ez2Var, ez2 ez2Var2) {
        this.f32715b.lazySet(ez2Var, ez2Var2);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: c */
    public final boolean mo8652c(fz2<?> fz2Var, ez2 ez2Var, ez2 ez2Var2) {
        return this.f32716c.compareAndSet(fz2Var, ez2Var, ez2Var2);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: d */
    public final boolean mo8651d(fz2<?> fz2Var, wy2 wy2Var, wy2 wy2Var2) {
        return this.f32717d.compareAndSet(fz2Var, wy2Var, wy2Var2);
    }

    @Override // com.google.android.gms.internal.ads.uy2
    /* renamed from: e */
    public final boolean mo8650e(fz2<?> fz2Var, Object obj, Object obj2) {
        return this.f32718e.compareAndSet(fz2Var, obj, obj2);
    }
}
