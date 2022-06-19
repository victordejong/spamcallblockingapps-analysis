package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfii;
import com.google.android.gms.internal.ads.zzfjl;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzh.class */
public final class zzh implements zzfjl {
    public final /* synthetic */ zzi zza;

    public zzh(zzi zziVar) {
        this.zza = zziVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfjl
    public final void zza(int i, long j) {
        zzfii zzfiiVar;
        zzfiiVar = this.zza.zzi;
        zzfiiVar.zzb(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzfjl
    public final void zzb(int i, long j, String str) {
        zzfii zzfiiVar;
        zzfiiVar = this.zza.zzi;
        zzfiiVar.zzf(i, System.currentTimeMillis() - j, str);
    }
}
