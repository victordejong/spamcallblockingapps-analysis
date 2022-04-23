package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qs.class */
public final class qs extends dvb implements qq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public qs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.qq
    public final ql a(b bVar, mm mmVar) throws RemoteException {
        ql qlVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(204890000);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            qlVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            qlVar = queryLocalInterface instanceof ql ? (ql) queryLocalInterface : new qn(readStrongBinder);
        }
        zza.recycle();
        return qlVar;
    }
}
