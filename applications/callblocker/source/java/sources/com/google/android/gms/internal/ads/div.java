package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/div.class */
public final class div extends bjk<Integer, Long> {

    /* renamed from: a */
    public Long f14458a;

    /* renamed from: b */
    public Long f14459b;

    /* renamed from: c */
    public Long f14460c;

    /* renamed from: d */
    public Long f14461d;

    public div() {
    }

    public div(String str) {
        mo9374a(str);
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo9375a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f14458a);
        hashMap.put(1, this.f14459b);
        hashMap.put(2, this.f14460c);
        hashMap.put(3, this.f14461d);
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    public final void mo9374a(String str) {
        HashMap b = m11853b(str);
        if (b != null) {
            this.f14458a = (Long) b.get(0);
            this.f14459b = (Long) b.get(1);
            this.f14460c = (Long) b.get(2);
            this.f14461d = (Long) b.get(3);
        }
    }
}
