package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbg.class */
public abstract class zzbg implements Runnable {
    final long zzh;
    final long zzi;
    final boolean zzj;
    final /* synthetic */ zzbr zzk;

    public zzbg(zzbr zzbrVar, boolean z) {
        this.zzk = zzbrVar;
        this.zzh = zzbrVar.zza.currentTimeMillis();
        this.zzi = zzbrVar.zza.elapsedRealtime();
        this.zzj = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        z = this.zzk.zzi;
        if (z) {
            zzb();
            return;
        }
        try {
            zza();
        } catch (Exception e) {
            this.zzk.zzV(e, false, this.zzj);
            zzb();
        }
    }

    abstract void zza() throws RemoteException;

    protected void zzb() {
    }
}
