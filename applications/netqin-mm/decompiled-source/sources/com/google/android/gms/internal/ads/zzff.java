package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzff.class */
public final class zzff extends zzcu<Integer, Long> {

    /* renamed from: b */
    public Long f28187b;

    /* renamed from: c */
    public Long f28188c;

    /* renamed from: d */
    public Long f28189d;

    /* renamed from: e */
    public Long f28190e;

    public zzff() {
    }

    public zzff(String str) {
        m12144b(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    /* renamed from: a */
    public final HashMap<Integer, Long> mo12145a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f28187b);
        hashMap.put(1, this.f28188c);
        hashMap.put(2, this.f28189d);
        hashMap.put(3, this.f28190e);
        return hashMap;
    }

    /* renamed from: b */
    public final void m12144b(String str) {
        HashMap a = zzcu.m13859a(str);
        if (a != null) {
            this.f28187b = (Long) a.get(0);
            this.f28188c = (Long) a.get(1);
            this.f28189d = (Long) a.get(2);
            this.f28190e = (Long) a.get(3);
        }
    }
}
