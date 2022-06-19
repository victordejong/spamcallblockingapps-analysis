package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzgf.class */
public abstract class zzgf extends zzge {
    private boolean zza;

    public zzgf(zzfl zzflVar) {
        super(zzflVar);
        this.zzx.zzJ();
    }

    protected abstract boolean zza();

    protected void zzay() {
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
            this.zzx.zzK();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzy() {
        if (!this.zza) {
            zzay();
            this.zzx.zzK();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
