package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtc.class */
public final class dtc extends bvn<Integer, Object> {

    /* renamed from: a */
    public Long f47536a;

    /* renamed from: b */
    public Boolean f47537b;

    /* renamed from: c */
    public Boolean f47538c;

    public dtc() {
    }

    public dtc(String str) {
        mo15707a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    protected final HashMap<Integer, Object> mo15708a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f47536a);
        hashMap.put(1, this.f47537b);
        hashMap.put(2, this.f47538c);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    public final void mo15707a(String str) {
        HashMap b = m17602b(str);
        if (b != null) {
            this.f47536a = (Long) b.get(0);
            this.f47537b = (Boolean) b.get(1);
            this.f47538c = (Boolean) b.get(2);
        }
    }
}
