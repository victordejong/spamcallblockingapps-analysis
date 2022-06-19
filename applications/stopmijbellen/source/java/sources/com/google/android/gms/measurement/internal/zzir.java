package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzir.class */
public final class zzir implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzjk zzb;

    public zzir(zzjk zzjkVar, zzp zzpVar) {
        this.zzb = zzjkVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        zzedVar = this.zzb.zzb;
        if (zzedVar == null) {
            C0033h.m8883n(this.zzb.zzs, "Discarding data. Failed to send app launch");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzedVar.zzf(this.zza);
            this.zzb.zzs.zzn().zzn();
            this.zzb.zzk(zzedVar, null, this.zza);
            this.zzb.zzP();
        } catch (RemoteException e) {
            this.zzb.zzs.zzau().zzb().zzb("Failed to send app launch to the service", e);
        }
    }
}
