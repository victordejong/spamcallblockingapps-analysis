package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dst.class */
public final class dst<T> {

    /* renamed from: a */
    private final List<dsv<T>> f47523a;

    /* renamed from: b */
    private final List<dsv<Collection<T>>> f47524b;

    /* JADX INFO: Access modifiers changed from: private */
    public dst(int i, int i2) {
        this.f47523a = dsg.m15777a(i);
        this.f47524b = dsg.m15777a(i2);
    }

    /* renamed from: a */
    public final dsr<T> m15761a() {
        return new dsr<>(this.f47523a, this.f47524b);
    }

    /* renamed from: a */
    public final dst<T> m15760a(dsv<? extends T> dsvVar) {
        this.f47523a.add(dsvVar);
        return this;
    }

    /* renamed from: b */
    public final dst<T> m15759b(dsv<? extends Collection<? extends T>> dsvVar) {
        this.f47524b.add(dsvVar);
        return this;
    }
}
