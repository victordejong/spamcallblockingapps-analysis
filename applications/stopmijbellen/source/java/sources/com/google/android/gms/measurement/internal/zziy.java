package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zziy.class */
public final class zziy implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ zzjk zzb;

    public zziy(zzjk zzjkVar, zzp zzpVar) {
        this.zzb = zzjkVar;
        this.zza = zzpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        zzedVar = this.zzb.zzb;
        if (zzedVar == null) {
            C0033h.m8883n(this.zzb.zzs, "Failed to send consent settings to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzedVar.zzu(this.zza);
            this.zzb.zzP();
        } catch (RemoteException e) {
            this.zzb.zzs.zzau().zzb().zzb("Failed to send consent settings to the service", e);
        }
    }
}
