package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcle.class */
public final class zzcle extends zzcla {
    public zzcle(zzcjb zzcjbVar) {
        super(zzcjbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final boolean zzd(String str) {
        String zzd = zzcgm.zzd(str);
        zzcjb zzcjbVar = this.zzc.get();
        if (zzcjbVar != null && zzd != null) {
            zzcjbVar.zzu(zzd, this);
        }
        zzcgt.zzi("VideoStreamNoopCache is doing nothing.");
        zzr(str, zzd, "noop", "Noop cache is a noop.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcla
    public final void zzm() {
    }
}
