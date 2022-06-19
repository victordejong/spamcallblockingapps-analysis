package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/i03.class */
public final class i03<V> {

    /* renamed from: a */
    private final boolean f24112a;

    /* renamed from: b */
    private final zzfoj<r03<? extends V>> f24113b;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ i03(boolean z, boolean z2, zzfoj<r03<? extends V>> zzfojVar) {
        this.f24112a = z;
        this.f24113b = z2;
    }

    /* renamed from: a */
    public final <C> r03<C> m14516a(Callable<C> callable, Executor executor) {
        return new yz2(this.f24113b, this.f24112a, executor, callable);
    }
}
