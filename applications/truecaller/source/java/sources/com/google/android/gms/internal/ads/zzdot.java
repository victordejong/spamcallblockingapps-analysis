package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdot.class */
public final class zzdot implements zzfln<zzvy, Bitmap> {
    public final /* synthetic */ double zza;
    public final /* synthetic */ boolean zzb;
    public final /* synthetic */ zzdou zzc;

    public zzdot(zzdou zzdouVar, double d, boolean z) {
        this.zzc = zzdouVar;
        this.zza = d;
        this.zzb = z;
    }

    @Override // com.google.android.gms.internal.ads.zzfln
    public final /* bridge */ /* synthetic */ Bitmap apply(zzvy zzvyVar) {
        return zzdou.zzb(this.zzc, zzvyVar.zzb, this.zza, this.zzb);
    }
}
