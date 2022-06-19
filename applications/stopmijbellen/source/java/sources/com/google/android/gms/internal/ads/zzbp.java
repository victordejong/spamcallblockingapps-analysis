package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbp.class */
public final class zzbp {
    private final zzu zza = new zzu();

    public final zzbp zza(int i) {
        this.zza.zza(i);
        return this;
    }

    public final zzbp zzb(zzbr zzbrVar) {
        zzw zzwVar;
        zzu zzuVar = this.zza;
        zzwVar = zzbrVar.zzc;
        for (int i = 0; i < zzwVar.zzb(); i++) {
            zzuVar.zza(zzwVar.zza(i));
        }
        return this;
    }

    public final zzbp zzc(int... iArr) {
        zzu zzuVar = this.zza;
        for (int i : iArr) {
            zzuVar.zza(i);
        }
        return this;
    }

    public final zzbp zzd(int i, boolean z) {
        zzu zzuVar = this.zza;
        if (z) {
            zzuVar.zza(i);
        }
        return this;
    }

    public final zzbr zze() {
        return new zzbr(this.zza.zzb(), null);
    }
}
