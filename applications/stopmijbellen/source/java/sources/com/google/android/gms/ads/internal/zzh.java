package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfmh;
import com.google.android.gms.internal.ads.zzfnk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzh.class */
public final class zzh implements zzfnk {
    public final /* synthetic */ zzi zza;

    public zzh(zzi zziVar) {
        this.zza = zziVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zza(int i, long j) {
        zzfmh zzfmhVar;
        zzfmhVar = this.zza.zzi;
        zzfmhVar.zzd(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfnk
    public final void zzb(int i, long j, String str) {
        zzfmh zzfmhVar;
        zzfmhVar = this.zza.zzi;
        zzfmhVar.zze(i, System.currentTimeMillis() - j, str);
    }
}
