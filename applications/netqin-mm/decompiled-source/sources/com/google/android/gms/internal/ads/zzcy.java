package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcy.class */
public final class zzcy extends zzcu<Integer, Object> {

    /* renamed from: b */
    public String f26730b;

    /* renamed from: c */
    public long f26731c;

    /* renamed from: d */
    public String f26732d;

    /* renamed from: e */
    public String f26733e;

    /* renamed from: f */
    public String f26734f;

    public zzcy() {
        this.f26730b = "E";
        this.f26731c = -1L;
        this.f26732d = "E";
        this.f26733e = "E";
        this.f26734f = "E";
    }

    public zzcy(String str) {
        this();
        m13798b(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    /* renamed from: a */
    public final HashMap<Integer, Object> mo12145a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f26730b);
        hashMap.put(4, this.f26734f);
        hashMap.put(3, this.f26733e);
        hashMap.put(2, this.f26732d);
        hashMap.put(1, Long.valueOf(this.f26731c));
        return hashMap;
    }

    /* renamed from: b */
    public final void m13798b(String str) {
        HashMap a = zzcu.m13859a(str);
        if (a != null) {
            String str2 = "E";
            this.f26730b = a.get(0) == null ? "E" : (String) a.get(0);
            this.f26731c = a.get(1) == null ? -1L : ((Long) a.get(1)).longValue();
            this.f26732d = a.get(2) == null ? "E" : (String) a.get(2);
            this.f26733e = a.get(3) == null ? "E" : (String) a.get(3);
            if (a.get(4) != null) {
                str2 = (String) a.get(4);
            }
            this.f26734f = str2;
        }
    }
}
