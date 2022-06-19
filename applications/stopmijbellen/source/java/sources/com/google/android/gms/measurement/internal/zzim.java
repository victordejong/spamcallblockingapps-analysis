package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzim.class */
public final class zzim implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ boolean zzb;
    public final /* synthetic */ zzkq zzc;
    public final /* synthetic */ zzjk zzd;

    public zzim(zzjk zzjkVar, zzp zzpVar, boolean z, zzkq zzkqVar) {
        this.zzd = zzjkVar;
        this.zza = zzpVar;
        this.zzb = z;
        this.zzc = zzkqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        zzedVar = this.zzd.zzb;
        if (zzedVar == null) {
            C0033h.m8883n(this.zzd.zzs, "Discarding data. Failed to set user property");
            return;
        }
        Preconditions.checkNotNull(this.zza);
        this.zzd.zzk(zzedVar, this.zzb ? null : this.zzc, this.zza);
        this.zzd.zzP();
    }
}
