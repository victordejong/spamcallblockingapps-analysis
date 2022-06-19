package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dij.class */
public final class dij extends bjk<Integer, Object> {

    /* renamed from: a */
    public Long f14401a;

    /* renamed from: b */
    public Boolean f14402b;

    /* renamed from: c */
    public Boolean f14403c;

    public dij() {
    }

    public dij(String str) {
        mo9374a(str);
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    protected final HashMap<Integer, Object> mo9375a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f14401a);
        hashMap.put(1, this.f14402b);
        hashMap.put(2, this.f14403c);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    public final void mo9374a(String str) {
        HashMap b = m11853b(str);
        if (b != null) {
            this.f14401a = (Long) b.get(0);
            this.f14402b = (Boolean) b.get(1);
            this.f14403c = (Boolean) b.get(2);
        }
    }
}
