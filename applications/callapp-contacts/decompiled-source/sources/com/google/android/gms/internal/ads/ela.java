package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ela.class */
public final class ela extends dvb implements ekx {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ela(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.ekx
    public final IBinder a(b bVar, zzvt zzvtVar, String str, mm mmVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvtVar);
        zzdp.writeString(str);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(204890000);
        zzdp.writeInt(i);
        Parcel zza = zza(2, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
