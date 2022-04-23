package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwm.class */
public final class bwm extends bvn<Integer, Object> {

    /* renamed from: a  reason: collision with root package name */
    public String f25276a;

    /* renamed from: b  reason: collision with root package name */
    public long f25277b;

    /* renamed from: c  reason: collision with root package name */
    public String f25278c;

    /* renamed from: d  reason: collision with root package name */
    public String f25279d;
    public String e;

    public bwm() {
        this.f25276a = "E";
        this.f25277b = -1L;
        this.f25278c = "E";
        this.f25279d = "E";
        this.e = "E";
    }

    public bwm(String str) {
        this();
        a(str);
    }

    @Override // com.google.android.gms.internal.ads.bvn
    protected final HashMap<Integer, Object> a() {
        HashMap<Integer, Object> hashMap = new HashMap<>();
        hashMap.put(0, this.f25276a);
        hashMap.put(4, this.e);
        hashMap.put(3, this.f25279d);
        hashMap.put(2, this.f25278c);
        hashMap.put(1, Long.valueOf(this.f25277b));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.bvn
    public final void a(String str) {
        HashMap b2 = b(str);
        if (b2 != null) {
            String str2 = "E";
            this.f25276a = b2.get(0) == null ? "E" : (String) b2.get(0);
            this.f25277b = b2.get(1) == null ? -1L : ((Long) b2.get(1)).longValue();
            this.f25278c = b2.get(2) == null ? "E" : (String) b2.get(2);
            this.f25279d = b2.get(3) == null ? "E" : (String) b2.get(3);
            if (b2.get(4) != null) {
                str2 = (String) b2.get(4);
            }
            this.e = str2;
        }
    }
}
