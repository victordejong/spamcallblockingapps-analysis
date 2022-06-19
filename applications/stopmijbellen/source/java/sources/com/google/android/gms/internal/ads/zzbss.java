package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbss.class */
public final class zzbss extends zzaoj implements zzbsu {
    public zzbss(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbsu
    public final zzbsr zze(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i, zzbso zzbsoVar) throws RemoteException {
        zzbsp zzbspVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        zzaol.zzf(zza, zzbsoVar);
        Parcel zzbs = zzbs(1, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbspVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            zzbspVar = queryLocalInterface instanceof zzbsr ? (zzbsr) queryLocalInterface : new zzbsp(readStrongBinder);
        }
        zzbs.recycle();
        return zzbspVar;
    }
}
