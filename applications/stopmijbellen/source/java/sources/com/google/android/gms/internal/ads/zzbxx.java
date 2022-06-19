package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxx.class */
public final class zzbxx extends zzbiy {
    private final Object zza = new Object();
    private volatile zzbjc zzb;

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zzf() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zzg() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final int zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final zzbjc zzi() throws RemoteException {
        zzbjc zzbjcVar;
        synchronized (this.zza) {
            zzbjcVar = this.zzb;
        }
        return zzbjcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzj(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzk() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzl() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzm(zzbjc zzbjcVar) throws RemoteException {
        synchronized (this.zza) {
            this.zzb = zzbjcVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzn() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzo() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzp() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzq() throws RemoteException {
        throw new RemoteException();
    }
}
