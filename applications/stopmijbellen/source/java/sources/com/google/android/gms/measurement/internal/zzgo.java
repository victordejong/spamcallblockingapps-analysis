package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgo.class */
public abstract class zzgo extends zzgn {
    private boolean zza;

    public zzgo(zzfu zzfuVar) {
        super(zzfuVar);
        this.zzs.zzJ();
    }

    public abstract boolean zza();

    public void zzaz() {
    }

    public final boolean zzu() {
        return this.zza;
    }

    public final void zzv() {
        if (zzu()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzx() {
        if (!this.zza) {
            if (zza()) {
                return;
            }
            this.zzs.zzK();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzy() {
        if (!this.zza) {
            zzaz();
            this.zzs.zzK();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
