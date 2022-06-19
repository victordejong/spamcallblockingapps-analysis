package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmj.class */
public final class zzbmj extends zzadj implements zzbml {
    public zzbmj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzb(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzbu(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzbv(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzbw(zzbme zzbmeVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbmeVar);
        zzbj(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final IObjectWrapper zzc(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        return C22128a.m8608j1(zzbi(2, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zze() throws RemoteException {
        zzbj(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzf(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zza.writeInt(i);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbml
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(6, zza);
    }
}
