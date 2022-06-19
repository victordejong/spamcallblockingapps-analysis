package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.C2391a;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/arh.class */
public final class arh implements dht<arf> {

    /* renamed from: a */
    private final dig<Set<auq<C2391a>>> f10238a;

    private arh(dig<Set<auq<C2391a>>> digVar) {
        this.f10238a = digVar;
    }

    /* renamed from: a */
    public static arh m12795a(dig<Set<auq<C2391a>>> digVar) {
        return new arh(digVar);
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return new arf(this.f10238a.mo9430a());
    }
}
