package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chf.class */
public final class chf<T> implements dsi<cha<T>> {

    /* renamed from: a */
    private final dsv<Executor> f45785a;

    /* renamed from: b */
    private final dsv<Set<chb<? extends cgy<T>>>> f45786b;

    private chf(dsv<Executor> dsvVar, dsv<Set<chb<? extends cgy<T>>>> dsvVar2) {
        this.f45785a = dsvVar;
        this.f45786b = dsvVar2;
    }

    /* renamed from: a */
    public static <T> cha<T> m17459a(Executor executor, Set<chb<? extends cgy<T>>> set) {
        return new cha<>(executor, set);
    }

    /* renamed from: a */
    public static <T> chf<T> m17460a(dsv<Executor> dsvVar, dsv<Set<chb<? extends cgy<T>>>> dsvVar2) {
        return new chf<>(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17459a(this.f45785a.mo14005a(), this.f45786b.mo14005a());
    }
}
