package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekt.class */
public final class ekt extends dvb implements eku {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ekt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
    }

    @Override // com.google.android.gms.internal.ads.eku
    public final IBinder a(b bVar, String str, mm mmVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(204890000);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
