package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y.class */
public final class C7164y extends o24<Integer, Long> {

    /* renamed from: b */
    public long f32369b;

    /* renamed from: c */
    public long f32370c;

    public C7164y(String str) {
        this.f32369b = -1L;
        this.f32370c = -1L;
        HashMap m12751b = o24.m12751b(str);
        if (m12751b != null) {
            this.f32369b = ((Long) m12751b.get(0)).longValue();
            this.f32370c = ((Long) m12751b.get(1)).longValue();
        }
    }

    @Override // com.google.android.gms.internal.ads.o24
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo9008a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.f32369b));
        hashMap.put(1, Long.valueOf(this.f32370c));
        return hashMap;
    }
}
