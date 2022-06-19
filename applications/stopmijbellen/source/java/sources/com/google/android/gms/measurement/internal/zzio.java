package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzio.class */
public final class zzio implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzjk zzb;

    public zzio(zzjk zzjkVar, zzp zzpVar) {
        this.zzb = zzjkVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        zzedVar = this.zzb.zzb;
        if (zzedVar == null) {
            C0033h.m8883n(this.zzb.zzs, "Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzedVar.zzs(this.zza);
        } catch (RemoteException e) {
            this.zzb.zzs.zzau().zzb().zzb("Failed to reset data on the service: remote exception", e);
        }
        this.zzb.zzP();
    }
}
