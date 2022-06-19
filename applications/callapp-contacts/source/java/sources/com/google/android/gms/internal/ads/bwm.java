package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwm.class */
public final class bwm extends bvn<Integer, Object> {

    /* renamed from: a */
    public String f44945a;

    /* renamed from: b */
    public long f44946b;

    /* renamed from: c */
    public String f44947c;

    /* renamed from: d */
    public String f44948d;

    /* renamed from: e */
    public String f44949e;

    public bwm() {
        this.f44945a = "E";
        this.f44946b = -1L;
        this.f44947c = "E";
        this.f44948d = "E";
        this.f44949e = "E";
    }

    public bwm(String str) {
        this();
        mo15707a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    protected final HashMap<Integer, Object> mo15708a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f44945a);
        hashMap.put(4, this.f44949e);
        hashMap.put(3, this.f44948d);
        hashMap.put(2, this.f44947c);
        hashMap.put(1, Long.valueOf(this.f44946b));
        return hashMap;
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    @Override // com.google.android.gms.internal.ads.bvn
    /* renamed from: a */
    public final void mo15707a(String str) {
        HashMap b = m17602b(str);
        if (b != null) {
            this.f44945a = b.get(0) == null ? "E" : (String) b.get(0);
            this.f44946b = b.get(1) == null ? (char) 65535 : ((Long) b.get(1)).longValue();
            this.f44947c = b.get(2) == null ? "E" : (String) b.get(2);
            this.f44948d = b.get(3) == null ? "E" : (String) b.get(3);
            this.f44949e = b.get(4) == null ? "E" : (String) b.get(4);
        }
    }
}
