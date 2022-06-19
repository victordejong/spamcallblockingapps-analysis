package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzkb.class */
public abstract class zzkb extends zzkc {
    private boolean zzb;

    public zzkb(zzke zzkeVar) {
        super(zzkeVar);
        this.zza.zza(this);
    }

    public final boolean zzaj() {
        return this.zzb;
    }

    public final void zzak() {
        if (zzaj()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzal() {
        if (!this.zzb) {
            zze();
            this.zza.zzp();
            this.zzb = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean zze();
}
