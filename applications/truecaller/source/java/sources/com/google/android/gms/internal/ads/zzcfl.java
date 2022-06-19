package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfl.class */
public final class zzcfl extends zzadj implements zzcfn {
    public zzcfl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zze(IObjectWrapper iObjectWrapper, zzcfr zzcfrVar, zzcfk zzcfkVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzd(zza, zzcfrVar);
        zzadl.zzf(zza, zzcfkVar);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzg(List<Uri> list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzcafVar);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzh(List<Uri> list, IObjectWrapper iObjectWrapper, zzcaf zzcafVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzcafVar);
        zzbj(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzi(zzcam zzcamVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzcamVar);
        zzbj(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(8, zza);
    }
}
