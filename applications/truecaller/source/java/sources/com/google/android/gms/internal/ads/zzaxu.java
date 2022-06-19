package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxu.class */
public final class zzaxu extends zzadj implements zzaxw {
    public zzaxu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaxw
    public final zzbfn zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzaxw
    public final void zzf(IObjectWrapper iObjectWrapper, zzayd zzaydVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzaydVar);
        zzbj(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxw
    public final zzbgz zzg() throws RemoteException {
        Parcel zzbi = zzbi(5, zza());
        zzbgz zzb = zzbgy.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzaxw
    public final void zzh(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzb(zza, z);
        zzbj(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxw
    public final void zzi(zzbgw zzbgwVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbgwVar);
        zzbj(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzaxw
    public final void zzj(zzaya zzayaVar) throws RemoteException {
        throw null;
    }
}
