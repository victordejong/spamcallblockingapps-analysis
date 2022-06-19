package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbic.class */
public final class zzbic extends zzaoj {
    public zzbic(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(1, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        zzbs.recycle();
        return readStrongBinder;
    }
}
