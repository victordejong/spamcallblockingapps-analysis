package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzahh.class */
public final class zzahh {
    private final zzalc zza = new zzalc();

    public final zzahh zza(int i) {
        this.zza.zza(i);
        return this;
    }

    public final zzahh zzb(int i, boolean z) {
        zzalc zzalcVar = this.zza;
        if (z) {
            zzalcVar.zza(i);
        }
        return this;
    }

    public final zzahh zzc(int... iArr) {
        zzalc zzalcVar = this.zza;
        for (int i : iArr) {
            zzalcVar.zza(i);
        }
        return this;
    }

    public final zzahh zzd(zzahi zzahiVar) {
        zzale zzaleVar;
        zzalc zzalcVar = this.zza;
        zzaleVar = zzahiVar.zzc;
        for (int i = 0; i < zzaleVar.zza(); i++) {
            zzalcVar.zza(zzaleVar.zzb(i));
        }
        return this;
    }

    public final zzahi zze() {
        return new zzahi(this.zza.zzb(), null);
    }
}
