package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchr.class */
public final class zzchr extends zzaoj implements zzcht {
    public zzchr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zze(IObjectWrapper iObjectWrapper, zzchx zzchxVar, zzchq zzchqVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzchxVar);
        zzaol.zzf(zza, zzchqVar);
        zzbt(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzf(zzcco zzccoVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzccoVar);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzi(List<Uri> list, IObjectWrapper iObjectWrapper, zzcch zzcchVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzcchVar);
        zzbt(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcht
    public final void zzj(List<Uri> list, IObjectWrapper iObjectWrapper, zzcch zzcchVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzcchVar);
        zzbt(5, zza);
    }
}
