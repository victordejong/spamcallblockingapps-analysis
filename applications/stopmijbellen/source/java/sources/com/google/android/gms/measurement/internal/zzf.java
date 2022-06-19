package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzf.class */
public abstract class zzf extends zze {
    private boolean zza;

    public zzf(zzfu zzfuVar) {
        super(zzfuVar);
        this.zzs.zzJ();
    }

    public final boolean zza() {
        return this.zza;
    }

    public final void zzb() {
        if (zza()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzc() {
        if (!this.zza) {
            if (zze()) {
                return;
            }
            this.zzs.zzK();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzd() {
        if (!this.zza) {
            zzf();
            this.zzs.zzK();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public abstract boolean zze();

    public void zzf() {
    }
}
