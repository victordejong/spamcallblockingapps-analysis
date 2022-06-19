package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfo.class */
public final class zzcfo extends zzadj implements zzcfq {
    public zzcfo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzcfq
    public final zzcfn zze(IObjectWrapper iObjectWrapper, zzbvg zzbvgVar, int i) throws RemoteException {
        zzcfl zzcflVar;
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzadl.zzf(zza, zzbvgVar);
        zza.writeInt(213806000);
        Parcel zzbi = zzbi(2, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzcflVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzcflVar = queryLocalInterface instanceof zzcfn ? (zzcfn) queryLocalInterface : new zzcfl(readStrongBinder);
        }
        zzbi.recycle();
        return zzcflVar;
    }
}
