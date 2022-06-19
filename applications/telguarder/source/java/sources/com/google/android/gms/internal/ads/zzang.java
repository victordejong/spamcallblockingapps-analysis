package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzang.class */
public final class zzang extends zzgw implements zzane {
    public zzang(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzane
    public final zzanj zzdd(String str) throws RemoteException {
        zzanl zzanlVar;
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        Parcel zza = zza(1, zzdo);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzanlVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzanlVar = queryLocalInterface instanceof zzanj ? (zzanj) queryLocalInterface : new zzanl(readStrongBinder);
        }
        zza.recycle();
        return zzanlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzane
    public final boolean zzde(String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        Parcel zza = zza(2, zzdo);
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzane
    public final zzapk zzdf(String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        Parcel zza = zza(3, zzdo);
        zzapk zzaf = zzapn.zzaf(zza.readStrongBinder());
        zza.recycle();
        return zzaf;
    }
}
