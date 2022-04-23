package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzet.class */
public final class zzet extends zzcu<Integer, Object> {

    /* renamed from: b */
    public Long f28152b;

    /* renamed from: c */
    public Boolean f28153c;

    /* renamed from: d */
    public Boolean f28154d;

    public zzet() {
    }

    public zzet(String str) {
        m12179b(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    /* renamed from: a */
    public final HashMap<Integer, Object> mo12145a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f28152b);
        hashMap.put(1, this.f28153c);
        hashMap.put(2, this.f28154d);
        return hashMap;
    }

    /* renamed from: b */
    public final void m12179b(String str) {
        HashMap a = zzcu.m13859a(str);
        if (a != null) {
            this.f28152b = (Long) a.get(0);
            this.f28153c = (Boolean) a.get(1);
            this.f28154d = (Boolean) a.get(2);
        }
    }
}
