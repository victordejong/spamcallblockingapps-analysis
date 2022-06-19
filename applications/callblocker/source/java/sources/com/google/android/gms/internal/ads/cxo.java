package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cxo.class */
public final class cxo extends bjk<Integer, Long> {

    /* renamed from: a */
    public long f13789a;

    /* renamed from: b */
    public long f13790b;

    public cxo() {
        this.f13789a = -1L;
        this.f13790b = -1L;
    }

    public cxo(String str) {
        this();
        mo9374a(str);
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    protected final HashMap<Integer, Long> mo9375a() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, Long.valueOf(this.f13789a));
        hashMap.put(1, Long.valueOf(this.f13790b));
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.bjk
    /* renamed from: a */
    public final void mo9374a(String str) {
        HashMap b = m11853b(str);
        if (b != null) {
            this.f13789a = ((Long) b.get(0)).longValue();
            this.f13790b = ((Long) b.get(1)).longValue();
        }
    }
}
