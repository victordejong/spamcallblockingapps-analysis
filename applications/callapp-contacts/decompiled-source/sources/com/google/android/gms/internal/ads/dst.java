package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dst.class */
public final class dst<T> {

    /* renamed from: a  reason: collision with root package name */
    private final List<dsv<T>> f27167a;

    /* renamed from: b  reason: collision with root package name */
    private final List<dsv<Collection<T>>> f27168b;

    private dst(int i, int i2) {
        this.f27167a = dsg.a(i);
        this.f27168b = dsg.a(i2);
    }

    public final dsr<T> a() {
        return new dsr<>(this.f27167a, this.f27168b);
    }

    public final dst<T> a(dsv<? extends T> dsvVar) {
        this.f27167a.add(dsvVar);
        return this;
    }

    public final dst<T> b(dsv<? extends Collection<? extends T>> dsvVar) {
        this.f27168b.add(dsvVar);
        return this;
    }
}
