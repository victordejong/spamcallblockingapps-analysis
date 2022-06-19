package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayf.class */
public final class zzayf extends zzgw implements zzayd {
    public zzayf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final zzaxy zze(IObjectWrapper iObjectWrapper, zzane zzaneVar, int i) throws RemoteException {
        zzaya zzayaVar;
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzaneVar);
        zzdo.writeInt(204204000);
        Parcel zza = zza(2, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzayaVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzayaVar = queryLocalInterface instanceof zzaxy ? (zzaxy) queryLocalInterface : new zzaya(readStrongBinder);
        }
        zza.recycle();
        return zzayaVar;
    }
}
