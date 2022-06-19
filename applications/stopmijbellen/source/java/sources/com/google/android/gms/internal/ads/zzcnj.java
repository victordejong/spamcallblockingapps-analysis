package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnj.class */
public final class zzcnj extends zzcnf {
    public zzcnj(zzclh zzclhVar) {
        super(zzclhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzcnf
    public final boolean zzq(String str) {
        String zze = zzcis.zze(str);
        zzclh zzclhVar = this.zzc.get();
        if (zzclhVar != null && zze != null) {
            zzclhVar.zzv(zze, this);
        }
        zzciz.zzj("VideoStreamNoopCache is doing nothing.");
        zzc(str, zze, "noop", "Noop cache is a noop.");
        return false;
    }
}
