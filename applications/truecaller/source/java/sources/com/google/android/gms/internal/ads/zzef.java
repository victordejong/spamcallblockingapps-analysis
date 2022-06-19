package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzef.class */
public final class zzef {
    private final zzde[] zza;
    private final zzet zzb;
    private final zzev zzc;

    public zzef(zzde... zzdeVarArr) {
        zzet zzetVar = new zzet();
        zzev zzevVar = new zzev();
        this.zza = r0;
        System.arraycopy(zzdeVarArr, 0, r0, 0, 0);
        this.zzb = zzetVar;
        this.zzc = zzevVar;
        zzde[] zzdeVarArr2 = {zzetVar, zzevVar};
    }

    public final zzde[] zza() {
        return this.zza;
    }

    public final zzahf zzb(zzahf zzahfVar) {
        this.zzc.zzi(zzahfVar.zzb);
        this.zzc.zzj(zzahfVar.zzc);
        return zzahfVar;
    }

    public final boolean zzc(boolean z) {
        this.zzb.zzo(z);
        return z;
    }

    public final long zzd(long j) {
        return this.zzc.zzk(j);
    }

    public final long zze() {
        return this.zzb.zzp();
    }
}
