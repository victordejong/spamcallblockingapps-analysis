package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xu.class */
public final class xu extends dvb implements xt {
    /* JADX INFO: Access modifiers changed from: package-private */
    public xu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.xt
    public final xo a(b bVar, mm mmVar) throws RemoteException {
        xo xoVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(204890000);
        Parcel zza = zza(2, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            xoVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            xoVar = queryLocalInterface instanceof xo ? (xo) queryLocalInterface : new xq(readStrongBinder);
        }
        zza.recycle();
        return xoVar;
    }
}
