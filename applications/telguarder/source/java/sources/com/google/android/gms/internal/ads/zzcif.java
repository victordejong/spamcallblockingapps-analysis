package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcif.class */
public final class zzcif implements zzbsh {
    private final zzbeb zzdjd;

    public zzcif(zzbeb zzbebVar) {
        this.zzdjd = !((Boolean) zzwr.zzqr().zzd(zzabp.zzcpe)).booleanValue() ? null : zzbebVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcb(Context context) {
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            zzbebVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcc(Context context) {
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            zzbebVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsh
    public final void zzcd(Context context) {
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            zzbebVar.destroy();
        }
    }
}
