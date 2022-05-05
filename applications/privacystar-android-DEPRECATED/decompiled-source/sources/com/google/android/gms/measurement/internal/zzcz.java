package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcz.class */
public final class zzcz implements Runnable {
    private final /* synthetic */ zzcs zzarc;
    private final /* synthetic */ long zzari;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcz(zzcs zzcsVar, long j) {
        this.zzarc = zzcsVar;
        this.zzari = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcs zzcsVar = this.zzarc;
        long j = this.zzari;
        zzcsVar.zzaf();
        zzcsVar.zzgb();
        zzcsVar.zzcl();
        zzcsVar.zzgo().zzjk().zzbx("Resetting analytics data (FE)");
        zzcsVar.zzgj().zzlj();
        if (zzcsVar.zzgq().zzbe(zzcsVar.zzgf().zzal())) {
            zzcsVar.zzgp().zzanj.set(j);
        }
        boolean isEnabled = zzcsVar.zzadj.isEnabled();
        if (!zzcsVar.zzgq().zzhu()) {
            zzcsVar.zzgp().zzi(!isEnabled);
        }
        zzcsVar.zzgg().resetAnalyticsData();
        zzcsVar.zzara = !isEnabled;
        if (this.zzarc.zzgq().zza(zzaf.zzalk)) {
            this.zzarc.zzgg().zza(new AtomicReference<>());
        }
    }
}
