package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsx.class */
public final class zzdsx implements zzdbx {
    private final zzcml zza;

    public zzdsx(zzcml zzcmlVar) {
        this.zza = zzcmlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zza(Context context) {
        zzcml zzcmlVar = this.zza;
        if (zzcmlVar != null) {
            zzcmlVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zzb(Context context) {
        zzcml zzcmlVar = this.zza;
        if (zzcmlVar != null) {
            zzcmlVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbx
    public final void zzbo(Context context) {
        zzcml zzcmlVar = this.zza;
        if (zzcmlVar != null) {
            zzcmlVar.destroy();
        }
    }
}
