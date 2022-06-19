package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzgu.class */
public abstract class zzgu extends zzgr {
    private boolean zza;

    public zzgu(zzga zzgaVar) {
        super(zzgaVar);
        this.zzx.zza(this);
    }

    /* renamed from: f_ */
    protected void mo3771f_() {
    }

    public final void zzaa() {
        if (zzz()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzab() {
        if (!this.zza) {
            if (zze()) {
                return;
            }
            this.zzx.zzaf();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzac() {
        if (!this.zza) {
            mo3771f_();
            this.zzx.zzaf();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    protected abstract boolean zze();

    public final boolean zzz() {
        return this.zza;
    }
}
