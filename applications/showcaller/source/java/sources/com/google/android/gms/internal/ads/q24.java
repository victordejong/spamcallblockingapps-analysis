package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q24.class */
public final class q24 extends o24<Integer, Object> {

    /* renamed from: b */
    public String f28300b;

    /* renamed from: c */
    public long f28301c;

    /* renamed from: d */
    public String f28302d;

    /* renamed from: e */
    public String f28303e;

    /* renamed from: f */
    public String f28304f;

    public q24() {
        this.f28300b = "E";
        this.f28301c = -1L;
        this.f28302d = "E";
        this.f28303e = "E";
        this.f28304f = "E";
    }

    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    public q24(String str) {
        this.f28300b = "E";
        char c = 65535;
        this.f28301c = -1L;
        this.f28302d = "E";
        this.f28303e = "E";
        this.f28304f = "E";
        HashMap m12751b = o24.m12751b(str);
        if (m12751b != null) {
            this.f28300b = m12751b.get(0) == null ? "E" : (String) m12751b.get(0);
            this.f28301c = m12751b.get(1) != null ? ((Long) m12751b.get(1)).longValue() : c;
            this.f28302d = m12751b.get(2) == null ? "E" : (String) m12751b.get(2);
            this.f28303e = m12751b.get(3) == null ? "E" : (String) m12751b.get(3);
            this.f28304f = m12751b.get(4) == null ? "E" : (String) m12751b.get(4);
        }
    }

    @Override // com.google.android.gms.internal.ads.o24
    /* renamed from: a */
    protected final HashMap<Integer, Object> mo9008a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f28300b);
        hashMap.put(4, this.f28304f);
        hashMap.put(3, this.f28303e);
        hashMap.put(2, this.f28302d);
        hashMap.put(1, Long.valueOf(this.f28301c));
        return hashMap;
    }
}
