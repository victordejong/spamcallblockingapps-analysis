package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjl.class */
public final class zzjl implements Comparable<zzjl> {
    private final boolean zza;
    private final boolean zzb;

    public zzjl(zzafv zzafvVar, int i) {
        this.zza = 1 != (zzafvVar.zzd & 1) ? false : true;
        this.zzb = zzjt.zzf(i, false);
    }

    /* renamed from: zza */
    public final int compareTo(zzjl zzjlVar) {
        return zzfny.zzj().zzd(this.zzb, zzjlVar.zzb).zzd(this.zza, zzjlVar.zza).zze();
    }
}
