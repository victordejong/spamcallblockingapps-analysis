package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzin.class */
public final class zzin implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ zzp zzb;
    public final /* synthetic */ boolean zzc;
    public final /* synthetic */ zzjk zzd;

    public zzin(zzjk zzjkVar, AtomicReference atomicReference, zzp zzpVar, boolean z) {
        this.zzd = zzjkVar;
        this.zza = atomicReference;
        this.zzb = zzpVar;
        this.zzc = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzed zzedVar;
        synchronized (this.zza) {
            try {
                zzedVar = this.zzd.zzb;
            } catch (RemoteException e) {
                this.zzd.zzs.zzau().zzb().zzb("Failed to get all user properties; remote exception", e);
                atomicReference = this.zza;
            }
            if (zzedVar == null) {
                this.zzd.zzs.zzau().zzb().zza("Failed to get all user properties; not connected to service");
                this.zza.notify();
                return;
            }
            Preconditions.checkNotNull(this.zzb);
            this.zza.set(zzedVar.zzi(this.zzb, this.zzc));
            this.zzd.zzP();
            atomicReference = this.zza;
            atomicReference.notify();
        }
    }
}
