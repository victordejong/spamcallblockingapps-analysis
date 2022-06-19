package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.j0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/j0.class */
public final class C6610j0 extends o24<Integer, Object> {

    /* renamed from: b */
    public Long f24737b;

    /* renamed from: c */
    public Boolean f24738c;

    /* renamed from: d */
    public Boolean f24739d;

    public C6610j0(String str) {
        HashMap m12751b = o24.m12751b(str);
        if (m12751b != null) {
            this.f24737b = (Long) m12751b.get(0);
            this.f24738c = (Boolean) m12751b.get(1);
            this.f24739d = (Boolean) m12751b.get(2);
        }
    }

    @Override // com.google.android.gms.internal.ads.o24
    /* renamed from: a */
    protected final HashMap<Integer, Object> mo9008a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f24737b);
        hashMap.put(1, this.f24738c);
        hashMap.put(2, this.f24739d);
        return hashMap;
    }
}
