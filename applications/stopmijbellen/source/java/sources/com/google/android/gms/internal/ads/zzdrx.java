package com.google.android.gms.internal.ads;

import p226s.C4251a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrx.class */
public final class zzdrx implements zzdfl {
    private final zzdqc zza;
    private final zzdqh zzb;

    public zzdrx(zzdqc zzdqcVar, zzdqh zzdqhVar) {
        this.zza = zzdqcVar;
        this.zzb = zzdqhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdfl
    public final void zzl() {
        if (this.zza.zzu() == null) {
            return;
        }
        zzcop zzq = this.zza.zzq();
        zzcop zzr = this.zza.zzr();
        if (zzq != null) {
            zzr = zzq;
        } else if (zzr == null) {
            zzr = null;
        }
        if (!this.zzb.zzc() || zzr == null) {
            return;
        }
        zzr.zzd("onSdkImpression", new C4251a());
    }
}
