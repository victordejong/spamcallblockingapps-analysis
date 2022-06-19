package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzke.class */
public abstract class zzke extends zzkd {
    private boolean zza;

    public zzke(zzkn zzknVar) {
        super(zzknVar);
        this.zzf.zzL();
    }

    public final boolean zzY() {
        return this.zza;
    }

    public final void zzZ() {
        if (zzY()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public abstract boolean zzaA();

    public final void zzaa() {
        if (!this.zza) {
            zzaA();
            this.zzf.zzM();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }
}
