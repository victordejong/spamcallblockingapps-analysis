package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazr.class */
public final class zzazr extends zzaoj implements zzazt {
    public zzazr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final zzbhk zze() throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final zzbiw zzf() throws RemoteException {
        Parcel zzbs = zzbs(5, zza());
        zzbiw zzb = zzbiv.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzg(boolean z) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzc(zza, z);
        zzbt(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzh(zzbit zzbitVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbitVar);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzi(IObjectWrapper iObjectWrapper, zzbaa zzbaaVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbaaVar);
        zzbt(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzj(zzazx zzazxVar) throws RemoteException {
        throw null;
    }
}
