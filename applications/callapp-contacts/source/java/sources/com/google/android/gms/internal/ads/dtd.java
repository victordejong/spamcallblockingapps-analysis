package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dtd.class */
public final class dtd extends bvn<Integer, Long> {

    /* renamed from: a */
    public Long f47539a;

    /* renamed from: b */
    public Long f47540b;

    public dtd() {
    }

    public dtd(String str) {
        mo15707a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo15708a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f47539a);
        hashMap.put(1, this.f47540b);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    public final void mo15707a(String str) {
        HashMap b = m17602b(str);
        if (b != null) {
            this.f47539a = (Long) b.get(0);
            this.f47540b = (Long) b.get(1);
        }
    }
}
