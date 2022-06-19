package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzeg.class */
public final class zzeg {
    final /* synthetic */ zzei zza;
    private final int zzb;
    private final boolean zzc;
    private final boolean zzd;

    public zzeg(zzei zzeiVar, int i, boolean z, boolean z2) {
        this.zza = zzeiVar;
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
