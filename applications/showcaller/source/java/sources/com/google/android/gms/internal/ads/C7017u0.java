package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.u0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/u0.class */
public final class C7017u0 extends o24<Integer, Long> {

    /* renamed from: b */
    public Long f30448b;

    /* renamed from: c */
    public Long f30449c;

    /* renamed from: d */
    public Long f30450d;

    /* renamed from: e */
    public Long f30451e;

    public C7017u0(String str) {
        HashMap m12751b = o24.m12751b(str);
        if (m12751b != null) {
            this.f30448b = (Long) m12751b.get(0);
            this.f30449c = (Long) m12751b.get(1);
            this.f30450d = (Long) m12751b.get(2);
            this.f30451e = (Long) m12751b.get(3);
        }
    }

    @Override // com.google.android.gms.internal.ads.o24
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo9008a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f30448b);
        hashMap.put(1, this.f30449c);
        hashMap.put(2, this.f30450d);
        hashMap.put(3, this.f30451e);
        return hashMap;
    }
}
