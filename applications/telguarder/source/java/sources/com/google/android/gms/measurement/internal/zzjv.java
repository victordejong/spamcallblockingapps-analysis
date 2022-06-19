package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzjv.class */
public abstract class zzjv extends zzju {
    private boolean zzb;

    public zzjv(zzkd zzkdVar) {
        super(zzkdVar);
        this.zza.zzP();
    }

    public final boolean zzW() {
        return this.zzb;
    }

    public final void zzX() {
        if (zzW()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzY() {
        if (!this.zzb) {
            zzaz();
            this.zza.zzQ();
            this.zzb = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean zzaz();
}
