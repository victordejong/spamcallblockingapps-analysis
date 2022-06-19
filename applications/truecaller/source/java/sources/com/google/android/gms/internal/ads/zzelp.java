package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelp.class */
public final class zzelp implements zzelx<zzdji> {
    public final /* synthetic */ zzelq zza;

    public zzelp(zzelq zzelqVar) {
        this.zza = zzelqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final void zza() {
        synchronized (this.zza) {
            this.zza.zzg = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelx
    public final /* bridge */ /* synthetic */ void zzb(zzdji zzdjiVar) {
        zzdji zzdjiVar2;
        zzdji zzdjiVar3 = zzdjiVar;
        synchronized (this.zza) {
            this.zza.zzg = zzdjiVar3;
            zzdjiVar2 = this.zza.zzg;
            zzdjiVar2.zzS();
        }
    }
}
