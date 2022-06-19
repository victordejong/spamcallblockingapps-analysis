package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzit.class */
public final class zzit implements Runnable {
    public final /* synthetic */ zzp zza;
    public final /* synthetic */ Bundle zzb;
    public final /* synthetic */ zzjk zzc;

    public zzit(zzjk zzjkVar, zzp zzpVar, Bundle bundle) {
        this.zzc = zzjkVar;
        this.zza = zzpVar;
        this.zzb = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzed zzedVar;
        zzedVar = this.zzc.zzb;
        if (zzedVar == null) {
            C0033h.m8883n(this.zzc.zzs, "Failed to send default event parameters to service");
            return;
        }
        try {
            Preconditions.checkNotNull(this.zza);
            zzedVar.zzt(this.zzb, this.zza);
        } catch (RemoteException e) {
            this.zzc.zzs.zzau().zzb().zzb("Failed to send default event parameters to service", e);
        }
    }
}
