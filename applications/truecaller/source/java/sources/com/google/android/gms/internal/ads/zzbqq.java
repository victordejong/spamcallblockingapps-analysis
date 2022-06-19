package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqq.class */
public final class zzbqq extends zzadj implements zzbqs {
    public zzbqq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbqs
    public final zzbqp zze(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i, zzbqm zzbqmVar) throws RemoteException {
        zzbqn zzbqnVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        zzadl.zzf(zza, zzbqmVar);
        Parcel zzbi = zzbi(1, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbqnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            zzbqnVar = queryLocalInterface instanceof zzbqp ? (zzbqp) queryLocalInterface : new zzbqn(readStrongBinder);
        }
        zzbi.recycle();
        return zzbqnVar;
    }
}
