package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzka.class */
public final class zzka {
    public final int zza;
    public final zzahx[] zzb;
    public final Object zzc;
    public final zzjg[] zzd;

    public zzka(zzahx[] zzahxVarArr, zzjg[] zzjgVarArr, Object obj, byte[] bArr) {
        this.zzb = zzahxVarArr;
        this.zzd = (zzjg[]) zzjgVarArr.clone();
        this.zzc = obj;
        this.zza = zzahxVarArr.length;
    }

    public final boolean zza(int i) {
        return this.zzb[i] != null;
    }

    public final boolean zzb(zzka zzkaVar, int i) {
        return zzkaVar != null && zzamq.zzc(this.zzb[i], zzkaVar.zzb[i]) && zzamq.zzc(this.zzd[i], zzkaVar.zzd[i]);
    }
}
