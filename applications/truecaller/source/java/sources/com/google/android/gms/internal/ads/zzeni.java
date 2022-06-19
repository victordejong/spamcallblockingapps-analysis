package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeni.class */
public final class zzeni implements zzerx<Bundle> {
    private final zzbdr zza;
    private final zzcgz zzb;
    private final boolean zzc;

    public zzeni(zzbdr zzbdrVar, zzcgz zzcgzVar, boolean z) {
        this.zza = zzbdrVar;
        this.zzb = zzcgzVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.ads.zzerx
    public final /* bridge */ /* synthetic */ void zzf(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.zzb.zzc >= ((Integer) zzbet.zzc().zzc(zzbjl.zzdC)).intValue()) {
            bundle2.putString("app_open_version", "2");
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdD)).booleanValue()) {
            bundle2.putBoolean("app_switched", this.zzc);
        }
        zzbdr zzbdrVar = this.zza;
        if (zzbdrVar != null) {
            int i = zzbdrVar.zza;
            if (i == 1) {
                bundle2.putString("avo", "p");
            } else if (i != 2) {
            } else {
                bundle2.putString("avo", "l");
            }
        }
    }
}
