package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdml.class */
public final class zzdml extends zzbhb {
    private final Object zza = new Object();
    private final zzbhc zzb;
    private final zzbvv zzc;

    public zzdml(zzbhc zzbhcVar, zzbvv zzbvvVar) {
        this.zzb = zzbhcVar;
        this.zzc = zzbvvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzf() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzg(boolean z) throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final int zzi() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzj() throws RemoteException {
        zzbvv zzbvvVar = this.zzc;
        if (zzbvvVar != null) {
            return zzbvvVar.zzA();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzk() throws RemoteException {
        zzbvv zzbvvVar = this.zzc;
        if (zzbvvVar != null) {
            return zzbvvVar.zzB();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzl(zzbhf zzbhfVar) throws RemoteException {
        synchronized (this.zza) {
            zzbhc zzbhcVar = this.zzb;
            if (zzbhcVar != null) {
                zzbhcVar.zzl(zzbhfVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final float zzm() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzn() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final zzbhf zzo() throws RemoteException {
        synchronized (this.zza) {
            zzbhc zzbhcVar = this.zzb;
            if (zzbhcVar != null) {
                return zzbhcVar.zzo();
            }
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final boolean zzp() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbhc
    public final void zzq() throws RemoteException {
        throw new RemoteException();
    }
}
