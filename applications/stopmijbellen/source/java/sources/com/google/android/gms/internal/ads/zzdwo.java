package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwo.class */
public final class zzdwo implements zzdfm {
    private final zzcop zza;

    public zzdwo(zzcop zzcopVar) {
        this.zza = zzcopVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbA(Context context) {
        zzcop zzcopVar = this.zza;
        if (zzcopVar != null) {
            zzcopVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzbB(Context context) {
        zzcop zzcopVar = this.zza;
        if (zzcopVar != null) {
            zzcopVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void zzby(Context context) {
        zzcop zzcopVar = this.zza;
        if (zzcopVar != null) {
            zzcopVar.destroy();
        }
    }
}
