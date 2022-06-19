package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzie.class */
public final class zzie implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ zzp zzb;
    final /* synthetic */ boolean zzc;
    final /* synthetic */ zzjb zzd;

    public zzie(zzjb zzjbVar, AtomicReference atomicReference, zzp zzpVar, boolean z) {
        this.zzd = zzjbVar;
        this.zza = atomicReference;
        this.zzb = zzpVar;
        this.zzc = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        zzdz zzdzVar;
        synchronized (this.zza) {
            try {
                zzdzVar = this.zzd.zzb;
            } catch (RemoteException e) {
                this.zzd.zzx.zzat().zzb().zzb("Failed to get all user properties; remote exception", e);
                atomicReference = this.zza;
            }
            if (zzdzVar == null) {
                this.zzd.zzx.zzat().zzb().zza("Failed to get all user properties; not connected to service");
                this.zza.notify();
                return;
            }
            Preconditions.checkNotNull(this.zzb);
            this.zza.set(zzdzVar.zzi(this.zzb, this.zzc));
            this.zzd.zzP();
            atomicReference = this.zza;
            atomicReference.notify();
        }
    }
}
