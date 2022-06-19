package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qz2.class */
final class qz2 extends oz2 {

    /* renamed from: a */
    final AtomicReferenceFieldUpdater<sz2<?>, Set<Throwable>> f28694a;

    /* renamed from: b */
    final AtomicIntegerFieldUpdater<sz2<?>> f28695b;

    public qz2(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
        super(null);
        this.f28694a = atomicReferenceFieldUpdater;
        this.f28695b = atomicIntegerFieldUpdater;
    }

    @Override // com.google.android.gms.internal.ads.oz2
    /* renamed from: a */
    public final void mo11203a(sz2<?> sz2Var, Set<Throwable> set, Set<Throwable> set2) {
        this.f28694a.compareAndSet(sz2Var, null, set2);
    }

    @Override // com.google.android.gms.internal.ads.oz2
    /* renamed from: b */
    public final int mo11202b(sz2<?> sz2Var) {
        return this.f28695b.decrementAndGet(sz2Var);
    }
}
