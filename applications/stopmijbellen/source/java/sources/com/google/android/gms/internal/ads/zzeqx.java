package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeqx.class */
public final class zzeqx implements zzevm<Bundle> {
    private final zzbfo zza;
    private final zzcjf zzb;
    private final boolean zzc;

    public zzeqx(zzbfo zzbfoVar, zzcjf zzcjfVar, boolean z) {
        this.zza = zzbfoVar;
        this.zzb = zzcjfVar;
        this.zzc = z;
    }

    @Override // com.google.android.gms.internal.ads.zzevm
    public final /* bridge */ /* synthetic */ void zza(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (this.zzb.zzc >= ((Integer) zzbgq.zzc().zzb(zzblj.zzdJ)).intValue()) {
            bundle2.putString("app_open_version", "2");
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdK)).booleanValue()) {
            bundle2.putBoolean("app_switched", this.zzc);
        }
        zzbfo zzbfoVar = this.zza;
        if (zzbfoVar != null) {
            int i = zzbfoVar.zza;
            if (i == 1) {
                bundle2.putString("avo", "p");
            } else if (i != 2) {
            } else {
                bundle2.putString("avo", "l");
            }
        }
    }
}
