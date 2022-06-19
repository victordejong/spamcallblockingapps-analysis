package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsj.class */
public final class zzdsj implements zzfpv<zzago, Bitmap> {
    public final /* synthetic */ double zza;
    public final /* synthetic */ boolean zzb;
    public final /* synthetic */ zzdsk zzc;

    public zzdsj(zzdsk zzdskVar, double d, boolean z) {
        this.zzc = zzdskVar;
        this.zza = d;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzfpv
    public final /* bridge */ /* synthetic */ Bitmap apply(zzago zzagoVar) {
        return zzdsk.zza(this.zzc, zzagoVar.zzb, this.zza, this.zzb);
    }
}
