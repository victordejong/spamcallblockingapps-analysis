package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.l0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l0.class */
public final class C6684l0 extends o24<Integer, Long> {

    /* renamed from: b */
    public Long f25906b;

    /* renamed from: c */
    public Long f25907c;

    public C6684l0(String str) {
        HashMap m12751b = o24.m12751b(str);
        if (m12751b != null) {
            this.f25906b = (Long) m12751b.get(0);
            this.f25907c = (Long) m12751b.get(1);
        }
    }

    @Override // com.google.android.gms.internal.ads.o24
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo9008a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f25906b);
        hashMap.put(1, this.f25907c);
        return hashMap;
    }
}
