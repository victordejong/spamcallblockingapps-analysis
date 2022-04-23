package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzey.class */
public final class zzey extends zzcu<Integer, Long> {

    /* renamed from: b */
    public Long f28174b;

    /* renamed from: c */
    public Long f28175c;

    public zzey() {
    }

    public zzey(String str) {
        m12147b(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    /* renamed from: a */
    public final HashMap<Integer, Long> mo12145a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.f28174b);
        hashMap.put(1, this.f28175c);
        return hashMap;
    }

    /* renamed from: b */
    public final void m12147b(String str) {
        HashMap a = zzcu.m13859a(str);
        if (a != null) {
            this.f28174b = (Long) a.get(0);
            this.f28175c = (Long) a.get(1);
        }
    }
}
