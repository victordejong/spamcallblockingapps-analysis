package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbx.class */
public final class zzdbx implements zzfwm<Void> {
    public final /* synthetic */ zzdby zza;

    public zzdbx(zzdby zzdbyVar) {
        this.zza = zzdbyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzdjw zzdjwVar;
        zzdjwVar = this.zza.zzf;
        zzdjwVar.zzh(false);
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl Void r4) {
        zzdjw zzdjwVar;
        zzdjwVar = this.zza.zzf;
        zzdjwVar.zzh(true);
    }
}
