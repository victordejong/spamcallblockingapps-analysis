package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbh.class */
public final class zzcbh extends zzaoj implements zzcbj {
    public zzcbh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final zzcbg zze(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i) throws RemoteException {
        zzcbe zzcbeVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(1, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzcbeVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            zzcbeVar = queryLocalInterface instanceof zzcbg ? (zzcbg) queryLocalInterface : new zzcbe(readStrongBinder);
        }
        zzbs.recycle();
        return zzcbeVar;
    }
}
