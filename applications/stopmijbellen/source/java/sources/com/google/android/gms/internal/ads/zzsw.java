package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsw.class */
public final class zzsw {
    public final int zza;
    public final zzin[] zzb;
    public final zzcr zzc;
    public final Object zzd;
    public final zzsb[] zze;

    public zzsw(zzin[] zzinVarArr, zzsb[] zzsbVarArr, zzcr zzcrVar, Object obj, byte[] bArr) {
        this.zzb = zzinVarArr;
        this.zze = (zzsb[]) zzsbVarArr.clone();
        this.zzc = zzcrVar;
        this.zzd = obj;
        this.zza = zzinVarArr.length;
    }

    public final boolean zza(zzsw zzswVar, int i) {
        return zzswVar != null && zzfn.zzP(this.zzb[i], zzswVar.zzb[i]) && zzfn.zzP(this.zze[i], zzswVar.zze[i]);
    }

    public final boolean zzb(int i) {
        return this.zzb[i] != null;
    }
}
