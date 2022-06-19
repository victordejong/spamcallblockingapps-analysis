package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zza;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdc.class */
public final class zzbdc extends zza {
    final zzbbo zzeix;
    private final String zzekh;
    private final String[] zzeki;
    final zzbdd zzepm;

    public zzbdc(zzbbo zzbboVar, zzbdd zzbddVar, String str, String[] strArr) {
        this.zzeix = zzbboVar;
        this.zzepm = zzbddVar;
        this.zzekh = str;
        this.zzeki = strArr;
        zzr.zzln().zza(this);
    }

    @Override // com.google.android.gms.ads.internal.util.zza
    public final void zzwe() {
        try {
            this.zzepm.zze(this.zzekh, this.zzeki);
            zzj.zzeen.post(new zzbdb(this));
        } catch (Throwable th) {
            zzj.zzeen.post(new zzbdb(this));
            throw th;
        }
    }
}
