package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzez.class */
public final class zzez extends zzcw<Integer, Long> {
    public Long zzyt;
    public Long zzyu;

    public zzez() {
    }

    public zzez(String str) {
        zzam(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcw
    public final void zzam(String str) {
        HashMap zzan = zzan(str);
        if (zzan != null) {
            this.zzyt = (Long) zzan.get(0);
            this.zzyu = (Long) zzan.get(1);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcw
    protected final HashMap<Integer, Long> zzbn() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzyt);
        hashMap.put(1, this.zzyu);
        return hashMap;
    }
}
