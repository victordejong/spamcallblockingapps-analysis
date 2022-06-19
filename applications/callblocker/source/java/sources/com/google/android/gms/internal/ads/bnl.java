package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bnl.class */
public final class bnl extends bjk<Integer, Object> {

    /* renamed from: a */
    public String f11603a;

    /* renamed from: b */
    public long f11604b;

    /* renamed from: c */
    public String f11605c;

    /* renamed from: d */
    public String f11606d;

    /* renamed from: e */
    public String f11607e;

    public bnl() {
        this.f11603a = "E";
        this.f11604b = -1L;
        this.f11605c = "E";
        this.f11606d = "E";
        this.f11607e = "E";
    }

    public bnl(String str) {
        this();
        mo9374a(str);
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    protected final HashMap<Integer, Object> mo9375a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f11603a);
        hashMap.put(4, this.f11607e);
        hashMap.put(3, this.f11606d);
        hashMap.put(2, this.f11605c);
        hashMap.put(1, Long.valueOf(this.f11604b));
        return hashMap;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    public final void mo9374a(String str) {
        HashMap b = m11853b(str);
        if (b != null) {
            this.f11603a = b.get(0) == null ? "E" : (String) b.get(0);
            this.f11604b = b.get(1) == null ? (char) 65535 : ((Long) b.get(1)).longValue();
            this.f11605c = b.get(2) == null ? "E" : (String) b.get(2);
            this.f11606d = b.get(3) == null ? "E" : (String) b.get(3);
            this.f11607e = b.get(4) == null ? "E" : (String) b.get(4);
        }
    }
}
