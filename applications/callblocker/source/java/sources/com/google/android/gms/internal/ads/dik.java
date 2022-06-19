package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dik.class */
public final class dik extends bjk<Integer, Long> {

    /* renamed from: a */
    public Long f14404a;

    /* renamed from: b */
    public Long f14405b;

    public dik() {
    }

    public dik(String str) {
        mo9374a(str);
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo9375a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f14404a);
        hashMap.put(1, this.f14405b);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    public final void mo9374a(String str) {
        HashMap b = m11853b(str);
        if (b != null) {
            this.f14404a = (Long) b.get(0);
            this.f14405b = (Long) b.get(1);
        }
    }
}
