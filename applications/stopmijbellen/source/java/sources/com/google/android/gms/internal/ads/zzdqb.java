package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqb.class */
public final class zzdqb extends zzbiy {
    private final Object zza = new Object();
    @Nullable
    private final zzbiz zzb;
    @Nullable
    private final zzbxw zzc;

    public zzdqb(@Nullable zzbiz zzbizVar, @Nullable zzbxw zzbxwVar) {
        this.zzb = zzbizVar;
        this.zzc = zzbxwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zze() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zzf() throws RemoteException {
        zzbxw zzbxwVar = this.zzc;
        if (zzbxwVar != null) {
            return zzbxwVar.zzg();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final float zzg() throws RemoteException {
        zzbxw zzbxwVar = this.zzc;
        if (zzbxwVar != null) {
            return zzbxwVar.zzh();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final int zzh() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final zzbjc zzi() throws RemoteException {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar != null) {
                return zzbizVar.zzi();
            }
            return null;
        }
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
    public final void zzm(@Nullable zzbjc zzbjcVar) throws RemoteException {
        synchronized (this.zza) {
            zzbiz zzbizVar = this.zzb;
            if (zzbizVar != null) {
                zzbizVar.zzm(zzbjcVar);
            }
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
