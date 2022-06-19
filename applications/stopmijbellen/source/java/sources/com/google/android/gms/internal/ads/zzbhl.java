package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhl.class */
public final class zzbhl extends zzaoj {
    public zzbhl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, String str, zzbxh zzbxhVar, int i, int i2) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzd(zza, zzbfiVar);
        zza.writeString(str);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        zza.writeInt(i2);
        Parcel zzbs = zzbs(2, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        zzbs.recycle();
        return readStrongBinder;
    }
}
