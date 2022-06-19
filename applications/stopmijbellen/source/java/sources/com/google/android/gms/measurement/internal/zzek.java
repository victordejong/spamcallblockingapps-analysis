package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzek.class */
public final class zzek {
    public final /* synthetic */ zzem zza;
    private final int zzb;
    private final boolean zzc;
    private final boolean zzd;

    public zzek(zzem zzemVar, int i, boolean z, boolean z2) {
        this.zza = zzemVar;
        this.zzb = i;
        this.zzc = z;
        this.zzd = z2;
    }

    public final void zza(String str) {
        this.zza.zzm(this.zzb, this.zzc, this.zzd, str, null, null, null);
    }

    public final void zzb(String str, Object obj) {
        this.zza.zzm(this.zzb, this.zzc, this.zzd, str, obj, null, null);
    }

    public final void zzc(String str, Object obj, Object obj2) {
        this.zza.zzm(this.zzb, this.zzc, this.zzd, str, obj, obj2, null);
    }

    public final void zzd(String str, Object obj, Object obj2, Object obj3) {
        this.zza.zzm(this.zzb, this.zzc, this.zzd, str, obj, obj2, obj3);
    }
}
