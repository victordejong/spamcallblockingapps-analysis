package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chf.class */
public final class chf<T> implements dsi<cha<T>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Executor> f25829a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Set<chb<? extends cgy<T>>>> f25830b;

    private chf(dsv<Executor> dsvVar, dsv<Set<chb<? extends cgy<T>>>> dsvVar2) {
        this.f25829a = dsvVar;
        this.f25830b = dsvVar2;
    }

    public static <T> cha<T> a(Executor executor, Set<chb<? extends cgy<T>>> set) {
        return new cha<>(executor, set);
    }

    public static <T> chf<T> a(dsv<Executor> dsvVar, dsv<Set<chb<? extends cgy<T>>>> dsvVar2) {
        return new chf<>(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f25829a.a(), this.f25830b.a());
    }
}
