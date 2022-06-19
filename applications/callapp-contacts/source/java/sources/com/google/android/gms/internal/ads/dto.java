package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dto.class */
public final class dto extends bvn<Integer, Long> {

    /* renamed from: a */
    public Long f47595a;

    /* renamed from: b */
    public Long f47596b;

    /* renamed from: c */
    public Long f47597c;

    /* renamed from: d */
    public Long f47598d;

    public dto() {
    }

    public dto(String str) {
        mo15707a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo15708a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f47595a);
        hashMap.put(1, this.f47596b);
        hashMap.put(2, this.f47597c);
        hashMap.put(3, this.f47598d);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    public final void mo15707a(String str) {
        HashMap b = m17602b(str);
        if (b != null) {
            this.f47595a = (Long) b.get(0);
            this.f47596b = (Long) b.get(1);
            this.f47597c = (Long) b.get(2);
            this.f47598d = (Long) b.get(3);
        }
    }
}
