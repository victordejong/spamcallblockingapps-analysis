package com.google.android.gms.internal.ads;

import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfi.class */
public final class zzfi extends zzcw<Integer, Long> {
    public Long zzaaa;
    public Long zzaab;
    public Long zzzr;
    public Long zzzs;
    public Long zzzt;
    public Long zzzu;
    public Long zzzv;
    public Long zzzw;
    public Long zzzx;
    public Long zzzy;
    public Long zzzz;

    public zzfi() {
    }

    public zzfi(String str) {
        zzam(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcw
    public final void zzam(String str) {
        HashMap zzan = zzan(str);
        if (zzan != null) {
            this.zzzr = (Long) zzan.get(0);
            this.zzzs = (Long) zzan.get(1);
            this.zzzt = (Long) zzan.get(2);
            this.zzzu = (Long) zzan.get(3);
            this.zzzv = (Long) zzan.get(4);
            this.zzzw = (Long) zzan.get(5);
            this.zzzx = (Long) zzan.get(6);
            this.zzzy = (Long) zzan.get(7);
            this.zzzz = (Long) zzan.get(8);
            this.zzaaa = (Long) zzan.get(9);
            this.zzaab = (Long) zzan.get(10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcw
    protected final HashMap<Integer, Long> zzbn() {
        HashMap<Integer, Long> hashMap = new HashMap<>();
        hashMap.put(0, this.zzzr);
        hashMap.put(1, this.zzzs);
        hashMap.put(2, this.zzzt);
        hashMap.put(3, this.zzzu);
        hashMap.put(4, this.zzzv);
        hashMap.put(5, this.zzzw);
        hashMap.put(6, this.zzzx);
        hashMap.put(7, this.zzzy);
        hashMap.put(8, this.zzzz);
        hashMap.put(9, this.zzaaa);
        hashMap.put(10, this.zzaab);
        return hashMap;
    }
}
