package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zze.class */
public abstract class zze extends zzf {
    private boolean zza;

    public zze(zzga zzgaVar) {
        super(zzgaVar);
        this.zzx.zza(this);
    }

    protected void zzaa() {
    }

    public final boolean zzv() {
        return this.zza;
    }

    public final void zzw() {
        if (zzv()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzx() {
        if (!this.zza) {
            if (zzz()) {
                return;
            }
            this.zzx.zzaf();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzy() {
        if (!this.zza) {
            zzaa();
            this.zzx.zzaf();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean zzz();
}
