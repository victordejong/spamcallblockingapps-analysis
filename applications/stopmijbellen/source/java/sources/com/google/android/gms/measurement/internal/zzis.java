package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzis.class */
public final class zzis implements Runnable {
    public final /* synthetic */ zzid zza;
    public final /* synthetic */ zzjk zzb;

    public zzis(zzjk zzjkVar, zzid zzidVar) {
        this.zzb = zzjkVar;
        this.zza = zzidVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        zzedVar = this.zzb.zzb;
        if (zzedVar == null) {
            C0033h.m8883n(this.zzb.zzs, "Failed to send current screen to service");
            return;
        }
        try {
            zzid zzidVar = this.zza;
            if (zzidVar == null) {
                zzedVar.zzk(0L, null, null, this.zzb.zzs.zzax().getPackageName());
            } else {
                zzedVar.zzk(zzidVar.zzc, zzidVar.zza, zzidVar.zzb, this.zzb.zzs.zzax().getPackageName());
            }
            this.zzb.zzP();
        } catch (RemoteException e) {
            this.zzb.zzs.zzau().zzb().zzb("Failed to send current screen to the service", e);
        }
    }
}
