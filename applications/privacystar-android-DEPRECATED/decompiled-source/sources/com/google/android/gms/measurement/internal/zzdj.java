package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdj.class */
public final class zzdj implements Runnable {
    private final /* synthetic */ boolean zzaes;
    private final /* synthetic */ zzcs zzarc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdj(zzcs zzcsVar, boolean z) {
        this.zzarc = zzcsVar;
        this.zzaes = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean isEnabled = this.zzarc.zzadj.isEnabled();
        boolean zzko = this.zzarc.zzadj.zzko();
        this.zzarc.zzadj.zzd(this.zzaes);
        if (zzko == this.zzaes) {
            this.zzarc.zzadj.zzgo().zzjl().zzg("Default data collection state already set to", Boolean.valueOf(this.zzaes));
        }
        if (this.zzarc.zzadj.isEnabled() == isEnabled || this.zzarc.zzadj.isEnabled() != this.zzarc.zzadj.zzko()) {
            this.zzarc.zzadj.zzgo().zzji().zze("Default data collection is different than actual status", Boolean.valueOf(this.zzaes), Boolean.valueOf(isEnabled));
        }
        this.zzarc.zzky();
    }
}
