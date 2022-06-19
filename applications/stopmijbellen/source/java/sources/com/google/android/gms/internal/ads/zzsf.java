package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsf.class */
public final class zzsf implements Comparable<zzsf> {
    private final boolean zza;
    private final boolean zzb;

    public zzsf(zzab zzabVar, int i) {
        this.zza = 1 != (zzabVar.zze & 1) ? false : true;
        this.zzb = zzsp.zzh(i, false);
    }

    /* renamed from: zza */
    public final int compareTo(zzsf zzsfVar) {
        return zzfsh.zzj().zzd(this.zzb, zzsfVar.zzb).zzd(this.zza, zzsfVar.zza).zza();
    }
}
