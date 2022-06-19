package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cal.class */
public final class cal<T> implements dht<cag<T>> {

    /* renamed from: a */
    private final dig<Executor> f12620a;

    /* renamed from: b */
    private final dig<Set<cah<? extends cae<T>>>> f12621b;

    private cal(dig<Executor> digVar, dig<Set<cah<? extends cae<T>>>> digVar2) {
        this.f12620a = digVar;
        this.f12621b = digVar2;
    }

    /* renamed from: a */
    public static <T> cag<T> m11509a(Executor executor, Set<cah<? extends cae<T>>> set) {
        return new cag<>(executor, set);
    }

    /* renamed from: a */
    public static <T> cal<T> m11510a(dig<Executor> digVar, dig<Set<cah<? extends cae<T>>>> digVar2) {
        return new cal<>(digVar, digVar2);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m11509a(this.f12620a.mo9430a(), this.f12621b.mo9430a());
    }
}
