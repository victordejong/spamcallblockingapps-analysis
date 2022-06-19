package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dmg.class */
public final class dmg extends bvn<Integer, Long> {

    /* renamed from: a */
    public long f47213a;

    /* renamed from: b */
    public long f47214b;

    public dmg() {
        this.f47213a = -1L;
        this.f47214b = -1L;
    }

    public dmg(String str) {
        this();
        mo15707a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo15708a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.f47213a));
        hashMap.put(1, Long.valueOf(this.f47214b));
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    public final void mo15707a(String str) {
        HashMap b = m17602b(str);
        if (b != null) {
            this.f47213a = ((Long) b.get(0)).longValue();
            this.f47214b = ((Long) b.get(1)).longValue();
        }
    }
}
