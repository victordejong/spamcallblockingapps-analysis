package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzf.class */
public final class zzbzf extends zzadj implements zzbzh {
    public zzbzf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbzh
    public final zzbze zze(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i) throws RemoteException {
        zzbzc zzbzcVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(1, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbzcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            zzbzcVar = queryLocalInterface instanceof zzbze ? (zzbze) queryLocalInterface : new zzbzc(readStrongBinder);
        }
        zzbi.recycle();
        return zzbzcVar;
    }
}
