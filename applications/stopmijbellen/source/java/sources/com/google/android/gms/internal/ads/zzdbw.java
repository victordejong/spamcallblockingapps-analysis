package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdbw.class */
public final class zzdbw implements zzfwm<zzcdq> {
    public final /* synthetic */ zzdby zza;

    public zzdbw(zzdby zzdbyVar) {
        this.zza = zzdbyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final void zza(Throwable th) {
        zzdjw zzdjwVar;
        zzdjwVar = this.zza.zzf;
        zzdjwVar.zzk(false);
    }

    @Override // com.google.android.gms.internal.ads.zzfwm
    public final /* bridge */ /* synthetic */ void zzb(@NullableDecl zzcdq zzcdqVar) {
        zzdjw zzdjwVar;
        zzdjwVar = this.zza.zzf;
        zzdjwVar.zzk(true);
    }
}
