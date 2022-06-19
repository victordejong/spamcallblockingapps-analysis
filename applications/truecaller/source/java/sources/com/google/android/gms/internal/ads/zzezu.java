package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzezu.class */
public final class zzezu implements zzelx<zzdrw> {
    public final /* synthetic */ zzezw zza;

    public zzezu(zzezw zzezwVar) {
        this.zza = zzezwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzd = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final /* bridge */ /* synthetic */ void zzb(zzdrw zzdrwVar) {
        zzdrw zzdrwVar2;
        zzdrw zzdrwVar3 = zzdrwVar;
        synchronized (this.zza) {
            this.zza.zzd = zzdrwVar3;
            zzdrwVar2 = this.zza.zzd;
            zzdrwVar2.zzS();
        }
    }
}
