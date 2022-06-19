package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmi.class */
public final class zzmi {
    private final zzlh[] zza;
    private final zzmx zzb;
    private final zzmz zzc;

    public zzmi(zzlh... zzlhVarArr) {
        zzmx zzmxVar = new zzmx();
        zzmz zzmzVar = new zzmz();
        this.zza = r0;
        System.arraycopy(zzlhVarArr, 0, r0, 0, 0);
        this.zzb = zzmxVar;
        this.zzc = zzmzVar;
        zzlh[] zzlhVarArr2 = {zzmxVar, zzmzVar};
    }

    public final long zza(long j) {
        return this.zzc.zzi(j);
    }

    public final long zzb() {
        return this.zzb.zzo();
    }

    public final zzbn zzc(zzbn zzbnVar) {
        this.zzc.zzk(zzbnVar.zzc);
        this.zzc.zzj(zzbnVar.zzd);
        return zzbnVar;
    }

    public final boolean zzd(boolean z) {
        this.zzb.zzp(z);
        return z;
    }

    public final zzlh[] zze() {
        return this.zza;
    }
}
