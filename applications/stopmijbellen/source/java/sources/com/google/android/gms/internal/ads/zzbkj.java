package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdValue;
import com.google.android.gms.ads.OnPaidEventListener;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbkj.class */
public final class zzbkj extends zzbis {
    private final OnPaidEventListener zza;

    public zzbkj(OnPaidEventListener onPaidEventListener) {
        this.zza = onPaidEventListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbit
    public final void zze(zzbfk zzbfkVar) {
        if (this.zza != null) {
            this.zza.onPaidEvent(AdValue.zza(zzbfkVar.zzb, zzbfkVar.zzc, zzbfkVar.zzd));
        }
    }
}
